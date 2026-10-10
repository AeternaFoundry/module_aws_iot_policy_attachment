output "iot_policy_attachments_id" {
  description = "Map of id values across all iot_policy_attachments, keyed the same as var.iot_policy_attachments"
  value       = { for k, v in aws_iot_policy_attachment.iot_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_policy_attachments_policy" {
  description = "Map of policy values across all iot_policy_attachments, keyed the same as var.iot_policy_attachments"
  value       = { for k, v in aws_iot_policy_attachment.iot_policy_attachments : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "iot_policy_attachments_region" {
  description = "Map of region values across all iot_policy_attachments, keyed the same as var.iot_policy_attachments"
  value       = { for k, v in aws_iot_policy_attachment.iot_policy_attachments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_policy_attachments_target" {
  description = "Map of target values across all iot_policy_attachments, keyed the same as var.iot_policy_attachments"
  value       = { for k, v in aws_iot_policy_attachment.iot_policy_attachments : k => v.target if v.target != null && length(v.target) > 0 }
}

