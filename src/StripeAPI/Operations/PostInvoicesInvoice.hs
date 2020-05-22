{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postInvoicesInvoice
module StripeAPI.Operations.PostInvoicesInvoice where

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

-- | > POST /v1/invoices/{invoice}
-- 
-- \<p>Draft invoices are fully editable. Once an invoice is \<a href=\"\/docs\/billing\/invoices\/workflow\#finalized\">finalized\<\/a>,
-- monetary values, as well as \<code>collection_method\<\/code>, become uneditable.\<\/p>
-- 
-- \<p>If you would like to stop the Stripe Billing engine from automatically finalizing, reattempting payments on,
-- sending reminders for, or \<a href=\"\/docs\/billing\/invoices\/reconciliation\">automatically reconciling\<\/a> invoices, pass
-- \<code>auto_advance=false\<\/code>.\<\/p>
postInvoicesInvoice :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                 -- ^ invoice | Constraints: Maximum length of 5000
  -> PostInvoicesInvoiceRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostInvoicesInvoiceResponse)) -- ^ Monad containing the result of the operation
postInvoicesInvoice config
                    invoice
                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                           Invoice)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices/{invoice}
-- 
-- The same as 'postInvoicesInvoice' but returns the raw 'Data.ByteString.Char8.ByteString'
postInvoicesInvoiceRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          StripeAPI.Common.Configuration s ->
                          GHC.Base.String ->
                          PostInvoicesInvoiceRequestBody ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesInvoiceRaw config
                       invoice
                       body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices/{invoice}
-- 
-- Monadic version of 'postInvoicesInvoice' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoicesInvoiceM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                      StripeAPI.Common.SecurityScheme s) =>
                        GHC.Base.String ->
                        PostInvoicesInvoiceRequestBody ->
                        Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response PostInvoicesInvoiceResponse))
postInvoicesInvoiceM invoice
                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                            Invoice)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/invoices/{invoice}
-- 
-- Monadic version of 'postInvoicesInvoiceRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postInvoicesInvoiceRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Base.String ->
                           PostInvoicesInvoiceRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postInvoicesInvoiceRawM invoice
                        body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postInvoicesInvoiceRequestBody
