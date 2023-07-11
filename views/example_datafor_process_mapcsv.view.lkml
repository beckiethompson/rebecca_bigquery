# The name of this view in Looker is "Example Datafor Process Mapcsv"
view: example_datafor_process_mapcsv {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.exampleDataforProcessMapcsv` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activity Alias Name" in Explore.

  dimension: activity_alias_name {
    type: string
    sql: ${TABLE}.activity_alias_name ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: case_id {
    type: string
    sql: ${TABLE}.CaseID ;;
  }

  dimension: countofparticipant_id {
    type: string
    sql: ${TABLE}.Countofparticipant_id ;;
  }

  dimension: event_count {
    type: string
    sql: ${TABLE}.Event_Count ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pt_m {
    type: string
    sql: ${TABLE}.PT_m ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }

  dimension: subprocess {
    type: string
    sql: ${TABLE}.Subprocess ;;
  }
  measure: count {
    type: count
    drill_fields: [activity_alias_name, name]
  }
}
