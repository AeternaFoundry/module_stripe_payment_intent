output "payment_intents_id" {
  description = "Map of id values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.id }
}
output "payment_intents_amount" {
  description = "Map of amount values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.amount }
}
output "payment_intents_amount_capturable" {
  description = "Map of amount_capturable values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.amount_capturable }
}
output "payment_intents_amount_received" {
  description = "Map of amount_received values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.amount_received }
}
output "payment_intents_application" {
  description = "Map of application values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.application }
}
output "payment_intents_application_fee_amount" {
  description = "Map of application_fee_amount values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.application_fee_amount }
}
output "payment_intents_automatic_payment_methods" {
  description = "Map of automatic_payment_methods values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.automatic_payment_methods }
}
output "payment_intents_canceled_at" {
  description = "Map of canceled_at values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.canceled_at }
}
output "payment_intents_cancellation_reason" {
  description = "Map of cancellation_reason values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.cancellation_reason }
}
output "payment_intents_capture_method" {
  description = "Map of capture_method values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.capture_method }
}
output "payment_intents_client_secret" {
  description = "Map of client_secret values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.client_secret }
  sensitive   = true
}
output "payment_intents_confirmation_method" {
  description = "Map of confirmation_method values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.confirmation_method }
}
output "payment_intents_created" {
  description = "Map of created values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.created }
}
output "payment_intents_currency" {
  description = "Map of currency values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.currency }
}
output "payment_intents_customer" {
  description = "Map of customer values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.customer }
}
output "payment_intents_description" {
  description = "Map of description values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.description }
}
output "payment_intents_excluded_payment_method_types" {
  description = "Map of excluded_payment_method_types values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.excluded_payment_method_types }
}
output "payment_intents_hooks" {
  description = "Map of hooks values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.hooks }
}
output "payment_intents_last_payment_error" {
  description = "Map of last_payment_error values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.last_payment_error }
}
output "payment_intents_latest_charge" {
  description = "Map of latest_charge values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.latest_charge }
}
output "payment_intents_livemode" {
  description = "Map of livemode values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.livemode }
}
output "payment_intents_managed_payments" {
  description = "Map of managed_payments values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.managed_payments }
}
output "payment_intents_metadata" {
  description = "Map of metadata values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.metadata }
}
output "payment_intents_next_action" {
  description = "Map of next_action values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.next_action }
}
output "payment_intents_object" {
  description = "Map of object values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.object }
}
output "payment_intents_on_behalf_of" {
  description = "Map of on_behalf_of values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.on_behalf_of }
}
output "payment_intents_payment_details" {
  description = "Map of payment_details values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.payment_details }
}
output "payment_intents_payment_method" {
  description = "Map of payment_method values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.payment_method }
}
output "payment_intents_payment_method_configuration_details" {
  description = "Map of payment_method_configuration_details values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.payment_method_configuration_details }
}
output "payment_intents_payment_method_options" {
  description = "Map of payment_method_options values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.payment_method_options }
}
output "payment_intents_presentment_details" {
  description = "Map of presentment_details values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.presentment_details }
}
output "payment_intents_processing" {
  description = "Map of processing values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.processing }
}
output "payment_intents_receipt_email" {
  description = "Map of receipt_email values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.receipt_email }
}
output "payment_intents_review" {
  description = "Map of review values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.review }
}
output "payment_intents_setup_future_usage" {
  description = "Map of setup_future_usage values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.setup_future_usage }
}
output "payment_intents_shipping" {
  description = "Map of shipping values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.shipping }
}
output "payment_intents_source" {
  description = "Map of source values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.source }
}
output "payment_intents_statement_descriptor" {
  description = "Map of statement_descriptor values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.statement_descriptor }
}
output "payment_intents_statement_descriptor_suffix" {
  description = "Map of statement_descriptor_suffix values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.statement_descriptor_suffix }
}
output "payment_intents_status" {
  description = "Map of status values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.status }
}
output "payment_intents_transfer_data" {
  description = "Map of transfer_data values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.transfer_data }
}
output "payment_intents_transfer_group" {
  description = "Map of transfer_group values across all payment_intents, keyed the same as var.payment_intents"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.transfer_group }
}

