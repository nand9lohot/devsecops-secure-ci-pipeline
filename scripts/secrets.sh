#!/bin/bash
echo "Running Secrets Scan"
gitleaks detect \
--source . \
--report-format json \
--report-path reports/secrets-report.json