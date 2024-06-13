# Dockerfile for Control Node with pre-installed Ansible
FROM python:3.9-slim

# Install additional dependencies
RUN apt-get update && apt-get install -y \
    ssh \
    sshpass \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Ansible
RUN pip install ansible

# Create a user for Ansible
RUN useradd -m ansible

# Switch to the ansible user
USER ansible
WORKDIR /home/ansible
