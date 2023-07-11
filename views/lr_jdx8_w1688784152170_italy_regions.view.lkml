# The name of this view in Looker is "Lr Jdx8 W1688784152170 Italy Regions"
view: lr_jdx8_w1688784152170_italy_regions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JDX8W1688784152170_italy_regions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Change In Home Confinement Cases" in Explore.

  dimension: change_in_home_confinement_cases {
    type: number
    sql: ${TABLE}.change_in_home_confinement_cases ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_change_in_home_confinement_cases {
    type: sum
    sql: ${change_in_home_confinement_cases} ;;  }
  measure: average_change_in_home_confinement_cases {
    type: average
    sql: ${change_in_home_confinement_cases} ;;  }

  dimension: change_in_hospitalized_patients_intensive_care {
    type: number
    sql: ${TABLE}.change_in_hospitalized_patients_intensive_care ;;
  }

  dimension: change_in_hospitalized_patients_symptoms {
    type: number
    sql: ${TABLE}.change_in_hospitalized_patients_symptoms ;;
  }

  dimension: change_in_total_hospitalized_patients {
    type: number
    sql: ${TABLE}.change_in_total_hospitalized_patients ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}.deaths ;;
  }

  dimension: home_confinement_cases {
    type: number
    sql: ${TABLE}.home_confinement_cases ;;
  }

  dimension: hospitalized_patients_intensive_care {
    type: number
    sql: ${TABLE}.hospitalized_patients_intensive_care ;;
  }

  dimension: hospitalized_patients_symptoms {
    type: number
    sql: ${TABLE}.hospitalized_patients_symptoms ;;
  }

  dimension: new_current_confirmed_cases {
    type: number
    sql: ${TABLE}.new_current_confirmed_cases ;;
  }

  dimension: new_deaths {
    type: number
    sql: ${TABLE}.new_deaths ;;
  }

  dimension: new_recovered {
    type: number
    sql: ${TABLE}.new_recovered ;;
  }

  dimension: new_tests_performed {
    type: number
    sql: ${TABLE}.new_tests_performed ;;
  }

  dimension: new_total_confirmed_cases {
    type: number
    sql: ${TABLE}.new_total_confirmed_cases ;;
  }

  dimension: recovered {
    type: number
    sql: ${TABLE}.recovered ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.region_code ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.region_name ;;
  }

  dimension: tests_performed {
    type: number
    sql: ${TABLE}.tests_performed ;;
  }

  dimension: total_confirmed_cases {
    type: number
    sql: ${TABLE}.total_confirmed_cases ;;
  }

  dimension: total_current_confirmed_cases {
    type: number
    sql: ${TABLE}.total_current_confirmed_cases ;;
  }

  dimension: total_hospitalized_patients {
    type: number
    sql: ${TABLE}.total_hospitalized_patients ;;
  }
  measure: count {
    type: count
    drill_fields: [region_name]
  }
}
