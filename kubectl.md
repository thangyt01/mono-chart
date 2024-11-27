# `kubectl` Cheat Sheet

## General Commands

```bash
# Show client and server versions
kubectl version

# List all available contexts
kubectl config get-contexts

# Switch to a specific context
kubectl config use-context <context>

# Display cluster info
kubectl cluster-info

# List all resources in the current namespace
kubectl get all
```

## Managing Resources - Get Resources
```bash
# List all pods in the current namespace
kubectl get pods

# List all nodes in the cluster
kubectl get nodes

# List all services
kubectl get services

# List all deployments
kubectl get deployments

# Show recent cluster events
kubectl get events

# Show detailed info about a resource
kubectl get <resource> -o wide

# Output resource in YAML/JSON format
kubectl get <resource> -o yaml
kubectl get <resource> -o json
```

## Describe Resources

```bash
# Show detailed info about a pod
kubectl describe pod <pod-name>

# Show detailed info about a service
kubectl describe service <service-name>

# Show details of a node
kubectl describe node <node-name>
```
## Apply, Create, Delete Resources

```bash
# Apply changes to resources from a file
kubectl apply -f <file.yaml>

# Create resources from a YAML/JSON file
kubectl create -f <file.yaml>

# Delete resources defined in a file
kubectl delete -f <file.yaml>

# Delete a specific pod
kubectl delete pod <pod-name>

# Delete a specific service
kubectl delete service <service-name>
```

## Logs and Debugging

``` bash
# View logs of a pod
kubectl logs <pod-name>

# View logs of a specific container
kubectl logs <pod-name> -c <container-name>

# Open a shell in a pod
kubectl exec -it <pod-name> -- /bin/bash

# View detailed information about a pod
kubectl describe pod <pod-name>
```

## Scaling and Rollouts

```bash
# Scale a deployment to N replicas
kubectl scale deployment <name> --replicas=N

# Restart all pods in a deployment
kubectl rollout restart deployment/<name>

# Show rollout status of a deployment
kubectl rollout status deployment/<name>

# Roll back to the previous deployment
kubectl rollout undo deployment/<name>
```

## Namespaces

```bash
# List all namespaces
kubectl get namespaces

# Create a new namespace
kubectl create namespace <name>

# Delete a namespace
kubectl delete namespace <name>

# List all pods in a namespace
kubectl get pods -n <namespace>

# Set default namespace for the current context
kubectl config set-context --current --namespace=<namespace>
```

## Port Forwarding

```bash
# Forward local port 8080 to pod's port 80
kubectl port-forward pod/<pod-name> 8080:80

# Forward local port 8080 to service port 80
kubectl port-forward service/<service-name> 8080:80
```

## Monitoring and Troubleshooting

```bash
# Show resource usage of nodes
kubectl top nodes

# Show resource usage of pods
kubectl top pods

# View cluster events sorted by time
kubectl get events --sort-by=.metadata.creationTimestamp

# Show detailed info about a pod
kubectl describe pod <pod-name>

# Delete a namespace
kubectl delete ns <name>
vbnet
```
