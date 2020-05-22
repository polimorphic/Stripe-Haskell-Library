{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postPaymentIntents
module StripeAPI.Operations.PostPaymentIntents where

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

-- | > POST /v1/payment_intents
-- 
-- \<p>Creates a PaymentIntent object.\<\/p>
-- 
-- \<p>After the PaymentIntent is created, attach a payment method and \<a href=\"\/docs\/api\/payment_intents\/confirm\">confirm\<\/a>
-- to continue the payment. You can read more about the different payment flows
-- available via the Payment Intents API \<a href=\"\/docs\/payments\/payment-intents\">here\<\/a>.\<\/p>
-- 
-- \<p>When \<code>confirm=true\<\/code> is used during creation, it is equivalent to creating
-- and confirming the PaymentIntent in the same call. You may use any parameters
-- available in the \<a href=\"\/docs\/api\/payment_intents\/confirm\">confirm API\<\/a> when \<code>confirm=true\<\/code>
-- is supplied.\<\/p>
postPaymentIntents :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostPaymentIntentsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostPaymentIntentsResponse)) -- ^ Monad containing the result of the operation
postPaymentIntents config
                   body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        PaymentIntent)
                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents
-- 
-- The same as 'postPaymentIntents' but returns the raw 'Data.ByteString.Char8.ByteString'
postPaymentIntentsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                       StripeAPI.Common.SecurityScheme s) =>
                         StripeAPI.Common.Configuration s ->
                         PostPaymentIntentsRequestBody ->
                         m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                               (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsRaw config
                      body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents
-- 
-- Monadic version of 'postPaymentIntents' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentIntentsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                     StripeAPI.Common.SecurityScheme s) =>
                       PostPaymentIntentsRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response PostPaymentIntentsResponse))
postPaymentIntentsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                         PaymentIntent)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents
-- 
-- Monadic version of 'postPaymentIntentsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentIntentsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          PostPaymentIntentsRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/payment_intents") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postPaymentIntentsRequestBody
-- 
-- 
data PostPaymentIntentsRequestBody = PostPaymentIntentsRequestBody {
  -- | amount: Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal) (e.g., 100 cents to charge \$1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is \$0.50 US or [equivalent in charge currency](https:\/\/stripe.com\/docs\/currencies\#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of \$999,999.99).
  postPaymentIntentsRequestBodyAmount :: GHC.Integer.Type.Integer
  -- | application_fee_amount: The amount of the application fee (if any) that will be applied to the
  -- payment and transferred to the application owner\'s Stripe account. For
  -- more information, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
  , postPaymentIntentsRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | capture_method: Controls when the funds will be captured from the customer\'s account.
  , postPaymentIntentsRequestBodyCaptureMethod :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyCaptureMethod')
  -- | confirm: Set to \`true\` to attempt to [confirm](https:\/\/stripe.com\/docs\/api\/payment_intents\/confirm) this PaymentIntent immediately. This parameter defaults to \`false\`. When creating and confirming a PaymentIntent at the same time, parameters available in the [confirm](https:\/\/stripe.com\/docs\/api\/payment_intents\/confirm) API may also be provided.
  , postPaymentIntentsRequestBodyConfirm :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | confirmation_method
  , postPaymentIntentsRequestBodyConfirmationMethod :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyConfirmationMethod')
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , postPaymentIntentsRequestBodyCurrency :: GHC.Base.String
  -- | customer: ID of the Customer this PaymentIntent belongs to, if one exists.
  -- 
  -- If present, payment methods used with this PaymentIntent can only be attached to this Customer, and payment methods attached to other Customers cannot be used with this PaymentIntent.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyCustomer :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1000
  , postPaymentIntentsRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | error_on_requires_action: Set to \`true\` to fail the payment attempt if the PaymentIntent transitions into \`requires_action\`. This parameter is intended for simpler integrations that do not handle customer actions, like [saving cards without authentication](https:\/\/stripe.com\/docs\/payments\/save-card-without-authentication). This parameter can only be used with [\`confirm=true\`](https:\/\/stripe.com\/docs\/api\/payment_intents\/create\#create_payment_intent-confirm).
  , postPaymentIntentsRequestBodyErrorOnRequiresAction :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentIntentsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | mandate: ID of the mandate to be used for this payment. This parameter can only be used with [\`confirm=true\`](https:\/\/stripe.com\/docs\/api\/payment_intents\/create\#create_payment_intent-confirm).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyMandate :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | mandate_data: This hash contains details about the Mandate to create. This parameter can only be used with [\`confirm=true\`](https:\/\/stripe.com\/docs\/api\/payment_intents\/create\#create_payment_intent-confirm).
  , postPaymentIntentsRequestBodyMandateData :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyMandateData')
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postPaymentIntentsRequestBodyMetadata :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyMetadata')
  -- | off_session: Set to \`true\` to indicate that the customer is not in your checkout flow during this payment attempt, and therefore is unable to authenticate. This parameter is intended for scenarios where you collect card details and [charge them later](https:\/\/stripe.com\/docs\/payments\/cards\/charging-saved-cards). This parameter can only be used with [\`confirm=true\`](https:\/\/stripe.com\/docs\/api\/payment_intents\/create\#create_payment_intent-confirm).
  , postPaymentIntentsRequestBodyOffSession :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyOffSession'Variants)
  -- | on_behalf_of: The Stripe account ID for which these funds are intended. For details, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
  , postPaymentIntentsRequestBodyOnBehalfOf :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | payment_method: ID of the payment method (a PaymentMethod, Card, or [compatible Source](https:\/\/stripe.com\/docs\/payments\/payment-methods\#compatibility) object) to attach to this PaymentIntent.
  -- 
  -- If this parameter is omitted with \`confirm=true\`, \`customer.default_source\` will be attached as this PaymentIntent\'s payment instrument to improve the migration experience for users of the Charges API. We recommend that you explicitly provide the \`payment_method\` going forward.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | payment_method_options: Payment-method-specific configuration for this PaymentIntent.
  , postPaymentIntentsRequestBodyPaymentMethodOptions :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyPaymentMethodOptions')
  -- | payment_method_types: The list of payment method types (e.g. card) that this PaymentIntent is allowed to use. If this is not provided, defaults to [\"card\"].
  , postPaymentIntentsRequestBodyPaymentMethodTypes :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | receipt_email: Email address that the receipt for the resulting payment will be sent to.
  , postPaymentIntentsRequestBodyReceiptEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | return_url: The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method\'s app or site. If you\'d prefer to redirect to a mobile application, you can alternatively supply an application URI scheme. This parameter can only be used with [\`confirm=true\`](https:\/\/stripe.com\/docs\/api\/payment_intents\/create\#create_payment_intent-confirm).
  , postPaymentIntentsRequestBodyReturnUrl :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | save_payment_method: If the PaymentIntent has a \`payment_method\` and a \`customer\` or if you\'re attaching a payment method to the PaymentIntent in this request, you can pass \`save_payment_method=true\` to save the payment method to the customer. Defaults to \`false\`.
  -- 
  -- If the payment method is already saved to a customer, this does nothing. If this type of payment method cannot be saved to a customer, the request will error.
  -- 
  -- _Note that saving a payment method using this parameter does not guarantee that the payment method can be charged._ To ensure that only payment methods which can be charged are saved to a customer, you can [manually save](https:\/\/stripe.com\/docs\/api\/customers\/create\#create_customer-source) the payment method in response to the [\`payment_intent.succeeded\` webhook](https:\/\/stripe.com\/docs\/api\/events\/types\#event_types-payment_intent.succeeded).
  , postPaymentIntentsRequestBodySavePaymentMethod :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
  -- 
  -- If present, the payment method used with this PaymentIntent can be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer, even after the transaction completes.
  -- 
  -- For more, learn to [save card details during payment](https:\/\/stripe.com\/docs\/payments\/save-during-payment).
  -- 
  -- Stripe uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules. For example, if your customer is impacted by [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication), using \`off_session\` will ensure that they are authenticated while processing this PaymentIntent. You will then be able to collect [off-session payments](https:\/\/stripe.com\/docs\/payments\/cards\/charging-saved-cards\#off-session-payments-with-saved-cards) for this customer.
  , postPaymentIntentsRequestBodySetupFutureUsage :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodySetupFutureUsage')
  -- | shipping: Shipping information for this PaymentIntent.
  , postPaymentIntentsRequestBodyShipping :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyShipping')
  -- | statement_descriptor: For non-card charges, you can use this value as the complete description that appears on your customers’ statements. Must contain at least one letter, maximum 22 characters.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postPaymentIntentsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor_suffix: Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postPaymentIntentsRequestBodyStatementDescriptorSuffix :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | transfer_data: The parameters used to automatically create a Transfer when the payment succeeds.
  -- For more information, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
  , postPaymentIntentsRequestBodyTransferData :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyTransferData')
  -- | transfer_group: A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts) for details.
  , postPaymentIntentsRequestBodyTransferGroup :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | use_stripe_sdk: Set to \`true\` only when using manual confirmation and the iOS or Android SDKs to handle additional authentication steps.
  , postPaymentIntentsRequestBodyUseStripeSdk :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postPaymentIntentsRequestBodyAmount obj) : (Data.Aeson..=) "application_fee_amount" (postPaymentIntentsRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "capture_method" (postPaymentIntentsRequestBodyCaptureMethod obj) : (Data.Aeson..=) "confirm" (postPaymentIntentsRequestBodyConfirm obj) : (Data.Aeson..=) "confirmation_method" (postPaymentIntentsRequestBodyConfirmationMethod obj) : (Data.Aeson..=) "currency" (postPaymentIntentsRequestBodyCurrency obj) : (Data.Aeson..=) "customer" (postPaymentIntentsRequestBodyCustomer obj) : (Data.Aeson..=) "description" (postPaymentIntentsRequestBodyDescription obj) : (Data.Aeson..=) "error_on_requires_action" (postPaymentIntentsRequestBodyErrorOnRequiresAction obj) : (Data.Aeson..=) "expand" (postPaymentIntentsRequestBodyExpand obj) : (Data.Aeson..=) "mandate" (postPaymentIntentsRequestBodyMandate obj) : (Data.Aeson..=) "mandate_data" (postPaymentIntentsRequestBodyMandateData obj) : (Data.Aeson..=) "metadata" (postPaymentIntentsRequestBodyMetadata obj) : (Data.Aeson..=) "off_session" (postPaymentIntentsRequestBodyOffSession obj) : (Data.Aeson..=) "on_behalf_of" (postPaymentIntentsRequestBodyOnBehalfOf obj) : (Data.Aeson..=) "payment_method" (postPaymentIntentsRequestBodyPaymentMethod obj) : (Data.Aeson..=) "payment_method_options" (postPaymentIntentsRequestBodyPaymentMethodOptions obj) : (Data.Aeson..=) "payment_method_types" (postPaymentIntentsRequestBodyPaymentMethodTypes obj) : (Data.Aeson..=) "receipt_email" (postPaymentIntentsRequestBodyReceiptEmail obj) : (Data.Aeson..=) "return_url" (postPaymentIntentsRequestBodyReturnUrl obj) : (Data.Aeson..=) "save_payment_method" (postPaymentIntentsRequestBodySavePaymentMethod obj) : (Data.Aeson..=) "setup_future_usage" (postPaymentIntentsRequestBodySetupFutureUsage obj) : (Data.Aeson..=) "shipping" (postPaymentIntentsRequestBodyShipping obj) : (Data.Aeson..=) "statement_descriptor" (postPaymentIntentsRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_suffix" (postPaymentIntentsRequestBodyStatementDescriptorSuffix obj) : (Data.Aeson..=) "transfer_data" (postPaymentIntentsRequestBodyTransferData obj) : (Data.Aeson..=) "transfer_group" (postPaymentIntentsRequestBodyTransferGroup obj) : (Data.Aeson..=) "use_stripe_sdk" (postPaymentIntentsRequestBodyUseStripeSdk obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postPaymentIntentsRequestBodyAmount obj) GHC.Base.<> ((Data.Aeson..=) "application_fee_amount" (postPaymentIntentsRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "capture_method" (postPaymentIntentsRequestBodyCaptureMethod obj) GHC.Base.<> ((Data.Aeson..=) "confirm" (postPaymentIntentsRequestBodyConfirm obj) GHC.Base.<> ((Data.Aeson..=) "confirmation_method" (postPaymentIntentsRequestBodyConfirmationMethod obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postPaymentIntentsRequestBodyCurrency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postPaymentIntentsRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "description" (postPaymentIntentsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "error_on_requires_action" (postPaymentIntentsRequestBodyErrorOnRequiresAction obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPaymentIntentsRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "mandate" (postPaymentIntentsRequestBodyMandate obj) GHC.Base.<> ((Data.Aeson..=) "mandate_data" (postPaymentIntentsRequestBodyMandateData obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPaymentIntentsRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "off_session" (postPaymentIntentsRequestBodyOffSession obj) GHC.Base.<> ((Data.Aeson..=) "on_behalf_of" (postPaymentIntentsRequestBodyOnBehalfOf obj) GHC.Base.<> ((Data.Aeson..=) "payment_method" (postPaymentIntentsRequestBodyPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_options" (postPaymentIntentsRequestBodyPaymentMethodOptions obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_types" (postPaymentIntentsRequestBodyPaymentMethodTypes obj) GHC.Base.<> ((Data.Aeson..=) "receipt_email" (postPaymentIntentsRequestBodyReceiptEmail obj) GHC.Base.<> ((Data.Aeson..=) "return_url" (postPaymentIntentsRequestBodyReturnUrl obj) GHC.Base.<> ((Data.Aeson..=) "save_payment_method" (postPaymentIntentsRequestBodySavePaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "setup_future_usage" (postPaymentIntentsRequestBodySetupFutureUsage obj) GHC.Base.<> ((Data.Aeson..=) "shipping" (postPaymentIntentsRequestBodyShipping obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postPaymentIntentsRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_suffix" (postPaymentIntentsRequestBodyStatementDescriptorSuffix obj) GHC.Base.<> ((Data.Aeson..=) "transfer_data" (postPaymentIntentsRequestBodyTransferData obj) GHC.Base.<> ((Data.Aeson..=) "transfer_group" (postPaymentIntentsRequestBodyTransferGroup obj) GHC.Base.<> (Data.Aeson..=) "use_stripe_sdk" (postPaymentIntentsRequestBodyUseStripeSdk obj))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBody" (\obj -> (((((((((((((((((((((((((((GHC.Base.pure PostPaymentIntentsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "capture_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "confirm")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "confirmation_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "error_on_requires_action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "on_behalf_of")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receipt_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "save_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "setup_future_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_group")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "use_stripe_sdk"))
-- | Defines the enum schema postPaymentIntentsRequestBodyCapture_method\'
-- 
-- Controls when the funds will be captured from the customer\'s account.
data PostPaymentIntentsRequestBodyCaptureMethod'
    = PostPaymentIntentsRequestBodyCaptureMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyCaptureMethod'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyCaptureMethod'EnumStringAutomatic
    | PostPaymentIntentsRequestBodyCaptureMethod'EnumStringManual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyCaptureMethod'
    where toJSON (PostPaymentIntentsRequestBodyCaptureMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyCaptureMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyCaptureMethod'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
          toJSON (PostPaymentIntentsRequestBodyCaptureMethod'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyCaptureMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                          then PostPaymentIntentsRequestBodyCaptureMethod'EnumStringAutomatic
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                then PostPaymentIntentsRequestBodyCaptureMethod'EnumStringManual
                                                else PostPaymentIntentsRequestBodyCaptureMethod'EnumOther val)
-- | Defines the enum schema postPaymentIntentsRequestBodyConfirmation_method\'
-- 
-- 
data PostPaymentIntentsRequestBodyConfirmationMethod'
    = PostPaymentIntentsRequestBodyConfirmationMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyConfirmationMethod'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringAutomatic
    | PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringManual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyConfirmationMethod'
    where toJSON (PostPaymentIntentsRequestBodyConfirmationMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyConfirmationMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
          toJSON (PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringManual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyConfirmationMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                          then PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringAutomatic
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "manual")
                                                then PostPaymentIntentsRequestBodyConfirmationMethod'EnumStringManual
                                                else PostPaymentIntentsRequestBodyConfirmationMethod'EnumOther val)
-- | Defines the data type for the schema postPaymentIntentsRequestBodyMandate_data\'
-- 
-- This hash contains details about the Mandate to create. This parameter can only be used with [\`confirm=true\`](https:\/\/stripe.com\/docs\/api\/payment_intents\/create\#create_payment_intent-confirm).
data PostPaymentIntentsRequestBodyMandateData' = PostPaymentIntentsRequestBodyMandateData' {
  -- | customer_acceptance
  postPaymentIntentsRequestBodyMandateData'CustomerAcceptance :: PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMandateData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer_acceptance" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer_acceptance" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyMandateData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyMandateData'" (\obj -> GHC.Base.pure PostPaymentIntentsRequestBodyMandateData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer_acceptance"))
-- | Defines the data type for the schema postPaymentIntentsRequestBodyMandate_data\'Customer_acceptance\'
-- 
-- 
data PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance' = PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance' {
  -- | accepted_at
  postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'AcceptedAt :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | offline
  , postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline')
  -- | online
  , postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online')
  -- | type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type :: PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "accepted_at" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'AcceptedAt obj) : (Data.Aeson..=) "offline" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline obj) : (Data.Aeson..=) "online" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online obj) : (Data.Aeson..=) "type" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "accepted_at" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'AcceptedAt obj) GHC.Base.<> ((Data.Aeson..=) "offline" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline obj) GHC.Base.<> ((Data.Aeson..=) "online" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online obj) GHC.Base.<> (Data.Aeson..=) "type" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'" (\obj -> (((GHC.Base.pure PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "accepted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "offline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "online")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the data type for the schema postPaymentIntentsRequestBodyMandate_data\'Customer_acceptance\'Offline\'
-- 
-- 
data PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline' = PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline'" (\obj -> GHC.Base.pure PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Offline')
-- | Defines the data type for the schema postPaymentIntentsRequestBodyMandate_data\'Customer_acceptance\'Online\'
-- 
-- 
data PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online' = PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online' {
  -- | ip_address
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'IpAddress :: GHC.Base.String
  -- | user_agent
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'UserAgent :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ip_address" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) : (Data.Aeson..=) "user_agent" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ip_address" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'IpAddress obj) GHC.Base.<> (Data.Aeson..=) "user_agent" (postPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'UserAgent obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online'" (\obj -> (GHC.Base.pure PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Online' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_agent"))
-- | Defines the enum schema postPaymentIntentsRequestBodyMandate_data\'Customer_acceptance\'Type\'
-- 
-- 
data PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'
    = PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOffline
    | PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'
    where toJSON (PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOffline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline"
          toJSON (PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "offline")
                                          then PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOffline
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "online")
                                                then PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumStringOnline
                                                else PostPaymentIntentsRequestBodyMandateData'CustomerAcceptance'Type'EnumOther val)
-- | Defines the data type for the schema postPaymentIntentsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostPaymentIntentsRequestBodyMetadata' = PostPaymentIntentsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPaymentIntentsRequestBodyMetadata')
-- | Defines the enum schema postPaymentIntentsRequestBodyOff_session\'OneOf1
-- 
-- 
data PostPaymentIntentsRequestBodyOffSession'OneOf1
    = PostPaymentIntentsRequestBodyOffSession'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyOffSession'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringOneOff
    | PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringRecurring
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyOffSession'OneOf1
    where toJSON (PostPaymentIntentsRequestBodyOffSession'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyOffSession'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringOneOff) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_off"
          toJSON (PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringRecurring) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recurring"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyOffSession'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "one_off")
                                          then PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringOneOff
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "recurring")
                                                then PostPaymentIntentsRequestBodyOffSession'OneOf1EnumStringRecurring
                                                else PostPaymentIntentsRequestBodyOffSession'OneOf1EnumOther val)
-- | Define the one-of schema postPaymentIntentsRequestBodyOff_session\'
-- 
-- Set to \`true\` to indicate that the customer is not in your checkout flow during this payment attempt, and therefore is unable to authenticate. This parameter is intended for scenarios where you collect card details and [charge them later](https:\/\/stripe.com\/docs\/payments\/cards\/charging-saved-cards). This parameter can only be used with [\`confirm=true\`](https:\/\/stripe.com\/docs\/api\/payment_intents\/create\#create_payment_intent-confirm).
data PostPaymentIntentsRequestBodyOffSession'Variants
    = PostPaymentIntentsRequestBodyOffSession'PostPaymentIntentsRequestBodyOffSession'OneOf1 PostPaymentIntentsRequestBodyOffSession'OneOf1
    | PostPaymentIntentsRequestBodyOffSession'Bool GHC.Types.Bool
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyOffSession'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyOffSession'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postPaymentIntentsRequestBodyPayment_method_options\'
-- 
-- Payment-method-specific configuration for this PaymentIntent.
data PostPaymentIntentsRequestBodyPaymentMethodOptions' = PostPaymentIntentsRequestBodyPaymentMethodOptions' {
  -- | card
  postPaymentIntentsRequestBodyPaymentMethodOptions'Card :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyPaymentMethodOptions'Card')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyPaymentMethodOptions'" (\obj -> GHC.Base.pure PostPaymentIntentsRequestBodyPaymentMethodOptions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card"))
-- | Defines the data type for the schema postPaymentIntentsRequestBodyPayment_method_options\'Card\'
-- 
-- 
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card' = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card' {
  -- | installments
  postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments')
  -- | request_three_d_secure
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "installments" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments obj) : (Data.Aeson..=) "request_three_d_secure" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "installments" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments obj) GHC.Base.<> (Data.Aeson..=) "request_three_d_secure" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'" (\obj -> (GHC.Base.pure PostPaymentIntentsRequestBodyPaymentMethodOptions'Card' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "installments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))
-- | Defines the data type for the schema postPaymentIntentsRequestBodyPayment_method_options\'Card\'Installments\'
-- 
-- 
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments' = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments' {
  -- | enabled
  postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Enabled :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | plan
  , postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan :: (GHC.Maybe.Maybe PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "enabled" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Enabled obj) : (Data.Aeson..=) "plan" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "enabled" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Enabled obj) GHC.Base.<> (Data.Aeson..=) "plan" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'" (\obj -> (GHC.Base.pure PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan"))
-- | Defines the enum schema postPaymentIntentsRequestBodyPayment_method_options\'Card\'Installments\'Plan\'OneOf1
-- 
-- 
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    where toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumString_
                                          else PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1EnumOther val)
-- | Defines the data type for the schema postPaymentIntentsRequestBodyPayment_method_options\'Card\'Installments\'Plan\'OneOf2
-- 
-- 
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 {
  -- | count
  postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count :: GHC.Integer.Type.Integer
  -- | interval
  , postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval :: PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
  -- | type
  , postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type :: PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "count" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count obj) : (Data.Aeson..=) "interval" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval obj) : (Data.Aeson..=) "type" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "count" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Count obj) GHC.Base.<> ((Data.Aeson..=) "interval" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval obj) GHC.Base.<> (Data.Aeson..=) "type" (postPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2" (\obj -> ((GHC.Base.pure PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema postPaymentIntentsRequestBodyPayment_method_options\'Card\'Installments\'Plan\'OneOf2Interval\'
-- 
-- 
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    where toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                          then PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumStringMonth
                                          else PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Interval'EnumOther val)
-- | Defines the enum schema postPaymentIntentsRequestBodyPayment_method_options\'Card\'Installments\'Plan\'OneOf2Type\'
-- 
-- 
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    where toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "fixed_count")
                                          then PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumStringFixedCount
                                          else PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2Type'EnumOther val)
-- | Define the one-of schema postPaymentIntentsRequestBodyPayment_method_options\'Card\'Installments\'Plan\'
-- 
-- 
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1 PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf1
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2 PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'OneOf2
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'Installments'Plan'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postPaymentIntentsRequestBodyPayment_method_options\'Card\'Request_three_d_secure\'
-- 
-- 
data PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    = PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
    | PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any"
          toJSON (PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "any")
                                          then PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAny
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "automatic")
                                                then PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumStringAutomatic
                                                else PostPaymentIntentsRequestBodyPaymentMethodOptions'Card'RequestThreeDSecure'EnumOther val)
-- | Defines the enum schema postPaymentIntentsRequestBodySetup_future_usage\'
-- 
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
-- 
-- If present, the payment method used with this PaymentIntent can be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer, even after the transaction completes.
-- 
-- For more, learn to [save card details during payment](https:\/\/stripe.com\/docs\/payments\/save-during-payment).
-- 
-- Stripe uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules. For example, if your customer is impacted by [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication), using \`off_session\` will ensure that they are authenticated while processing this PaymentIntent. You will then be able to collect [off-session payments](https:\/\/stripe.com\/docs\/payments\/cards\/charging-saved-cards\#off-session-payments-with-saved-cards) for this customer.
data PostPaymentIntentsRequestBodySetupFutureUsage'
    = PostPaymentIntentsRequestBodySetupFutureUsage'EnumOther Data.Aeson.Types.Internal.Value
    | PostPaymentIntentsRequestBodySetupFutureUsage'EnumTyped GHC.Base.String
    | PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOffSession
    | PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOnSession
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodySetupFutureUsage'
    where toJSON (PostPaymentIntentsRequestBodySetupFutureUsage'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodySetupFutureUsage'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOffSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session"
          toJSON (PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOnSession) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session"
instance Data.Aeson.FromJSON PostPaymentIntentsRequestBodySetupFutureUsage'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "off_session")
                                          then PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOffSession
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "on_session")
                                                then PostPaymentIntentsRequestBodySetupFutureUsage'EnumStringOnSession
                                                else PostPaymentIntentsRequestBodySetupFutureUsage'EnumOther val)
-- | Defines the data type for the schema postPaymentIntentsRequestBodyShipping\'
-- 
-- Shipping information for this PaymentIntent.
data PostPaymentIntentsRequestBodyShipping' = PostPaymentIntentsRequestBodyShipping' {
  -- | address
  postPaymentIntentsRequestBodyShipping'Address :: PostPaymentIntentsRequestBodyShipping'Address'
  -- | carrier
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyShipping'Carrier :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyShipping'Name :: GHC.Base.String
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyShipping'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tracking_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyShipping'TrackingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyShipping'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postPaymentIntentsRequestBodyShipping'Address obj) : (Data.Aeson..=) "carrier" (postPaymentIntentsRequestBodyShipping'Carrier obj) : (Data.Aeson..=) "name" (postPaymentIntentsRequestBodyShipping'Name obj) : (Data.Aeson..=) "phone" (postPaymentIntentsRequestBodyShipping'Phone obj) : (Data.Aeson..=) "tracking_number" (postPaymentIntentsRequestBodyShipping'TrackingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postPaymentIntentsRequestBodyShipping'Address obj) GHC.Base.<> ((Data.Aeson..=) "carrier" (postPaymentIntentsRequestBodyShipping'Carrier obj) GHC.Base.<> ((Data.Aeson..=) "name" (postPaymentIntentsRequestBodyShipping'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postPaymentIntentsRequestBodyShipping'Phone obj) GHC.Base.<> (Data.Aeson..=) "tracking_number" (postPaymentIntentsRequestBodyShipping'TrackingNumber obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyShipping'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyShipping'" (\obj -> ((((GHC.Base.pure PostPaymentIntentsRequestBodyShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))
-- | Defines the data type for the schema postPaymentIntentsRequestBodyShipping\'Address\'
-- 
-- 
data PostPaymentIntentsRequestBodyShipping'Address' = PostPaymentIntentsRequestBodyShipping'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentIntentsRequestBodyShipping'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyShipping'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyShipping'Address'Line1 :: GHC.Base.String
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyShipping'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyShipping'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsRequestBodyShipping'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyShipping'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postPaymentIntentsRequestBodyShipping'Address'City obj) : (Data.Aeson..=) "country" (postPaymentIntentsRequestBodyShipping'Address'Country obj) : (Data.Aeson..=) "line1" (postPaymentIntentsRequestBodyShipping'Address'Line1 obj) : (Data.Aeson..=) "line2" (postPaymentIntentsRequestBodyShipping'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postPaymentIntentsRequestBodyShipping'Address'PostalCode obj) : (Data.Aeson..=) "state" (postPaymentIntentsRequestBodyShipping'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postPaymentIntentsRequestBodyShipping'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postPaymentIntentsRequestBodyShipping'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postPaymentIntentsRequestBodyShipping'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postPaymentIntentsRequestBodyShipping'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postPaymentIntentsRequestBodyShipping'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postPaymentIntentsRequestBodyShipping'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyShipping'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyShipping'Address'" (\obj -> (((((GHC.Base.pure PostPaymentIntentsRequestBodyShipping'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postPaymentIntentsRequestBodyTransfer_data\'
-- 
-- The parameters used to automatically create a Transfer when the payment succeeds.
-- For more information, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
data PostPaymentIntentsRequestBodyTransferData' = PostPaymentIntentsRequestBodyTransferData' {
  -- | amount
  postPaymentIntentsRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | destination
  , postPaymentIntentsRequestBodyTransferData'Destination :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsRequestBodyTransferData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postPaymentIntentsRequestBodyTransferData'Amount obj) : (Data.Aeson..=) "destination" (postPaymentIntentsRequestBodyTransferData'Destination obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postPaymentIntentsRequestBodyTransferData'Amount obj) GHC.Base.<> (Data.Aeson..=) "destination" (postPaymentIntentsRequestBodyTransferData'Destination obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsRequestBodyTransferData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsRequestBodyTransferData'" (\obj -> (GHC.Base.pure PostPaymentIntentsRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination"))
-- | Represents a response of the operation 'postPaymentIntents'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentIntentsResponseError' is used.
data PostPaymentIntentsResponse =                   
   PostPaymentIntentsResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostPaymentIntentsResponse200 PaymentIntent     -- ^ Successful response.
  | PostPaymentIntentsResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
