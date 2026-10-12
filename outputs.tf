output "payment_intents_id" {
  description = "Map of id values across all payment_intents, keyed the same as var.payment_intents except keys with no id are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "payment_intents_amount" {
  description = "Map of amount values across all payment_intents, keyed the same as var.payment_intents except keys with no amount are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.amount if v.amount != null }
}
output "payment_intents_amount_capturable" {
  description = "Map of amount_capturable values across all payment_intents, keyed the same as var.payment_intents except keys with no amount_capturable are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.amount_capturable if v.amount_capturable != null }
}
output "payment_intents_amount_received" {
  description = "Map of amount_received values across all payment_intents, keyed the same as var.payment_intents except keys with no amount_received are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.amount_received if v.amount_received != null }
}
output "payment_intents_application" {
  description = "Map of application values across all payment_intents, keyed the same as var.payment_intents except keys with no application are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.application if v.application != null && length(v.application) > 0 }
}
output "payment_intents_application_fee_amount" {
  description = "Map of application_fee_amount values across all payment_intents, keyed the same as var.payment_intents except keys with no application_fee_amount are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.application_fee_amount if v.application_fee_amount != null }
}
output "payment_intents_automatic_payment_methods" {
  description = "Map of automatic_payment_methods values across all payment_intents, keyed the same as var.payment_intents except keys with no automatic_payment_methods are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.automatic_payment_methods if v.automatic_payment_methods != null && length(v.automatic_payment_methods) > 0 }
}
output "payment_intents_canceled_at" {
  description = "Map of canceled_at values across all payment_intents, keyed the same as var.payment_intents except keys with no canceled_at are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.canceled_at if v.canceled_at != null }
}
output "payment_intents_cancellation_reason" {
  description = "Map of cancellation_reason values across all payment_intents, keyed the same as var.payment_intents except keys with no cancellation_reason are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.cancellation_reason if v.cancellation_reason != null && length(v.cancellation_reason) > 0 }
}
output "payment_intents_capture_method" {
  description = "Map of capture_method values across all payment_intents, keyed the same as var.payment_intents except keys with no capture_method are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.capture_method if v.capture_method != null && length(v.capture_method) > 0 }
}
output "payment_intents_client_secret" {
  description = "Map of client_secret values across all payment_intents, keyed the same as var.payment_intents except keys with no client_secret are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "payment_intents_confirmation_method" {
  description = "Map of confirmation_method values across all payment_intents, keyed the same as var.payment_intents except keys with no confirmation_method are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.confirmation_method if v.confirmation_method != null && length(v.confirmation_method) > 0 }
}
output "payment_intents_created" {
  description = "Map of created values across all payment_intents, keyed the same as var.payment_intents except keys with no created are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.created if v.created != null }
}
output "payment_intents_currency" {
  description = "Map of currency values across all payment_intents, keyed the same as var.payment_intents except keys with no currency are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.currency if v.currency != null && length(v.currency) > 0 }
}
output "payment_intents_customer" {
  description = "Map of customer values across all payment_intents, keyed the same as var.payment_intents except keys with no customer are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.customer if v.customer != null && length(v.customer) > 0 }
}
output "payment_intents_description" {
  description = "Map of description values across all payment_intents, keyed the same as var.payment_intents except keys with no description are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.description if v.description != null && length(v.description) > 0 }
}
output "payment_intents_excluded_payment_method_types" {
  description = "Map of excluded_payment_method_types values across all payment_intents, keyed the same as var.payment_intents except keys with no excluded_payment_method_types are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.excluded_payment_method_types if v.excluded_payment_method_types != null && length(v.excluded_payment_method_types) > 0 }
}
output "payment_intents_hooks" {
  description = "Map of hooks values across all payment_intents, keyed the same as var.payment_intents except keys with no hooks are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.hooks if v.hooks != null && length(v.hooks) > 0 }
}
output "payment_intents_last_payment_error" {
  description = "Map of last_payment_error values across all payment_intents, keyed the same as var.payment_intents except keys with no last_payment_error are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.last_payment_error if v.last_payment_error != null && length(v.last_payment_error) > 0 }
}
output "payment_intents_latest_charge" {
  description = "Map of latest_charge values across all payment_intents, keyed the same as var.payment_intents except keys with no latest_charge are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.latest_charge if v.latest_charge != null && length(v.latest_charge) > 0 }
}
output "payment_intents_livemode" {
  description = "Map of livemode values across all payment_intents, keyed the same as var.payment_intents except keys with no livemode are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.livemode if v.livemode != null }
}
output "payment_intents_managed_payments" {
  description = "Map of managed_payments values across all payment_intents, keyed the same as var.payment_intents except keys with no managed_payments are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.managed_payments if v.managed_payments != null && length(v.managed_payments) > 0 }
}
output "payment_intents_metadata" {
  description = "Map of metadata values across all payment_intents, keyed the same as var.payment_intents except keys with no metadata are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "payment_intents_next_action" {
  description = "Map of next_action values across all payment_intents, keyed the same as var.payment_intents except keys with no next_action are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.next_action if v.next_action != null && length(v.next_action) > 0 }
}
output "payment_intents_object" {
  description = "Map of object values across all payment_intents, keyed the same as var.payment_intents except keys with no object are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.object if v.object != null && length(v.object) > 0 }
}
output "payment_intents_on_behalf_of" {
  description = "Map of on_behalf_of values across all payment_intents, keyed the same as var.payment_intents except keys with no on_behalf_of are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.on_behalf_of if v.on_behalf_of != null && length(v.on_behalf_of) > 0 }
}
output "payment_intents_payment_details" {
  description = "Map of payment_details values across all payment_intents, keyed the same as var.payment_intents except keys with no payment_details are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.payment_details if v.payment_details != null && length(v.payment_details) > 0 }
}
output "payment_intents_payment_method" {
  description = "Map of payment_method values across all payment_intents, keyed the same as var.payment_intents except keys with no payment_method are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.payment_method if v.payment_method != null && length(v.payment_method) > 0 }
}
output "payment_intents_payment_method_configuration_details" {
  description = "Map of payment_method_configuration_details values across all payment_intents, keyed the same as var.payment_intents except keys with no payment_method_configuration_details are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.payment_method_configuration_details if v.payment_method_configuration_details != null && length(v.payment_method_configuration_details) > 0 }
}
output "payment_intents_payment_method_options" {
  description = "Map of payment_method_options values across all payment_intents, keyed the same as var.payment_intents except keys with no payment_method_options are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.payment_method_options if v.payment_method_options != null && length(v.payment_method_options) > 0 }
}
output "payment_intents_presentment_details" {
  description = "Map of presentment_details values across all payment_intents, keyed the same as var.payment_intents except keys with no presentment_details are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.presentment_details if v.presentment_details != null && length(v.presentment_details) > 0 }
}
output "payment_intents_processing" {
  description = "Map of processing values across all payment_intents, keyed the same as var.payment_intents except keys with no processing are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.processing if v.processing != null && length(v.processing) > 0 }
}
output "payment_intents_receipt_email" {
  description = "Map of receipt_email values across all payment_intents, keyed the same as var.payment_intents except keys with no receipt_email are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.receipt_email if v.receipt_email != null && length(v.receipt_email) > 0 }
}
output "payment_intents_review" {
  description = "Map of review values across all payment_intents, keyed the same as var.payment_intents except keys with no review are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.review if v.review != null && length(v.review) > 0 }
}
output "payment_intents_setup_future_usage" {
  description = "Map of setup_future_usage values across all payment_intents, keyed the same as var.payment_intents except keys with no setup_future_usage are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.setup_future_usage if v.setup_future_usage != null && length(v.setup_future_usage) > 0 }
}
output "payment_intents_shipping" {
  description = "Map of shipping values across all payment_intents, keyed the same as var.payment_intents except keys with no shipping are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.shipping if v.shipping != null && length(v.shipping) > 0 }
}
output "payment_intents_source" {
  description = "Map of source values across all payment_intents, keyed the same as var.payment_intents except keys with no source are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.source if v.source != null && length(v.source) > 0 }
}
output "payment_intents_statement_descriptor" {
  description = "Map of statement_descriptor values across all payment_intents, keyed the same as var.payment_intents except keys with no statement_descriptor are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.statement_descriptor if v.statement_descriptor != null && length(v.statement_descriptor) > 0 }
}
output "payment_intents_statement_descriptor_suffix" {
  description = "Map of statement_descriptor_suffix values across all payment_intents, keyed the same as var.payment_intents except keys with no statement_descriptor_suffix are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.statement_descriptor_suffix if v.statement_descriptor_suffix != null && length(v.statement_descriptor_suffix) > 0 }
}
output "payment_intents_status" {
  description = "Map of status values across all payment_intents, keyed the same as var.payment_intents except keys with no status are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.status if v.status != null && length(v.status) > 0 }
}
output "payment_intents_transfer_data" {
  description = "Map of transfer_data values across all payment_intents, keyed the same as var.payment_intents except keys with no transfer_data are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.transfer_data if v.transfer_data != null && length(v.transfer_data) > 0 }
}
output "payment_intents_transfer_group" {
  description = "Map of transfer_group values across all payment_intents, keyed the same as var.payment_intents except keys with no transfer_group are omitted"
  value       = { for k, v in stripe_payment_intent.payment_intents : k => v.transfer_group if v.transfer_group != null && length(v.transfer_group) > 0 }
}

