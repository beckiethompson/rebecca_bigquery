# The name of this view in Looker is "Weather Data"
view: weather_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.weather_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Apparent Temperature" in Explore.

  dimension: apparent_temperature {
    type: number
    sql: ${TABLE}.apparentTemperature ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_apparent_temperature {
    type: sum
    sql: ${apparent_temperature} ;;  }
  measure: average_apparent_temperature {
    type: average
    sql: ${apparent_temperature} ;;  }

  dimension: cloud_cover {
    type: number
    sql: ${TABLE}.cloudCover ;;
  }

  dimension: daily_icon {
    type: string
    sql: ${TABLE}.dailyIcon ;;
  }

  dimension: daily_summary {
    type: string
    sql: ${TABLE}.dailySummary ;;
  }

  dimension: dew_point {
    type: number
    sql: ${TABLE}.dewPoint ;;
  }

  dimension: humidity {
    type: number
    sql: ${TABLE}.humidity ;;
  }

  dimension: icon {
    type: string
    sql: ${TABLE}.icon ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: offset {
    type: number
    sql: ${TABLE}.offset ;;
  }

  dimension: precip_intensity {
    type: number
    sql: ${TABLE}.precipIntensity ;;
  }

  dimension: precip_probability {
    type: number
    sql: ${TABLE}.precipProbability ;;
  }

  dimension: pressure {
    type: number
    sql: ${TABLE}.pressure ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension: temperature {
    type: number
    sql: ${TABLE}.temperature ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  dimension: uv_index {
    type: number
    sql: ${TABLE}.uvIndex ;;
  }

  dimension: visibility {
    type: number
    sql: ${TABLE}.visibility ;;
  }

  dimension: wind_bearing {
    type: number
    sql: ${TABLE}.windBearing ;;
  }

  dimension: wind_gust {
    type: number
    sql: ${TABLE}.windGust ;;
  }

  dimension: wind_speed {
    type: number
    sql: ${TABLE}.windSpeed ;;
  }
  measure: count {
    type: count
  }
}
