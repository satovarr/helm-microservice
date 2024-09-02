## Setup

Different options to setup the project:
1. Local
2. Docker
3. Kubernetes

### Local
1. Clone the repository
2. Create virtual environment
3. Install dependencies
4. Run the application

```bash
git clone
cd
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
fastapi run app/main.py --host 0.0.0.0 --port 8000
```

### Docker
1. Clone the repository
2. Build the image
3. Run the container

```bash
git clone
docker build -t fastapi-app .
docker run -d -p 8000:8000 fastapi-app
```

### Kubernetes
1. Clone the repository
2. Create the deployment and service
3. Open the LoadBalancer service


```bash
git clone
kubectl apply -f helm-microservice.yaml
minikube tunnel
kubectl get svc
curl http://REPLACE_WITH_EXTERNAL_IP:8000
```