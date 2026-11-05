<div align="center">

# Mahek Gupta | Cloud & DevOps Engineer

### Building, Deploying & Learning Cloud Technologies

**A responsive personal portfolio built with HTML and CSS, containerised with Docker and served using Nginx on AWS EC2.**

[![Live Portfolio](https://img.shields.io/badge/Live%20Portfolio-Visit-0ea5e9?style=for-the-badge)](http://3.108.215.204)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github)](https://github.com/Mahek-319/mahek-portfolio)
[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-Image-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com/r/mahek19/mahek-portfolio)

</div>

---

## 📌 Project Overview

This repository contains the source code for my personal portfolio website. The website introduces my background, education, technical skills, projects and contact information, with a focus on my learning journey in **Cloud Computing and DevOps**.

The portfolio is built using **HTML5 and CSS3**. It is packaged into a Docker image based on **Nginx Alpine** and deployed on an **Ubuntu-based Amazon EC2 instance**. Nginx serves the static website files from inside the container.

The project demonstrates a simple end-to-end workflow: developing a website, managing source code with Git and GitHub, building and publishing a Docker image, and running the container on AWS EC2.

> **Tagline:** Building. Deploying. Learning.

## 🌐 Live Portfolio & Project Links

| Resource | Link |
|---|---|
| **Live Portfolio** | [http://3.108.215.204](http://3.108.215.204) |
| **GitHub Repository** | [Mahek-319/mahek-portfolio](https://github.com/Mahek-319/mahek-portfolio) |
| **Docker Hub Image** | [mahek19/mahek-portfolio](https://hub.docker.com/r/mahek19/mahek-portfolio) |
| **EduCloud Project** | [https://myeducloude.in](https://myeducloude.in) |
| **LinkedIn** | [Mahek Gupta](https://www.linkedin.com/in/mahek-gupta-b834a8338) |

> **Note:** The live portfolio link uses the EC2 public IPv4 address last configured for this deployment. An EC2 public IP can change if the instance is stopped and started unless an Elastic IP is associated with it.

---

## ✨ Website Features

The portfolio is organised into the following sections:

### 🏠 Home
- Introduction and professional role.
- Short overview of my interests in Cloud Computing, AWS, Linux and Docker.
- Navigation links to projects and contact information.
- GitHub and LinkedIn profile links.

### 👩‍💻 About
- Professional introduction.
- Electronics & Telecommunications education details.
- College and graduation information.

### 🛠️ Technical Skills
- Cloud technologies and AWS services.
- DevOps tools and version control.
- Linux and Ubuntu.
- Technologies currently being learned.

### 🚀 Projects
- EduCloud – cloud-based learning platform.
- Personal portfolio website with Docker deployment.
- Project images and relevant links.

### 📬 Contact
- Email contact link.
- GitHub profile.
- LinkedIn profile.

### 📱 Responsive Layout
- Responsive navigation and content sections.
- Skills and project cards adapt to smaller screens.
- CSS media queries for mobile layout.

---

## 🖼️ Portfolio Screenshots

The following screenshots are stored in the repository's `assets/` directory.

### Home
![Portfolio Home](assets/portfolio-home.png)

### About
![Portfolio About](assets/portfolio-about.png)

### Technical Skills
![Portfolio Skills](assets/portfolio-skills.png)

### Projects
![Portfolio Projects](assets/portfolio-projects.png)

### Contact
![Portfolio Contact](assets/portfolio-contact.png)

---

## 🏗️ Application Architecture

The portfolio is a static website. It does not require a separate application backend or database.

```text
                 Visitor / Web Browser
                          |
                          | HTTP request
                          v
                 AWS EC2 Ubuntu Instance
                          |
                  EC2 Security Group
                      TCP Port 80
                          |
                          v
                  Docker Container
                          |
                          v
                     Nginx
                  (nginx:alpine)
                          |
                          v
              Static Portfolio Website
                 HTML + CSS + Assets
```

### Request Flow

1. A visitor opens the portfolio URL in a browser.
2. The request reaches the AWS EC2 instance over HTTP.
3. The EC2 Security Group allows inbound traffic on port `80`.
4. Docker forwards host port `80` to container port `80`.
5. Nginx inside the container serves `index.html`, `style.css` and the image assets.

---

## ☁️ AWS Infrastructure

The portfolio deployment uses the following infrastructure and tools:

| Service / Tool | Purpose |
|---|---|
| **Amazon EC2** | Hosts the Dockerised portfolio on an Ubuntu instance |
| **AWS Security Group** | Controls inbound access to the EC2 instance; HTTP access is provided on port 80 |
| **Ubuntu Linux** | Operating system used for the deployment environment |
| **Docker** | Packages the website and its web server into a container image |
| **Nginx Alpine** | Serves the static portfolio files inside the container |
| **Docker Hub** | Stores the published portfolio image |
| **Git & GitHub** | Source-code version control and repository hosting |

The wider AWS services in my skills and learning journey are not all part of this portfolio's runtime architecture. This deployment specifically uses EC2, its security-group rules, Docker and Nginx.

---

## 🛠️ Technology Stack

### Frontend
- HTML5
- CSS3
- Poppins web font

### Containerisation & Web Server
- Docker
- Dockerfile
- Nginx Alpine

### Cloud & Operating System
- Amazon EC2
- Ubuntu Linux
- AWS Security Groups

### Source Control & Image Registry
- Git
- GitHub
- Docker Hub

---

## 🐳 Docker Configuration

The website is packaged using a Dockerfile based on the official Nginx Alpine image.

### Dockerfile

```dockerfile
FROM nginx:alpine

LABEL maintainer="Mahek Gupta"

WORKDIR /usr/share/nginx/html

COPY index.html .
COPY style.css .
COPY assets/ ./assets/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

### What the Dockerfile does

1. Uses `nginx:alpine` as a lightweight base image.
2. Sets the working directory to Nginx's default HTML directory.
3. Copies the website's HTML, CSS and assets into the image.
4. Documents port `80` as the container's web port.
5. Starts Nginx in the foreground when the container runs.

---

## 💻 Run Locally

### Prerequisites

Install:
- Git
- Docker Desktop or Docker Engine

### 1. Clone the Repository

```bash
git clone https://github.com/Mahek-319/mahek-portfolio.git
```

### 2. Enter the Project Directory

```bash
cd mahek-portfolio
```

### 3. Build the Docker Image

```bash
docker build -t mahek-portfolio:v1 .
```

### 4. Run the Container

```bash
docker run -d \
  --name mahek-portfolio \
  -p 8080:80 \
  mahek-portfolio:v1
```

### 5. Open the Website

Visit:

```text
http://localhost:8080
```

### 6. Check the Running Container

```bash
docker ps
```

To stop the local container:

```bash
docker stop mahek-portfolio
```

To remove it after stopping:

```bash
docker rm mahek-portfolio
```

---

## 📦 Pull and Run the Image from Docker Hub

The portfolio image is published on Docker Hub.

### Pull the Image

```bash
docker pull mahek19/mahek-portfolio:v1
```

### Run the Container

```bash
docker run -d \
  --name mahek-portfolio \
  -p 8080:80 \
  mahek19/mahek-portfolio:v1
```

Open `http://localhost:8080` in a browser.

**Docker Hub:** [mahek19/mahek-portfolio](https://hub.docker.com/r/mahek19/mahek-portfolio)

---

## 🚀 AWS EC2 Deployment

The website is deployed on an Ubuntu-based Amazon EC2 instance using Docker and Nginx.

### Deployment Workflow

1. Prepare the portfolio website using HTML and CSS.
2. Create a Dockerfile with Nginx Alpine as the base image.
3. Build the Docker image.
4. Publish the image to Docker Hub.
5. Connect to the Ubuntu EC2 instance.
6. Pull the portfolio image from Docker Hub.
7. Run the container and map EC2 host port `80` to container port `80`.
8. Configure the EC2 Security Group to allow HTTP traffic on port `80`.
9. Open the EC2 public address in a browser to view the website.

### Example EC2 Container Commands

Pull the published image:

```bash
docker pull mahek19/mahek-portfolio:v1
```

Run the container:

```bash
docker run -d \
  --name mahek-portfolio-production \
  --restart unless-stopped \
  -p 80:80 \
  mahek19/mahek-portfolio:v1
```

Check container status:

```bash
docker ps
```

Check the local Nginx response from the EC2 instance:

```bash
curl -I http://localhost
```

### Security Group

For public website access, the EC2 Security Group needs an inbound HTTP rule:

| Type | Protocol | Port | Source |
|---|---|---:|---|
| HTTP | TCP | 80 | `0.0.0.0/0` |

SSH access should be restricted to trusted source IP addresses rather than left open to everyone. Do not publish private keys, passwords or access tokens in the repository.

---

## 📂 Project Structure

```text
mahek-portfolio/
│
├── assets/
│   ├── profile.jpg
│   ├── educloud.png
│   ├── portfolio-home.png
│   ├── portfolio-about.png
│   ├── portfolio-skills.png
│   ├── portfolio-projects.png
│   └── portfolio-contact.png
│
├── index.html
├── style.css
├── Dockerfile
├── .gitignore
└── README.md
```

### Main Files

| File | Description |
|---|---|
| `index.html` | Main page structure and portfolio content |
| `style.css` | Styling, layout, colours, cards and responsive rules |
| `Dockerfile` | Instructions to package the website with Nginx |
| `assets/profile.jpg` | Profile photo used on the Home section |
| `assets/educloud.png` | EduCloud project image |
| `assets/portfolio-*.png` | Portfolio section screenshots |
| `.gitignore` | Excludes selected local and sensitive files from Git |

---

## 🔄 Updating the Website

After editing `index.html`, `style.css` or files in `assets/`, rebuild the Docker image so the updated files are included.

```bash
docker build -t mahek-portfolio:v2 .
```

Tag the image for Docker Hub:

```bash
docker tag mahek-portfolio:v2 mahek19/mahek-portfolio:v2
```

Push the new image:

```bash
docker push mahek19/mahek-portfolio:v2
```

The deployment environment can then pull and run the new image tag.

---

## 🔐 Repository & Security Notes

The repository's `.gitignore` excludes the following types of local files:

```gitignore
.env
.env.*
*.pem
*.key
node_modules/
.DS_Store
```

- Never commit AWS credentials, private keys, passwords or access tokens.
- Keep deployment credentials outside source control.
- Review Security Group rules and expose only the ports required by the application.
- The portfolio is a static website and does not store user data in a backend database.

---

## 📚 Skills Demonstrated

This project provided practical experience with:

- Creating a responsive website using HTML and CSS.
- Organising and maintaining website assets.
- Writing a Dockerfile.
- Building and tagging Docker images.
- Running and checking Docker containers.
- Publishing an image to Docker Hub.
- Using Nginx to serve static content.
- Deploying a container on Ubuntu EC2.
- Configuring HTTP access through an AWS Security Group.
- Managing source code with Git and GitHub.

## 🎯 Current Learning Path

Alongside this project, I am continuing to learn:

- Terraform and Infrastructure as Code.
- Jenkins and GitHub Actions.
- CI/CD pipeline design.
- Kubernetes fundamentals.
- Bash scripting.
- Cloud monitoring and deployment practices.

These are current learning areas and are not presented as features already implemented in this portfolio.

---

## 🎓 About Me

**Mahek Gupta**  
B.Tech – Electronics & Telecommunications  
Priyadarshini J. L. College of Engineering, Nagpur  
Graduation Year: 2026

### Connect

- **Email:** [guptamahek419@gmail.com](mailto:guptamahek419@gmail.com)
- **GitHub:** [Mahek-319](https://github.com/Mahek-319)
- **LinkedIn:** [Mahek Gupta](https://www.linkedin.com/in/mahek-gupta-b834a8338)
- **Docker Hub:** [mahek19](https://hub.docker.com/u/mahek19)

---

<div align="center">

**Thank you for visiting my portfolio repository!**

⭐ Feel free to explore the code and projects.

**Made by Mahek Gupta | Cloud & DevOps Engineer**

</div>
