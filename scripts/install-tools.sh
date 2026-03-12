#!/bin/bash
mkdir -p reports
echo "Installing tools..."
pip install semgrep
brew install gitleaks trivy cosign syft grype
echo "Tools installed"