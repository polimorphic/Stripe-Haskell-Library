{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCustomersCustomerSubscriptions
module StripeAPI.Operations.PostCustomersCustomerSubscriptions where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > POST /v1/customers/{customer}/subscriptions
-- 
-- \<p>Creates a new subscription on an existing customer.\<\/p>
postCustomersCustomerSubscriptions :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                                -- ^ customer | Constraints: Maximum length of 5000
  -> PostCustomersCustomerSubscriptionsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCustomersCustomerSubscriptionsResponse)) -- ^ Monad containing the result of the operation
postCustomersCustomerSubscriptions config
                                   customer
                                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSubscriptionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Subscription)
                                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/subscriptions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/subscriptions
-- 
-- The same as 'postCustomersCustomerSubscriptions' but returns the raw 'Data.ByteString.Char8.ByteString'
postCustomersCustomerSubscriptionsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                       StripeAPI.Common.SecurityScheme s) =>
                                         StripeAPI.Common.Configuration s ->
                                         GHC.Base.String ->
                                         PostCustomersCustomerSubscriptionsRequestBody ->
                                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSubscriptionsRaw config
                                      customer
                                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/subscriptions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/subscriptions
-- 
-- Monadic version of 'postCustomersCustomerSubscriptions' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerSubscriptionsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       PostCustomersCustomerSubscriptionsRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response PostCustomersCustomerSubscriptionsResponse))
postCustomersCustomerSubscriptionsM customer
                                    body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSubscriptionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Subscription)
                                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSubscriptionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/subscriptions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/subscriptions
