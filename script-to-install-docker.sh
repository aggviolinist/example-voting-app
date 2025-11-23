# Install Docker
sudo dnf install docker -y

# Start Docker service
sudo systemctl start docker

# Enable Docker to start on boot
sudo systemctl enable docker

# Check Docker status
sudo systemctl status docker

# Add ec2-user to docker group (to run docker without sudo)
sudo usermod -aG docker ec2-user
sudo usermod -aG docker jenkins
sudo systemctl restart docker

# Apply group changes (or logout and login again)
newgrp docker

# Verify Docker installation
docker --version

# Test Docker with hello-world
docker run hello-world