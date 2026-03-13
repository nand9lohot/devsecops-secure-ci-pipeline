#!/bin/bash
echo "Running SAST (Semgrep)"
mkdir -p reports
semgrep --config security/semgrep.yml app/ \
--json > reports/sast-report.json