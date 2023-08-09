connection: "bytecode_looker_bigquery"


include: "/explores/*.explore.lkml"
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

# datagroup: rebecca_bigquery_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: rebecca_bigquery_default_datagroup
