# The name of this view in Looker is "Country IP Range"
view: country_ip_range {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.country_ip_range` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: ip_range_end {
    type: number
    sql: ${TABLE}.ip_range_end ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ip_range_end {
    type: sum
    sql: ${ip_range_end} ;;  }
  measure: average_ip_range_end {
    type: average
    sql: ${ip_range_end} ;;  }

  dimension: ip_range_start {
    type: number
    sql: ${TABLE}.ip_range_start ;;
  }
  measure: count {
    type: count
  }
}
