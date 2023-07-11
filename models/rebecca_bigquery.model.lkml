# Define the database connection to be used for this model.
connection: "bytecode_looker_bigquery"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: rebecca_bigquery_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rebecca_bigquery_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Rebecca Bigquery"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: lr_jd6_li1688784159027_italy_province {}

explore: lr_jd7_rc1638902969720_italy_region_stats {}

explore: lr_jd2_mn1677475493572_covid_combined {}

explore: lr_jdbmh1685511491568_prior_days_cases_covid {}

explore: lr_jd1_ac1638902972933_italy_province_stats {}

explore: lr_jd2_zb1644621080566_zcta {}

explore: lr_jd6_wz1639073417219_county {}

explore: lr_jd5_vc1677475446228_covid_tracking_project {}

explore: lr_jdgx61677475507927_max_date_tracking_project {}

explore: lr_jdect1639073417054_state {}

explore: lr_jdgo21677475510925_max_date_covid {}

explore: lr_jdqnz1677475436664_hospital_bed_summary {}

explore: lr_jdn6_p1677475484251_nyt_data {}

explore: lr_jdsea1638903022345_policies_by_state {}

explore: lr_jdsd31677475479825_population_by_county_state_country {}

explore: lr_jdbt81685533103067_kpis_by_country_by_date {}

explore: connection_reg_r3 {}

explore: mockdatacopycsv {}

explore: cohorts {}

explore: lr_jdx8_w1688784152170_italy_regions {}

explore: lr_jdx5_c1677475451517_open_data_main {}

explore: mockdatacsv {}

explore: lr_jduy41685533097763_kpis_by_county_by_date {}

explore: country_ip_range {}

explore: cr_pathfinder {}

explore: example_datafor_process_mapcsv {}

explore: emp_tree_dt2 {}

explore: off_roster_users {}

explore: new_sheetrunner_table {}

explore: create_process_test {}

explore: sql_insert_test {}

explore: test {}

explore: test_table_name {}

explore: weather_data {}

explore: user_bookmarks {}

