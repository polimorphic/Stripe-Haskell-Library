-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postProducts
module StripeAPI.Operations.PostProducts where

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

-- | > POST /v1/products
-- 
-- \<p>Creates a new product object.\<\/p>
postProducts :: forall m . StripeAPI.Common.MonadHTTP m => PostProductsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostProductsResponse) -- ^ Monadic computation which returns the result of the operation
postProducts body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostProductsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostProductsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       Product)
                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostProductsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/products") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/products.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostProductsRequestBody = PostProductsRequestBody {
  -- | active: Whether the product is currently available for purchase. Defaults to \`true\`.
  postProductsRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | default_price_data: Data used to generate a new [Price](https:\/\/stripe.com\/docs\/api\/prices) object. This Price will be set as the default price for this product.
  , postProductsRequestBodyDefaultPriceData :: (GHC.Maybe.Maybe PostProductsRequestBodyDefaultPriceData')
  -- | description: The product\'s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 40000
  , postProductsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postProductsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | id: An identifier will be randomly generated by Stripe. You can optionally override this ID, but the ID must be unique across all products in your Stripe account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postProductsRequestBodyId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | images: A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
  , postProductsRequestBodyImages :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postProductsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | name: The product\'s name, meant to be displayable to the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postProductsRequestBodyName :: Data.Text.Internal.Text
  -- | package_dimensions: The dimensions of this product for shipping purposes.
  , postProductsRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostProductsRequestBodyPackageDimensions')
  -- | shippable: Whether this product is shipped (i.e., physical goods).
  , postProductsRequestBodyShippable :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | statement_descriptor: An arbitrary string to be displayed on your customer\'s credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
  -- 
  -- This may be up to 22 characters. The statement description may not include \`\<\`, \`>\`, \`\\\`, \`\"\`, \`\'\` characters, and will appear on your customer\'s statement in capital letters. Non-ASCII characters are automatically stripped.
  --  It must contain at least one letter.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postProductsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | tax_code: A [tax code](https:\/\/stripe.com\/docs\/tax\/tax-categories) ID.
  , postProductsRequestBodyTaxCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unit_label: A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 12
  , postProductsRequestBodyUnitLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | url: A URL of a publicly-accessible webpage for this product.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postProductsRequestBodyUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostProductsRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_price_data" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("images" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyImages obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyMetadata obj) : ["name" Data.Aeson.Types.ToJSON..= postProductsRequestBodyName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("package_dimensions" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyPackageDimensions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shippable" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyShippable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyTaxCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_label" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyUnitLabel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyUrl obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_price_data" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("images" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyImages obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyMetadata obj) : ["name" Data.Aeson.Types.ToJSON..= postProductsRequestBodyName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("package_dimensions" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyPackageDimensions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shippable" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyShippable obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_code" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyTaxCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_label" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyUnitLabel obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyUrl obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostProductsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_price_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shippable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "url"))
-- | Create a new 'PostProductsRequestBody' with all required fields.
mkPostProductsRequestBody :: Data.Text.Internal.Text -- ^ 'postProductsRequestBodyName'
  -> PostProductsRequestBody
mkPostProductsRequestBody postProductsRequestBodyName = PostProductsRequestBody{postProductsRequestBodyActive = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyDefaultPriceData = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyDescription = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyId = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyImages = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyName = postProductsRequestBodyName,
                                                                                postProductsRequestBodyPackageDimensions = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyShippable = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyStatementDescriptor = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyTaxCode = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyUnitLabel = GHC.Maybe.Nothing,
                                                                                postProductsRequestBodyUrl = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/products.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.default_price_data@ in the specification.
-- 
-- Data used to generate a new [Price](https:\/\/stripe.com\/docs\/api\/prices) object. This Price will be set as the default price for this product.
data PostProductsRequestBodyDefaultPriceData' = PostProductsRequestBodyDefaultPriceData' {
  -- | currency
  postProductsRequestBodyDefaultPriceData'Currency :: Data.Text.Internal.Text
  -- | recurring
  , postProductsRequestBodyDefaultPriceData'Recurring :: (GHC.Maybe.Maybe PostProductsRequestBodyDefaultPriceData'Recurring')
  -- | tax_behavior
  , postProductsRequestBodyDefaultPriceData'TaxBehavior :: (GHC.Maybe.Maybe PostProductsRequestBodyDefaultPriceData'TaxBehavior')
  -- | unit_amount
  , postProductsRequestBodyDefaultPriceData'UnitAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | unit_amount_decimal
  , postProductsRequestBodyDefaultPriceData'UnitAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostProductsRequestBodyDefaultPriceData'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["currency" Data.Aeson.Types.ToJSON..= postProductsRequestBodyDefaultPriceData'Currency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recurring" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData'Recurring obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_behavior" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData'TaxBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData'UnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData'UnitAmountDecimal obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["currency" Data.Aeson.Types.ToJSON..= postProductsRequestBodyDefaultPriceData'Currency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("recurring" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData'Recurring obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_behavior" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData'TaxBehavior obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData'UnitAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("unit_amount_decimal" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData'UnitAmountDecimal obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyDefaultPriceData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBodyDefaultPriceData'" (\obj -> ((((GHC.Base.pure PostProductsRequestBodyDefaultPriceData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "recurring")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "unit_amount_decimal"))
-- | Create a new 'PostProductsRequestBodyDefaultPriceData'' with all required fields.
mkPostProductsRequestBodyDefaultPriceData' :: Data.Text.Internal.Text -- ^ 'postProductsRequestBodyDefaultPriceData'Currency'
  -> PostProductsRequestBodyDefaultPriceData'
mkPostProductsRequestBodyDefaultPriceData' postProductsRequestBodyDefaultPriceData'Currency = PostProductsRequestBodyDefaultPriceData'{postProductsRequestBodyDefaultPriceData'Currency = postProductsRequestBodyDefaultPriceData'Currency,
                                                                                                                                       postProductsRequestBodyDefaultPriceData'Recurring = GHC.Maybe.Nothing,
                                                                                                                                       postProductsRequestBodyDefaultPriceData'TaxBehavior = GHC.Maybe.Nothing,
                                                                                                                                       postProductsRequestBodyDefaultPriceData'UnitAmount = GHC.Maybe.Nothing,
                                                                                                                                       postProductsRequestBodyDefaultPriceData'UnitAmountDecimal = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/products.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.default_price_data.properties.recurring@ in the specification.
-- 
-- 
data PostProductsRequestBodyDefaultPriceData'Recurring' = PostProductsRequestBodyDefaultPriceData'Recurring' {
  -- | interval
  postProductsRequestBodyDefaultPriceData'Recurring'Interval :: PostProductsRequestBodyDefaultPriceData'Recurring'Interval'
  -- | interval_count
  , postProductsRequestBodyDefaultPriceData'Recurring'IntervalCount :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostProductsRequestBodyDefaultPriceData'Recurring'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["interval" Data.Aeson.Types.ToJSON..= postProductsRequestBodyDefaultPriceData'Recurring'Interval obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_count" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData'Recurring'IntervalCount obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["interval" Data.Aeson.Types.ToJSON..= postProductsRequestBodyDefaultPriceData'Recurring'Interval obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_count" Data.Aeson.Types.ToJSON..=)) (postProductsRequestBodyDefaultPriceData'Recurring'IntervalCount obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyDefaultPriceData'Recurring'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBodyDefaultPriceData'Recurring'" (\obj -> (GHC.Base.pure PostProductsRequestBodyDefaultPriceData'Recurring' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval_count"))
-- | Create a new 'PostProductsRequestBodyDefaultPriceData'Recurring'' with all required fields.
mkPostProductsRequestBodyDefaultPriceData'Recurring' :: PostProductsRequestBodyDefaultPriceData'Recurring'Interval' -- ^ 'postProductsRequestBodyDefaultPriceData'Recurring'Interval'
  -> PostProductsRequestBodyDefaultPriceData'Recurring'
mkPostProductsRequestBodyDefaultPriceData'Recurring' postProductsRequestBodyDefaultPriceData'Recurring'Interval = PostProductsRequestBodyDefaultPriceData'Recurring'{postProductsRequestBodyDefaultPriceData'Recurring'Interval = postProductsRequestBodyDefaultPriceData'Recurring'Interval,
                                                                                                                                                                     postProductsRequestBodyDefaultPriceData'Recurring'IntervalCount = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/products.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.default_price_data.properties.recurring.properties.interval@ in the specification.
-- 
-- 
data PostProductsRequestBodyDefaultPriceData'Recurring'Interval' =
   PostProductsRequestBodyDefaultPriceData'Recurring'Interval'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostProductsRequestBodyDefaultPriceData'Recurring'Interval'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumDay -- ^ Represents the JSON value @"day"@
  | PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumMonth -- ^ Represents the JSON value @"month"@
  | PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumWeek -- ^ Represents the JSON value @"week"@
  | PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumYear -- ^ Represents the JSON value @"year"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostProductsRequestBodyDefaultPriceData'Recurring'Interval'
    where toJSON (PostProductsRequestBodyDefaultPriceData'Recurring'Interval'Other val) = val
          toJSON (PostProductsRequestBodyDefaultPriceData'Recurring'Interval'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumDay) = "day"
          toJSON (PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumMonth) = "month"
          toJSON (PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumWeek) = "week"
          toJSON (PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumYear) = "year"
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyDefaultPriceData'Recurring'Interval'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "day" -> PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumDay
                                            | val GHC.Classes.== "month" -> PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumMonth
                                            | val GHC.Classes.== "week" -> PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumWeek
                                            | val GHC.Classes.== "year" -> PostProductsRequestBodyDefaultPriceData'Recurring'Interval'EnumYear
                                            | GHC.Base.otherwise -> PostProductsRequestBodyDefaultPriceData'Recurring'Interval'Other val)
-- | Defines the enum schema located at @paths.\/v1\/products.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.default_price_data.properties.tax_behavior@ in the specification.
-- 
-- 
data PostProductsRequestBodyDefaultPriceData'TaxBehavior' =
   PostProductsRequestBodyDefaultPriceData'TaxBehavior'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostProductsRequestBodyDefaultPriceData'TaxBehavior'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostProductsRequestBodyDefaultPriceData'TaxBehavior'EnumExclusive -- ^ Represents the JSON value @"exclusive"@
  | PostProductsRequestBodyDefaultPriceData'TaxBehavior'EnumInclusive -- ^ Represents the JSON value @"inclusive"@
  | PostProductsRequestBodyDefaultPriceData'TaxBehavior'EnumUnspecified -- ^ Represents the JSON value @"unspecified"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostProductsRequestBodyDefaultPriceData'TaxBehavior'
    where toJSON (PostProductsRequestBodyDefaultPriceData'TaxBehavior'Other val) = val
          toJSON (PostProductsRequestBodyDefaultPriceData'TaxBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostProductsRequestBodyDefaultPriceData'TaxBehavior'EnumExclusive) = "exclusive"
          toJSON (PostProductsRequestBodyDefaultPriceData'TaxBehavior'EnumInclusive) = "inclusive"
          toJSON (PostProductsRequestBodyDefaultPriceData'TaxBehavior'EnumUnspecified) = "unspecified"
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyDefaultPriceData'TaxBehavior'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "exclusive" -> PostProductsRequestBodyDefaultPriceData'TaxBehavior'EnumExclusive
                                            | val GHC.Classes.== "inclusive" -> PostProductsRequestBodyDefaultPriceData'TaxBehavior'EnumInclusive
                                            | val GHC.Classes.== "unspecified" -> PostProductsRequestBodyDefaultPriceData'TaxBehavior'EnumUnspecified
                                            | GHC.Base.otherwise -> PostProductsRequestBodyDefaultPriceData'TaxBehavior'Other val)
-- | Defines the object schema located at @paths.\/v1\/products.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.package_dimensions@ in the specification.
-- 
-- The dimensions of this product for shipping purposes.
data PostProductsRequestBodyPackageDimensions' = PostProductsRequestBodyPackageDimensions' {
  -- | height
  postProductsRequestBodyPackageDimensions'Height :: GHC.Types.Double
  -- | length
  , postProductsRequestBodyPackageDimensions'Length :: GHC.Types.Double
  -- | weight
  , postProductsRequestBodyPackageDimensions'Weight :: GHC.Types.Double
  -- | width
  , postProductsRequestBodyPackageDimensions'Width :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostProductsRequestBodyPackageDimensions'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["height" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Height obj] : ["length" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Length obj] : ["weight" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Weight obj] : ["width" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Width obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["height" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Height obj] : ["length" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Length obj] : ["weight" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Weight obj] : ["width" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Width obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyPackageDimensions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBodyPackageDimensions'" (\obj -> (((GHC.Base.pure PostProductsRequestBodyPackageDimensions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))
-- | Create a new 'PostProductsRequestBodyPackageDimensions'' with all required fields.
mkPostProductsRequestBodyPackageDimensions' :: GHC.Types.Double -- ^ 'postProductsRequestBodyPackageDimensions'Height'
  -> GHC.Types.Double -- ^ 'postProductsRequestBodyPackageDimensions'Length'
  -> GHC.Types.Double -- ^ 'postProductsRequestBodyPackageDimensions'Weight'
  -> GHC.Types.Double -- ^ 'postProductsRequestBodyPackageDimensions'Width'
  -> PostProductsRequestBodyPackageDimensions'
mkPostProductsRequestBodyPackageDimensions' postProductsRequestBodyPackageDimensions'Height postProductsRequestBodyPackageDimensions'Length postProductsRequestBodyPackageDimensions'Weight postProductsRequestBodyPackageDimensions'Width = PostProductsRequestBodyPackageDimensions'{postProductsRequestBodyPackageDimensions'Height = postProductsRequestBodyPackageDimensions'Height,
                                                                                                                                                                                                                                                                                       postProductsRequestBodyPackageDimensions'Length = postProductsRequestBodyPackageDimensions'Length,
                                                                                                                                                                                                                                                                                       postProductsRequestBodyPackageDimensions'Weight = postProductsRequestBodyPackageDimensions'Weight,
                                                                                                                                                                                                                                                                                       postProductsRequestBodyPackageDimensions'Width = postProductsRequestBodyPackageDimensions'Width}
-- | Represents a response of the operation 'postProducts'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostProductsResponseError' is used.
data PostProductsResponse =
   PostProductsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostProductsResponse200 Product -- ^ Successful response.
  | PostProductsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
