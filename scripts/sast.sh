#!/bin/bash
echo "Running SAST (Semgrep)"
semgrep --config security/semgrep.yml app/ \
--json > reports/sast-report.json