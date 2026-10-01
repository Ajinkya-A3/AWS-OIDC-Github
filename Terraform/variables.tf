variable "aws_region" {
  description = "AWS region for the provider"
  type        = string
  default     = "ap-south-1"
}

variable "github_username" {
  description = "Your GitHub username (case-sensitive, exactly as shown on GitHub)"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name without the username (case-sensitive)"
  type        = string
}

variable "github_branch" {
  description = "Branch allowed to assume the role"
  type        = string
  default     = "main"
}

variable "role_name" {
  description = "Name of the IAM role GitHub Actions will assume"
  type        = string
  default     = "github-actions-deploy"
}

variable "create_oidc_provider" {
  description = "Set to false if the GitHub OIDC provider already exists in this AWS account (only one allowed per account)"
  type        = bool
  default     = true
}

variable "max_session_duration" {
  description = "Max session length in seconds (3600 to 43200)"
  type        = number
  default     = 3600
}

variable "policy_arns" {
  description = "Managed policy ARNs to attach to the role. Use least-privilege policies."
  type        = list(string)
  default     = [] 
}