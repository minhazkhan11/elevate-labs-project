#!/usr/bin/env bash
# run‑tests.sh
# e.g. curl localhost:80 and check for index.html content

curl -f http://localhost:80 || { echo "nginx not serving"; exit 1; }
echo "Tests passed!"

