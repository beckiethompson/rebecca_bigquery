# The name of this view in Looker is "Lr Jdqnz1677475436664 Hospital Bed Summary"
view: lr_jdqnz1677475436664_hospital_bed_summary {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JDQNZ1677475436664_hospital_bed_summary` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bed Utilization" in Explore.

  dimension: bed_utilization {
    type: number
    sql: ${TABLE}.BED_UTILIZATION ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bed_utilization {
    type: sum
    sql: ${bed_utilization} ;;  }
  measure: average_bed_utilization {
    type: average
    sql: ${bed_utilization} ;;  }

  dimension: cnty_fips {
    type: number
    sql: ${TABLE}.CNTY_FIPS ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.COUNTY_NAME ;;
  }

  dimension: fips {
    type: number
    sql: ${TABLE}.fips ;;
  }

  dimension: hospital_name {
    type: string
    sql: ${TABLE}.HOSPITAL_NAME ;;
  }

  dimension: hospital_type {
    type: string
    sql: ${TABLE}.HOSPITAL_TYPE ;;
  }

  dimension: hq_address {
    type: string
    sql: ${TABLE}.HQ_ADDRESS ;;
  }

  dimension: hq_address1 {
    type: string
    sql: ${TABLE}.HQ_ADDRESS1 ;;
  }

  dimension: hq_city {
    type: string
    sql: ${TABLE}.HQ_CITY ;;
  }

  dimension: hq_state {
    type: string
    sql: ${TABLE}.HQ_STATE ;;
  }

  dimension: hq_zip_code {
    type: string
    sql: ${TABLE}.HQ_ZIP_CODE ;;
  }

  dimension: num_icu_beds {
    type: number
    sql: ${TABLE}.NUM_ICU_BEDS ;;
  }

  dimension: num_licensed_beds {
    type: number
    sql: ${TABLE}.NUM_LICENSED_BEDS ;;
  }

  dimension: num_staffed_beds {
    type: number
    sql: ${TABLE}.NUM_STAFFED_BEDS ;;
  }

  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OBJECTID ;;
  }

  dimension: potential_increase_in_bed_capac {
    type: number
    sql: ${TABLE}.Potential_Increase_In_Bed_Capac ;;
  }

  dimension: state_fips {
    type: number
    sql: ${TABLE}.STATE_FIPS ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.STATE_NAME ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.X ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.Y ;;
  }
  measure: count {
    type: count
    drill_fields: [hospital_name, state_name, county_name]
  }
}
