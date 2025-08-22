## **Day 1 – DockerHub Integration**

### **Objective**
- Learn Docker fundamentals
- Build a sample containerized application
- Push it to DockerHub as a personal registry
- Prepare for future integration with OpenShift CI/CD pipelines

### **Steps Completed**
1. **Installed Docker** on local machine.
2. **Created a simple `index.html` and Dockerfile** based on Nginx.
3. Built the Docker image:
   ```bash
   docker build -t openshift:v1 .
   ```
4. Create and Run Docker container:
   ```bash
   docker run --name openshift-cont -d -p 80:80 openshift:v1
   ```
5. Logged into DockerHub:
   ```bash
   docker login
   ```
6. Tagged the image:
   ```bash
   docker tag openshift:v1 <dockerhub_username>/openshift:v1
   ```
7. Push to DockerHub:
   ```bash
   docker push <dockerhub_username>/openshift:v1
   ```
8. Verified the image on DockerHub.
