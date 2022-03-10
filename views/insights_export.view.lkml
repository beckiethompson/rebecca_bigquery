# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: insights_export {
  hidden: yes

  join: insights_export__target_resources {
    view_label: "Insights Export: Target Resources"
    sql: LEFT JOIN UNNEST(${insights_export.target_resources}) as insights_export__target_resources ;;
    relationship: one_to_many
  }

  join: insights_export__ancestors__folder_ids {
    view_label: "Insights Export: Ancestors Folder Ids"
    sql: LEFT JOIN UNNEST(${insights_export.ancestors__folder_ids}) as insights_export__ancestors__folder_ids ;;
    relationship: one_to_many
  }

  join: insights_export__associated_recommendations {
    view_label: "Insights Export: Associated Recommendations"
    sql: LEFT JOIN UNNEST(${insights_export.associated_recommendations}) as insights_export__associated_recommendations ;;
    relationship: one_to_many
  }
}

view: insights_export {
  sql_table_name: `bytecode-looker-data-source.gcp_billing.insights_export`
    ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: ancestors__folder_ids {
    hidden: yes
    sql: ${TABLE}.ancestors.folder_ids ;;
    group_label: "Ancestors"
    group_item_label: "Folder Ids"
  }

  dimension: ancestors__organization_id {
    type: string
    description: "Organization to which the recommendation project"
    sql: ${TABLE}.ancestors.organization_id ;;
    group_label: "Ancestors"
    group_item_label: "Organization ID"
  }

  dimension: associated_recommendations {
    hidden: yes
    sql: ${TABLE}.associated_recommendations ;;
  }

  dimension: category {
    type: string
    description: "Category being targeted by the insight. Can be one of:
    Unspecified category.
    CATEGORY_UNSPECIFIED = Unspecified category.
    COST = The insight is related to cost.
    SECURITY = The insight is related to security.
    PERFORMANCE = The insight is related to performance.
    MANAGEABILITY = The insight is related to manageability.;"
    sql: ${TABLE}.category ;;
  }

  dimension: cloud_entity_id {
    type: string
    description: "Value of the project number or billing account id"
    sql: ${TABLE}.cloud_entity_id ;;
  }

  dimension: cloud_entity_type {
    type: string
    description: "Represents what cloud entity type the recommendation was generated for - eg: project number, billing account"
    sql: ${TABLE}.cloud_entity_type ;;
  }

  dimension: description {
    type: string
    description: "Required. Free-form human readable summary in English.
    The maximum length is 500 characters."
    sql: ${TABLE}.description ;;
  }

  dimension: insight_details {
    type: string
    description: "Additional details about the insight in JSON format
    schema:
    fields:
    - name: content
    type: STRING
    description: |
    A struct of custom fields to explain the insight.
    Example: \"grantedPermissionsCount\": \"1000\"
    - name: observation_period
    type: TIMESTAMP
    description: |
    Observation period that led to the insight. The source data used to
    generate the insight ends at last_refresh_time and begins at
    (last_refresh_time - observation_period).
    - name: state_metadata
    type: STRING
    description: |
    A map of metadata for the state, provided by user or automations systems."
    sql: ${TABLE}.insight_details ;;
  }

  dimension: insight_subtype {
    type: string
    description: "Contains an identifier for a subtype of recommendations produced for the
    same recommender. Subtype is a function of content and impact, meaning a
    new subtype will be added when either content or primary impact category
    changes.
    Examples:
    For recommender = \"google.iam.policy.Recommender\",
    recommender_subtype can be one of \"REMOVE_ROLE\"/\"REPLACE_ROLE\""
    sql: ${TABLE}.insight_subtype ;;
  }

  dimension: insight_type {
    type: string
    description: "Recommender ID of the recommender that has produced this recommendation"
    sql: ${TABLE}.insight_type ;;
  }

  dimension_group: last_refresh {
    type: time
    description: "Output only. Last time this recommendation was refreshed by the system that created it in the first place."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_refresh_time ;;
  }

  dimension: location {
    type: string
    description: "Location for which this recommendation is generated"
    sql: ${TABLE}.location ;;
  }

  dimension: name {
    type: string
    description: "Name of recommendation. A project recommendation is represented as
    projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/recommendations/[RECOMMENDATION_ID]"
    sql: ${TABLE}.name ;;
  }

  dimension: severity {
    type: string
    description: "Severity of the insight:
    SEVERITY_UNSPECIFIED:
    Default unspecified severity. Don't use directly.
    LOW:
    Lowest severity.
    MEDIUM:
    Second lowest severity.
    HIGH:
    Second highest severity.
    CRITICAL:
    Highest severity."
    sql: ${TABLE}.severity ;;
  }

  dimension: state {
    type: string
    description: "Output only. The state of the recommendation:
    STATE_UNSPECIFIED:
    Default state. Don't use directly.
    ACTIVE:
    Recommendation is active and can be applied. Recommendations content can
    be updated by Google.
    ACTIVE recommendations can be marked as CLAIMED, SUCCEEDED, or FAILED.
    CLAIMED:
    Recommendation is in claimed state. Recommendations content is
    immutable and cannot be updated by Google.
    CLAIMED recommendations can be marked as CLAIMED, SUCCEEDED, or FAILED.
    SUCCEEDED:
    Recommendation is in succeeded state. Recommendations content is
    immutable and cannot be updated by Google.
    SUCCEEDED recommendations can be marked as SUCCEEDED, or FAILED.
    FAILED:
    Recommendation is in failed state. Recommendations content is immutable
    and cannot be updated by Google.
    FAILED recommendations can be marked as SUCCEEDED, or FAILED.
    DISMISSED:
    Recommendation is in dismissed state.
    DISMISSED recommendations can be marked as ACTIVE."
    sql: ${TABLE}.state ;;
  }

  dimension: target_resources {
    hidden: yes
    sql: ${TABLE}.target_resources ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}

view: insights_export__target_resources {
  dimension: insights_export__target_resources {
    type: string
    description: "Contains the fully qualified resource names for resources changed by the
    operations in this recommendation. This field is always populated. ex:
    [//cloudresourcemanager.googleapis.com/projects/foo]."
    sql: insights_export__target_resources ;;
  }
}

view: insights_export__ancestors__folder_ids {
  dimension: insights_export__ancestors__folder_ids {
    type: string
    description: "Up to 5 levels of parent folders for the recommendation project"
    sql: insights_export__ancestors__folder_ids ;;
  }
}

view: insights_export__associated_recommendations {
  dimension: insights_export__associated_recommendations {
    type: string
    description: "Insights associated with this recommendation. A project insight is represented as
    projects/[PROJECT_NUMBER]/locations/[LOCATION]/insightTypes/[INSIGHT_TYPE_ID]/insights/[insight_id]"
    sql: insights_export__associated_recommendations ;;
  }
}
