# The name of this view in Looker is "Lr Jd2 Mn1677475493572 Covid Combined"
view: lr_jd2_mn1677475493572_covid_combined {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JD2MN1677475493572_covid_combined` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Combined Key" in Explore.

  dimension: combined_key {
    type: string
    sql: ${TABLE}.combined_key ;;
  }

  dimension: confirmed_cumulative {
    type: number
    sql: ${TABLE}.confirmed_cumulative ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_confirmed_cumulative {
    type: sum
    sql: ${confirmed_cumulative} ;;  }
  measure: average_confirmed_cumulative {
    type: average
    sql: ${confirmed_cumulative} ;;  }

  dimension: confirmed_new_cases {
    type: number
    sql: ${TABLE}.confirmed_new_cases ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: deaths_cumulative {
    type: number
    sql: ${TABLE}.deaths_cumulative ;;
  }

  dimension: deaths_new_cases {
    type: number
    sql: ${TABLE}.deaths_new_cases ;;
  }

  dimension: fips {
    type: number
    sql: ${TABLE}.fips ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: measurement {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.measurement_date ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }
  measure: count {
    type: count
  }
}
