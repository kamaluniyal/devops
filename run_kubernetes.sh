
# Step 1:
# dockerpath=<>
dockerpath="kamaluniyal/pybuild1"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run pybuild1 --image=$dockerpath 

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pybuild1 8000:80 