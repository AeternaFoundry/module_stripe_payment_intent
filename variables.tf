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
}

