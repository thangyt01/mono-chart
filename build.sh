# /bin/bash
helm package kapp
helm repo index .
mv kapp-0.1.0.tgz docs/
mv index.yaml docs/