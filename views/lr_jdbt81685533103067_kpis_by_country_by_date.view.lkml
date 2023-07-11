# The name of this view in Looker is "Lr Jdbt81685533103067 Kpis By Country By Date"
view: lr_jdbt81685533103067_kpis_by_country_by_date {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JDBT81685533103067_kpis_by_country_by_date` ;;

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

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: days_since_first_outbreak {
    type: number
    sql: ${TABLE}.days_since_first_outbreak ;;
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

  dimension: doubling_time_confirmed_cases_new_per_million {
    type: number
    sql: ${TABLE}.doubling_time_confirmed_cases_new_per_million ;;
  }

  dimension: doubling_time_confirmed_cases_rolling_total_per_million {
    type: number
    sql: ${TABLE}.doubling_time_confirmed_cases_rolling_total_per_million ;;
  }

  dimension: doubling_time_deaths_new_per_million {
    type: number
    sql: ${TABLE}.doubling_time_deaths_new_per_million ;;
  }

  dimension: doubling_time_deaths_rolling_total_per_million {
    type: number
    sql: ${TABLE}.doubling_time_deaths_rolling_total_per_million ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: measurement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.measurement_date ;;
  }
  measure: count {
    type: count
  }
}
