# AWS Cloud Troubleshooting Project
This project demonstrates the use of Terraform to provision cloud infrastructure on AWS. The primary focus is to set up reusable modules, manage infrastructure efficiently, and simulate a real-world DevOps workflow. Currently, the project provisions an EC2 instance using a custom Terraform module.

## Goals
- Gain hands-on experience with Terraform and AWS.
- Build reusable Terraform modules for common infrastructure components.
- Simulate real-world cloud engineering tasks and troubleshoot issues.
- Automate deployments using CI/CD pipelines in future phases.

## Future Plans
- Add modules for additional resources like S3, RDS, and Load Balancers.
- Implement remote state management using AWS S3 and DynamoDB.
- Integrate a CI/CD pipeline for automated testing and deployment.
- Introduce intentional misconfigurations to simulate real-world troubleshooting scenarios.
- Integrate tools to generate issues and track resolutions via a ticketing system.

## Current State
- **Infrastructure**: Provisioning a single EC2 instance using a custom Terraform module.
- **Modules**: A reusable `ec2` module that supports variables for AMI, instance type, and name.
- **State Management**: Local state management for simplicity.
- **Provider**: AWS configured with the `region` variable.

## Repository Structure
.  
├── main.tf               # Root configuration for Terraform  
├── variables.tf          # Input variables for the project  
├── modules/              # Directory for reusable Terraform modules  
│   └── ec2/              # Module for EC2 instance provisioning  
│       ├── main.tf       # EC2 resource configuration  
│       └── variables.tf  # Variables for the EC2 module  
├── README.md             # Project documentation  

## How to Use This Project
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <repository-name>

2. Initialize Terraform:

    ```bash
    terraform init

    terraform plan

    terraform apply

3. Destroy resources when done:

    ```bash
    terraform destroy


### Prerequisites

```markdown
- AWS account and credentials configured (using `~/.aws/credentials` or environment variables).
- Terraform installed (version >= 1.0.0).
- Git installed and configured for version control.
```

## License
MIT License

## Acknowledgments
- [Terraform Documentation](https://www.terraform.io/docs)
- [AWS Documentation](https://docs.aws.amazon.com/)
