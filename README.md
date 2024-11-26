```
helm repo index ./docs --url https://thangyt01.github.io/mono-chart
helm repo add mono-repo https://thangyt01.github.io/mono-chart

helm install my-todo-app mono-repo/kapp
```