-- 
-- Monadic version of 'postCustomersCustomerSubscriptionsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerSubscriptionsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                        StripeAPI.Common.SecurityScheme s) =>
                                          GHC.Base.String ->
                                          PostCustomersCustomerSubscriptionsRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSubscriptionsRawM customer
                                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/subscriptions"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsRequestBody
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBody = PostCustomersCustomerSubscriptionsRequestBody {
  -- | application_fee_percent: A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner\'s Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https:\/\/stripe.com\/docs\/connect\/subscriptions\#collecting-fees-on-subscriptions).
  postCustomersCustomerSubscriptionsRequestBodyApplicationFeePercent :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | backdate_start_date: For new subscriptions, a past timestamp to backdate the subscription\'s start date to. If set, the first invoice will contain a proration for the timespan between the start date and the current time. Can be combined with trials and the billing cycle anchor.
  , postCustomersCustomerSubscriptionsRequestBodyBackdateStartDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | billing_cycle_anchor: A future timestamp to anchor the subscription\'s [billing cycle](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle). This is used to determine the date of the first full invoice, and, for plans with \`month\` or \`year\` intervals, the day of the month for subsequent invoices.
  , postCustomersCustomerSubscriptionsRequestBodyBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | billing_thresholds: Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
  , postCustomersCustomerSubscriptionsRequestBodyBillingThresholds :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'Variants)
  -- | cancel_at: A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using \`proration_behavior\`. If set during a future period, this will always cause a proration for that period.
  , postCustomersCustomerSubscriptionsRequestBodyCancelAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | cancel_at_period_end: Boolean indicating whether this subscription should cancel at the end of the current period.
  , postCustomersCustomerSubscriptionsRequestBodyCancelAtPeriodEnd :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | collection_method: Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to \`charge_automatically\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod')
  -- | coupon: The code of the coupon to apply to this subscription. A coupon applied to a subscription will only affect invoices created for that particular subscription.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsRequestBodyCoupon :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | days_until_due: Number of days a customer has to pay invoices generated by this subscription. Valid only for subscriptions where \`collection_method\` is set to \`send_invoice\`.
  , postCustomersCustomerSubscriptionsRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | default_payment_method: ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. If not set, invoices will use the default payment method in the customer\'s invoice settings.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_source: ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If not set, defaults to the customer\'s default source.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_tax_rates: The tax rates that will apply to any subscription item that does not have \`tax_rates\` set. Invoices created will have their \`default_tax_rates\` populated from the subscription.
  , postCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'Variants)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCustomersCustomerSubscriptionsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | items: A list of up to 20 subscription items, each with an attached plan.
  , postCustomersCustomerSubscriptionsRequestBodyItems :: (GHC.Maybe.Maybe ([] PostCustomersCustomerSubscriptionsRequestBodyItems'))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCustomersCustomerSubscriptionsRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyMetadata')
  -- | off_session: Indicates if a customer is on or off-session while an invoice payment is attempted.
  , postCustomersCustomerSubscriptionsRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | payment_behavior: Use \`allow_incomplete\` to create subscriptions with \`status=incomplete\` if the first invoice cannot be paid. Creating subscriptions with this status allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
  -- 
  -- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
  -- 
  -- \`pending_if_incomplete\` is only used with updates and cannot be passed when creating a subscription.
  , postCustomersCustomerSubscriptionsRequestBodyPaymentBehavior :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior')
  -- | pending_invoice_item_interval: Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https:\/\/stripe.com\/docs\/api\#create_invoice) for the given subscription at the specified interval.
  , postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants)
  -- | prorate: This field has been renamed to \`proration_behavior\`. \`prorate=true\` can be replaced with \`proration_behavior=create_prorations\` and \`prorate=false\` can be replaced with \`proration_behavior=none\`.
  , postCustomersCustomerSubscriptionsRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | proration_behavior: Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) resulting from the \`billing_cycle_anchor\`. Valid values are \`create_prorations\` or \`none\`.
  -- 
  -- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. Prorations can be disabled by passing \`none\`. If no value is passed, the default is \`create_prorations\`.
  , postCustomersCustomerSubscriptionsRequestBodyProrationBehavior :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior')
  -- | tax_percent: A non-negative decimal (with at most four decimal places) between 0 and 100. This represents the percentage of the subscription invoice subtotal that will be calculated and added as tax to the final amount in each billing period. For example, a plan which charges \$10\/month with a \`tax_percent\` of \`20.0\` will charge \$12 per invoice. To unset a previously-set value, pass an empty string. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
  , postCustomersCustomerSubscriptionsRequestBodyTaxPercent :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Variants)
  -- | trial_end: Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value \`now\` can be provided to end the customer\'s trial immediately. Can be at most two years from \`billing_cycle_anchor\`.
  , postCustomersCustomerSubscriptionsRequestBodyTrialEnd :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Variants)
  -- | trial_from_plan: Indicates if a plan\'s \`trial_period_days\` should be applied to the subscription. Setting \`trial_end\` per subscription is preferred, and this defaults to \`false\`. Setting this flag to \`true\` together with \`trial_end\` is not allowed.
  , postCustomersCustomerSubscriptionsRequestBodyTrialFromPlan :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | trial_period_days: Integer representing the number of trial period days before the customer is charged for the first time. This will always overwrite any trials that might apply via a subscribed plan.
  , postCustomersCustomerSubscriptionsRequestBodyTrialPeriodDays :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_percent" (postCustomersCustomerSubscriptionsRequestBodyApplicationFeePercent obj) : (Data.Aeson..=) "backdate_start_date" (postCustomersCustomerSubscriptionsRequestBodyBackdateStartDate obj) : (Data.Aeson..=) "billing_cycle_anchor" (postCustomersCustomerSubscriptionsRequestBodyBillingCycleAnchor obj) : (Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds obj) : (Data.Aeson..=) "cancel_at" (postCustomersCustomerSubscriptionsRequestBodyCancelAt obj) : (Data.Aeson..=) "cancel_at_period_end" (postCustomersCustomerSubscriptionsRequestBodyCancelAtPeriodEnd obj) : (Data.Aeson..=) "collection_method" (postCustomersCustomerSubscriptionsRequestBodyCollectionMethod obj) : (Data.Aeson..=) "coupon" (postCustomersCustomerSubscriptionsRequestBodyCoupon obj) : (Data.Aeson..=) "days_until_due" (postCustomersCustomerSubscriptionsRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postCustomersCustomerSubscriptionsRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postCustomersCustomerSubscriptionsRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "expand" (postCustomersCustomerSubscriptionsRequestBodyExpand obj) : (Data.Aeson..=) "items" (postCustomersCustomerSubscriptionsRequestBodyItems obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postCustomersCustomerSubscriptionsRequestBodyOffSession obj) : (Data.Aeson..=) "payment_behavior" (postCustomersCustomerSubscriptionsRequestBodyPaymentBehavior obj) : (Data.Aeson..=) "pending_invoice_item_interval" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval obj) : (Data.Aeson..=) "prorate" (postCustomersCustomerSubscriptionsRequestBodyProrate obj) : (Data.Aeson..=) "proration_behavior" (postCustomersCustomerSubscriptionsRequestBodyProrationBehavior obj) : (Data.Aeson..=) "tax_percent" (postCustomersCustomerSubscriptionsRequestBodyTaxPercent obj) : (Data.Aeson..=) "trial_end" (postCustomersCustomerSubscriptionsRequestBodyTrialEnd obj) : (Data.Aeson..=) "trial_from_plan" (postCustomersCustomerSubscriptionsRequestBodyTrialFromPlan obj) : (Data.Aeson..=) "trial_period_days" (postCustomersCustomerSubscriptionsRequestBodyTrialPeriodDays obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_percent" (postCustomersCustomerSubscriptionsRequestBodyApplicationFeePercent obj) GHC.Base.<> ((Data.Aeson..=) "backdate_start_date" (postCustomersCustomerSubscriptionsRequestBodyBackdateStartDate obj) GHC.Base.<> ((Data.Aeson..=) "billing_cycle_anchor" (postCustomersCustomerSubscriptionsRequestBodyBillingCycleAnchor obj) GHC.Base.<> ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at" (postCustomersCustomerSubscriptionsRequestBodyCancelAt obj) GHC.Base.<> ((Data.Aeson..=) "cancel_at_period_end" (postCustomersCustomerSubscriptionsRequestBodyCancelAtPeriodEnd obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postCustomersCustomerSubscriptionsRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "coupon" (postCustomersCustomerSubscriptionsRequestBodyCoupon obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postCustomersCustomerSubscriptionsRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postCustomersCustomerSubscriptionsRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postCustomersCustomerSubscriptionsRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerSubscriptionsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "items" (postCustomersCustomerSubscriptionsRequestBodyItems obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postCustomersCustomerSubscriptionsRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "payment_behavior" (postCustomersCustomerSubscriptionsRequestBodyPaymentBehavior obj) GHC.Base.<> ((Data.Aeson..=) "pending_invoice_item_interval" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval obj) GHC.Base.<> ((Data.Aeson..=) "prorate" (postCustomersCustomerSubscriptionsRequestBodyProrate obj) GHC.Base.<> ((Data.Aeson..=) "proration_behavior" (postCustomersCustomerSubscriptionsRequestBodyProrationBehavior obj) GHC.Base.<> ((Data.Aeson..=) "tax_percent" (postCustomersCustomerSubscriptionsRequestBodyTaxPercent obj) GHC.Base.<> ((Data.Aeson..=) "trial_end" (postCustomersCustomerSubscriptionsRequestBodyTrialEnd obj) GHC.Base.<> ((Data.Aeson..=) "trial_from_plan" (postCustomersCustomerSubscriptionsRequestBodyTrialFromPlan obj) GHC.Base.<> (Data.Aeson..=) "trial_period_days" (postCustomersCustomerSubscriptionsRequestBodyTrialPeriodDays obj))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBody" (\obj -> (((((((((((((((((((((((GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "backdate_start_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cancel_at_period_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_invoice_item_interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proration_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_from_plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_period_days"))
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyBilling_thresholds\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1EnumOther val)
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsRequestBodyBilling_thresholds\'OneOf2
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2 = PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2 {
  -- | amount_gte
  postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | reset_billing_cycle_anchor
  , postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_gte" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte obj) : (Data.Aeson..=) "reset_billing_cycle_anchor" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_gte" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2AmountGte obj) GHC.Base.<> (Data.Aeson..=) "reset_billing_cycle_anchor" (postCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2ResetBillingCycleAnchor obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2" (\obj -> (GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reset_billing_cycle_anchor"))
-- | Define the one-of schema postCustomersCustomerSubscriptionsRequestBodyBilling_thresholds\'
-- 
-- Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
data PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1 PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2 PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyBillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyCollection_method\'
-- 
-- Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to \`charge_automatically\`.
data PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'
    = PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostCustomersCustomerSubscriptionsRequestBodyCollectionMethod'EnumOther val)
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyDefault_tax_rates\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsRequestBodyDefault_tax_rates\'
-- 
-- The tax rates that will apply to any subscription item that does not have \`tax_rates\` set. Invoices created will have their \`default_tax_rates\` populated from the subscription.
data PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1 PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyDefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsRequestBodyItems\'
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyItems' = PostCustomersCustomerSubscriptionsRequestBodyItems' {
  -- | billing_thresholds
  postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'Variants)
  -- | metadata
  , postCustomersCustomerSubscriptionsRequestBodyItems'Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata')
  -- | plan
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSubscriptionsRequestBodyItems'Plan :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | quantity
  , postCustomersCustomerSubscriptionsRequestBodyItems'Quantity :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | tax_rates
  , postCustomersCustomerSubscriptionsRequestBodyItems'TaxRates :: (GHC.Maybe.Maybe PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsRequestBodyItems'Metadata obj) : (Data.Aeson..=) "plan" (postCustomersCustomerSubscriptionsRequestBodyItems'Plan obj) : (Data.Aeson..=) "quantity" (postCustomersCustomerSubscriptionsRequestBodyItems'Quantity obj) : (Data.Aeson..=) "tax_rates" (postCustomersCustomerSubscriptionsRequestBodyItems'TaxRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "billing_thresholds" (postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSubscriptionsRequestBodyItems'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "plan" (postCustomersCustomerSubscriptionsRequestBodyItems'Plan obj) GHC.Base.<> ((Data.Aeson..=) "quantity" (postCustomersCustomerSubscriptionsRequestBodyItems'Quantity obj) GHC.Base.<> (Data.Aeson..=) "tax_rates" (postCustomersCustomerSubscriptionsRequestBodyItems'TaxRates obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyItems'" (\obj -> ((((GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyItems' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_thresholds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_rates"))
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyItems\'Billing_thresholds\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1EnumOther val)
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsRequestBodyItems\'Billing_thresholds\'OneOf2
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 = PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 {
  -- | usage_gte
  postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "usage_gte" (postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "usage_gte" (postCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2UsageGte obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))
-- | Define the one-of schema postCustomersCustomerSubscriptionsRequestBodyItems\'Billing_thresholds\'
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1 PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2 PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'BillingThresholds'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsRequestBodyItems\'Metadata\'
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata' = PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyItems'Metadata')
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyItems\'Tax_rates\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsRequestBodyItems\'Tax_rates\'
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1 PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyItems'TaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCustomersCustomerSubscriptionsRequestBodyMetadata' = PostCustomersCustomerSubscriptionsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyMetadata')
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyPayment_behavior\'
-- 
-- Use \`allow_incomplete\` to create subscriptions with \`status=incomplete\` if the first invoice cannot be paid. Creating subscriptions with this status allows you to manage scenarios where additional user actions are needed to pay a subscription\'s invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https:\/\/stripe.com\/docs\/billing\/migration\/strong-customer-authentication) for Billing to learn more. This is the default behavior.
-- 
-- Use \`error_if_incomplete\` if you want Stripe to return an HTTP 402 status code if a subscription\'s first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https:\/\/stripe.com\/docs\/upgrades\#2019-03-14) to learn more.
-- 
-- \`pending_if_incomplete\` is only used with updates and cannot be passed when creating a subscription.
data PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'
    = PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringAllowIncomplete
    | PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
    | PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringAllowIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allow_incomplete")
                                          then PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringAllowIncomplete
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error_if_incomplete")
                                                then PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringErrorIfIncomplete
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending_if_incomplete")
                                                      then PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumStringPendingIfIncomplete
                                                      else PostCustomersCustomerSubscriptionsRequestBodyPaymentBehavior'EnumOther val)
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyPending_invoice_item_interval\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1EnumOther val)
-- | Defines the data type for the schema postCustomersCustomerSubscriptionsRequestBodyPending_invoice_item_interval\'OneOf2
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 = PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 {
  -- | interval
  postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval :: PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
  -- | interval_count
  , postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "interval" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) : (Data.Aeson..=) "interval_count" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "interval" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "interval_count" (postCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2IntervalCount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2" (\obj -> (GHC.Base.pure PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_count"))
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyPending_invoice_item_interval\'OneOf2Interval\'
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    = PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day")
                                          then PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringDay
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                                then PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringMonth
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week")
                                                      then PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringWeek
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year")
                                                            then PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumStringYear
                                                            else PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2Interval'EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsRequestBodyPending_invoice_item_interval\'
-- 
-- Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https:\/\/stripe.com\/docs\/api\#create_invoice) for the given subscription at the specified interval.
data PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1 PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2 PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyPendingInvoiceItemInterval'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyProration_behavior\'
-- 
-- Determines how to handle [prorations](https:\/\/stripe.com\/docs\/subscriptions\/billing-cycle\#prorations) resulting from the \`billing_cycle_anchor\`. Valid values are \`create_prorations\` or \`none\`.
-- 
-- Passing \`create_prorations\` will cause proration invoice items to be created when applicable. Prorations can be disabled by passing \`none\`. If no value is passed, the default is \`create_prorations\`.
data PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'
    = PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringAlwaysInvoice
    | PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringCreateProrations
    | PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringNone
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringAlwaysInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringCreateProrations) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations"
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "always_invoice")
                                          then PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringAlwaysInvoice
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "create_prorations")
                                                then PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringCreateProrations
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                      then PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumStringNone
                                                      else PostCustomersCustomerSubscriptionsRequestBodyProrationBehavior'EnumOther val)
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyTax_percent\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumString_
                                          else PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsRequestBodyTax_percent\'
-- 
-- A non-negative decimal (with at most four decimal places) between 0 and 100. This represents the percentage of the subscription invoice subtotal that will be calculated and added as tax to the final amount in each billing period. For example, a plan which charges \$10\/month with a \`tax_percent\` of \`20.0\` will charge \$12 per invoice. To unset a previously-set value, pass an empty string. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
data PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1 PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Double GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyTaxPercent'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postCustomersCustomerSubscriptionsRequestBodyTrial_end\'OneOf1
-- 
-- 
data PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1
    = PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumTyped GHC.Base.String
    | PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumStringNow
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1
    where toJSON (PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumStringNow) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now"
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "now")
                                          then PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumStringNow
                                          else PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1EnumOther val)
-- | Define the one-of schema postCustomersCustomerSubscriptionsRequestBodyTrial_end\'
-- 
-- Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value \`now\` can be provided to end the customer\'s trial immediately. Can be at most two years from \`billing_cycle_anchor\`.
data PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Variants
    = PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1 PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'OneOf1
    | PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Integer GHC.Integer.Type.Integer
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSubscriptionsRequestBodyTrialEnd'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postCustomersCustomerSubscriptions'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerSubscriptionsResponseError' is used.
data PostCustomersCustomerSubscriptionsResponse =                   
   PostCustomersCustomerSubscriptionsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostCustomersCustomerSubscriptionsResponse200 Subscription      -- ^ Successful response.
  | PostCustomersCustomerSubscriptionsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
