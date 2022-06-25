-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postShippingRatesShippingRateToken
module StripeAPI.Operations.PostShippingRatesShippingRateToken where

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

-- | > POST /v1/shipping_rates/{shipping_rate_token}
-- 
-- \<p>Updates an existing shipping rate object.\<\/p>
postShippingRatesShippingRateToken :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ shipping_rate_token | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostShippingRatesShippingRateTokenRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostShippingRatesShippingRateTokenResponse) -- ^ Monadic computation which returns the result of the operation
postShippingRatesShippingRateToken shippingRateToken
                                   body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostShippingRatesShippingRateTokenResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostShippingRatesShippingRateTokenResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ShippingRate)
                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostShippingRatesShippingRateTokenResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/shipping_rates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel shippingRateToken)) GHC.Base.++ ""))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/shipping_rates\/{shipping_rate_token}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostShippingRatesShippingRateTokenRequestBody = PostShippingRatesShippingRateTokenRequestBody {
  -- | active: Whether the shipping rate can be used for new purchases. Defaults to \`true\`.
  postShippingRatesShippingRateTokenRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | expand: Specifies which fields in the response should be expanded.
  , postShippingRatesShippingRateTokenRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postShippingRatesShippingRateTokenRequestBodyMetadata :: (GHC.Maybe.Maybe PostShippingRatesShippingRateTokenRequestBodyMetadata'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesShippingRateTokenRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active" Data.Aeson.Types.ToJSON..=)) (postShippingRatesShippingRateTokenRequestBodyActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postShippingRatesShippingRateTokenRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postShippingRatesShippingRateTokenRequestBodyMetadata obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active" Data.Aeson.Types.ToJSON..=)) (postShippingRatesShippingRateTokenRequestBodyActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postShippingRatesShippingRateTokenRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postShippingRatesShippingRateTokenRequestBodyMetadata obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesShippingRateTokenRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostShippingRatesShippingRateTokenRequestBody" (\obj -> ((GHC.Base.pure PostShippingRatesShippingRateTokenRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))
-- | Create a new 'PostShippingRatesShippingRateTokenRequestBody' with all required fields.
mkPostShippingRatesShippingRateTokenRequestBody :: PostShippingRatesShippingRateTokenRequestBody
mkPostShippingRatesShippingRateTokenRequestBody = PostShippingRatesShippingRateTokenRequestBody{postShippingRatesShippingRateTokenRequestBodyActive = GHC.Maybe.Nothing,
                                                                                                postShippingRatesShippingRateTokenRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                postShippingRatesShippingRateTokenRequestBodyMetadata = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/shipping_rates\/{shipping_rate_token}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostShippingRatesShippingRateTokenRequestBodyMetadata'Variants =
   PostShippingRatesShippingRateTokenRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostShippingRatesShippingRateTokenRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostShippingRatesShippingRateTokenRequestBodyMetadata'Variants
    where toJSON (PostShippingRatesShippingRateTokenRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostShippingRatesShippingRateTokenRequestBodyMetadata'EmptyString) = ""
instance Data.Aeson.Types.FromJSON.FromJSON PostShippingRatesShippingRateTokenRequestBodyMetadata'Variants
    where parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostShippingRatesShippingRateTokenRequestBodyMetadata'EmptyString
                             | GHC.Base.otherwise -> case (PostShippingRatesShippingRateTokenRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                         Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                                                         Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postShippingRatesShippingRateToken'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostShippingRatesShippingRateTokenResponseError' is used.
data PostShippingRatesShippingRateTokenResponse =
   PostShippingRatesShippingRateTokenResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostShippingRatesShippingRateTokenResponse200 ShippingRate -- ^ Successful response.
  | PostShippingRatesShippingRateTokenResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)