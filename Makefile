APP_IMAGE=devsecops-secure-ci-pipeline
install:
	bash scripts/install-tools.sh

sast:
	bash scripts/sast.sh

secrets:
	bash scripts/secrets.sh

sca:
	bash scripts/sca.sh

build:
	bash scripts/build.sh

image-scan:
	bash scripts/image-scan.sh

sbom:
	bash scripts/sbom.sh

sign:
	bash scripts/sign.sh

deploy:
	bash scripts/deploy.sh

scan: sast secrets sca image-scan

pipeline: build scan sbom sign

demo: install pipeline deploy

clean:
	rm -rf reports/*