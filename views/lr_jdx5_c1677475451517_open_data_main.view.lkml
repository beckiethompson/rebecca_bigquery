# The name of this view in Looker is "Lr Jdx5 C1677475451517 Open Data Main"
view: lr_jdx5_c1677475451517_open_data_main {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JDX5C1677475451517_open_data_main` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cumulative Confirmed" in Explore.

  dimension: cumulative_confirmed {
    type: number
    sql: ${TABLE}.cumulative_confirmed ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cumulative_confirmed {
    type: sum
    sql: ${cumulative_confirmed} ;;  }
  measure: average_cumulative_confirmed {
    type: average
    sql: ${cumulative_confirmed} ;;  }

  dimension: cumulative_persons_fully_vaccinated {
    type: number
    sql: ${TABLE}.cumulative_persons_fully_vaccinated ;;
  }

  dimension: cumulative_persons_vaccinated {
    type: number
    sql: ${TABLE}.cumulative_persons_vaccinated ;;
  }

  dimension: cumulative_tested {
    type: number
    sql: ${TABLE}.cumulative_tested ;;
  }

  dimension: cumulative_vaccine_doses_administered {
    type: number
    sql: ${TABLE}.cumulative_vaccine_doses_administered ;;
  }

  dimension: cumulative_ventilator_patients {
    type: number
    sql: ${TABLE}.cumulative_ventilator_patients ;;
  }

  dimension: current_hospitalized_patients {
    type: number
    sql: ${TABLE}.current_hospitalized_patients ;;
  }

  dimension: current_ventilator_patients {
    type: number
    sql: ${TABLE}.current_ventilator_patients ;;
  }

  dimension: hospitalized_cumulative {
    type: number
    sql: ${TABLE}.hospitalized_cumulative ;;
  }

  dimension: location_key {
    type: string
    sql: ${TABLE}.location_key ;;
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

  dimension: new_confirmed {
    type: number
    sql: ${TABLE}.new_confirmed ;;
  }

  dimension: new_hospitalized_patients {
    type: number
    sql: ${TABLE}.new_hospitalized_patients ;;
  }

  dimension: new_persons_fully_vaccinated {
    type: number
    sql: ${TABLE}.new_persons_fully_vaccinated ;;
  }

  dimension: new_persons_vaccinated {
    type: number
    sql: ${TABLE}.new_persons_vaccinated ;;
  }

  dimension: new_tested {
    type: string
    sql: ${TABLE}.new_tested ;;
  }

  dimension: new_vaccine_doses_administered {
    type: number
    sql: ${TABLE}.new_vaccine_doses_administered ;;
  }

  dimension: new_ventilator_patients {
    type: number
    sql: ${TABLE}.new_ventilator_patients ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: subregion2_name {
    type: string
    sql: ${TABLE}.subregion2_name ;;
  }
  measure: count {
    type: count
    drill_fields: [state_name, subregion2_name]
  }
}
