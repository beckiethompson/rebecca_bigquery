# The name of this view in Looker is "Lr Jd7 Rc1638902969720 Italy Region Stats"
view: lr_jd7_rc1638902969720_italy_region_stats {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JD7RC1638902969720_italy_region_stats` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Area Km2" in Explore.

  dimension: area_km2 {
    type: number
    sql: ${TABLE}.area_km2 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_area_km2 {
    type: sum
    sql: ${area_km2} ;;  }
  measure: average_area_km2 {
    type: average
    sql: ${area_km2} ;;  }

  dimension: codice_regione {
    type: number
    sql: ${TABLE}.codice_regione ;;
  }

  dimension: codice_regione_str {
    type: string
    sql: ${TABLE}.codice_regione_str ;;
  }

  dimension: denominazione_regione {
    type: string
    sql: ${TABLE}.denominazione_regione ;;
  }

  dimension: popolazione {
    type: number
    sql: ${TABLE}.popolazione ;;
  }
  measure: count {
    type: count
  }
}
