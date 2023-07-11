# The name of this view in Looker is "Lr Jdsea1638903022345 Policies By State"
view: lr_jdsea1638903022345_policies_by_state {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_scratch.LR_JDSEA1638903022345_policies_by_state` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bar Restaurant Limits" in Explore.

  dimension: bar__restaurant_limits {
    type: string
    sql: ${TABLE}.Bar__Restaurant_Limits ;;
  }

  dimension: early_prescription_refills {
    type: string
    sql: ${TABLE}.Early_Prescription_Refills ;;
  }

  dimension: free_cost_vaccine_when_available {
    type: string
    sql: ${TABLE}.Free_Cost_Vaccine_When_Available ;;
  }

  dimension: large_gatherings_ban {
    type: string
    sql: ${TABLE}.Large_Gatherings_Ban ;;
  }

  dimension: mandatory_quarantine {
    type: string
    sql: ${TABLE}.Mandatory_Quarantine ;;
  }

  dimension: marketplace_special_enrollment_period__sep_ {
    type: string
    sql: ${TABLE}.Marketplace_Special_Enrollment_Period__SEP_ ;;
  }

  dimension: non_essential_business_closures {
    type: string
    sql: ${TABLE}.Non_Essential_Business_Closures ;;
  }

  dimension: paid_sick_leave {
    type: string
    sql: ${TABLE}.Paid_Sick_Leave ;;
  }

  dimension: primary_election_postponement {
    type: string
    sql: ${TABLE}.Primary_Election_Postponement ;;
  }

  dimension: section_1135_waiver {
    type: string
    sql: ${TABLE}.Section_1135_Waiver ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_requires_waiver_of_prior_authorization_requirements {
    type: string
    sql: ${TABLE}.State_Requires_Waiver_of_Prior_Authorization_Requirements ;;
  }

  dimension: waive_cost_sharing_for_covid_19_treatment {
    type: string
    sql: ${TABLE}.Waive_Cost_Sharing_for_COVID_19_Treatment ;;
  }
  measure: count {
    type: count
  }
}
