variable "payment_intents" {
  description = <<EOT
Map of payment_intents, attributes below
Required:
    - amount
    - currency
Optional:
    - application_fee_amount
    - automatic_payment_methods
    - capture_method
    - confirm
    - confirmation_method
    - confirmation_token
    - customer
    - description
    - error_on_requires_action
    - excluded_payment_method_types
    - hooks
    - mandate
    - mandate_data
    - metadata
    - on_behalf_of
    - payment_details
    - payment_method
    - payment_method_configuration
    - payment_method_data
    - payment_method_options
    - radar_options
    - receipt_email
    - return_url
    - setup_future_usage
    - shipping
    - statement_descriptor
    - statement_descriptor_suffix
    - transfer_data
    - transfer_group
    - use_stripe_sdk
EOT

  type = map(object({
    amount                 = number
    currency               = string
    application_fee_amount = optional(number)
    automatic_payment_methods = optional(object({
      allow_redirects = optional(string)
      enabled         = bool
    }))
    capture_method                = optional(string)
    confirm                       = optional(bool)
    confirmation_method           = optional(string)
    confirmation_token            = optional(string)
    customer                      = optional(string)
    description                   = optional(string)
    error_on_requires_action      = optional(bool)
    excluded_payment_method_types = optional(list(string))
    hooks = optional(object({
      inputs = optional(object({
        tax = optional(object({
          calculation = string
        }))
      }))
    }))
    mandate = optional(string)
    mandate_data = optional(object({
      customer_acceptance = object({
        accepted_at = optional(number)
        online = optional(object({
          ip_address = string
          user_agent = string
        }))
        type = string
      })
    }))
    metadata     = optional(map(string))
    on_behalf_of = optional(string)
    payment_details = optional(object({
      customer_reference = optional(string)
      order_reference    = optional(string)
    }))
    payment_method               = optional(string)
    payment_method_configuration = optional(string)
    payment_method_data = optional(object({
      acss_debit = optional(object({
        account_number     = string
        institution_number = string
        transit_number     = string
      }))
      allow_redisplay = optional(string)
      au_becs_debit = optional(object({
        account_number = string
        bsb_number     = string
      }))
      bacs_debit = optional(object({
        account_number = optional(string)
        sort_code      = optional(string)
      }))
      billing_details = optional(object({
        address = optional(object({
          city        = optional(string)
          country     = optional(string)
          line1       = optional(string)
          line2       = optional(string)
          postal_code = optional(string)
          state       = optional(string)
        }))
        email  = optional(string)
        name   = optional(string)
        phone  = optional(string)
        tax_id = optional(string)
      }))
      boleto = optional(object({
        tax_id = string
      }))
      eps = optional(object({
        bank = optional(string)
      }))
      fpx = optional(object({
        account_holder_type = optional(string)
        bank                = string
      }))
      ideal = optional(object({
        bank = optional(string)
      }))
      klarna = optional(object({
        dob = optional(object({
          day   = number
          month = number
          year  = number
        }))
      }))
      metadata = optional(map(string))
      naver_pay = optional(object({
        funding = optional(string)
      }))
      nz_bank_account = optional(object({
        account_holder_name = optional(string)
        account_number      = string
        bank_code           = string
        branch_code         = string
        reference           = optional(string)
        suffix              = string
      }))
      p24 = optional(object({
        bank = optional(string)
      }))
      payto = optional(object({
        account_number = optional(string)
        bsb_number     = optional(string)
        pay_id         = optional(string)
      }))
      radar_options = optional(object({
        session = optional(string)
      }))
      sepa_debit = optional(object({
        iban = string
      }))
      sofort = optional(object({
        country = string
      }))
      type = string
      upi = optional(object({
        mandate_options = optional(object({
          amount      = optional(number)
          amount_type = optional(string)
          description = optional(string)
          end_date    = optional(number)
        }))
      }))
      us_bank_account = optional(object({
        account_holder_type           = optional(string)
        account_number                = optional(string)
        account_type                  = optional(string)
        financial_connections_account = optional(string)
        routing_number                = optional(string)
      }))
    }))
    payment_method_options = optional(object({
      acss_debit = optional(object({
        mandate_options = optional(object({
          custom_mandate_url   = optional(string)
          interval_description = optional(string)
          payment_schedule     = optional(string)
          transaction_type     = optional(string)
        }))
        setup_future_usage  = optional(string)
        target_date         = optional(string)
        verification_method = optional(string)
      }))
      affirm = optional(object({
        capture_method     = optional(string)
        preferred_locale   = optional(string)
        setup_future_usage = optional(string)
      }))
      afterpay_clearpay = optional(object({
        capture_method     = optional(string)
        reference          = optional(string)
        setup_future_usage = optional(string)
      }))
      alipay = optional(object({
        setup_future_usage = optional(string)
      }))
      alma = optional(object({
        capture_method = optional(string)
      }))
      amazon_pay = optional(object({
        capture_method     = optional(string)
        setup_future_usage = optional(string)
      }))
      au_becs_debit = optional(object({
        setup_future_usage = optional(string)
        target_date        = optional(string)
      }))
      bacs_debit = optional(object({
        mandate_options = optional(object({
          reference_prefix = optional(string)
        }))
        setup_future_usage = optional(string)
        target_date        = optional(string)
      }))
      bancontact = optional(object({
        preferred_language = optional(string)
        setup_future_usage = optional(string)
      }))
      billie = optional(object({
        capture_method = optional(string)
      }))
      blik = optional(object({
        code               = optional(string)
        setup_future_usage = optional(string)
      }))
      boleto = optional(object({
        expires_after_days = optional(number)
        setup_future_usage = optional(string)
      }))
      card = optional(object({
        capture_method = optional(string)
        cvc_token      = optional(string)
        installments = optional(object({
          enabled = optional(bool)
          plan = optional(object({
            count    = optional(number)
            interval = optional(string)
            type     = string
          }))
        }))
        mandate_options = optional(object({
          amount          = number
          amount_type     = string
          description     = optional(string)
          end_date        = optional(number)
          interval        = string
          interval_count  = optional(number)
          reference       = string
          start_date      = number
          supported_types = optional(list(string))
        }))
        moto                              = optional(bool)
        network                           = optional(string)
        request_extended_authorization    = optional(string)
        request_incremental_authorization = optional(string)
        request_multicapture              = optional(string)
        request_overcapture               = optional(string)
        request_three_d_secure            = optional(string)
        require_cvc_recollection          = optional(bool)
        setup_future_usage                = optional(string)
        statement_descriptor_suffix_kana  = optional(string)
        statement_descriptor_suffix_kanji = optional(string)
        three_d_secure = optional(object({
          ares_trans_status             = optional(string)
          cryptogram                    = string
          electronic_commerce_indicator = optional(string)
          exemption_indicator           = optional(string)
          network_options = optional(object({
            cartes_bancaires = optional(object({
              cb_avalgo    = string
              cb_exemption = optional(string)
              cb_score     = optional(number)
            }))
          }))
          requestor_challenge_indicator = optional(string)
          transaction_id                = string
          version                       = string
        }))
      }))
      card_present = optional(object({
        capture_method                            = optional(string)
        request_extended_authorization            = optional(bool)
        request_incremental_authorization_support = optional(bool)
        routing = optional(object({
          requested_priority = optional(string)
        }))
      }))
      cashapp = optional(object({
        capture_method     = optional(string)
        setup_future_usage = optional(string)
      }))
      crypto = optional(object({
        setup_future_usage = optional(string)
      }))
      customer_balance = optional(object({
        bank_transfer = optional(object({
          eu_bank_transfer = optional(object({
            country = string
          }))
          requested_address_types = optional(list(string))
          type                    = string
        }))
        funding_type       = optional(string)
        setup_future_usage = optional(string)
      }))
      eps = optional(object({
        setup_future_usage = optional(string)
      }))
      fpx = optional(object({
        setup_future_usage = optional(string)
      }))
      giropay = optional(object({
        setup_future_usage = optional(string)
      }))
      grabpay = optional(object({
        setup_future_usage = optional(string)
      }))
      ideal = optional(object({
        setup_future_usage = optional(string)
      }))
      kakao_pay = optional(object({
        capture_method     = optional(string)
        setup_future_usage = optional(string)
      }))
      klarna = optional(object({
        capture_method = optional(string)
        on_demand = optional(object({
          average_amount          = optional(number)
          maximum_amount          = optional(number)
          minimum_amount          = optional(number)
          purchase_interval       = optional(string)
          purchase_interval_count = optional(number)
        }))
        preferred_locale   = optional(string)
        setup_future_usage = optional(string)
        subscriptions = optional(list(object({
          interval       = string
          interval_count = optional(number)
          name           = optional(string)
          next_billing = optional(object({
            amount = number
            date   = string
          }))
          reference = string
        })))
      }))
      konbini = optional(object({
        confirmation_number = optional(string)
        expires_after_days  = optional(number)
        expires_at          = optional(number)
        product_description = optional(string)
        setup_future_usage  = optional(string)
      }))
      kr_card = optional(object({
        capture_method     = optional(string)
        setup_future_usage = optional(string)
      }))
      mb_way = optional(object({
        setup_future_usage = optional(string)
      }))
      mobilepay = optional(object({
        capture_method     = optional(string)
        setup_future_usage = optional(string)
      }))
      multibanco = optional(object({
        setup_future_usage = optional(string)
      }))
      naver_pay = optional(object({
        capture_method     = optional(string)
        setup_future_usage = optional(string)
      }))
      nz_bank_account = optional(object({
        setup_future_usage = optional(string)
        target_date        = optional(string)
      }))
      oxxo = optional(object({
        expires_after_days = optional(number)
        setup_future_usage = optional(string)
      }))
      p24 = optional(object({
        setup_future_usage     = optional(string)
        tos_shown_and_accepted = optional(bool)
      }))
      payco = optional(object({
        capture_method = optional(string)
      }))
      paynow = optional(object({
        setup_future_usage = optional(string)
      }))
      paypal = optional(object({
        capture_method      = optional(string)
        preferred_locale    = optional(string)
        reference           = optional(string)
        risk_correlation_id = optional(string)
        setup_future_usage  = optional(string)
      }))
      payto = optional(object({
        mandate_options = optional(object({
          amount              = optional(number)
          amount_type         = optional(string)
          end_date            = optional(string)
          payment_schedule    = optional(string)
          payments_per_period = optional(number)
          purpose             = optional(string)
        }))
        setup_future_usage = optional(string)
      }))
      pix = optional(object({
        amount_includes_iof   = optional(string)
        expires_after_seconds = optional(number)
        expires_at            = optional(number)
        mandate_options = optional(object({
          amount              = optional(number)
          amount_includes_iof = optional(string)
          amount_type         = optional(string)
          currency            = optional(string)
          end_date            = optional(string)
          payment_schedule    = optional(string)
          reference           = optional(string)
          start_date          = optional(string)
        }))
        setup_future_usage = optional(string)
      }))
      promptpay = optional(object({
        setup_future_usage = optional(string)
      }))
      revolut_pay = optional(object({
        capture_method     = optional(string)
        setup_future_usage = optional(string)
      }))
      samsung_pay = optional(object({
        capture_method = optional(string)
      }))
      satispay = optional(object({
        capture_method = optional(string)
      }))
      scalapay = optional(object({
        capture_method = optional(string)
      }))
      sepa_debit = optional(object({
        mandate_options = optional(object({
          reference_prefix = optional(string)
        }))
        setup_future_usage = optional(string)
        target_date        = optional(string)
      }))
      sofort = optional(object({
        preferred_language = optional(string)
        setup_future_usage = optional(string)
      }))
      swish = optional(object({
        reference          = optional(string)
        setup_future_usage = optional(string)
      }))
      twint = optional(object({
        setup_future_usage = optional(string)
      }))
      upi = optional(object({
        mandate_options = optional(object({
          amount      = optional(number)
          amount_type = optional(string)
          description = optional(string)
          end_date    = optional(number)
        }))
        setup_future_usage = optional(string)
      }))
      us_bank_account = optional(object({
        financial_connections = optional(object({
          filters = optional(object({
            account_subcategories = optional(list(string))
          }))
          permissions = optional(list(string))
          prefetch    = optional(list(string))
          return_url  = optional(string)
        }))
        mandate_options = optional(object({
          collection_method = optional(string)
        }))
        networks = optional(object({
          requested = optional(list(string))
        }))
        setup_future_usage  = optional(string)
        target_date         = optional(string)
        transaction_purpose = optional(string)
        verification_method = optional(string)
      }))
      wechat_pay = optional(object({
        app_id             = optional(string)
        client             = optional(string)
        setup_future_usage = optional(string)
      }))
      zip = optional(object({
        setup_future_usage = optional(string)
      }))
    }))
    radar_options = optional(object({
      session = optional(string)
    }))
    receipt_email      = optional(string)
    return_url         = optional(string)
    setup_future_usage = optional(string)
    shipping = optional(object({
      address = object({
        city        = optional(string)
        country     = optional(string)
        line1       = optional(string)
        line2       = optional(string)
        postal_code = optional(string)
        state       = optional(string)
      })
      carrier         = optional(string)
      name            = string
      phone           = optional(string)
      tracking_number = optional(string)
    }))
    statement_descriptor        = optional(string)
    statement_descriptor_suffix = optional(string)
    transfer_data = optional(object({
      amount      = optional(number)
      description = optional(string)
      destination = string
      metadata    = optional(map(string))
      payment_data = optional(object({
        description = optional(string)
        metadata    = optional(map(string))
      }))
    }))
    transfer_group = optional(string)
    use_stripe_sdk = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.automatic_payment_methods == null || (v.automatic_payment_methods.allow_redirects == null || (contains(["always", "never"], v.automatic_payment_methods.allow_redirects)))
      )
    ])
    error_message = "must be one of: \"always\", \"never\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.capture_method == null || (contains(["automatic", "automatic_async", "manual"], v.capture_method))
      )
    ])
    error_message = "must be one of: \"automatic\", \"automatic_async\", \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.confirmation_method == null || (contains(["automatic", "manual"], v.confirmation_method))
      )
    ])
    error_message = "must be one of: \"automatic\", \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.acss_debit == null || (v.payment_method_options.acss_debit.mandate_options == null || (v.payment_method_options.acss_debit.mandate_options.payment_schedule == null || (contains(["combined", "interval", "sporadic"], v.payment_method_options.acss_debit.mandate_options.payment_schedule)))))
      )
    ])
    error_message = "must be one of: \"combined\", \"interval\", \"sporadic\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.acss_debit == null || (v.payment_method_options.acss_debit.mandate_options == null || (v.payment_method_options.acss_debit.mandate_options.transaction_type == null || (contains(["business", "personal"], v.payment_method_options.acss_debit.mandate_options.transaction_type)))))
      )
    ])
    error_message = "must be one of: \"business\", \"personal\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.acss_debit == null || (v.payment_method_options.acss_debit.setup_future_usage == null || (contains(["none", "off_session", "on_session"], v.payment_method_options.acss_debit.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.acss_debit == null || (v.payment_method_options.acss_debit.verification_method == null || (contains(["automatic", "instant", "microdeposits"], v.payment_method_options.acss_debit.verification_method))))
      )
    ])
    error_message = "must be one of: \"automatic\", \"instant\", \"microdeposits\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.affirm == null || (v.payment_method_options.affirm.capture_method == null || (contains(["manual"], v.payment_method_options.affirm.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.affirm == null || (v.payment_method_options.affirm.setup_future_usage == null || (contains(["none"], v.payment_method_options.affirm.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.afterpay_clearpay == null || (v.payment_method_options.afterpay_clearpay.capture_method == null || (contains(["manual"], v.payment_method_options.afterpay_clearpay.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.afterpay_clearpay == null || (v.payment_method_options.afterpay_clearpay.setup_future_usage == null || (contains(["none"], v.payment_method_options.afterpay_clearpay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.alipay == null || (v.payment_method_options.alipay.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.alipay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.alma == null || (v.payment_method_options.alma.capture_method == null || (contains(["manual"], v.payment_method_options.alma.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.amazon_pay == null || (v.payment_method_options.amazon_pay.capture_method == null || (contains(["manual"], v.payment_method_options.amazon_pay.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.amazon_pay == null || (v.payment_method_options.amazon_pay.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.amazon_pay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.au_becs_debit == null || (v.payment_method_options.au_becs_debit.setup_future_usage == null || (contains(["none", "off_session", "on_session"], v.payment_method_options.au_becs_debit.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.bacs_debit == null || (v.payment_method_options.bacs_debit.setup_future_usage == null || (contains(["none", "off_session", "on_session"], v.payment_method_options.bacs_debit.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.bancontact == null || (v.payment_method_options.bancontact.preferred_language == null || (contains(["de", "en", "fr", "nl"], v.payment_method_options.bancontact.preferred_language))))
      )
    ])
    error_message = "must be one of: \"de\", \"en\", \"fr\", \"nl\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.bancontact == null || (v.payment_method_options.bancontact.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.bancontact.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.billie == null || (v.payment_method_options.billie.capture_method == null || (contains(["manual"], v.payment_method_options.billie.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.blik == null || (v.payment_method_options.blik.setup_future_usage == null || (contains(["none"], v.payment_method_options.blik.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.boleto == null || (v.payment_method_options.boleto.setup_future_usage == null || (contains(["none", "off_session", "on_session"], v.payment_method_options.boleto.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.capture_method == null || (contains(["manual"], v.payment_method_options.card.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.installments == null || (v.payment_method_options.card.installments.plan == null || (v.payment_method_options.card.installments.plan.interval == null || (contains(["month"], v.payment_method_options.card.installments.plan.interval))))))
      )
    ])
    error_message = "must be one of: \"month\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.installments == null || (v.payment_method_options.card.installments.plan == null || (contains(["bonus", "fixed_count", "revolving"], v.payment_method_options.card.installments.plan.type)))))
      )
    ])
    error_message = "must be one of: \"bonus\", \"fixed_count\", \"revolving\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.mandate_options == null || (contains(["fixed", "maximum"], v.payment_method_options.card.mandate_options.amount_type))))
      )
    ])
    error_message = "must be one of: \"fixed\", \"maximum\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.mandate_options == null || (contains(["day", "month", "sporadic", "week", "year"], v.payment_method_options.card.mandate_options.interval))))
      )
    ])
    error_message = "must be one of: \"day\", \"month\", \"sporadic\", \"week\", \"year\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.network == null || (contains(["amex", "cartes_bancaires", "diners", "discover", "eftpos_au", "girocard", "interac", "jcb", "link", "mastercard", "unionpay", "unknown", "visa"], v.payment_method_options.card.network))))
      )
    ])
    error_message = "must be one of: \"amex\", \"cartes_bancaires\", \"diners\", \"discover\", \"eftpos_au\", \"girocard\", \"interac\", \"jcb\", \"link\", \"mastercard\", \"unionpay\", \"unknown\", \"visa\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.request_extended_authorization == null || (contains(["if_available", "never"], v.payment_method_options.card.request_extended_authorization))))
      )
    ])
    error_message = "must be one of: \"if_available\", \"never\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.request_incremental_authorization == null || (contains(["if_available", "never"], v.payment_method_options.card.request_incremental_authorization))))
      )
    ])
    error_message = "must be one of: \"if_available\", \"never\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.request_multicapture == null || (contains(["if_available", "never"], v.payment_method_options.card.request_multicapture))))
      )
    ])
    error_message = "must be one of: \"if_available\", \"never\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.request_overcapture == null || (contains(["if_available", "never"], v.payment_method_options.card.request_overcapture))))
      )
    ])
    error_message = "must be one of: \"if_available\", \"never\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.request_three_d_secure == null || (contains(["any", "automatic", "challenge"], v.payment_method_options.card.request_three_d_secure))))
      )
    ])
    error_message = "must be one of: \"any\", \"automatic\", \"challenge\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card == null || (v.payment_method_options.card.setup_future_usage == null || (contains(["none", "off_session", "on_session"], v.payment_method_options.card.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card_present == null || (v.payment_method_options.card_present.capture_method == null || (contains(["manual", "manual_preferred"], v.payment_method_options.card_present.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\", \"manual_preferred\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.card_present == null || (v.payment_method_options.card_present.routing == null || (v.payment_method_options.card_present.routing.requested_priority == null || (contains(["domestic", "international"], v.payment_method_options.card_present.routing.requested_priority)))))
      )
    ])
    error_message = "must be one of: \"domestic\", \"international\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.cashapp == null || (v.payment_method_options.cashapp.capture_method == null || (contains(["manual"], v.payment_method_options.cashapp.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.cashapp == null || (v.payment_method_options.cashapp.setup_future_usage == null || (contains(["none", "off_session", "on_session"], v.payment_method_options.cashapp.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.crypto == null || (v.payment_method_options.crypto.setup_future_usage == null || (contains(["none"], v.payment_method_options.crypto.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.customer_balance == null || (v.payment_method_options.customer_balance.bank_transfer == null || (v.payment_method_options.customer_balance.bank_transfer.eu_bank_transfer == null || (contains(["BE", "DE", "ES", "FR", "IE", "NL"], v.payment_method_options.customer_balance.bank_transfer.eu_bank_transfer.country)))))
      )
    ])
    error_message = "must be one of: \"BE\", \"DE\", \"ES\", \"FR\", \"IE\", \"NL\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.customer_balance == null || (v.payment_method_options.customer_balance.bank_transfer == null || (contains(["eu_bank_transfer", "gb_bank_transfer", "jp_bank_transfer", "mx_bank_transfer", "us_bank_transfer"], v.payment_method_options.customer_balance.bank_transfer.type))))
      )
    ])
    error_message = "must be one of: \"eu_bank_transfer\", \"gb_bank_transfer\", \"jp_bank_transfer\", \"mx_bank_transfer\", \"us_bank_transfer\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.customer_balance == null || (v.payment_method_options.customer_balance.funding_type == null || (contains(["bank_transfer"], v.payment_method_options.customer_balance.funding_type))))
      )
    ])
    error_message = "must be one of: \"bank_transfer\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.customer_balance == null || (v.payment_method_options.customer_balance.setup_future_usage == null || (contains(["none"], v.payment_method_options.customer_balance.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.eps == null || (v.payment_method_options.eps.setup_future_usage == null || (contains(["none"], v.payment_method_options.eps.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.fpx == null || (v.payment_method_options.fpx.setup_future_usage == null || (contains(["none"], v.payment_method_options.fpx.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.giropay == null || (v.payment_method_options.giropay.setup_future_usage == null || (contains(["none"], v.payment_method_options.giropay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.grabpay == null || (v.payment_method_options.grabpay.setup_future_usage == null || (contains(["none"], v.payment_method_options.grabpay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.ideal == null || (v.payment_method_options.ideal.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.ideal.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.kakao_pay == null || (v.payment_method_options.kakao_pay.capture_method == null || (contains(["manual"], v.payment_method_options.kakao_pay.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.kakao_pay == null || (v.payment_method_options.kakao_pay.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.kakao_pay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.klarna == null || (v.payment_method_options.klarna.capture_method == null || (contains(["manual"], v.payment_method_options.klarna.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.klarna == null || (v.payment_method_options.klarna.setup_future_usage == null || (contains(["none", "off_session", "on_session"], v.payment_method_options.klarna.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.konbini == null || (v.payment_method_options.konbini.setup_future_usage == null || (contains(["none"], v.payment_method_options.konbini.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.kr_card == null || (v.payment_method_options.kr_card.capture_method == null || (contains(["manual"], v.payment_method_options.kr_card.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.kr_card == null || (v.payment_method_options.kr_card.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.kr_card.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.mb_way == null || (v.payment_method_options.mb_way.setup_future_usage == null || (contains(["none"], v.payment_method_options.mb_way.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.mobilepay == null || (v.payment_method_options.mobilepay.capture_method == null || (contains(["manual"], v.payment_method_options.mobilepay.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.mobilepay == null || (v.payment_method_options.mobilepay.setup_future_usage == null || (contains(["none"], v.payment_method_options.mobilepay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.multibanco == null || (v.payment_method_options.multibanco.setup_future_usage == null || (contains(["none"], v.payment_method_options.multibanco.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.naver_pay == null || (v.payment_method_options.naver_pay.capture_method == null || (contains(["manual"], v.payment_method_options.naver_pay.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.naver_pay == null || (v.payment_method_options.naver_pay.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.naver_pay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.nz_bank_account == null || (v.payment_method_options.nz_bank_account.setup_future_usage == null || (contains(["none", "off_session", "on_session"], v.payment_method_options.nz_bank_account.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.oxxo == null || (v.payment_method_options.oxxo.setup_future_usage == null || (contains(["none"], v.payment_method_options.oxxo.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.p24 == null || (v.payment_method_options.p24.setup_future_usage == null || (contains(["none"], v.payment_method_options.p24.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.payco == null || (v.payment_method_options.payco.capture_method == null || (contains(["manual"], v.payment_method_options.payco.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.paynow == null || (v.payment_method_options.paynow.setup_future_usage == null || (contains(["none"], v.payment_method_options.paynow.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.paypal == null || (v.payment_method_options.paypal.capture_method == null || (contains(["manual"], v.payment_method_options.paypal.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.paypal == null || (v.payment_method_options.paypal.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.paypal.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.payto == null || (v.payment_method_options.payto.mandate_options == null || (v.payment_method_options.payto.mandate_options.amount_type == null || (contains(["fixed", "maximum"], v.payment_method_options.payto.mandate_options.amount_type)))))
      )
    ])
    error_message = "must be one of: \"fixed\", \"maximum\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.payto == null || (v.payment_method_options.payto.mandate_options == null || (v.payment_method_options.payto.mandate_options.payment_schedule == null || (contains(["adhoc", "annual", "daily", "fortnightly", "monthly", "quarterly", "semi_annual", "weekly"], v.payment_method_options.payto.mandate_options.payment_schedule)))))
      )
    ])
    error_message = "must be one of: \"adhoc\", \"annual\", \"daily\", \"fortnightly\", \"monthly\", \"quarterly\", \"semi_annual\", \"weekly\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.payto == null || (v.payment_method_options.payto.mandate_options == null || (v.payment_method_options.payto.mandate_options.purpose == null || (contains(["dependant_support", "government", "loan", "mortgage", "other", "pension", "personal", "retail", "salary", "tax", "utility"], v.payment_method_options.payto.mandate_options.purpose)))))
      )
    ])
    error_message = "must be one of: \"dependant_support\", \"government\", \"loan\", \"mortgage\", \"other\", \"pension\", \"personal\", \"retail\", \"salary\", \"tax\", \"utility\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.payto == null || (v.payment_method_options.payto.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.payto.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.pix == null || (v.payment_method_options.pix.amount_includes_iof == null || (contains(["always", "never"], v.payment_method_options.pix.amount_includes_iof))))
      )
    ])
    error_message = "must be one of: \"always\", \"never\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.pix == null || (v.payment_method_options.pix.mandate_options == null || (v.payment_method_options.pix.mandate_options.amount_includes_iof == null || (contains(["always", "never"], v.payment_method_options.pix.mandate_options.amount_includes_iof)))))
      )
    ])
    error_message = "must be one of: \"always\", \"never\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.pix == null || (v.payment_method_options.pix.mandate_options == null || (v.payment_method_options.pix.mandate_options.amount_type == null || (contains(["fixed", "maximum"], v.payment_method_options.pix.mandate_options.amount_type)))))
      )
    ])
    error_message = "must be one of: \"fixed\", \"maximum\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.pix == null || (v.payment_method_options.pix.mandate_options == null || (v.payment_method_options.pix.mandate_options.payment_schedule == null || (contains(["halfyearly", "monthly", "quarterly", "weekly", "yearly"], v.payment_method_options.pix.mandate_options.payment_schedule)))))
      )
    ])
    error_message = "must be one of: \"halfyearly\", \"monthly\", \"quarterly\", \"weekly\", \"yearly\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.pix == null || (v.payment_method_options.pix.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.pix.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.promptpay == null || (v.payment_method_options.promptpay.setup_future_usage == null || (contains(["none"], v.payment_method_options.promptpay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.revolut_pay == null || (v.payment_method_options.revolut_pay.capture_method == null || (contains(["manual"], v.payment_method_options.revolut_pay.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.revolut_pay == null || (v.payment_method_options.revolut_pay.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.revolut_pay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.samsung_pay == null || (v.payment_method_options.samsung_pay.capture_method == null || (contains(["manual"], v.payment_method_options.samsung_pay.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.satispay == null || (v.payment_method_options.satispay.capture_method == null || (contains(["manual"], v.payment_method_options.satispay.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.scalapay == null || (v.payment_method_options.scalapay.capture_method == null || (contains(["manual"], v.payment_method_options.scalapay.capture_method))))
      )
    ])
    error_message = "must be one of: \"manual\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.sepa_debit == null || (v.payment_method_options.sepa_debit.setup_future_usage == null || (contains(["none", "off_session", "on_session"], v.payment_method_options.sepa_debit.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.sofort == null || (v.payment_method_options.sofort.preferred_language == null || (contains(["de", "en", "es", "fr", "it", "nl", "pl"], v.payment_method_options.sofort.preferred_language))))
      )
    ])
    error_message = "must be one of: \"de\", \"en\", \"es\", \"fr\", \"it\", \"nl\", \"pl\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.sofort == null || (v.payment_method_options.sofort.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.sofort.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.swish == null || (v.payment_method_options.swish.setup_future_usage == null || (contains(["none"], v.payment_method_options.swish.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.twint == null || (v.payment_method_options.twint.setup_future_usage == null || (contains(["none", "off_session"], v.payment_method_options.twint.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.upi == null || (v.payment_method_options.upi.setup_future_usage == null || (contains(["off_session", "on_session"], v.payment_method_options.upi.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.us_bank_account == null || (v.payment_method_options.us_bank_account.mandate_options == null || (v.payment_method_options.us_bank_account.mandate_options.collection_method == null || (contains(["paper"], v.payment_method_options.us_bank_account.mandate_options.collection_method)))))
      )
    ])
    error_message = "must be one of: \"paper\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.us_bank_account == null || (v.payment_method_options.us_bank_account.setup_future_usage == null || (contains(["none", "off_session", "on_session"], v.payment_method_options.us_bank_account.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\", \"off_session\", \"on_session\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.us_bank_account == null || (v.payment_method_options.us_bank_account.transaction_purpose == null || (contains(["goods", "other", "services", "unspecified"], v.payment_method_options.us_bank_account.transaction_purpose))))
      )
    ])
    error_message = "must be one of: \"goods\", \"other\", \"services\", \"unspecified\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.us_bank_account == null || (v.payment_method_options.us_bank_account.verification_method == null || (contains(["automatic", "instant", "microdeposits"], v.payment_method_options.us_bank_account.verification_method))))
      )
    ])
    error_message = "must be one of: \"automatic\", \"instant\", \"microdeposits\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.wechat_pay == null || (v.payment_method_options.wechat_pay.client == null || (contains(["android", "ios", "web"], v.payment_method_options.wechat_pay.client))))
      )
    ])
    error_message = "must be one of: \"android\", \"ios\", \"web\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.wechat_pay == null || (v.payment_method_options.wechat_pay.setup_future_usage == null || (contains(["none"], v.payment_method_options.wechat_pay.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.payment_method_options == null || (v.payment_method_options.zip == null || (v.payment_method_options.zip.setup_future_usage == null || (contains(["none"], v.payment_method_options.zip.setup_future_usage))))
      )
    ])
    error_message = "must be one of: \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.payment_intents : (
        v.setup_future_usage == null || (contains(["off_session", "on_session"], v.setup_future_usage))
      )
    ])
    error_message = "must be one of: \"off_session\", \"on_session\""
  }
}

