
resource "saviynt_security_system_resource" "example" {
  systemname                      = var.security_system_name
  display_name                    = var.security_system_name
  hostname                        = "EntitlementsOnly"
  port                            = "443"
  access_add_workflow             = "autoapprovalwf"
  access_remove_workflow          = "autoapprovalwf"
  add_service_account_workflow    = "autoapprovalwf"
  remove_service_account_workflow = "autoapprovalwf"
  automated_provisioning          = "true"
  use_open_connector              = "true"
  recon_application               = "true"
  instant_provision               = "true"
  provisioning_tries              = "3"
  provisioning_comments           = "Auto-provisioned by Terraform"
}


resource "saviynt_endpoint_resource" "endpoint" {
  endpoint_name                                 = var.endpoint_name
  display_name                                  = var.endpoint_name
  security_system                               = var.security_system_name
  description                                   = "Endpoint"
  owner_type                                    = "User"
  user_account_correlation_rule = "MATCH_ON_USERNAME"
  account_name_rule                             = "acct-$${user.email}"
  depends_on = [ saviynt_security_system_resource.example ]

}



resource "saviynt_entitlement_type_resource" "example" {
  # Required attributes
  entitlement_name = "Access"
  entitlement_description = "test ent type"
  endpoint_name    = var.endpoint_name
  depends_on = [ saviynt_endpoint_resource.endpoint ]



}


resource "saviynt_entitlement_resource" "entitlement1" {
  # Required attributes
  endpoint          = var.endpoint_name
  entitlement_type  = "Access"
  entitlement_value = "IT Administrators"
  risk            = 3
  status          = 1
  soxcritical     = 3
  syscritical     = 1

  depends_on = [ saviynt_entitlement_type_resource.example ]


}

resource "saviynt_entitlement_resource" "entitlement2" {
  # Required attributes
  endpoint          = var.endpoint_name
  entitlement_type  = "Access"
  entitlement_value = "HelpDesk"
  risk            = 3
  status          = 1
  soxcritical     = 3
  syscritical     = 1

  depends_on = [ saviynt_entitlement_type_resource.example ]


}

resource "saviynt_entitlement_resource" "entitlement3" {
  # Required attributes
  endpoint          = var.endpoint_name
  entitlement_type  = "Access"
  entitlement_value = "ReadOnly"
  risk            = 3
  status          = 1
  soxcritical     = 3
  syscritical     = 1

  depends_on = [ saviynt_entitlement_type_resource.example ]


}

output "security_system"{
    value = saviynt_security_system_resource.example.systemname
}

output "endpoint"{
    value = saviynt_endpoint_resource.endpoint.endpoint_name
}