# Terraform Kubernetes Cluster

This Terraform project deploys a Kubernetes cluster on AWS.

## Prerequisites

Ensure you have the following prerequisites before using this Terraform project:

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- AWS credentials configured either through environment variables or the AWS CLI.

## Usage

1. Clone this repository:

    ```bash
    git clone https://github.com/yourusername/terraform-k8s.git
    cd terraform-k8s
    ```

2. Create a `terraform.tfvars` file with your desired variable values:

    ```hcl
    region       = "us-west-2"
    cluster_name = "my-k8s-cluster"
    ```

3. Initialize the Terraform configuration:

    ```bash
    terraform init
    ```

4. Apply the Terraform configuration:

    ```bash
    terraform apply
    ```

5. Review and confirm the changes.

6. Once the Kubernetes cluster is created, outputs such as the cluster endpoint and certificate authority data will be displayed.

## Outputs

The following outputs are available after running `terraform apply`:

- `k8s_cluster_endpoint`: The endpoint of the created Kubernetes cluster.
- `k8s_cluster_certificate_authority_data`: The certificate authority data for the Kubernetes cluster.

## Cleanup

To destroy the created resources and release associated AWS resources, run:

```bash
terraform destroy
