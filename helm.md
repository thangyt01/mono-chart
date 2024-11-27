# Test Helm with cli

## Repo
```bash
helm repo list
helm repo remove <repo-name>
# ex add repo
helm repo add mono-repo https://thangyt01.github.io/mono-chart
helm repo update
```

## Chart

```bash
# create chart
mkdir ci
helm create ci/demo-app
# unnecessary files
rm -rf ci/demo-app/templates

# add subchart
helm dependency update ci/demo-app

# install chart
helm install <release-name> ci/demo-app
helm install demo-app ci/demo-app
```