# The name of this view in Looker is "Lr Jd6 Li1688784159027 Italy Province"
view: lr_jd6_li1688784159027_italy_province {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JD6LI1688784159027_italy_province` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Confirmed Cases" in Explore.

  dimension: confirmed_cases {
    type: number
    sql: ${TABLE}.confirmed_cases ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_confirmed_cases {
    type: sum
    sql: ${confirmed_cases} ;;  }
  measure: average_confirmed_cases {
    type: average
    sql: ${confirmed_cases} ;;  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: new_confirmed_cases {
    type: number
    sql: ${TABLE}.new_confirmed_cases ;;
  }

  dimension: province_abbreviation {
    type: string
    sql: ${TABLE}.province_abbreviation ;;
  }

  dimension: province_name {
    type: string
    sql: ${TABLE}.province_name ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.region_code ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.region_name ;;
  }
  measure: count {
    type: count
    drill_fields: [region_name, province_name]
  }
}
