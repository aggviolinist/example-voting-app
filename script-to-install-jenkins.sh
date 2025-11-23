#update the system
sudo dnf update

#install java
sudo dnf install java-17-amazon-corretto

# Add the Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import the Jenkins GPG key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
sudo yum install jenkins -y

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Check Jenkins status
sudo systemctl status jenkins

# Get the initial admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

######Ownership issues######
# Fix ownership of Jenkins workspace
#sudo chown -R jenkins:jenkins /var/lib/jenkins/workspace/

# Or fix just this specific workspace
#sudo chown -R jenkins:jenkins /var/lib/jenkins/workspace/voting-app-pipeline/

# Also fix permissions
#sudo chmod -R 755 /var/lib/jenkins/workspace/voting-app-pipeline/