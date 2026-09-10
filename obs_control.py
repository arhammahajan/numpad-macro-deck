"""Small command-line bridge for triggering OBS Studio actions from macros."""

from __future__ import annotations

import argparse
import os
from collections.abc import Sequence

from obswebsocket import obsws, requests


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)
    subparsers.add_parser("toggle-recording", help="start or stop recording")

    scene_parser = subparsers.add_parser("scene", help="switch the active scene")
    scene_parser.add_argument("name", help="the exact OBS scene name")
    return parser


def run_command(command: str, scene_name: str | None = None) -> None:
    host = os.getenv("OBS_HOST", "localhost")
    port = int(os.getenv("OBS_PORT", "4455"))
    password = os.getenv("OBS_PASSWORD", "")
    client = obsws(host, port, password)

    try:
        client.connect()
        if command == "toggle-recording":
            client.call(requests.ToggleRecord())
        elif command == "scene" and scene_name is not None:
            client.call(requests.SetCurrentProgramScene(sceneName=scene_name))
        else:
            raise ValueError(f"Unsupported command: {command}")
    finally:
        client.disconnect()


def main(argv: Sequence[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    run_command(args.command, getattr(args, "name", None))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
