view: bytecodelookerdatasource_aws_billing_fusion_aws_cost_usage {
  sql_table_name: `bytecode-looker-data-source.aws_billing_fusion.aws_cost_usage`
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

  dimension: bill_bill_type {
    type: string
    sql: ${TABLE}.bill_bill_type ;;
  }

  dimension: bill_billing_entity {
    type: string
    sql: ${TABLE}.bill_billing_entity ;;
  }

  dimension: bill_billing_period_end_date {
    type: number
    sql: ${TABLE}.bill_billing_period_end_date ;;
  }

  dimension: bill_billing_period_start_date {
    type: number
    sql: ${TABLE}.bill_billing_period_start_date ;;
  }

  dimension: bill_invoice_id {
    type: string
    sql: ${TABLE}.bill_invoice_id ;;
  }

  dimension: bill_payer_account_id {
    type: string
    sql: ${TABLE}.bill_payer_account_id ;;
  }

  dimension: identity_line_item_id {
    type: string
    sql: ${TABLE}.identity_line_item_id ;;
  }

  dimension: identity_time_interval {
    type: string
    sql: ${TABLE}.identity_time_interval ;;
  }

  dimension: line_item_availability_zone {
    type: string
    sql: ${TABLE}.line_item_availability_zone ;;
  }

  dimension: line_item_blended_cost {
    type: number
    sql: ${TABLE}.line_item_blended_cost ;;
  }

  dimension: line_item_blended_rate {
    type: string
    sql: ${TABLE}.line_item_blended_rate ;;
  }

  dimension: line_item_currency_code {
    type: string
    sql: ${TABLE}.line_item_currency_code ;;
  }

  dimension: line_item_legal_entity {
    type: string
    sql: ${TABLE}.line_item_legal_entity ;;
  }

  dimension: line_item_line_item_description {
    type: string
    sql: ${TABLE}.line_item_line_item_description ;;
  }

  dimension: line_item_line_item_type {
    type: string
    sql: ${TABLE}.line_item_line_item_type ;;
  }

  dimension: line_item_normalization_factor {
    type: number
    sql: ${TABLE}.line_item_normalization_factor ;;
  }

  dimension: line_item_normalized_usage_amount {
    type: number
    sql: ${TABLE}.line_item_normalized_usage_amount ;;
  }

  dimension: line_item_operation {
    type: string
    sql: ${TABLE}.line_item_operation ;;
  }

  dimension: line_item_product_code {
    type: string
    sql: ${TABLE}.line_item_product_code ;;
  }

  dimension: line_item_resource_id {
    type: string
    sql: ${TABLE}.line_item_resource_id ;;
  }

  dimension: line_item_tax_type {
    type: string
    sql: ${TABLE}.line_item_tax_type ;;
  }

  dimension: line_item_unblended_cost {
    type: number
    sql: ${TABLE}.line_item_unblended_cost ;;
  }

  dimension: line_item_unblended_rate {
    type: string
    sql: ${TABLE}.line_item_unblended_rate ;;
  }

  dimension: line_item_usage_account_id {
    type: string
    sql: ${TABLE}.line_item_usage_account_id ;;
  }

  dimension: line_item_usage_amount {
    type: number
    sql: ${TABLE}.line_item_usage_amount ;;
  }

  dimension: line_item_usage_end_date {
    type: number
    sql: ${TABLE}.line_item_usage_end_date ;;
  }

  dimension: line_item_usage_start_date {
    type: number
    sql: ${TABLE}.line_item_usage_start_date ;;
  }

  dimension: line_item_usage_type {
    type: string
    sql: ${TABLE}.line_item_usage_type ;;
  }

  dimension: pricing_currency {
    type: string
    sql: ${TABLE}.pricing_currency ;;
  }

  dimension: pricing_public_on_demand_cost {
    type: number
    sql: ${TABLE}.pricing_public_on_demand_cost ;;
  }

  dimension: pricing_public_on_demand_rate {
    type: string
    sql: ${TABLE}.pricing_public_on_demand_rate ;;
  }

  dimension: pricing_rate_code {
    type: string
    sql: ${TABLE}.pricing_rate_code ;;
  }

  dimension: pricing_rate_id {
    type: string
    sql: ${TABLE}.pricing_rate_id ;;
  }

  dimension: pricing_term {
    type: string
    sql: ${TABLE}.pricing_term ;;
  }

  dimension: pricing_unit {
    type: string
    sql: ${TABLE}.pricing_unit ;;
  }

  dimension: product_alarm_type {
    type: string
    sql: ${TABLE}.product_alarm_type ;;
  }

  dimension: product_availability {
    type: string
    sql: ${TABLE}.product_availability ;;
  }

  dimension: product_availability_zone {
    type: string
    sql: ${TABLE}.product_availability_zone ;;
  }

  dimension: product_capacitystatus {
    type: string
    sql: ${TABLE}.product_capacitystatus ;;
  }

  dimension: product_classicnetworkingsupport {
    type: string
    sql: ${TABLE}.product_classicnetworkingsupport ;;
  }

  dimension: product_clock_speed {
    type: string
    sql: ${TABLE}.product_clock_speed ;;
  }

  dimension: product_content_type {
    type: string
    sql: ${TABLE}.product_content_type ;;
  }

  dimension: product_cputype {
    type: string
    sql: ${TABLE}.product_cputype ;;
  }

  dimension: product_current_generation {
    type: string
    sql: ${TABLE}.product_current_generation ;;
  }

  dimension: product_database_engine {
    type: string
    sql: ${TABLE}.product_database_engine ;;
  }

  dimension: product_datatransferout {
    type: string
    sql: ${TABLE}.product_datatransferout ;;
  }

  dimension: product_dedicated_ebs_throughput {
    type: string
    sql: ${TABLE}.product_dedicated_ebs_throughput ;;
  }

  dimension: product_deployment_option {
    type: string
    sql: ${TABLE}.product_deployment_option ;;
  }

  dimension: product_description {
    type: string
    sql: ${TABLE}.product_description ;;
  }

  dimension: product_durability {
    type: string
    sql: ${TABLE}.product_durability ;;
  }

  dimension: product_ecu {
    type: string
    sql: ${TABLE}.product_ecu ;;
  }

  dimension: product_edition {
    type: string
    sql: ${TABLE}.product_edition ;;
  }

  dimension: product_endpoint_type {
    type: string
    sql: ${TABLE}.product_endpoint_type ;;
  }

  dimension: product_engine_code {
    type: string
    sql: ${TABLE}.product_engine_code ;;
  }

  dimension: product_enhanced_networking_supported {
    type: string
    sql: ${TABLE}.product_enhanced_networking_supported ;;
  }

  dimension: product_fee_code {
    type: string
    sql: ${TABLE}.product_fee_code ;;
  }

  dimension: product_fee_description {
    type: string
    sql: ${TABLE}.product_fee_description ;;
  }

  dimension: product_free_tier {
    type: string
    sql: ${TABLE}.product_free_tier ;;
  }

  dimension: product_from_location {
    type: string
    sql: ${TABLE}.product_from_location ;;
  }

  dimension: product_from_location_type {
    type: string
    sql: ${TABLE}.product_from_location_type ;;
  }

  dimension: product_from_region_code {
    type: string
    sql: ${TABLE}.product_from_region_code ;;
  }

  dimension: product_group {
    type: string
    sql: ${TABLE}.product_group ;;
  }

  dimension: product_group_description {
    type: string
    sql: ${TABLE}.product_group_description ;;
  }

  dimension: product_instance_family {
    type: string
    sql: ${TABLE}.product_instance_family ;;
  }

  dimension: product_instance_type {
    type: string
    sql: ${TABLE}.product_instance_type ;;
  }

  dimension: product_instance_type_family {
    type: string
    sql: ${TABLE}.product_instance_type_family ;;
  }

  dimension: product_intel_avx2_available {
    type: string
    sql: ${TABLE}.product_intel_avx2_available ;;
  }

  dimension: product_intel_avx_available {
    type: string
    sql: ${TABLE}.product_intel_avx_available ;;
  }

  dimension: product_intel_turbo_available {
    type: string
    sql: ${TABLE}.product_intel_turbo_available ;;
  }

  dimension: product_io {
    type: string
    sql: ${TABLE}.product_io ;;
  }

  dimension: product_license_model {
    type: string
    sql: ${TABLE}.product_license_model ;;
  }

  dimension: product_location {
    type: string
    sql: ${TABLE}.product_location ;;
  }

  dimension: product_location_type {
    type: string
    sql: ${TABLE}.product_location_type ;;
  }

  dimension: product_logs_destination {
    type: string
    sql: ${TABLE}.product_logs_destination ;;
  }

  dimension: product_mailbox_storage {
    type: string
    sql: ${TABLE}.product_mailbox_storage ;;
  }

  dimension: product_marketoption {
    type: string
    sql: ${TABLE}.product_marketoption ;;
  }

  dimension: product_max_iops_burst_performance {
    type: string
    sql: ${TABLE}.product_max_iops_burst_performance ;;
  }

  dimension: product_max_iopsvolume {
    type: string
    sql: ${TABLE}.product_max_iopsvolume ;;
  }

  dimension: product_max_throughputvolume {
    type: string
    sql: ${TABLE}.product_max_throughputvolume ;;
  }

  dimension: product_max_volume_size {
    type: string
    sql: ${TABLE}.product_max_volume_size ;;
  }

  dimension: product_maximum_extended_storage {
    type: string
    sql: ${TABLE}.product_maximum_extended_storage ;;
  }

  dimension: product_memory {
    type: string
    sql: ${TABLE}.product_memory ;;
  }

  dimension: product_memorytype {
    type: string
    sql: ${TABLE}.product_memorytype ;;
  }

  dimension: product_message_delivery_frequency {
    type: string
    sql: ${TABLE}.product_message_delivery_frequency ;;
  }

  dimension: product_message_delivery_order {
    type: string
    sql: ${TABLE}.product_message_delivery_order ;;
  }

  dimension: product_min_volume_size {
    type: string
    sql: ${TABLE}.product_min_volume_size ;;
  }

  dimension: product_network_performance {
    type: string
    sql: ${TABLE}.product_network_performance ;;
  }

  dimension: product_normalization_size_factor {
    type: string
    sql: ${TABLE}.product_normalization_size_factor ;;
  }

  dimension: product_operating_system {
    type: string
    sql: ${TABLE}.product_operating_system ;;
  }

  dimension: product_operation {
    type: string
    sql: ${TABLE}.product_operation ;;
  }

  dimension: product_origin {
    type: string
    sql: ${TABLE}.product_origin ;;
  }

  dimension: product_physical_processor {
    type: string
    sql: ${TABLE}.product_physical_processor ;;
  }

  dimension: product_platostoragetype {
    type: string
    sql: ${TABLE}.product_platostoragetype ;;
  }

  dimension: product_platousagetype {
    type: string
    sql: ${TABLE}.product_platousagetype ;;
  }

  dimension: product_platovolumetype {
    type: string
    sql: ${TABLE}.product_platovolumetype ;;
  }

  dimension: product_pre_installed_sw {
    type: string
    sql: ${TABLE}.product_pre_installed_sw ;;
  }

  dimension: product_processor_architecture {
    type: string
    sql: ${TABLE}.product_processor_architecture ;;
  }

  dimension: product_processor_features {
    type: string
    sql: ${TABLE}.product_processor_features ;;
  }

  dimension: product_product_family {
    type: string
    sql: ${TABLE}.product_product_family ;;
  }

  dimension: product_product_name {
    type: string
    sql: ${TABLE}.product_product_name ;;
  }

  dimension: product_provisioned {
    type: string
    sql: ${TABLE}.product_provisioned ;;
  }

  dimension: product_queue_type {
    type: string
    sql: ${TABLE}.product_queue_type ;;
  }

  dimension: product_recipient {
    type: string
    sql: ${TABLE}.product_recipient ;;
  }

  dimension: product_region {
    type: string
    sql: ${TABLE}.product_region ;;
  }

  dimension: product_region_code {
    type: string
    sql: ${TABLE}.product_region_code ;;
  }

  dimension: product_routing_target {
    type: string
    sql: ${TABLE}.product_routing_target ;;
  }

  dimension: product_routing_type {
    type: string
    sql: ${TABLE}.product_routing_type ;;
  }

  dimension: product_servicecode {
    type: string
    sql: ${TABLE}.product_servicecode ;;
  }

  dimension: product_servicename {
    type: string
    sql: ${TABLE}.product_servicename ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}.product_sku ;;
  }

  dimension: product_standard_storage_retention_included {
    type: string
    sql: ${TABLE}.product_standard_storage_retention_included ;;
  }

  dimension: product_storage {
    type: string
    sql: ${TABLE}.product_storage ;;
  }

  dimension: product_storage_class {
    type: string
    sql: ${TABLE}.product_storage_class ;;
  }

  dimension: product_storage_media {
    type: string
    sql: ${TABLE}.product_storage_media ;;
  }

  dimension: product_storage_type {
    type: string
    sql: ${TABLE}.product_storage_type ;;
  }

  dimension: product_subscription_type {
    type: string
    sql: ${TABLE}.product_subscription_type ;;
  }

  dimension: product_tenancy {
    type: string
    sql: ${TABLE}.product_tenancy ;;
  }

  dimension: product_tiertype {
    type: string
    sql: ${TABLE}.product_tiertype ;;
  }

  dimension: product_to_location {
    type: string
    sql: ${TABLE}.product_to_location ;;
  }

  dimension: product_to_location_type {
    type: string
    sql: ${TABLE}.product_to_location_type ;;
  }

  dimension: product_to_region_code {
    type: string
    sql: ${TABLE}.product_to_region_code ;;
  }

  dimension: product_transfer_type {
    type: string
    sql: ${TABLE}.product_transfer_type ;;
  }

  dimension: product_usage_family {
    type: string
    sql: ${TABLE}.product_usage_family ;;
  }

  dimension: product_usagetype {
    type: string
    sql: ${TABLE}.product_usagetype ;;
  }

  dimension: product_vcpu {
    type: string
    sql: ${TABLE}.product_vcpu ;;
  }

  dimension: product_version {
    type: string
    sql: ${TABLE}.product_version ;;
  }

  dimension: product_volume_api_name {
    type: string
    sql: ${TABLE}.product_volume_api_name ;;
  }

  dimension: product_volume_type {
    type: string
    sql: ${TABLE}.product_volume_type ;;
  }

  dimension: product_vpcnetworkingsupport {
    type: string
    sql: ${TABLE}.product_vpcnetworkingsupport ;;
  }

  dimension: reservation_amortized_upfront_cost_for_usage {
    type: number
    sql: ${TABLE}.reservation_amortized_upfront_cost_for_usage ;;
  }

  dimension: reservation_amortized_upfront_fee_for_billing_period {
    type: number
    sql: ${TABLE}.reservation_amortized_upfront_fee_for_billing_period ;;
  }

  dimension: reservation_effective_cost {
    type: number
    sql: ${TABLE}.reservation_effective_cost ;;
  }

  dimension: reservation_end_time {
    type: string
    sql: ${TABLE}.reservation_end_time ;;
  }

  dimension: reservation_modification_status {
    type: string
    sql: ${TABLE}.reservation_modification_status ;;
  }

  dimension: reservation_normalized_units_per_reservation {
    type: string
    sql: ${TABLE}.reservation_normalized_units_per_reservation ;;
  }

  dimension: reservation_number_of_reservations {
    type: string
    sql: ${TABLE}.reservation_number_of_reservations ;;
  }

  dimension: reservation_recurring_fee_for_usage {
    type: number
    sql: ${TABLE}.reservation_recurring_fee_for_usage ;;
  }

  dimension: reservation_start_time {
    type: string
    sql: ${TABLE}.reservation_start_time ;;
  }

  dimension: reservation_subscription_id {
    type: string
    sql: ${TABLE}.reservation_subscription_id ;;
  }

  dimension: reservation_total_reserved_normalized_units {
    type: string
    sql: ${TABLE}.reservation_total_reserved_normalized_units ;;
  }

  dimension: reservation_total_reserved_units {
    type: string
    sql: ${TABLE}.reservation_total_reserved_units ;;
  }

  dimension: reservation_units_per_reservation {
    type: string
    sql: ${TABLE}.reservation_units_per_reservation ;;
  }

  dimension: reservation_unused_amortized_upfront_fee_for_billing_period {
    type: number
    sql: ${TABLE}.reservation_unused_amortized_upfront_fee_for_billing_period ;;
  }

  dimension: reservation_unused_normalized_unit_quantity {
    type: number
    sql: ${TABLE}.reservation_unused_normalized_unit_quantity ;;
  }

  dimension: reservation_unused_quantity {
    type: number
    sql: ${TABLE}.reservation_unused_quantity ;;
  }

  dimension: reservation_unused_recurring_fee {
    type: number
    sql: ${TABLE}.reservation_unused_recurring_fee ;;
  }

  dimension: reservation_upfront_value {
    type: number
    sql: ${TABLE}.reservation_upfront_value ;;
  }

  dimension: savings_plan_amortized_upfront_commitment_for_billing_period {
    type: number
    sql: ${TABLE}.savings_plan_amortized_upfront_commitment_for_billing_period ;;
  }

  dimension: savings_plan_recurring_commitment_for_billing_period {
    type: number
    sql: ${TABLE}.savings_plan_recurring_commitment_for_billing_period ;;
  }

  dimension: savings_plan_savings_plan_a_r_n {
    type: string
    sql: ${TABLE}.savings_plan_savings_plan_a_r_n ;;
  }

  dimension: savings_plan_savings_plan_effective_cost {
    type: number
    sql: ${TABLE}.savings_plan_savings_plan_effective_cost ;;
  }

  dimension: savings_plan_savings_plan_rate {
    type: number
    sql: ${TABLE}.savings_plan_savings_plan_rate ;;
  }

  dimension: savings_plan_total_commitment_to_date {
    type: number
    sql: ${TABLE}.savings_plan_total_commitment_to_date ;;
  }

  dimension: savings_plan_used_commitment {
    type: number
    sql: ${TABLE}.savings_plan_used_commitment ;;
  }

  measure: count {
    type: count
    drill_fields: [product_product_name, product_volume_api_name, product_servicename]
  }
}
