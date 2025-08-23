## **Day 2 – Kubernetes Fundamentals**

### **Objective**

- Learn the core components of Kubernetes (Pods, Deployments, Services, Namespaces) and deploy a sample Nginx application with scaling and service exposure.

### **Topics Covered**

1. Kubernetes Architecture & Components

2. Pods, ReplicaSets, Deployments

3. Namespaces

4. Services (ClusterIP, NodePort)

5. Basic kubectl commands

6. Scaling applications

### **Pre-requisites**

- Docker Installed (from Day 1)

- Minikube installed

### For Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start --driver=docker

### **Hands-on Steps**
1. Check Cluster Status
```bash
kubectl cluster-info
kubectl get nodes
kubectl get pods -A
```

3. Create a Namespace
```bash
kubectl create namespace dev
kubectl get ns
```

5. Deploy Nginx App

#### Create a file nginx-deployment.yaml:
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  namespace: dev
spec:
  replicas: 2
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:latest
        ports:
        - containerPort: 80
```

#### Apply it:
```yaml
kubectl apply -f nginx-deployment.yaml
kubectl get pods -n dev
```

4. Expose Deployment via NodePort

#### Create a file nginx-service.yaml:
```yaml
apiVersion: v1
kind: Service
metadata:
  name: nginx-service
  namespace: dev
spec:
  type: NodePort
  selector:
    app: nginx
  ports:
  - port: 80
    targetPort: 80
    nodePort: 30007
```

#### Apply it:
```bash
kubectl apply -f nginx-service.yaml
```

5. Access the App
```bash
minikube service nginx-service -n dev --url
```

7. Scale the Deployment
```bash
kubectl scale deployment nginx-deployment --replicas=3 -n dev
kubectl get pods -n dev
```

#### Key Commands
```bash
kubectl get pods
kubectl describe pod <pod_name>
kubectl logs <pod_name>
kubectl delete pod <pod_name>
```
