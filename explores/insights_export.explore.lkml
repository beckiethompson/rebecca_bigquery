include: "/views/insights_export.view.lkml"
# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: insights_export {

  #hidden: yes


  join: insights_export__target_resources {
    view_label: "Insights Export: Target Resources"
    sql: LEFT JOIN UNNEST(${insights_export.target_resources}) as insights_export__target_resources ;;
    relationship: one_to_one
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
