# The name of this view in Looker is "Lr Jdsd31677475479825 Population By County State Country"
view: lr_jdsd31677475479825_population_by_county_state_country {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JDSD31677475479825_population_by_county_state_country` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Area Land Meters" in Explore.

  dimension: area_land_meters {
    type: number
    sql: ${TABLE}.area_land_meters ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_area_land_meters {
    type: sum
    sql: ${area_land_meters} ;;  }
  measure: average_area_land_meters {
    type: average
    sql: ${area_land_meters} ;;  }

  dimension: count_lr_jdsd31677475479825_population_by_county_state_country {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: fips {
    type: number
    sql: ${TABLE}.fips ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.population ;;
  }

  dimension: province_state {
    type: string
    sql: ${TABLE}.province_state ;;
  }
  measure: count {
    type: count
  }
}
