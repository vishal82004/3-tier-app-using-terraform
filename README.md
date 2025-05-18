m

This project demonstrates the deployment of a 3-tier application architecture using Terraform. The 3-tier architecture typically consists of:

- **Presentation Layer**: Handles the user interface (e.g., web server).
- **Application Layer**: Processes application logic (e.g., application server).
- **Data Layer**: Manages data storage (e.g., database server).

## Features

- Infrastructure as Code (IaC) using Terraform
- Modular and reusable Terraform code
- Automated provisioning of network, compute, and storage resources
- Example variables and outputs for customization

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- Access to your target cloud provider (e.g., AWS, Azure, GCP) with appropriate credentials
- Basic understanding of Terraform and cloud networking

## Usage

1. **Clone the repository:**
    ```bash
    git clone <repository-url>
    cd terraform
    ```

2. **Initialize Terraform:**
    ```bash
    terraform init
    ```

3. **Review and customize variables:**
    Edit `variables.tf` or provide a `terraform.tfvars` file.

4. **Plan the deployment:**
    ```bash
    terraform plan
    ```

5. **Apply the configuration:**
    ```bash
    terraform apply
    ```

6. **Destroy resources when done:**
    ```bash
    terraform destroy
    ```

## Project Architecture

![image](https://github.com/user-attachments/assets/86d1c76f-cc8b-4cd2-8dd4-300659026396)


## Customization

- Modify variables in `variables.tf` to suit your environment.
- Extend modules for additional features or providers.


