resource "stripe_payment_intent" "payment_intents" {
  for_each = var.payment_intents

  amount                        = each.value.amount
  currency                      = each.value.currency
  application_fee_amount        = each.value.application_fee_amount
  automatic_payment_methods     = each.value.automatic_payment_methods
  capture_method                = each.value.capture_method
  confirm                       = each.value.confirm
  confirmation_method           = each.value.confirmation_method
  confirmation_token            = each.value.confirmation_token
  customer                      = each.value.customer
  description                   = each.value.description
  error_on_requires_action      = each.value.error_on_requires_action
  excluded_payment_method_types = each.value.excluded_payment_method_types
  hooks                         = each.value.hooks
  mandate                       = each.value.mandate
  mandate_data                  = each.value.mandate_data
  metadata                      = each.value.metadata
  on_behalf_of                  = each.value.on_behalf_of
  payment_details               = each.value.payment_details
  payment_method                = each.value.payment_method
  payment_method_configuration  = each.value.payment_method_configuration
  payment_method_data           = each.value.payment_method_data
  payment_method_options        = each.value.payment_method_options
  radar_options                 = each.value.radar_options
  receipt_email                 = each.value.receipt_email
  return_url                    = each.value.return_url
  setup_future_usage            = each.value.setup_future_usage
  shipping                      = each.value.shipping
  statement_descriptor          = each.value.statement_descriptor
  statement_descriptor_suffix   = each.value.statement_descriptor_suffix
  transfer_data                 = each.value.transfer_data
  transfer_group                = each.value.transfer_group
  use_stripe_sdk                = each.value.use_stripe_sdk
}

