# The name of this view in Looker is "Create Process Test"
view: create_process_test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.create_process_test` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Usa 1910 2013 Total Names" in Explore.

  dimension: usa_1910_2013_total_names {
    type: number
    sql: ${TABLE}.usa_1910_2013_total_names ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_usa_1910_2013_total_names {
    type: sum
    sql: ${usa_1910_2013_total_names} ;;  }
  measure: average_usa_1910_2013_total_names {
    type: average
    sql: ${usa_1910_2013_total_names} ;;  }

  dimension: usa_1910_2013_year {
    type: number
    sql: ${TABLE}.usa_1910_2013_year ;;
  }
  measure: count {
    type: count
  }
}
