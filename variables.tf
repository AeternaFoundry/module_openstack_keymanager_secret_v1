variable "keymanager_secret_v1s" {
  description = <<EOT
Map of keymanager_secret_v1s, attributes below
Optional:
    - algorithm
    - bit_length
    - expiration
    - metadata
    - mode
    - name
    - payload
    - payload_content_encoding
    - payload_content_type
    - region
    - secret_type
    - acl (block):
        - read (optional, block):
            - project_access (optional)
            - users (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    algorithm                = optional(string)
    bit_length               = optional(number)
    expiration               = optional(string)
    metadata                 = optional(map(string))
    mode                     = optional(string)
    name                     = optional(string)
    payload                  = optional(string)
    payload_content_encoding = optional(string)
    payload_content_type     = optional(string)
    region                   = optional(string)
    secret_type              = optional(string)
    acl = optional(object({
      read = optional(object({
        project_access = optional(bool)
        users          = optional(set(string))
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.keymanager_secret_v1s : (
        v.secret_type == null || (contains(["symmetric", "public", "private", "passphrase", "certificate", "opaque"], v.secret_type))
      )
    ])
    error_message = "must be one of: \"symmetric\", \"public\", \"private\", \"passphrase\", \"certificate\", \"opaque\""
  }
  validation {
    condition = alltrue([
      for k, v in var.keymanager_secret_v1s : (
        v.payload_content_type == null || (contains([for v in ["text/plain", "text/plain;charset=utf-8", "text/plain; charset=utf-8", "application/octet-stream", "application/pkcs8"] : lower(v)], lower(v.payload_content_type)))
      )
    ])
    error_message = "must be one of: \"text/plain\", \"text/plain;charset=utf-8\", \"text/plain; charset=utf-8\", \"application/octet-stream\", \"application/pkcs8\""
  }
  validation {
    condition = alltrue([
      for k, v in var.keymanager_secret_v1s : (
        v.payload_content_encoding == null || (contains(["base64", "binary"], v.payload_content_encoding))
      )
    ])
    error_message = "must be one of: \"base64\", \"binary\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

