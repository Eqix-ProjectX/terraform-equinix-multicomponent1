

#----------------------------Credentials Variables -------------------------------------------------#

variable "equinix_client_id" {
  description = "Equinix client ID (consumer key), obtained after registering app in the developer platform"
  type        = string
}
variable "equinix_client_secret" {
  description = "Equinix client secret ID (consumer secret), obtained after registering app in the developer platform"
  type        = string
}


variable "auth_token" {
  description = "Metal token"
  type        = string
}

#----------------------------Project Variables -------------------------------------------------#

variable "project_id" {
description = "Project ID" 
 type        = string
}

variable "metal_project_id" {
description = "Metal Project ID" 
 type        = string
}


#----------------------------Primary Device Variables -------------------------------------------------#

/*
variable "device_name1" {
description = "Name of first device" 
 type        = string
}*/


variable "device_metro1" {
  description = "Metro in which the first device is deployed" 
  type        = string
}

variable "account_number1" {
  description = "Account Number for the first device" 
  type        = number
}


#----------------------------Secondary Device Variables -------------------------------------------------#

/*
variable "device_name2" {
description = "Name of second device" 
 type        = string
}
*/

variable "device_metro2" {
  description = "Metro in which the second device is deployed" 
  type        = string
}

variable "account_number2" {
  description = "Account Number for the second device" 
  type        = number
}

#----------------------------Common Device Variables -------------------------------------------------#

variable "device_core_count" {
  description = "Device core"
  type        = number
}

variable "device_type" {
  description = "Device Type" 
  type        = string
}

variable "package_code" {
  description = "Package code" 
  type        = string
}

variable "notifications_emails" {
  description = "Email addresses" 
  type        = list(string)
}


variable "sw_version" {
  description = "Device Software Version" 
  type        = string
}


variable "username" {
description = "SSH Username" 
  type        = string
}

variable "key_name" {
  description = "Public SSH Key Name" 
  type        = string
}


variable "acl_template_id" {
  description = "ACL Template for device" 
  type        = string
}

#----------------------------Network Variables -------------------------------------------------#


variable "network_name" {
description = "Name of the network" 
 type        = string
}


variable "network_type" {
description = "Type of network" 
 type        = string
}


variable "network_scope" {
description = "Scope of network" 
 type        = string
}


#----------------------------NE to EVPLAN VC Variables -------------------------------------------------#


variable "ne_evpl_vc_name" {
description = "Name of the VC" 
 type        = string
}

variable "ne_evpl_vc_bandwidth" {
  description = "Connection bandwidth in Mbps"
  type        = number
}

variable "ne_evpl_vc_purchase_order_number" {
  description = "Purchase order number"
  type        = string
}


variable "ne_evpl_vc_interface_number" {
  description = "Device Interface"
  type        = string
}

#----------------------------NE to AWS VC Variables -------------------------------------------------#


variable "ne_aws_vc_name" {
  description = "Connection name. An alpha-numeric 24 characters string which can include only hyphens and underscores"
  type        = string
}
variable "ne_aws_vc_type" {
  description = "Defines the connection type like VG_VC, EVPL_VC, EPL_VC, EC_VC, IP_VC, ACCESS_EPL_VC"
  type        = string
}


variable "ne_aws_vc_bandwidth" {
  description = "Connection bandwidth in Mbps"
  type        = number
}

variable "ne_aws_vc_purchase_order_number" {
  description = "Purchase order number"
  type        = string
}


variable "ne_aws_vc_interface_number" {
  description = "Device Interface"
  type        = string
}
variable "ne_aws_vc_authentication_key" {
  description = "AWS key"
  type        = string
}
variable "ne_aws_vc_profile_uuid" {
  description = "AWS profile UUID"
  type        = string
}
variable "ne_aws_vc_metro" {
  description = "Metro"
  type        = string
}

variable "ne_aws_vc_seller_region" {
  description = "AWS Seller region"
  type        = string
}


#----------------------------Server Variables -------------------------------------------------#


variable "server_instance_count" {
description = "Server Instance count" 
 type        = string
}


variable "server_plan" {
description = "Server Plan" 
 type        = string
}

variable "server_metro" {
description = "Server Metro" 
 type        = string
}

variable "server_operating_system" {
description = "Server OS" 
 type        = string
}

variable "server_billing_cycle" {
description = "Server billing" 
 type        = string
}


#----------------------------NE to Metal VC Variables -------------------------------------------------#

variable "ne_metal_vc_name" {
description = "Name of the VC" 
 type        = string
}

variable "ne_metal_vc_type" {
  description = "Defines the connection type like VG_VC, EVPL_VC, EPL_VC, EC_VC, IP_VC, ACCESS_EPL_VC"
  type        = string
}


variable "ne_metal_vc_bandwidth" {
  description = "Connection bandwidth in Mbps"
  type        = number
}

variable "ne_metal_vc_purchase_order_number" {
  description = "Purchase order number"
  type        = string
}


variable "ne_metal_vc_interface_number" {
  description = "Device Interface"
  type        = string
}


variable "ne_metal_vc_zside_token" {
  description = "Fabric billed Z side token"
  type        = string
}