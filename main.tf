

module "metal" {
   source         = "git::github.com/Eqix-ProjectX/terraform-equinix-metal-instance"  
   project_id     = var.metal_project_id
   nums           = var.server_instance_count
   metro          = var.server_metro
   operating_system = var.server_operating_system
   plan = var.server_plan
   billing_cycle = var.server_billing_cycle
}


module "ne" {
   source             = "git::github.com/Eqix-ProjectX/terraform-equinix-networkedge-vnf"  
   core_count         = var.device_core_count
   metro_code         = var.device_metro1
   sec_metro_code     = var.device_metro2
   notifications      = var.notifications_emails
   package_code       = var.package_code
   type_code          = var.device_type
   account_number     = var.account_number1
   sec_account_number = var.account_number2
   ver                = var.sw_version
   username           = var.username
   key_name           = var.key_name
   acl_template_id    = var.acl_template_id
}



module "evplan" {
   source             = "git::github.com/Eqix-ProjectX/terraform-equinix-evplan"
   network_name       = var.network_name
   network_type       = var.network_type
   scope              = var.network_scope
   notifications_emails  = var.notifications_emails
   project_id           = var.project_id
   equinix_client_id = var.equinix_client_id
   equinix_client_secret = var.equinix_client_secret
}


module "ne-evplan-vc" {
   source                = "git::github.com/Eqix-ProjectX/terraform-equinix-virtualconnection-evplan"
   connection_name       = var.ne_evpl_vc_name
   notifications_emails  = var.notifications_emails
   bandwidth             = var.ne_evpl_vc_bandwidth
   purchase_order_number = var.ne_evpl_vc_purchase_order_number
   device_uuid           = module.ne.vd_uuid
   interface_number      = var.ne_evpl_vc_interface_number
   network_id            = module.evplan.EVPLAN_network_id
   project_id            = var.project_id
   equinix_client_id     = var.equinix_client_id
   equinix_client_secret = var.equinix_client_secret
}


module "aws-ne-vc" {
source             = "git::github.com/Eqix-ProjectX/terraform-equinix-virtualconnection-aws"
connection_name       = var.ne_aws_vc_name
connection_type       = var.ne_aws_vc_type
notifications_emails  = var.notifications_emails
bandwidth             = var.ne_aws_vc_bandwidth
purchase_order_number = var.ne_aws_vc_purchase_order_number
device_uuid           = module.ne.vd_uuid
interface_number      = var.ne_aws_vc_interface_number
authentication_key    = var.ne_aws_vc_authentication_key
profile_uuid          = var.ne_aws_vc_profile_uuid
metro                 = var.ne_aws_vc_metro
seller_region         = var.ne_aws_vc_seller_region
equinix_client_id = var.equinix_client_id
equinix_client_secret = var.equinix_client_secret
}



module "ne-metal-vc" {
   source                = "git::github.com/Eqix-ProjectX/terraform-equinix-virtualconnection-servicetoken"
   connection_name       = var.ne_metal_vc_name
   connection_type       = var.ne_metal_vc_type
   notifications_emails  = var.notifications_emails
   bandwidth             = var.ne_metal_vc_bandwidth
   purchase_order_number = var.ne_metal_vc_purchase_order_number
   device_uuid           = module.ne.vd_uuid
   interface_number      = var.ne_metal_vc_interface_number
   servicetoken_uuid     = var.ne_metal_vc_zside_token
   equinix_client_id = var.equinix_client_id
   equinix_client_secret = var.equinix_client_secret
}

