#!/bin/bash
echo "Generating SBOM"
syft devsecops-secure-ci-pipeline \
-o json > reports/sbom.json