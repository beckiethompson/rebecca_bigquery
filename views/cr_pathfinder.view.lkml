# The name of this view in Looker is "Cr Pathfinder"
view: cr_pathfinder {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.cr_pathfinder` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dashboard ID" in Explore.

  dimension: dashboard_id {
    type: string
    description: "The ID of the dashboard as seen in the Looker URL"
    sql: ${TABLE}.dashboardId ;;
  }

  dimension: dashboard_name {
    type: string
    description: "The name of the dashboard"
    sql: ${TABLE}.dashboardName ;;
  }

  dimension: model {
    type: string
    description: "The model where the LookML dashboard has been included"
    sql: ${TABLE}.model ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: modified {
    type: time
    description: "Last time the record was updated"
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: project {
    type: string
    description: "Designates the Looker project name"
    sql: ${TABLE}.project ;;
  }
  measure: count {
    type: count
    drill_fields: [dashboard_name]
  }
}
