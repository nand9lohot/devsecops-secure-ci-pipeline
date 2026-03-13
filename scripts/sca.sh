#!/bin/bash
echo "Running Dependency Scan"
dependency-check \
--scan app \
--format HTML \
--out reports \
--nvdApiKey $NVD_API_KEY