
#----------------------------Credentials Values -------------------------------------------------#

equinix_client_id     = "xxxxxxxxxxxxxxxxxxx"
equinix_client_secret = "xxxxxxxxxxxxxxxxxxx"
auth_token            = "xxxxxxxxxxxxxxxxxxx"

#----------------------------Project Values -------------------------------------------------#

project_id = "3c764c94-abcde-41dd-90b9-123498e0b8720"

#----------------------------Primary Device Values -------------------------------------------------#

device_metro1 = "SG"
account_number1 = "12345"

#----------------------------Secondary Device Values -------------------------------------------------#
device_metro2 = "SG"
account_number2 = "12345"


#----------------------------Common Device Values -------------------------------------------------#

device_core_count = 2
device_type = "C8000V"
package_code = "network-essentials"
sw_version = "17.09.04a"
username = "testcr"
key_name = "testne"
acl_template_id = "123451c8-e79a-4e30-8983-3cabcde57e8f0"
notifications_emails = ["test@ap.equinix.com"]


#----------------------------Network Values -------------------------------------------------#

network_name = "EVPL-network"
network_type = "EVPLAN"
network_scope = "GLOBAL"

#----------------------------NE to EVPLAN VC Values -------------------------------------------------#


ne_evpl_vc_name  = "evplan-ne-vc"
ne_evpl_vc_bandwidth = 50
ne_evpl_vc_purchase_order_number = "1-322324"
ne_evpl_vc_interface_number = 8

#----------------------------NE to AWS VC Values -------------------------------------------------#

ne_aws_vc_name = "AWS-VC"
ne_aws_vc_type = "EVPL_VC"
ne_aws_vc_bandwidth = 50
ne_aws_vc_purchase_order_number = "1-322324"
ne_aws_vc_interface_number = 9
ne_aws_vc_authentication_key    = "1234456768"
ne_aws_vc_profile_uuid = "69ee618d-be52-468d-bc99-00566f2dd2b9"
ne_aws_vc_metro = "SG"
ne_aws_vc_seller_region = "ap-southeast-1"



#----------------------------Server Values -------------------------------------------------#

server_plan             = "m3.small.x86"
server_metro            = "SG"
server_operating_system = "ubuntu_20_04"
server_billing_cycle    = "hourly"
server_instance_count = 1
metal_project_id = "abcdef98-86af-123a-a50a-456c989ffe63"


#----------------------------NE to Metal VC Variables -------------------------------------------------#



ne_metal_vc_name       = "ServiceToken-VC"
ne_metal_vc_type       = "EVPL_VC"
ne_metal_vc_bandwidth             = 50
ne_metal_vc_purchase_order_number = "1-322324"

ne_metal_vc_interface_number      = 10
ne_metal_vc_zside_token     = "61b462d3-0e8f-44d5-9c14-3fd58abcde122"


