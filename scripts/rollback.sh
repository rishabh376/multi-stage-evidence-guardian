#!/usr/bin/env bash
set -euo pipefail
kubectl rollout undo deploy/multi-stage-evidence-guardian
