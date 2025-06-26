# NetWhip
📦 Netwhip: Kubernetes Network Debugging Tool (Helm Chart)
NetWhip is a lightweight Helm chart for deploying debug or utility containers in Kubernetes. Built with multi-platform Docker image support and served via GitHub Pages as a Helm chart repository.

---

## 🐳 Image 
redhairedshanks/netwhip:latest 

## 🛠️ How to use
```
# Create a file with all helm cmds
touch Makefile 

# Add these to Makefile
setup:
	helm repo add netwhip https://abhisheksharma18021999.github.io/NetWhip
	helm repo update

install:
	helm install netwhip netwhip/netwhip --namespace netwhip --create-namespace

uninstall:
	helm uninstall netwhip --namespace netwhip

# Usage
make setup
make install
make uninstall

``` 



####  ScreenShot of pod after applying helm
<img width="1728" alt="Screenshot 2025-06-27 at 1 29 19 AM" src="https://github.com/user-attachments/assets/3070f5c3-bfe6-45fd-a80a-966f19309407" />




#### Below is a Sample ScreenShot where the user is able to perform telnet, ping and a lot of other network related cmds.
<img width="1197" alt="Screenshot_inside_pod" src="https://github.com/user-attachments/assets/3064e643-86de-4ccf-bc73-2ba44420ca39" />



If you want to make this by your self.

Step 1 : Create a docker file with all required tools and upload to a public hub.
Take help using below cmds
```bash
# Create Buildx builder
docker buildx create --use

# Build image for multi-arch and push
docker buildx build --platform linux/amd64,linux/arm64 \
  -t redhairedshanks/netwhip:latest \
  --push .

# Push additional tag (if needed)
docker tag myimage redhairedshanks/myimage:latest
docker push redhairedshanks/myimage:latest

# Login to Docker Hub
docker login --username redhairedshanks

# If login issues
docker context ls
docker context use default
```


Step 2: Make a helm and upload it to a public version control platform like github.
```
# Create a new Helm chart
helm create netwhip

# Folder structure:
# netwhip/
# ├── Chart.yaml
# ├── values.yaml
# └── templates/
#     ├── deployment.yaml
#     └── service.yaml (optional)


# Package chart
helm package netwhip

# Index the repo using GitHub Pages
helm repo index . --url https://abhisheksharma18021999.github.io/NetWhip


```

