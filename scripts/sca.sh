#!/bin/bash
echo "Running Dependency Scan"
dependency-check.sh \
--scan app \
--format HTML \
--out reports