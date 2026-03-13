#!/bin/bash
echo "Running Dependency Scan"
dependency-check \
--scan app \
--format HTML \
--out reports