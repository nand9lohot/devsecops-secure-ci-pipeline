# DevSecOps Secure CI Pipeline

This repository demonstrates a **production-style DevSecOps CI/CD pipeline** implementing shift-left security controls using open source tools.

The pipeline scans code, dependencies, container images, and generates SBOMs while ensuring software supply chain integrity through image signing.

---

# Architecture

Application Code  
↓  
SAST (Semgrep)  
↓  
Secrets Scan (Gitleaks)  
↓  
Dependency Scan (OWASP Dependency Check)  
↓  
Docker Image Build  
↓  
Container Scan (Trivy)  
↓  
SBOM Generation (Syft)  
↓  
Image Signing (Cosign)  
↓  
Deployment to Kubernetes  

---

# Security Controls

| Stage | Tool |
|------|------|
| SAST | Semgrep |
| Secrets Scan | Gitleaks |
| Dependency Scan | OWASP Dependency Check |
| Container Scan | Trivy |
| SBOM | Syft |
| Vulnerability Analysis | Grype |
| Image Signing | Cosign |
| Deployment | Kubernetes |

---

# Running the Pipeline Locally

Clone the repository:
```
git clone <repo>
cd devsecops-secure-ci-pipeline
```

Run the full pipeline:
```make demo```


This will execute:
- SAST
- Secrets scan
- Dependency scan
- Container build
- Container scan
- SBOM generation
- Image signing
- Kubernetes deployment

Reports will be generated in:
```/report```

Verify signature:
```cosign verify --key cosign.pub devsecops-secure-ci-pipeline```

Check deployment:
kubectl get pods

---

# Running Individual Pipeline Stages
```
make sast
make secrets
make sca
make build
make image-scan
make sbom
make sign
make deploy
```

---

# GitHub Actions CI Pipeline

The repository also includes an optional **GitHub Actions pipeline**.

When code is pushed to `main` branch, the workflow:
1. Runs security scans
2. Builds container image
3. Generates SBOM
4. Signs container image
5. Uploads reports as artifacts

Security reports can be downloaded from the GitHub Actions run page.

---

# Expected Outputs

The pipeline produces several artifacts:
```
reports/
├── sast-report.json
├── secrets-report.json
├── dependency-check-report.html
├── trivy-report.json
├── sbom.json
```

---

# Purpose of this Repository

This lab demonstrates:

- DevSecOps shift-left security
- container security automation
- software supply chain protection
- CI/CD security integration
- Kubernetes deployment pipeline

It serves as a **practical reference architecture for secure CI/CD pipelines**.