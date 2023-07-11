# The name of this view in Looker is "Lr Jdbmh1685511491568 Prior Days Cases Covid"
view: lr_jdbmh1685511491568_prior_days_cases_covid {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JDBMH1685511491568_prior_days_cases_covid` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Confirmed New" in Explore.

  dimension: confirmed_new {
    type: number
    sql: ${TABLE}.confirmed_new ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_confirmed_new {
    type: sum
    sql: ${confirmed_new} ;;  }
  measure: average_confirmed_new {
    type: average
    sql: ${confirmed_new} ;;  }

  dimension: confirmed_new_per_million {
    type: number
    sql: ${TABLE}.confirmed_new_per_million ;;
  }

  dimension: confirmed_running_total {
    type: number
    sql: ${TABLE}.confirmed_running_total ;;
  }

  dimension: confirmed_running_total_per_million {
    type: number
    sql: ${TABLE}.confirmed_running_total_per_million ;;
  }

  dimension: deaths_new {
    type: number
    sql: ${TABLE}.deaths_new ;;
  }

  dimension: deaths_new_per_million {
    type: number
    sql: ${TABLE}.deaths_new_per_million ;;
  }

  dimension: deaths_running_total {
    type: number
    sql: ${TABLE}.deaths_running_total ;;
  }

  dimension: deaths_running_total_per_million {
    type: number
    sql: ${TABLE}.deaths_running_total_per_million ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: measurement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.measurement_date ;;
  }

  dimension: pre_pk {
    type: string
    sql: ${TABLE}.pre_pk ;;
  }

  dimension: prior_1_days_confirmed_new {
    type: number
    sql: ${TABLE}.prior_1_days_confirmed_new ;;
  }

  dimension: prior_1_days_confirmed_new_per_million {
    type: number
    sql: ${TABLE}.prior_1_days_confirmed_new_per_million ;;
  }

  dimension: prior_1_days_confirmed_running_total {
    type: number
    sql: ${TABLE}.prior_1_days_confirmed_running_total ;;
  }

  dimension: prior_1_days_confirmed_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_1_days_confirmed_running_total_per_million ;;
  }

  dimension: prior_1_days_deaths_new {
    type: number
    sql: ${TABLE}.prior_1_days_deaths_new ;;
  }

  dimension: prior_1_days_deaths_new_per_million {
    type: number
    sql: ${TABLE}.prior_1_days_deaths_new_per_million ;;
  }

  dimension: prior_1_days_deaths_running_total {
    type: number
    sql: ${TABLE}.prior_1_days_deaths_running_total ;;
  }

  dimension: prior_1_days_deaths_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_1_days_deaths_running_total_per_million ;;
  }

  dimension: prior_2_days_confirmed_new {
    type: number
    sql: ${TABLE}.prior_2_days_confirmed_new ;;
  }

  dimension: prior_2_days_confirmed_new_per_million {
    type: number
    sql: ${TABLE}.prior_2_days_confirmed_new_per_million ;;
  }

  dimension: prior_2_days_confirmed_running_total {
    type: number
    sql: ${TABLE}.prior_2_days_confirmed_running_total ;;
  }

  dimension: prior_2_days_confirmed_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_2_days_confirmed_running_total_per_million ;;
  }

  dimension: prior_2_days_deaths_new {
    type: number
    sql: ${TABLE}.prior_2_days_deaths_new ;;
  }

  dimension: prior_2_days_deaths_new_per_million {
    type: number
    sql: ${TABLE}.prior_2_days_deaths_new_per_million ;;
  }

  dimension: prior_2_days_deaths_running_total {
    type: number
    sql: ${TABLE}.prior_2_days_deaths_running_total ;;
  }

  dimension: prior_2_days_deaths_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_2_days_deaths_running_total_per_million ;;
  }

  dimension: prior_3_days_confirmed_new {
    type: number
    sql: ${TABLE}.prior_3_days_confirmed_new ;;
  }

  dimension: prior_3_days_confirmed_new_per_million {
    type: number
    sql: ${TABLE}.prior_3_days_confirmed_new_per_million ;;
  }

  dimension: prior_3_days_confirmed_running_total {
    type: number
    sql: ${TABLE}.prior_3_days_confirmed_running_total ;;
  }

  dimension: prior_3_days_confirmed_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_3_days_confirmed_running_total_per_million ;;
  }

  dimension: prior_3_days_deaths_new {
    type: number
    sql: ${TABLE}.prior_3_days_deaths_new ;;
  }

  dimension: prior_3_days_deaths_new_per_million {
    type: number
    sql: ${TABLE}.prior_3_days_deaths_new_per_million ;;
  }

  dimension: prior_3_days_deaths_running_total {
    type: number
    sql: ${TABLE}.prior_3_days_deaths_running_total ;;
  }

  dimension: prior_3_days_deaths_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_3_days_deaths_running_total_per_million ;;
  }

  dimension: prior_4_days_confirmed_new {
    type: number
    sql: ${TABLE}.prior_4_days_confirmed_new ;;
  }

  dimension: prior_4_days_confirmed_new_per_million {
    type: number
    sql: ${TABLE}.prior_4_days_confirmed_new_per_million ;;
  }

  dimension: prior_4_days_confirmed_running_total {
    type: number
    sql: ${TABLE}.prior_4_days_confirmed_running_total ;;
  }

  dimension: prior_4_days_confirmed_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_4_days_confirmed_running_total_per_million ;;
  }

  dimension: prior_4_days_deaths_new {
    type: number
    sql: ${TABLE}.prior_4_days_deaths_new ;;
  }

  dimension: prior_4_days_deaths_new_per_million {
    type: number
    sql: ${TABLE}.prior_4_days_deaths_new_per_million ;;
  }

  dimension: prior_4_days_deaths_running_total {
    type: number
    sql: ${TABLE}.prior_4_days_deaths_running_total ;;
  }

  dimension: prior_4_days_deaths_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_4_days_deaths_running_total_per_million ;;
  }

  dimension: prior_5_days_confirmed_new {
    type: number
    sql: ${TABLE}.prior_5_days_confirmed_new ;;
  }

  dimension: prior_5_days_confirmed_new_per_million {
    type: number
    sql: ${TABLE}.prior_5_days_confirmed_new_per_million ;;
  }

  dimension: prior_5_days_confirmed_running_total {
    type: number
    sql: ${TABLE}.prior_5_days_confirmed_running_total ;;
  }

  dimension: prior_5_days_confirmed_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_5_days_confirmed_running_total_per_million ;;
  }

  dimension: prior_5_days_deaths_new {
    type: number
    sql: ${TABLE}.prior_5_days_deaths_new ;;
  }

  dimension: prior_5_days_deaths_new_per_million {
    type: number
    sql: ${TABLE}.prior_5_days_deaths_new_per_million ;;
  }

  dimension: prior_5_days_deaths_running_total {
    type: number
    sql: ${TABLE}.prior_5_days_deaths_running_total ;;
  }

  dimension: prior_5_days_deaths_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_5_days_deaths_running_total_per_million ;;
  }

  dimension: prior_6_days_confirmed_new {
    type: number
    sql: ${TABLE}.prior_6_days_confirmed_new ;;
  }

  dimension: prior_6_days_confirmed_new_per_million {
    type: number
    sql: ${TABLE}.prior_6_days_confirmed_new_per_million ;;
  }

  dimension: prior_6_days_confirmed_running_total {
    type: number
    sql: ${TABLE}.prior_6_days_confirmed_running_total ;;
  }

  dimension: prior_6_days_confirmed_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_6_days_confirmed_running_total_per_million ;;
  }

  dimension: prior_6_days_deaths_new {
    type: number
    sql: ${TABLE}.prior_6_days_deaths_new ;;
  }

  dimension: prior_6_days_deaths_new_per_million {
    type: number
    sql: ${TABLE}.prior_6_days_deaths_new_per_million ;;
  }

  dimension: prior_6_days_deaths_running_total {
    type: number
    sql: ${TABLE}.prior_6_days_deaths_running_total ;;
  }

  dimension: prior_6_days_deaths_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_6_days_deaths_running_total_per_million ;;
  }

  dimension: prior_7_days_confirmed_new {
    type: number
    sql: ${TABLE}.prior_7_days_confirmed_new ;;
  }

  dimension: prior_7_days_confirmed_new_per_million {
    type: number
    sql: ${TABLE}.prior_7_days_confirmed_new_per_million ;;
  }

  dimension: prior_7_days_confirmed_running_total {
    type: number
    sql: ${TABLE}.prior_7_days_confirmed_running_total ;;
  }

  dimension: prior_7_days_confirmed_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_7_days_confirmed_running_total_per_million ;;
  }

  dimension: prior_7_days_deaths_new {
    type: number
    sql: ${TABLE}.prior_7_days_deaths_new ;;
  }

  dimension: prior_7_days_deaths_new_per_million {
    type: number
    sql: ${TABLE}.prior_7_days_deaths_new_per_million ;;
  }

  dimension: prior_7_days_deaths_running_total {
    type: number
    sql: ${TABLE}.prior_7_days_deaths_running_total ;;
  }

  dimension: prior_7_days_deaths_running_total_per_million {
    type: number
    sql: ${TABLE}.prior_7_days_deaths_running_total_per_million ;;
  }
  measure: count {
    type: count
  }
}