-- 
-- 
data PostInvoicesInvoiceRequestBody = PostInvoicesInvoiceRequestBody {
  -- | application_fee_amount: A fee in %s that will be applied to the invoice and transferred to the application owner\'s Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees [documentation](https:\/\/stripe.com\/docs\/connect\/subscriptions\#invoices).
  postInvoicesInvoiceRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | auto_advance: Controls whether Stripe will perform [automatic collection](https:\/\/stripe.com\/docs\/billing\/invoices\/workflow\/\#auto_advance) of the invoice.
  , postInvoicesInvoiceRequestBodyAutoAdvance :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | collection_method: Either \`charge_automatically\` or \`send_invoice\`. This field can be updated only on \`draft\` invoices.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesInvoiceRequestBodyCollectionMethod :: (GHC.Maybe.Maybe PostInvoicesInvoiceRequestBodyCollectionMethod')
  -- | custom_fields: A list of up to 4 custom fields to be displayed on the invoice. If a value for \`custom_fields\` is specified, the list specified will replace the existing custom field list on this invoice. Pass an empty string to remove previously-defined fields.
  , postInvoicesInvoiceRequestBodyCustomFields :: (GHC.Maybe.Maybe PostInvoicesInvoiceRequestBodyCustomFields'Variants)
  -- | days_until_due: The number of days from which the invoice is created until it is due. Only valid for invoices where \`collection_method=send_invoice\`. This field can only be updated on \`draft\` invoices.
  , postInvoicesInvoiceRequestBodyDaysUntilDue :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | default_payment_method: ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription\'s default payment method, if any, or to the default payment method in the customer\'s invoice settings.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesInvoiceRequestBodyDefaultPaymentMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_source: ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription\'s default source, if any, or to the customer\'s default source.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesInvoiceRequestBodyDefaultSource :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_tax_rates: The tax rates that will apply to any line item that does not have \`tax_rates\` set. Pass an empty string to remove previously-defined tax rates.
  , postInvoicesInvoiceRequestBodyDefaultTaxRates :: (GHC.Maybe.Maybe PostInvoicesInvoiceRequestBodyDefaultTaxRates'Variants)
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users. Referenced as \'memo\' in the Dashboard.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1500
  , postInvoicesInvoiceRequestBodyDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | due_date: The date on which payment for this invoice is due. Only valid for invoices where \`collection_method=send_invoice\`. This field can only be updated on \`draft\` invoices.
  , postInvoicesInvoiceRequestBodyDueDate :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | expand: Specifies which fields in the response should be expanded.
  , postInvoicesInvoiceRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | footer: Footer to be displayed on the invoice.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesInvoiceRequestBodyFooter :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postInvoicesInvoiceRequestBodyMetadata :: (GHC.Maybe.Maybe PostInvoicesInvoiceRequestBodyMetadata')
  -- | statement_descriptor: Extra information about a charge for the customer\'s credit card statement. It must contain at least one letter. If not specified and this invoice is part of a subscription, the default \`statement_descriptor\` will be set to the first subscription item\'s product\'s \`statement_descriptor\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postInvoicesInvoiceRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | tax_percent: The percent tax rate applied to the invoice, represented as a non-negative decimal number (with at most four decimal places) between 0 and 100. To unset a previously-set value, pass an empty string. This field can be updated only on \`draft\` invoices. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
  , postInvoicesInvoiceRequestBodyTaxPercent :: (GHC.Maybe.Maybe PostInvoicesInvoiceRequestBodyTaxPercent'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "application_fee_amount" (postInvoicesInvoiceRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "auto_advance" (postInvoicesInvoiceRequestBodyAutoAdvance obj) : (Data.Aeson..=) "collection_method" (postInvoicesInvoiceRequestBodyCollectionMethod obj) : (Data.Aeson..=) "custom_fields" (postInvoicesInvoiceRequestBodyCustomFields obj) : (Data.Aeson..=) "days_until_due" (postInvoicesInvoiceRequestBodyDaysUntilDue obj) : (Data.Aeson..=) "default_payment_method" (postInvoicesInvoiceRequestBodyDefaultPaymentMethod obj) : (Data.Aeson..=) "default_source" (postInvoicesInvoiceRequestBodyDefaultSource obj) : (Data.Aeson..=) "default_tax_rates" (postInvoicesInvoiceRequestBodyDefaultTaxRates obj) : (Data.Aeson..=) "description" (postInvoicesInvoiceRequestBodyDescription obj) : (Data.Aeson..=) "due_date" (postInvoicesInvoiceRequestBodyDueDate obj) : (Data.Aeson..=) "expand" (postInvoicesInvoiceRequestBodyExpand obj) : (Data.Aeson..=) "footer" (postInvoicesInvoiceRequestBodyFooter obj) : (Data.Aeson..=) "metadata" (postInvoicesInvoiceRequestBodyMetadata obj) : (Data.Aeson..=) "statement_descriptor" (postInvoicesInvoiceRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "tax_percent" (postInvoicesInvoiceRequestBodyTaxPercent obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "application_fee_amount" (postInvoicesInvoiceRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "auto_advance" (postInvoicesInvoiceRequestBodyAutoAdvance obj) GHC.Base.<> ((Data.Aeson..=) "collection_method" (postInvoicesInvoiceRequestBodyCollectionMethod obj) GHC.Base.<> ((Data.Aeson..=) "custom_fields" (postInvoicesInvoiceRequestBodyCustomFields obj) GHC.Base.<> ((Data.Aeson..=) "days_until_due" (postInvoicesInvoiceRequestBodyDaysUntilDue obj) GHC.Base.<> ((Data.Aeson..=) "default_payment_method" (postInvoicesInvoiceRequestBodyDefaultPaymentMethod obj) GHC.Base.<> ((Data.Aeson..=) "default_source" (postInvoicesInvoiceRequestBodyDefaultSource obj) GHC.Base.<> ((Data.Aeson..=) "default_tax_rates" (postInvoicesInvoiceRequestBodyDefaultTaxRates obj) GHC.Base.<> ((Data.Aeson..=) "description" (postInvoicesInvoiceRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "due_date" (postInvoicesInvoiceRequestBodyDueDate obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postInvoicesInvoiceRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "footer" (postInvoicesInvoiceRequestBodyFooter obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postInvoicesInvoiceRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postInvoicesInvoiceRequestBodyStatementDescriptor obj) GHC.Base.<> (Data.Aeson..=) "tax_percent" (postInvoicesInvoiceRequestBodyTaxPercent obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoiceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoiceRequestBody" (\obj -> ((((((((((((((GHC.Base.pure PostInvoicesInvoiceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "auto_advance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "collection_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_fields")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "days_until_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "due_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "footer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_percent"))
-- | Defines the enum schema postInvoicesInvoiceRequestBodyCollection_method\'
-- 
-- Either \`charge_automatically\` or \`send_invoice\`. This field can be updated only on \`draft\` invoices.
data PostInvoicesInvoiceRequestBodyCollectionMethod'
    = PostInvoicesInvoiceRequestBodyCollectionMethod'EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesInvoiceRequestBodyCollectionMethod'EnumTyped GHC.Base.String
    | PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringChargeAutomatically
    | PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringSendInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyCollectionMethod'
    where toJSON (PostInvoicesInvoiceRequestBodyCollectionMethod'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyCollectionMethod'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringChargeAutomatically) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically"
          toJSON (PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringSendInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice"
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyCollectionMethod'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "charge_automatically")
                                          then PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringChargeAutomatically
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "send_invoice")
                                                then PostInvoicesInvoiceRequestBodyCollectionMethod'EnumStringSendInvoice
                                                else PostInvoicesInvoiceRequestBodyCollectionMethod'EnumOther val)
-- | Defines the enum schema postInvoicesInvoiceRequestBodyCustom_fields\'OneOf1
-- 
-- 
data PostInvoicesInvoiceRequestBodyCustomFields'OneOf1
    = PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumTyped GHC.Base.String
    | PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyCustomFields'OneOf1
    where toJSON (PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyCustomFields'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumString_
                                          else PostInvoicesInvoiceRequestBodyCustomFields'OneOf1EnumOther val)
-- | Defines the data type for the schema postInvoicesInvoiceRequestBodyCustom_fields\'OneOf2
-- 
-- 
data PostInvoicesInvoiceRequestBodyCustomFields'OneOf2 = PostInvoicesInvoiceRequestBodyCustomFields'OneOf2 {
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 30
  postInvoicesInvoiceRequestBodyCustomFields'OneOf2Name :: GHC.Base.String
  -- | value
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 30
  , postInvoicesInvoiceRequestBodyCustomFields'OneOf2Value :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyCustomFields'OneOf2
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "name" (postInvoicesInvoiceRequestBodyCustomFields'OneOf2Name obj) : (Data.Aeson..=) "value" (postInvoicesInvoiceRequestBodyCustomFields'OneOf2Value obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "name" (postInvoicesInvoiceRequestBodyCustomFields'OneOf2Name obj) GHC.Base.<> (Data.Aeson..=) "value" (postInvoicesInvoiceRequestBodyCustomFields'OneOf2Value obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoiceRequestBodyCustomFields'OneOf2
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoiceRequestBodyCustomFields'OneOf2" (\obj -> (GHC.Base.pure PostInvoicesInvoiceRequestBodyCustomFields'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value"))
-- | Define the one-of schema postInvoicesInvoiceRequestBodyCustom_fields\'
-- 
-- A list of up to 4 custom fields to be displayed on the invoice. If a value for \`custom_fields\` is specified, the list specified will replace the existing custom field list on this invoice. Pass an empty string to remove previously-defined fields.
data PostInvoicesInvoiceRequestBodyCustomFields'Variants
    = PostInvoicesInvoiceRequestBodyCustomFields'PostInvoicesInvoiceRequestBodyCustomFields'OneOf1 PostInvoicesInvoiceRequestBodyCustomFields'OneOf1
    | PostInvoicesInvoiceRequestBodyCustomFields'ListPostInvoicesInvoiceRequestBodyCustomFields'OneOf2 ([] PostInvoicesInvoiceRequestBodyCustomFields'OneOf2)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyCustomFields'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyCustomFields'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema postInvoicesInvoiceRequestBodyDefault_tax_rates\'OneOf1
-- 
-- 
data PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1
    = PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumTyped GHC.Base.String
    | PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1
    where toJSON (PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumString_
                                          else PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1EnumOther val)
-- | Define the one-of schema postInvoicesInvoiceRequestBodyDefault_tax_rates\'
-- 
-- The tax rates that will apply to any line item that does not have \`tax_rates\` set. Pass an empty string to remove previously-defined tax rates.
data PostInvoicesInvoiceRequestBodyDefaultTaxRates'Variants
    = PostInvoicesInvoiceRequestBodyDefaultTaxRates'PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1 PostInvoicesInvoiceRequestBodyDefaultTaxRates'OneOf1
    | PostInvoicesInvoiceRequestBodyDefaultTaxRates'ListString ([] GHC.Base.String)
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyDefaultTaxRates'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyDefaultTaxRates'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema postInvoicesInvoiceRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostInvoicesInvoiceRequestBodyMetadata' = PostInvoicesInvoiceRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoiceRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoiceRequestBodyMetadata'" (\obj -> GHC.Base.pure PostInvoicesInvoiceRequestBodyMetadata')
-- | Defines the enum schema postInvoicesInvoiceRequestBodyTax_percent\'OneOf1
-- 
-- 
data PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1
    = PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumOther Data.Aeson.Types.Internal.Value
    | PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumTyped GHC.Base.String
    | PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumString_
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1
    where toJSON (PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumString_) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack ""
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "")
                                          then PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumString_
                                          else PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1EnumOther val)
-- | Define the one-of schema postInvoicesInvoiceRequestBodyTax_percent\'
-- 
-- The percent tax rate applied to the invoice, represented as a non-negative decimal number (with at most four decimal places) between 0 and 100. To unset a previously-set value, pass an empty string. This field can be updated only on \`draft\` invoices. This field has been deprecated and will be removed in a future API version, for further information view the [migration docs](https:\/\/stripe.com\/docs\/billing\/migration\/taxes) for \`tax_rates\`.
data PostInvoicesInvoiceRequestBodyTaxPercent'Variants
    = PostInvoicesInvoiceRequestBodyTaxPercent'PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1 PostInvoicesInvoiceRequestBodyTaxPercent'OneOf1
    | PostInvoicesInvoiceRequestBodyTaxPercent'Double GHC.Types.Double
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostInvoicesInvoiceRequestBodyTaxPercent'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostInvoicesInvoiceRequestBodyTaxPercent'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Represents a response of the operation 'postInvoicesInvoice'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostInvoicesInvoiceResponseError' is used.
data PostInvoicesInvoiceResponse =                   
   PostInvoicesInvoiceResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostInvoicesInvoiceResponse200 Invoice           -- ^ Successful response.
  | PostInvoicesInvoiceResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
