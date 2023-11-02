module "resource_group" {
    source = "../../modules/resource_group"
}

module "acr" {
    source = "../../modules/acr"
    resource_group_name = "${module.resource_group.resource_group_name}"
    resource_group_location = "${module.resource_group.resource_group_location}"
}