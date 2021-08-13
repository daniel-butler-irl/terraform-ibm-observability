#####################################################
# Sysdig key
# Copyright 2020 IBM
#####################################################

<<<<<<< HEAD
output "sysdig_key_id" {
  description = "The ID of the sysdig key"
  value       = concat(ibm_resource_key.sysdigKey.*.id, [""])[0]
=======
output "id" {
  description = "The ID of the sysdig instance"
  value       = var.provision ? concat(ibm_resource_instance.sysdig_instance.*.id, [""])[0] : concat(data.ibm_resource_instance.sysdig.*.id, [""])[0]
>>>>>>> Ob root module (#10)
}

output "guid" {
  description = "The GUID of the sysdig instance"
<<<<<<< HEAD
  value       = ibm_resource_instance.sysdig_instance.guid
}

output "sysdig_id" {
  description = "The ID of the sysdig instance"
  value       = ibm_resource_instance.sysdig_instance.id
=======
  value       = var.provision ? concat(ibm_resource_instance.sysdig_instance.*.guid, [""])[0] : concat(data.ibm_resource_instance.sysdig.*.guid, [""])[0]
}

output "key_id" {
  description = "ID of the sysdig instance key"
  value       = concat(ibm_resource_key.sysdigKey.*.id, [""])[0]
}

output "key_guid" {
  description = "sysdig key guid"
  value       = concat(ibm_resource_key.sysdigKey.*.guid, [""])[0]
}

output "key_credentials" {
  description = "sysdig key credentials"
  value       = concat(ibm_resource_key.sysdigKey.*.credentials, [""])[0]
>>>>>>> Ob root module (#10)
}
