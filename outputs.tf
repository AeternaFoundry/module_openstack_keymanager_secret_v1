output "keymanager_secret_v1s_id" {
  description = "Map of id values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no id are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "keymanager_secret_v1s_acl" {
  description = "Map of acl values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no acl are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => one(v.acl) if v.acl != null && length(v.acl) > 0 }
}
output "keymanager_secret_v1s_algorithm" {
  description = "Map of algorithm values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no algorithm are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.algorithm if v.algorithm != null && length(v.algorithm) > 0 }
}
output "keymanager_secret_v1s_all_metadata" {
  description = "Map of all_metadata values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no all_metadata are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.all_metadata if v.all_metadata != null && length(v.all_metadata) > 0 }
}
output "keymanager_secret_v1s_bit_length" {
  description = "Map of bit_length values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no bit_length are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.bit_length if v.bit_length != null }
}
output "keymanager_secret_v1s_content_types" {
  description = "Map of content_types values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no content_types are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.content_types if v.content_types != null && length(v.content_types) > 0 }
}
output "keymanager_secret_v1s_created_at" {
  description = "Map of created_at values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no created_at are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "keymanager_secret_v1s_creator_id" {
  description = "Map of creator_id values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no creator_id are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.creator_id if v.creator_id != null && length(v.creator_id) > 0 }
}
output "keymanager_secret_v1s_expiration" {
  description = "Map of expiration values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no expiration are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.expiration if v.expiration != null && length(v.expiration) > 0 }
}
output "keymanager_secret_v1s_metadata" {
  description = "Map of metadata values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no metadata are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "keymanager_secret_v1s_mode" {
  description = "Map of mode values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no mode are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "keymanager_secret_v1s_name" {
  description = "Map of name values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no name are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "keymanager_secret_v1s_payload" {
  description = "Map of payload values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no payload are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.payload if v.payload != null && length(v.payload) > 0 }
  sensitive   = true
}
output "keymanager_secret_v1s_payload_content_encoding" {
  description = "Map of payload_content_encoding values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no payload_content_encoding are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.payload_content_encoding if v.payload_content_encoding != null && length(v.payload_content_encoding) > 0 }
}
output "keymanager_secret_v1s_payload_content_type" {
  description = "Map of payload_content_type values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no payload_content_type are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.payload_content_type if v.payload_content_type != null && length(v.payload_content_type) > 0 }
}
output "keymanager_secret_v1s_region" {
  description = "Map of region values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no region are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "keymanager_secret_v1s_secret_ref" {
  description = "Map of secret_ref values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no secret_ref are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.secret_ref if v.secret_ref != null && length(v.secret_ref) > 0 }
}
output "keymanager_secret_v1s_secret_type" {
  description = "Map of secret_type values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no secret_type are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.secret_type if v.secret_type != null && length(v.secret_type) > 0 }
}
output "keymanager_secret_v1s_status" {
  description = "Map of status values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no status are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.status if v.status != null && length(v.status) > 0 }
}
output "keymanager_secret_v1s_updated_at" {
  description = "Map of updated_at values across all keymanager_secret_v1s, keyed the same as var.keymanager_secret_v1s except keys with no updated_at are omitted"
  value       = { for k, v in openstack_keymanager_secret_v1.keymanager_secret_v1s : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

