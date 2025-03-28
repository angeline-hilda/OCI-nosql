locals {
  table_creation_ddl_statements = {

    ##################################################################################################################
    # Fixed Schema - This table has explicitly defined columns
    # Partially flexible - only the 'info' column is JSON (semi-strucutred data), the rest of the fileds have fixed types
    #####################################################################################################################
    hybrid_ddl_statement = {
      statement  = <<-EOT
      CREATE TABLE if not exists ${var.hybrid_table_name} (
      id INTEGER,name STRING,
      info JSON,PRIMARY KEY(id)
      )
      EOT
      table_name = var.hybrid_table_name
    }
    #################################################################################################################################
    # Table has 2 columns. 
    # key   - autogenerated unique integer, acts as the Primary Key 
    # value - JSON field, fully flexible, allowing arbitary data structures
    # Fully flexible - Since value is JSON, it can store any data structure (nested objects, arrays. etc.), making schema changes easy
    #######################################################################################################################################

    schemaless_ddl_statement = {
      statement  = <<-EOT
      CREATE TABLE if not exists ${var.schemaless_table_name} (
      key INTEGER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 NO CYCLE),
      value JSON,
      name STRING,
      PRIMARY KEY (key)
      )
      EOT
      table_name = var.schemaless_table_name
    }
  }
}
module "nosql_demo" {
  source            = "./nosql"
  compartment_id    = var.compartment_id
  table_definitions = local.table_creation_ddl_statements
  max_read_units      = var.table_limits_max_read_units
  max_write_units     = var.table_limits_max_write_units
  max_storage_in_gbs  = var.table_limits_max_storage_in_gbs
  capacity_mode       = var.capacity_mode
  is_auto_reclaimable = var.is_auto_reclaimable


  providers = {
    oci             = oci
    oci.home_region = oci.home_region
  }
}





