connection: "workato_snowflake"

# include all the views
include: "/views/**/*.view"

datagroup: customer_campaign_report_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: customer_campaign_report_2_default_datagroup

explore: campaign_details {}

explore: customer_campaign_report {}
