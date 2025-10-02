Torque Terraform EC2 Environment

This repository contains a simple Terraform module and Torque blueprint used to deploy an EC2 instance in AWS via the Quali Torque platform. The goal of this project was to demonstrate hands-on experience with Infrastructure as Code (IaC), cloud orchestration, and automation.

Steps Performed

1. Install Torque Agent
	•	Logged into Torque dashboard and navigated to Agents.
	•	Installed a Kubernetes-based Torque agent in AWS EKS.
	•	Verified the agent status in Torque UI (green and connected).


<img width="1475" height="375" alt="connected_agent" src="https://github.com/user-attachments/assets/2b1f067a-341f-4c0e-af3f-47d5fb6dc6b5" />
<br><br>
2. Create and Commit Terraform Module
	•	Created terraform/ directory.
	•	Wrote Terraform configuration to provision a single EC2 instance:
	•	Initialized module with terraform init.
	•	Pushed module to GitHub repository.


<img width="1466" height="742" alt="git_terraform" src="https://github.com/user-attachments/assets/9285d029-d2e3-4bcb-acac-975f90aa3419" />
<br><br>
3. Connect Repo in Torque
	•	Navigated to Repositories in Torque.
	•	Added Git repository URL and selected branch.
	•	Synced repository to discover Terraform module as a grain.


<img width="1466" height="742" alt="connnected_reposipory" src="https://github.com/user-attachments/assets/006a0f24-2eb8-49d7-9929-faaaf482754d" />
<br><br>

4. Create a Blueprint
	•	Created a new blueprint in Torque.
	•	Added Terraform grain pointing to the module path.
	•	Configured inputs (AWS credentials via Torque secrets, AMI, key, region).
	•	Published the blueprint.

<img width="1466" height="943" alt="blueprint" src="https://github.com/user-attachments/assets/4e8b62eb-feb4-4d26-8edb-a26e583e1a4f" />
<br><br>

5. Launch the Environment
	•	Launched environment from blueprint.
	•	Monitored launch logs and ensured environment reached “Running” state.
	•	Verified EC2 instance in AWS console.


<img width="1466" height="943" alt="env_logs" src="https://github.com/user-attachments/assets/c2be8128-e8cc-44e1-9c98-f9d9e1282fcb" />
<br><br>

6. Outputs
	•	Exposed PublicIP output from Terraform grain in blueprint.
	•	Verified that the output is accessible from Torque environment details.

Screenshot: Output in Torque

Challenges & Optimizations
	1.	Runner issues: Initially, deployments failed because the runner was in an error state. Restarting the agent and ensuring proper namespace fixed the problem.
	2.	AWS credentials: Had to pass credentials via Torque secrets for Terraform to authenticate.
	3.	Namespace requirement: Adding namespace: default under the agent section resolved blueprint launch failures.
	4.	Terraform provider profile: Replaced profile with explicit access_key / secret_key to avoid shared config errors.
	5.	Optional: Could integrate GitHub Actions for CI/CD to automatically sync Terraform changes to Torque.

    Conclusion
	•	Successfully deployed a Torque environment with one Terraform grain.
	•	Demonstrated IaC, cloud automation, and DevOps best practices.
	•	Blueprint and Terraform module are production-ready for reuse.

    Repository Link: [Your GitHub Repo URL Here]
