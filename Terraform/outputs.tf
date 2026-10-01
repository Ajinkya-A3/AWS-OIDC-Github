output "github_actions_role_arn" {
  description = "Role ARN to use in the GitHub Actions workflow"
  value       = aws_iam_role.github_actions.arn
}

output "oidc_provider_arn" {
  description = "ARN of the GitHub OIDC provider"
  value       = local.oidc_provider_arn
}

output "allowed_subject" {
  description = "The GitHub token subject allowed to assume the role"
  value       = local.github_sub
}