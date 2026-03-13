#!/bin/bash
mkdir -p reports
echo "Creating a Python Virtual Environment for tool installation..."
python3 -m venv venv
source venv/bin/activate
echo "Installing tools..."
pip install semgrep
brew install gitleaks trivy cosign syft grype dependency-check
echo "Tools installed"

# Verfiy installation
echo "Verify tools installation..."
echo "Checking semgrep version..."
semgrep --version
echo "Checking gitleaks version..."
gitleaks --version
echo "Checking trivy version..."
trivy --version
echo "Checking cosign version..."
cosign version
echo "Checking syft version..."
syft --version
echo "Checking grype version..."
grype --version
echo "Checking dependency-check version..."
dependency-check --version