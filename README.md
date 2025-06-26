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
<img width="1712" alt="Screenshot 2025-06-27 at 1 10 44 AM" src="https://github.com/user-attachments/assets/0ef64b9d-527f-4674-a301-bdd2b1af8601" />
![NetWhip Install](https://raw.githubusercontent.com/abhisheksharma18021999/NetWhip/main/assets/image1.png)

``` 
