# general oci parameters

api_fingerprint      = "c2:d9:b9:45:05:1b:8d:64:0f:71:34:13:c9:86:21:12"
api_private_key_path = "/Users/anw/.oci/keys_t.pem"

home_region = "us-ashburn-1"
region      = "ap-mumbai-1"
tenancy_id  = "ocid1.tenancy.oc1..aaaaaaaalylrk6bjiuxqryukd6jrlxgfbwjuulnavxqehvv3crknt7ewhlpa"
user_id     = "ocid1.user.oc1..aaaaaaaatrqrjqypybmqqomamyyuzdjjclaws3fox4cz6v6cmxhlbfsdediq"


compartment_id = "ocid1.compartment.oc1..aaaaaaaazkbiglujngzerf6f2zi4uzfy6akurxhevpya7xvi6c7geoh4e6ka"



############################ NOSQL #####################################################

########################## TABLE ##################################################

hybrid_table_name     = "nosql_demo"
schemaless_table_name = "nosql_demo_schemaless"
#nosql_demo_ddl_statement = "CREATE TABLE if not exists nosql_demo (id INTEGER,name STRING, info JSON, PRIMARY KEY(id))"
table_limits_max_read_units     = 50
table_limits_max_storage_in_gbs = 20
table_limits_max_write_units    = 50
is_auto_reclaimable             = false
capacity_mode                   = "PROVISIONED"



###################### REPLICA #########################################
replica_region          = "ap-hyderabad-1"
replica_max_read_units  = 50
replica_max_write_units = 50
#table_name_or_id = 


#topic_id = "ocid1.onstopic.oc1.ap-mumbai-1.amaaaaaazxsy2naajgklizznr2tj2lfltfngw2rxouo3krofvdanve3wnepa"



