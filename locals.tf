locals {
    common_tags = {
        project = var.project_name
        environment = var.environment
        Terraform = true
    }

    common_name_suffix = "${var.project_name}"     # roboshop-dev
    az_zone_names = slice(data.aws_availability_zones.available.names,0,2 )      # using slice function concept to get only 1st 2 aws_availability_zone
}