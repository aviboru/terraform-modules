# 📦 Terraform Modules

This repository contains reusable, production-grade Terraform modules to manage AWS and supporting resources.

---

## 🚀 Getting Started (Consume the Module)

You can use this module from another repo via Git source:

```hcl
module "eks" {
  source = "git::https://github.com/aviboru/terraform-eks-modules.git//modules/eks?ref=v1.0.0"

  cluster_name = "my-cluster"
  subnet_ids   = ["subnet-abc", "subnet-def"]
  vpc_id       = "vpc-xyz"
  # Add other inputs here
}
```

---

## 🛠 Releasing a New Version

This repo is versioned using Git tags. To release a new version:

```bash
git tag v1.1.0
git push origin v1.1.0
```

You can then update the `?ref=v1.1.0` in consuming repos.

---

## ✅ GitHub Actions

We include CI workflows to ensure modules are clean and deployable:

| Workflow        | What it Does                        |
|----------------|-------------------------------------|
| `terraform-validate.yml` | Checks for syntax and schema issues  |
| `terraform-fmt.yml`      | Ensures consistent formatting        |
| `terraform-plan.yml`     | Generates plan to preview changes   |

---

## 🧱 Contribution Guidelines

- Keep modules as composable and minimal as possible
- Use descriptive variable names and type checks
- Document each input/output in the module

### 📥 Example Input
```hcl
variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}
```

### 📤 Example Output
```hcl
output "cluster_endpoint" {
  description = "The endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}
```

---