
locals {
  nosql_demo_ddl_statement = format("CREATE TABLE if not exists %s (id INTEGER, name STRING, info JSON, PRIMARY KEY(id))", var.table_name)
}

module "nosql_demo" {
  source            = "./nosql"
  compartment_id  = var.compartment_id
  ddl_statement     = local.nosql_demo_ddl_statement
  table_name        = var.table_name
  max_read_units    = var.table_limits_max_read_units
  max_write_units   = var.table_limits_max_write_units
  max_storage_in_gbs = var.table_limits_max_storage_in_gbs
  capacity_mode = var.capacity_mode
  is_auto_reclaimable = var.is_auto_reclaimable


   providers = {
    oci             = oci
    oci.home_region = oci.home_region
  }
}



output "nosql_demo_table_name" {
  value = module.nosql_demo.table_name
}


