{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postInvoices
module StripeAPI.Operations.PostInvoices where

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

-- | > POST /v1/invoices
-- 
-- \<p>This endpoint creates a draft invoice for a given customer. The draft invoice created pulls in all pending invoice items on that customer, including prorations.\<\/p>
postInvoices :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostInvoicesRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostInvoicesResponse)) -- ^ Monad containing the result of the operation
postInvoices config
             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoicesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Invoice)
                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoices") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices
-- 
-- The same as 'postInvoices' but returns the raw 'Data.ByteString.Char8.ByteString'
postInvoicesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                 StripeAPI.Common.SecurityScheme s) =>
                   StripeAPI.Common.Configuration s ->
                   PostInvoicesRequestBody ->
                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesRaw config
                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoices") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices
-- 
-- Monadic version of 'postInvoices' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoicesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 PostInvoicesRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response PostInvoicesResponse))
postInvoicesM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostInvoicesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       Invoice)
                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoices") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices
-- 
-- Monadic version of 'postInvoicesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoicesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    PostInvoicesRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/invoices") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postInvoicesRequestBody
-- 
-- 
data PostInvoicesRequestBody = PostInvoicesRequestBody {
  -- | application_fee_amount: A fee in %s that will be applied to the invoice and transferred to the application owner\'s Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees [documentation](https:\/\/stripe.com\/docs\/connect\/subscriptions\#invoices).
  postInvoicesRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | auto_advance: Controls whether Stripe will perform [automatic collection](https:\/\/stripe.com\/docs\/billing\/invoices\/workflow\/\#auto_advance) of the invoice. When \`false\`, the invoice\'s state will not automatically advance without an explicit action.
  , postInvoicesRequestBodyAutoAdvance :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | collection_method: Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions. Defaults to \`charge_automatically\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostInvoicesRequestBodyCollectionMethod')
  -- | custom_fields: A list of up to 4 custom fields to be displayed on the invoice.
  , postInvoicesRequestBodyCustomFields :: (GHC.Maybe.Maybe PostInvoicesRequestBodyCustomFields'Variants)
  -- | customer: The ID of the customer who will be billed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesRequestBodyCustomer :: GHC.Base.String
  -- | days_until_due: The number of days from when the invoice is created until it is due. Valid only for invoices where \`collection_method=send_invoice\`.
  , postInvoicesRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | default_payment_method: ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription\'s default payment method, if any, or to the default payment method in the customer\'s invoice settings.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_source: ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription\'s default source, if any, or to the customer\'s default source.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_tax_rates: The tax rates that will apply to any line item that does not have \`tax_rates\` set.
  , postInvoicesRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users. Referenced as \'memo\' in the Dashboard.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1500
  , postInvoicesRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | due_date: The date on which payment for this invoice is due. Valid only for invoices where \`collection_method=send_invoice\`.
  , postInvoicesRequestBodyDueDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | expand: Specifies which fields in the response should be expanded.
  , postInvoicesRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | footer: Footer to be displayed on the invoice.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesRequestBodyFooter :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postInvoicesRequestBodyMetadata :: (GHC.Maybe.Maybe PostInvoicesRequestBodyMetadata')
  -- | statement_descriptor: Extra information about a charge for the customer\'s credit card statement. It must contain at least one letter. If not specified and this invoice is part of a subscription, the default \`statement_descriptor\` will be set to the first subscription item\'s product\'s \`statement_descriptor\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postInvoicesRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | subscription: The ID of the subscription to invoice, if any. If not set, the created invoice will include all pending invoice items for the customer. If set, the created invoice will only include pending invoice items for that subscription and pending invoice items not associated with any subscription. The subscription\'s billing cycle and regular subscription events won\'t be affected.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesRequestBodySubscription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tax_percent: The percent tax rate applied to the invoice, represented as a decimal number. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
  , postInvoicesRequestBodyTaxPercent :: (GHC.Maybe.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_amount" (postInvoicesRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "auto_advance" (postInvoicesRequestBodyAutoAdvance obj) : (Data.Aeson..=) "collection_method" (postInvoicesRequestBodyCollectionMethod obj) : (Data.Aeson..=) "custom_fields" (postInvoicesRequestBodyCustomFields obj) : (Data.Aeson..=) "customer" (postInvoicesRequestBodyCustomer obj) : (Data.Aeson..=) "days_until_due" (postInvoicesRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postInvoicesRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postInvoicesRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postInvoicesRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "description" (postInvoicesRequestBodyDescription obj) : (Data.Aeson..=) "due_date" (postInvoicesRequestBodyDueDate obj) : (Data.Aeson..=) "expand" (postInvoicesRequestBodyExpand obj) : (Data.Aeson..=) "footer" (postInvoicesRequestBodyFooter obj) : (Data.Aeson..=) "metadata" (postInvoicesRequestBodyMetadata obj) : (Data.Aeson..=) "statement_descriptor" (postInvoicesRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "subscription" (postInvoicesRequestBodySubscription obj) : (Data.Aeson..=) "tax_percent" (postInvoicesRequestBodyTaxPercent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_amount" (postInvoicesRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "auto_advance" (postInvoicesRequestBodyAutoAdvance obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postInvoicesRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "custom_fields" (postInvoicesRequestBodyCustomFields obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postInvoicesRequestBodyCustomer obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postInvoicesRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postInvoicesRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postInvoicesRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postInvoicesRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "description" (postInvoicesRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "due_date" (postInvoicesRequestBodyDueDate obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postInvoicesRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "footer" (postInvoicesRequestBodyFooter obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postInvoicesRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postInvoicesRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "subscription" (postInvoicesRequestBodySubscription obj) GHC.Base.<> (Data.Aeson..=) "tax_percent" (postInvoicesRequestBodyTaxPercent obj)))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesRequestBody" (\obj -> ((((((((((((((((GHC.Base.pure PostInvoicesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "auto_advance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "due_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "footer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "subscription")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent"))
-- | Defines the enum schema postInvoicesRequestBodyCollection_method\'
-- 
-- Either \`charge_automatically\`, or \`send_invoice\`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions. Defaults to \`charge_automatically\`.
data PostInvoicesRequestBodyCollectionMethod'
    = PostInvoicesRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostInvoicesRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostInvoicesRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesRequestBodyCollectionMethod'
    where toJSON (PostInvoicesRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostInvoicesRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostInvoicesRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostInvoicesRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostInvoicesRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostInvoicesRequestBodyCollectionMethod'EnumOther val)
-- | Defines the enum schema postInvoicesRequestBodyCustom_fields\'OneOf1
-- 
-- 
data PostInvoicesRequestBodyCustomFields'OneOf1
    = PostInvoicesRequestBodyCustomFields'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesRequestBodyCustomFields'OneOf1EnumTyped GHC.Base.String
    | PostInvoicesRequestBodyCustomFields'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesRequestBodyCustomFields'OneOf1
    where toJSON (PostInvoicesRequestBodyCustomFields'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesRequestBodyCustomFields'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesRequestBodyCustomFields'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostInvoicesRequestBodyCustomFields'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostInvoicesRequestBodyCustomFields'OneOf1EnumString_
                                          else PostInvoicesRequestBodyCustomFields'OneOf1EnumOther val)
-- | Defines the data type for the schema postInvoicesRequestBodyCustom_fields\'OneOf2
-- 
-- 
data PostInvoicesRequestBodyCustomFields'OneOf2 = PostInvoicesRequestBodyCustomFields'OneOf2 {
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 30
  postInvoicesRequestBodyCustomFields'OneOf2Name :: GHC.Base.String
  -- | value
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 30
  , postInvoicesRequestBodyCustomFields'OneOf2Value :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesRequestBodyCustomFields'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "name" (postInvoicesRequestBodyCustomFields'OneOf2Name obj) : (Data.Aeson..=) "value" (postInvoicesRequestBodyCustomFields'OneOf2Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "name" (postInvoicesRequestBodyCustomFields'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "value" (postInvoicesRequestBodyCustomFields'OneOf2Value obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesRequestBodyCustomFields'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesRequestBodyCustomFields'OneOf2" (\obj -> (GHC.Base.pure PostInvoicesRequestBodyCustomFields'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))
-- | Define the one-of schema postInvoicesRequestBodyCustom_fields\'
-- 
-- A list of up to 4 custom fields to be displayed on the invoice.
data PostInvoicesRequestBodyCustomFields'Variants
    = PostInvoicesRequestBodyCustomFields'PostInvoicesRequestBodyCustomFields'OneOf1 PostInvoicesRequestBodyCustomFields'OneOf1
    | PostInvoicesRequestBodyCustomFields'ListPostInvoicesRequestBodyCustomFields'OneOf2 ([] PostInvoicesRequestBodyCustomFields'OneOf2)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostInvoicesRequestBodyCustomFields'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostInvoicesRequestBodyCustomFields'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postInvoicesRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostInvoicesRequestBodyMetadata' = PostInvoicesRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesRequestBodyMetadata'" (\obj -> GHC.Base.pure PostInvoicesRequestBodyMetadata')
-- | Represents a response of the operation 'postInvoices'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostInvoicesResponseError' is used.
data PostInvoicesResponse =                   
   PostInvoicesResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostInvoicesResponse200 Invoice           -- ^ Successful response.
  | PostInvoicesResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
