{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation postProducts
module StripeAPI.Operations.PostProducts where

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
import qualified Data.Functor
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/products
--
-- \<p>Creates a new product object. To create a product for use with orders, see \<a href=\"\#create_product\">Products\<\/a>.\<\/p>
postProducts ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  PostProductsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostProductsResponse)
postProducts body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostProductsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostProductsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
                                                            Product
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostProductsResponseDefault
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
                                                            Error
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/products") [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/products.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostProductsRequestBody
  = PostProductsRequestBody
      { -- | active: Whether the product is currently available for purchase. Defaults to \`true\`.
        postProductsRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
        -- | attributes: A list of up to 5 alphanumeric attributes.
        postProductsRequestBodyAttributes :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | caption: A short one-line description of the product, meant to be displayable to the customer. May only be set if type=\`good\`.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postProductsRequestBodyCaption :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | deactivate_on: An array of Connect application names or identifiers that should not be able to order the SKUs for this product. May only be set if type=\`good\`.
        postProductsRequestBodyDeactivateOn :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | description: The product\'s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
        --
        -- Constraints:
        --
        -- * Maximum length of 40000
        postProductsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | expand: Specifies which fields in the response should be expanded.
        postProductsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | id: An identifier will be randomly generated by Stripe. You can optionally override this ID, but the ID must be unique across all products in your Stripe account.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postProductsRequestBodyId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | images: A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
        postProductsRequestBodyImages :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
        postProductsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
        -- | name: The product\'s name, meant to be displayable to the customer. Whenever this product is sold via a subscription, name will show up on associated invoice line item descriptions.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postProductsRequestBodyName :: Data.Text.Internal.Text,
        -- | package_dimensions: The dimensions of this product for shipping purposes. A SKU associated with this product can override this value by having its own \`package_dimensions\`. May only be set if type=\`good\`.
        postProductsRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostProductsRequestBodyPackageDimensions'),
        -- | shippable: Whether this product is shipped (i.e., physical goods). Defaults to \`true\`. May only be set if type=\`good\`.
        postProductsRequestBodyShippable :: (GHC.Maybe.Maybe GHC.Types.Bool),
        -- | statement_descriptor: An arbitrary string to be displayed on your customer\'s credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
        --
        -- This may be up to 22 characters. The statement description may not include \`\<\`, \`>\`, \`\\\`, \`\"\`, \`\'\` characters, and will appear on your customer\'s statement in capital letters. Non-ASCII characters are automatically stripped.
        --  It must contain at least one letter.
        --
        -- Constraints:
        --
        -- * Maximum length of 22
        postProductsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | type: The type of the product. Defaults to \`service\` if not explicitly specified, enabling use of this product with Subscriptions and Plans. Set this parameter to \`good\` to use this product with Orders and SKUs. On API versions before \`2018-02-05\`, this field defaults to \`good\` for compatibility reasons.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postProductsRequestBodyType :: (GHC.Maybe.Maybe PostProductsRequestBodyType'),
        -- | unit_label: A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions.
        --
        -- Constraints:
        --
        -- * Maximum length of 12
        postProductsRequestBodyUnitLabel :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | url: A URL of a publicly-accessible webpage for this product. May only be set if type=\`good\`.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postProductsRequestBodyUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostProductsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("active" Data.Aeson.Types.ToJSON..= postProductsRequestBodyActive obj : "attributes" Data.Aeson.Types.ToJSON..= postProductsRequestBodyAttributes obj : "caption" Data.Aeson.Types.ToJSON..= postProductsRequestBodyCaption obj : "deactivate_on" Data.Aeson.Types.ToJSON..= postProductsRequestBodyDeactivateOn obj : "description" Data.Aeson.Types.ToJSON..= postProductsRequestBodyDescription obj : "expand" Data.Aeson.Types.ToJSON..= postProductsRequestBodyExpand obj : "id" Data.Aeson.Types.ToJSON..= postProductsRequestBodyId obj : "images" Data.Aeson.Types.ToJSON..= postProductsRequestBodyImages obj : "metadata" Data.Aeson.Types.ToJSON..= postProductsRequestBodyMetadata obj : "name" Data.Aeson.Types.ToJSON..= postProductsRequestBodyName obj : "package_dimensions" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions obj : "shippable" Data.Aeson.Types.ToJSON..= postProductsRequestBodyShippable obj : "statement_descriptor" Data.Aeson.Types.ToJSON..= postProductsRequestBodyStatementDescriptor obj : "type" Data.Aeson.Types.ToJSON..= postProductsRequestBodyType obj : "unit_label" Data.Aeson.Types.ToJSON..= postProductsRequestBodyUnitLabel obj : "url" Data.Aeson.Types.ToJSON..= postProductsRequestBodyUrl obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active" Data.Aeson.Types.ToJSON..= postProductsRequestBodyActive obj) GHC.Base.<> (("attributes" Data.Aeson.Types.ToJSON..= postProductsRequestBodyAttributes obj) GHC.Base.<> (("caption" Data.Aeson.Types.ToJSON..= postProductsRequestBodyCaption obj) GHC.Base.<> (("deactivate_on" Data.Aeson.Types.ToJSON..= postProductsRequestBodyDeactivateOn obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= postProductsRequestBodyDescription obj) GHC.Base.<> (("expand" Data.Aeson.Types.ToJSON..= postProductsRequestBodyExpand obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postProductsRequestBodyId obj) GHC.Base.<> (("images" Data.Aeson.Types.ToJSON..= postProductsRequestBodyImages obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= postProductsRequestBodyMetadata obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= postProductsRequestBodyName obj) GHC.Base.<> (("package_dimensions" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions obj) GHC.Base.<> (("shippable" Data.Aeson.Types.ToJSON..= postProductsRequestBodyShippable obj) GHC.Base.<> (("statement_descriptor" Data.Aeson.Types.ToJSON..= postProductsRequestBodyStatementDescriptor obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= postProductsRequestBodyType obj) GHC.Base.<> (("unit_label" Data.Aeson.Types.ToJSON..= postProductsRequestBodyUnitLabel obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= postProductsRequestBodyUrl obj))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBody" (\obj -> (((((((((((((((GHC.Base.pure PostProductsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "deactivate_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "images")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shippable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))

-- | Create a new 'PostProductsRequestBody' with all required fields.
mkPostProductsRequestBody ::
  -- | 'postProductsRequestBodyName'
  Data.Text.Internal.Text ->
  PostProductsRequestBody
mkPostProductsRequestBody postProductsRequestBodyName =
  PostProductsRequestBody
    { postProductsRequestBodyActive = GHC.Maybe.Nothing,
      postProductsRequestBodyAttributes = GHC.Maybe.Nothing,
      postProductsRequestBodyCaption = GHC.Maybe.Nothing,
      postProductsRequestBodyDeactivateOn = GHC.Maybe.Nothing,
      postProductsRequestBodyDescription = GHC.Maybe.Nothing,
      postProductsRequestBodyExpand = GHC.Maybe.Nothing,
      postProductsRequestBodyId = GHC.Maybe.Nothing,
      postProductsRequestBodyImages = GHC.Maybe.Nothing,
      postProductsRequestBodyMetadata = GHC.Maybe.Nothing,
      postProductsRequestBodyName = postProductsRequestBodyName,
      postProductsRequestBodyPackageDimensions = GHC.Maybe.Nothing,
      postProductsRequestBodyShippable = GHC.Maybe.Nothing,
      postProductsRequestBodyStatementDescriptor = GHC.Maybe.Nothing,
      postProductsRequestBodyType = GHC.Maybe.Nothing,
      postProductsRequestBodyUnitLabel = GHC.Maybe.Nothing,
      postProductsRequestBodyUrl = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/products.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.package_dimensions@ in the specification.
--
-- The dimensions of this product for shipping purposes. A SKU associated with this product can override this value by having its own \`package_dimensions\`. May only be set if type=\`good\`.
data PostProductsRequestBodyPackageDimensions'
  = PostProductsRequestBodyPackageDimensions'
      { -- | height
        postProductsRequestBodyPackageDimensions'Height :: GHC.Types.Double,
        -- | length
        postProductsRequestBodyPackageDimensions'Length :: GHC.Types.Double,
        -- | weight
        postProductsRequestBodyPackageDimensions'Weight :: GHC.Types.Double,
        -- | width
        postProductsRequestBodyPackageDimensions'Width :: GHC.Types.Double
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostProductsRequestBodyPackageDimensions' where
  toJSON obj = Data.Aeson.Types.Internal.object ("height" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Height obj : "length" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Length obj : "weight" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Weight obj : "width" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Width obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("height" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Height obj) GHC.Base.<> (("length" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Length obj) GHC.Base.<> (("weight" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Weight obj) GHC.Base.<> ("width" Data.Aeson.Types.ToJSON..= postProductsRequestBodyPackageDimensions'Width obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyPackageDimensions' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostProductsRequestBodyPackageDimensions'" (\obj -> (((GHC.Base.pure PostProductsRequestBodyPackageDimensions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))

-- | Create a new 'PostProductsRequestBodyPackageDimensions'' with all required fields.
mkPostProductsRequestBodyPackageDimensions' ::
  -- | 'postProductsRequestBodyPackageDimensions'Height'
  GHC.Types.Double ->
  -- | 'postProductsRequestBodyPackageDimensions'Length'
  GHC.Types.Double ->
  -- | 'postProductsRequestBodyPackageDimensions'Weight'
  GHC.Types.Double ->
  -- | 'postProductsRequestBodyPackageDimensions'Width'
  GHC.Types.Double ->
  PostProductsRequestBodyPackageDimensions'
mkPostProductsRequestBodyPackageDimensions' postProductsRequestBodyPackageDimensions'Height postProductsRequestBodyPackageDimensions'Length postProductsRequestBodyPackageDimensions'Weight postProductsRequestBodyPackageDimensions'Width =
  PostProductsRequestBodyPackageDimensions'
    { postProductsRequestBodyPackageDimensions'Height = postProductsRequestBodyPackageDimensions'Height,
      postProductsRequestBodyPackageDimensions'Length = postProductsRequestBodyPackageDimensions'Length,
      postProductsRequestBodyPackageDimensions'Weight = postProductsRequestBodyPackageDimensions'Weight,
      postProductsRequestBodyPackageDimensions'Width = postProductsRequestBodyPackageDimensions'Width
    }

-- | Defines the enum schema located at @paths.\/v1\/products.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.type@ in the specification.
--
-- The type of the product. Defaults to \`service\` if not explicitly specified, enabling use of this product with Subscriptions and Plans. Set this parameter to \`good\` to use this product with Orders and SKUs. On API versions before \`2018-02-05\`, this field defaults to \`good\` for compatibility reasons.
data PostProductsRequestBodyType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostProductsRequestBodyType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostProductsRequestBodyType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"good"@
    PostProductsRequestBodyType'EnumGood
  | -- | Represents the JSON value @"service"@
    PostProductsRequestBodyType'EnumService
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostProductsRequestBodyType' where
  toJSON (PostProductsRequestBodyType'Other val) = val
  toJSON (PostProductsRequestBodyType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostProductsRequestBodyType'EnumGood) = "good"
  toJSON (PostProductsRequestBodyType'EnumService) = "service"

instance Data.Aeson.Types.FromJSON.FromJSON PostProductsRequestBodyType' where
  parseJSON val =
    GHC.Base.pure
      ( if  | val GHC.Classes.== "good" -> PostProductsRequestBodyType'EnumGood
            | val GHC.Classes.== "service" -> PostProductsRequestBodyType'EnumService
            | GHC.Base.otherwise -> PostProductsRequestBodyType'Other val
      )

-- | Represents a response of the operation 'postProducts'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostProductsResponseError' is used.
data PostProductsResponse
  = -- | Means either no matching case available or a parse error
    PostProductsResponseError GHC.Base.String
  | -- | Successful response.
    PostProductsResponse200 Product
  | -- | Error response.
    PostProductsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
