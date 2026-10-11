resource "openstack_keymanager_secret_v1" "keymanager_secret_v1s" {
  for_each = var.keymanager_secret_v1s

  algorithm                = each.value.algorithm
  bit_length               = each.value.bit_length
  expiration               = each.value.expiration
  metadata                 = each.value.metadata
  mode                     = each.value.mode
  name                     = each.value.name
  payload                  = each.value.payload
  payload_content_encoding = each.value.payload_content_encoding
  payload_content_type     = each.value.payload_content_type
  region                   = each.value.region
  secret_type              = each.value.secret_type

  dynamic "acl" {
    for_each = each.value.acl != null ? [each.value.acl] : []
    content {
      dynamic "read" {
        for_each = acl.value.read != null ? [acl.value.read] : []
        content {
          project_access = read.value.project_access
          users          = read.value.users
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

