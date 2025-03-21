output "table_name" {
  description = "The name of the created NoSQL table"
  value       = oci_nosql_table.nosql_table.name
}

output "table_id" {
  description = "The OCID of the created NoSQL table"
  value       = oci_nosql_table.nosql_table.id
}
