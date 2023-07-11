# The name of this view in Looker is "Emp Tree Dt2"
view: emp_tree_dt2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.emp_tree_dt2` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Emp ID" in Explore.

  dimension: emp_id {
    type: number
    sql: ${TABLE}.emp_id ;;
  }

  dimension: manager_id {
    type: number
    sql: ${TABLE}.manager_id ;;
  }
  measure: count {
    type: count
  }
}
