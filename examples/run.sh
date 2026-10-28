#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_local_brain info
PYTHONPATH=src python -m gbt_local_brain check --payload '{}'
PYTHONPATH=src python -m gbt_local_brain run   --payload '{}'
