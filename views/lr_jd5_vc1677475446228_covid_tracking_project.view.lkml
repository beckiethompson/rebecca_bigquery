# The name of this view in Looker is "Lr Jd5 Vc1677475446228 Covid Tracking Project"
view: lr_jd5_vc1677475446228_covid_tracking_project {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JD5VC1677475446228_covid_tracking_project` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Death Cumulative" in Explore.

  dimension: death_cumulative {
    type: number
    sql: ${TABLE}.death_cumulative ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_death_cumulative {
    type: sum
    sql: ${death_cumulative} ;;  }
  measure: average_death_cumulative {
    type: average
    sql: ${death_cumulative} ;;  }

  dimension: death_new_cases {
    type: number
    sql: ${TABLE}.death_new_cases ;;
  }

  dimension: hospitalized_cumulative {
    type: number
    sql: ${TABLE}.hospitalized_cumulative ;;
  }

  dimension: hospitalized_currently {
    type: number
    sql: ${TABLE}.hospitalizedCurrently ;;
  }

  dimension: hospitalized_new_cases {
    type: number
    sql: ${TABLE}.hospitalized_new_cases ;;
  }

  dimension: in_icu_cumulative {
    type: number
    sql: ${TABLE}.inIcu_Cumulative ;;
  }

  dimension: in_icu_currently {
    type: number
    sql: ${TABLE}.inIcuCurrently ;;
  }

  dimension: in_icu_new_cases {
    type: number
    sql: ${TABLE}.inIcu_new_cases ;;
  }

  dimension: measurement_date {
    type: number
    sql: ${TABLE}.measurement_date ;;
  }

  dimension: negative_cumulative {
    type: number
    sql: ${TABLE}.negative_cumulative ;;
  }

  dimension: negative_new_cases {
    type: number
    sql: ${TABLE}.negative_new_cases ;;
  }

  dimension: on_ventilator_cumulative {
    type: number
    sql: ${TABLE}.onVentilator_Cumulative ;;
  }

  dimension: on_ventilator_currently {
    type: number
    sql: ${TABLE}.onVentilatorCurrently ;;
  }

  dimension: on_ventilator_new_cases {
    type: number
    sql: ${TABLE}.onVentilator_new_cases ;;
  }

  dimension: pending_cumulative {
    type: number
    sql: ${TABLE}.pending_cumulative ;;
  }

  dimension: pending_new_cases {
    type: number
    sql: ${TABLE}.pending_new_cases ;;
  }

  dimension: positive_cumulative {
    type: number
    sql: ${TABLE}.positive_cumulative ;;
  }

  dimension: positive_new_cases {
    type: number
    sql: ${TABLE}.positive_new_cases ;;
  }

  dimension: recovered_cumulative {
    type: number
    sql: ${TABLE}.recovered_cumulative ;;
  }

  dimension: recovered_new_cases {
    type: number
    sql: ${TABLE}.recovered_new_cases ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: total_cumulative {
    type: number
    sql: ${TABLE}.total_cumulative ;;
  }

  dimension: total_new_cases {
    type: number
    sql: ${TABLE}.total_new_cases ;;
  }
  measure: count {
    type: count
  }
}
