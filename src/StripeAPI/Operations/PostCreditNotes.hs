-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postCreditNotes
module StripeAPI.Operations.PostCreditNotes where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
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

-- | > POST /v1/credit_notes
-- 
-- \<p>Issue a credit note to adjust the amount of a finalized invoice. For a \<code>status=open\<\/code> invoice, a credit note reduces
-- its \<code>amount_due\<\/code>. For a \<code>status=paid\<\/code> invoice, a credit note does not affect its \<code>amount_due\<\/code>. Instead, it can result
-- in any combination of the following:\<\/p>
-- 
-- \<ul>
-- \<li>Refund: create a new refund (using \<code>refund_amount\<\/code>) or link an existing refund (using \<code>refund\<\/code>).\<\/li>
-- \<li>Customer balance credit: credit the customer’s balance (using \<code>credit_amount\<\/code>) which will be automatically applied to their next invoice when it’s finalized.\<\/li>
-- \<li>Outside of Stripe credit: record the amount that is or will be credited outside of Stripe (using \<code>out_of_band_amount\<\/code>).\<\/li>
-- \<\/ul>
-- 
-- \<p>For post-payment credit notes the sum of the refund, credit and outside of Stripe amounts must equal the credit note total.\<\/p>
-- 
-- \<p>You may issue multiple credit notes for an invoice. Each credit note will increment the invoice’s \<code>pre_payment_credit_notes_amount\<\/code>
-- or \<code>post_payment_credit_notes_amount\<\/code> depending on its \<code>status\<\/code> at the time of credit note creation.\<\/p>
postCreditNotes :: forall m . StripeAPI.Common.MonadHTTP m => PostCreditNotesRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCreditNotesResponse) -- ^ Monadic computation which returns the result of the operation
postCreditNotes body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCreditNotesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCreditNotesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                CreditNote)
                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCreditNotesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/credit_notes") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/credit_notes.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostCreditNotesRequestBody = PostCreditNotesRequestBody {
  -- | amount: The integer amount in cents (or local equivalent) representing the total amount of the credit note.
  postCreditNotesRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | credit_amount: The integer amount in cents (or local equivalent) representing the amount to credit the customer\'s balance, which will be automatically applied to their next invoice.
  , postCreditNotesRequestBodyCreditAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCreditNotesRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | invoice: ID of the invoice.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCreditNotesRequestBodyInvoice :: Data.Text.Internal.Text
  -- | lines: Line items that make up the credit note.
  , postCreditNotesRequestBodyLines :: (GHC.Maybe.Maybe ([PostCreditNotesRequestBodyLines']))
  -- | memo: The credit note\'s memo appears on the credit note PDF.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCreditNotesRequestBodyMemo :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCreditNotesRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | out_of_band_amount: The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
  , postCreditNotesRequestBodyOutOfBandAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | reason: Reason for issuing this credit note, one of \`duplicate\`, \`fraudulent\`, \`order_change\`, or \`product_unsatisfactory\`
  , postCreditNotesRequestBodyReason :: (GHC.Maybe.Maybe PostCreditNotesRequestBodyReason')
  -- | refund: ID of an existing refund to link this credit note to.
  , postCreditNotesRequestBodyRefund :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | refund_amount: The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
  , postCreditNotesRequestBodyRefundAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCreditNotesRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyCreditAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyExpand obj) : ["invoice" Data.Aeson.Types.ToJSON..= postCreditNotesRequestBodyInvoice obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lines" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("memo" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyMemo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("out_of_band_amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyOutOfBandAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyRefund obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyRefundAmount obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyCreditAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyExpand obj) : ["invoice" Data.Aeson.Types.ToJSON..= postCreditNotesRequestBodyInvoice obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lines" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("memo" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyMemo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("out_of_band_amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyOutOfBandAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyRefund obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyRefundAmount obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreditNotesRequestBody" (\obj -> ((((((((((GHC.Base.pure PostCreditNotesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "credit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lines")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "memo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "out_of_band_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_amount"))
-- | Create a new 'PostCreditNotesRequestBody' with all required fields.
mkPostCreditNotesRequestBody :: Data.Text.Internal.Text -- ^ 'postCreditNotesRequestBodyInvoice'
  -> PostCreditNotesRequestBody
mkPostCreditNotesRequestBody postCreditNotesRequestBodyInvoice = PostCreditNotesRequestBody{postCreditNotesRequestBodyAmount = GHC.Maybe.Nothing,
                                                                                            postCreditNotesRequestBodyCreditAmount = GHC.Maybe.Nothing,
                                                                                            postCreditNotesRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                            postCreditNotesRequestBodyInvoice = postCreditNotesRequestBodyInvoice,
                                                                                            postCreditNotesRequestBodyLines = GHC.Maybe.Nothing,
                                                                                            postCreditNotesRequestBodyMemo = GHC.Maybe.Nothing,
                                                                                            postCreditNotesRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                                            postCreditNotesRequestBodyOutOfBandAmount = GHC.Maybe.Nothing,
                                                                                            postCreditNotesRequestBodyReason = GHC.Maybe.Nothing,
                                                                                            postCreditNotesRequestBodyRefund = GHC.Maybe.Nothing,
                                                                                            postCreditNotesRequestBodyRefundAmount = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/credit_notes.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.lines.items@ in the specification.
-- 
-- 
data PostCreditNotesRequestBodyLines' = PostCreditNotesRequestBodyLines' {
  -- | amount
  postCreditNotesRequestBodyLines'Amount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | description
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCreditNotesRequestBodyLines'Description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | invoice_line_item
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCreditNotesRequestBodyLines'InvoiceLineItem :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | quantity
  , postCreditNotesRequestBodyLines'Quantity :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | tax_rates
  , postCreditNotesRequestBodyLines'TaxRates :: (GHC.Maybe.Maybe PostCreditNotesRequestBodyLines'TaxRates'Variants)
  -- | type
  , postCreditNotesRequestBodyLines'Type :: PostCreditNotesRequestBodyLines'Type'
  -- | unit_amount
  , postCreditNotesRequestBodyLines'UnitAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | unit_amount_decimal
  , postCreditNotesRequestBodyLines'UnitAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCreditNotesRequestBodyLines'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'Amount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'Description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_line_item" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'InvoiceLineItem obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'Quantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_rates" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'TaxRates obj) : ["type" Data.Aeson.Types.ToJSON..= postCreditNotesRequestBodyLines'Type obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'UnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'UnitAmountDecimal obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'Amount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'Description obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("invoice_line_item" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'InvoiceLineItem obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'Quantity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_rates" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'TaxRates obj) : ["type" Data.Aeson.Types.ToJSON..= postCreditNotesRequestBodyLines'Type obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'UnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (postCreditNotesRequestBodyLines'UnitAmountDecimal obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBodyLines'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCreditNotesRequestBodyLines'" (\obj -> (((((((GHC.Base.pure PostCreditNotesRequestBodyLines' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "invoice_line_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_rates")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount_decimal"))
-- | Create a new 'PostCreditNotesRequestBodyLines'' with all required fields.
mkPostCreditNotesRequestBodyLines' :: PostCreditNotesRequestBodyLines'Type' -- ^ 'postCreditNotesRequestBodyLines'Type'
  -> PostCreditNotesRequestBodyLines'
mkPostCreditNotesRequestBodyLines' postCreditNotesRequestBodyLines'Type = PostCreditNotesRequestBodyLines'{postCreditNotesRequestBodyLines'Amount = GHC.Maybe.Nothing,
                                                                                                           postCreditNotesRequestBodyLines'Description = GHC.Maybe.Nothing,
                                                                                                           postCreditNotesRequestBodyLines'InvoiceLineItem = GHC.Maybe.Nothing,
                                                                                                           postCreditNotesRequestBodyLines'Quantity = GHC.Maybe.Nothing,
                                                                                                           postCreditNotesRequestBodyLines'TaxRates = GHC.Maybe.Nothing,
                                                                                                           postCreditNotesRequestBodyLines'Type = postCreditNotesRequestBodyLines'Type,
                                                                                                           postCreditNotesRequestBodyLines'UnitAmount = GHC.Maybe.Nothing,
                                                                                                           postCreditNotesRequestBodyLines'UnitAmountDecimal = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/credit_notes.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.lines.items.properties.tax_rates.anyOf@ in the specification.
-- 
-- 
data PostCreditNotesRequestBodyLines'TaxRates'Variants =
   PostCreditNotesRequestBodyLines'TaxRates'EmptyString -- ^ Represents the JSON value @""@
  | PostCreditNotesRequestBodyLines'TaxRates'ListTText ([Data.Text.Internal.Text])
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCreditNotesRequestBodyLines'TaxRates'Variants
    where toJSON (PostCreditNotesRequestBodyLines'TaxRates'ListTText a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostCreditNotesRequestBodyLines'TaxRates'EmptyString) = ""
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBodyLines'TaxRates'Variants
    where parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostCreditNotesRequestBodyLines'TaxRates'EmptyString
                             | GHC.Base.otherwise -> case (PostCreditNotesRequestBodyLines'TaxRates'ListTText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                         Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                                                         Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the enum schema located at @paths.\/v1\/credit_notes.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.lines.items.properties.type@ in the specification.
-- 
-- 
data PostCreditNotesRequestBodyLines'Type' =
   PostCreditNotesRequestBodyLines'Type'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostCreditNotesRequestBodyLines'Type'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostCreditNotesRequestBodyLines'Type'EnumCustomLineItem -- ^ Represents the JSON value @"custom_line_item"@
  | PostCreditNotesRequestBodyLines'Type'EnumInvoiceLineItem -- ^ Represents the JSON value @"invoice_line_item"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCreditNotesRequestBodyLines'Type'
    where toJSON (PostCreditNotesRequestBodyLines'Type'Other val) = val
          toJSON (PostCreditNotesRequestBodyLines'Type'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostCreditNotesRequestBodyLines'Type'EnumCustomLineItem) = "custom_line_item"
          toJSON (PostCreditNotesRequestBodyLines'Type'EnumInvoiceLineItem) = "invoice_line_item"
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBodyLines'Type'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "custom_line_item" -> PostCreditNotesRequestBodyLines'Type'EnumCustomLineItem
                                            | val GHC.Classes.== "invoice_line_item" -> PostCreditNotesRequestBodyLines'Type'EnumInvoiceLineItem
                                            | GHC.Base.otherwise -> PostCreditNotesRequestBodyLines'Type'Other val)
-- | Defines the enum schema located at @paths.\/v1\/credit_notes.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.reason@ in the specification.
-- 
-- Reason for issuing this credit note, one of \`duplicate\`, \`fraudulent\`, \`order_change\`, or \`product_unsatisfactory\`
data PostCreditNotesRequestBodyReason' =
   PostCreditNotesRequestBodyReason'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostCreditNotesRequestBodyReason'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostCreditNotesRequestBodyReason'EnumDuplicate -- ^ Represents the JSON value @"duplicate"@
  | PostCreditNotesRequestBodyReason'EnumFraudulent -- ^ Represents the JSON value @"fraudulent"@
  | PostCreditNotesRequestBodyReason'EnumOrderChange -- ^ Represents the JSON value @"order_change"@
  | PostCreditNotesRequestBodyReason'EnumProductUnsatisfactory -- ^ Represents the JSON value @"product_unsatisfactory"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCreditNotesRequestBodyReason'
    where toJSON (PostCreditNotesRequestBodyReason'Other val) = val
          toJSON (PostCreditNotesRequestBodyReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostCreditNotesRequestBodyReason'EnumDuplicate) = "duplicate"
          toJSON (PostCreditNotesRequestBodyReason'EnumFraudulent) = "fraudulent"
          toJSON (PostCreditNotesRequestBodyReason'EnumOrderChange) = "order_change"
          toJSON (PostCreditNotesRequestBodyReason'EnumProductUnsatisfactory) = "product_unsatisfactory"
instance Data.Aeson.Types.FromJSON.FromJSON PostCreditNotesRequestBodyReason'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "duplicate" -> PostCreditNotesRequestBodyReason'EnumDuplicate
                                            | val GHC.Classes.== "fraudulent" -> PostCreditNotesRequestBodyReason'EnumFraudulent
                                            | val GHC.Classes.== "order_change" -> PostCreditNotesRequestBodyReason'EnumOrderChange
                                            | val GHC.Classes.== "product_unsatisfactory" -> PostCreditNotesRequestBodyReason'EnumProductUnsatisfactory
                                            | GHC.Base.otherwise -> PostCreditNotesRequestBodyReason'Other val)
-- | Represents a response of the operation 'postCreditNotes'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCreditNotesResponseError' is used.
data PostCreditNotesResponse =
   PostCreditNotesResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostCreditNotesResponse200 CreditNote -- ^ Successful response.
  | PostCreditNotesResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
