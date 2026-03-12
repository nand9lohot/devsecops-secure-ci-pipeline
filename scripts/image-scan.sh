#!/bin/bash
echo "Scanning container image"
trivy image devsecops-secure-ci-pipeline \
--format json \
-o reports/trivy-report.json