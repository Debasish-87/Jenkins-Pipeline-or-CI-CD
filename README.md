# Jenkins Pipeline CI/CD Project with Docker

![Jenkins Logo](https://www.jenkins.io/images/logos/jenkins/jenkins.svg)

---

## 🚀 Project Overview

This project demonstrates a **simple Jenkins pipeline** to automate the **build, test, and deployment** of a Node.js application using **Docker**. It simulates a typical DevOps CI/CD workflow where code changes trigger automated steps, ensuring faster and reliable delivery.

---

## 📋 Features

- Automated build of Node.js application
- Run automated tests
- Deployment stage (can be customized)
- Integration with GitHub repository to trigger pipeline on each commit
- Dockerized Jenkins setup for easy environment management

---

## 🛠️ Tools Used

- **Jenkins** – Automation server to run CI/CD pipelines  
- **Docker** – Container platform for running Jenkins and the application  
- **Node.js** – JavaScript runtime for app development  
- **GitHub** – Source code management and pipeline trigger  

---

## 📁 Project Structure

```

/
├── Jenkinsfile        # Pipeline definition file
├── app.js             # Sample Node.js application
├── package.json       # Node.js app dependencies and scripts
├── README.md          # This documentation file
└── images/            # Folder containing screenshots
├── jenkins\_pipeline\_success.png
└── docker\_run\_jenkins.png

````

---

## ⚙️ Setup Instructions

1. **Clone the repo:**
   ```bash
   git clone https://github.com/yourusername/simple-node-pipeline.git
   cd simple-node-pipeline
````

2. **Run Jenkins using Docker:**

   ```bash
   docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
   ```

3. **Access Jenkins UI:**

   * Open `http://localhost:8080` in your browser
   * Complete initial setup and install recommended plugins

4. **Create a pipeline job:**

   * Connect your GitHub repo URL
   * Use the `Jenkinsfile` in the repo to define the pipeline stages

5. **Trigger pipeline:**

   * Commit and push changes to GitHub
   * Jenkins automatically triggers build, test, and deploy stages

---

## 🏃 Pipeline Stages

| Stage        | Description                               |
| ------------ | ----------------------------------------- |
| **Checkout** | Pull source code from GitHub              |
| **Build**    | Install dependencies using `npm install`  |
| **Test**     | Run tests using `npm test`                |
| **Deploy**   | Deployment logic (customizable as needed) |
| **Archive**  | Archive artifacts or build outputs        |

---

## 🖼️ Screenshots

### Jenkins Pipeline Successfully Built, Tested and Deployed

![Jenkins Pipeline Success](images/jenkins_pipeline_success.png)
*Jenkins pipeline successfully completed all stages.*

---

### Docker Run Jenkins Container

![Docker Run Jenkins](images/docker_run_jenkins.png)
*Jenkins running inside a Docker container.*

---

## 💡 Interview Questions

**1. What is Jenkins, and how is it used in CI/CD?**
Jenkins is an open-source automation server used to automate software build, test, and deployment processes as part of CI/CD pipelines.

**2. What is a Jenkinsfile?**
A Jenkinsfile is a text file that contains the definition of a Jenkins pipeline, written in a domain-specific language (Declarative or Scripted syntax).

**3. How do you create and configure Jenkins pipelines?**
Pipelines are created by defining a Jenkinsfile in the source repository and configuring a Jenkins job to point to that repo. Jenkins automatically executes pipeline stages on code changes.

**4. What are some common stages in a Jenkins pipeline?**
Common stages include Checkout, Build, Test, Deploy, and Post-build Actions.

**5. What is the difference between declarative and scripted Jenkins pipelines?**
Declarative pipelines provide a simpler and more structured syntax, easier to read and maintain. Scripted pipelines offer more flexibility with Groovy scripting for advanced scenarios.

---

## 🙏 Acknowledgments

Thanks to the Jenkins community and Docker for providing amazing tools to simplify DevOps workflows.

---

## 📬 Contact

For questions or suggestions, feel free to reach out:
**Your Name** – [debasishm8765@gmail.com](mailto:debasishm8765@gmail.com)
GitHub: [https://github.com/Debasish-87](https://github.com/Debasish-87)

---

*Happy CI/CD-ing!* 🎉

```

---

### Notes:
- Replace `yourusername`, `your.email@example.com`, and image paths with your real info.
- Place your screenshots in an `images/` folder for neatness.
- You can add badges (like build status, license) if you want.

Would you like me to help generate a sample `Jenkinsfile` or anything else?
```
