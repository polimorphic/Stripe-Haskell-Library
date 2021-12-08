{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postPromotionCodesPromotionCode
module StripeAPI.Operations.PostPromotionCodesPromotionCode where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
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

-- | > POST /v1/promotion_codes/{promotion_code}
--
-- \<p>Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.\<\/p>
postPromotionCodesPromotionCode ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | promotion_code | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostPromotionCodesPromotionCodeRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPromotionCodesPromotionCodeResponse)
postPromotionCodesPromotionCode
  promotionCode
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostPromotionCodesPromotionCodeResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostPromotionCodesPromotionCodeResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PromotionCode
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostPromotionCodesPromotionCodeResponseDefault
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_0
            )
            response_0
      )
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/promotion_codes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel promotionCode)) GHC.Base.++ ""))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/promotion_codes\/{promotion_code}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostPromotionCodesPromotionCodeRequestBody = PostPromotionCodesPromotionCodeRequestBody
  { -- | active: Whether the promotion code is currently active. A promotion code can only be reactivated when the coupon is still valid and the promotion code is otherwise redeemable.
    postPromotionCodesPromotionCodeRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | expand: Specifies which fields in the response should be expanded.
    postPromotionCodesPromotionCodeRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postPromotionCodesPromotionCodeRequestBodyMetadata :: (GHC.Maybe.Maybe PostPromotionCodesPromotionCodeRequestBodyMetadata'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostPromotionCodesPromotionCodeRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("active" Data.Aeson.Types.ToJSON..= postPromotionCodesPromotionCodeRequestBodyActive obj : "expand" Data.Aeson.Types.ToJSON..= postPromotionCodesPromotionCodeRequestBodyExpand obj : "metadata" Data.Aeson.Types.ToJSON..= postPromotionCodesPromotionCodeRequestBodyMetadata obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("active" Data.Aeson.Types.ToJSON..= postPromotionCodesPromotionCodeRequestBodyActive obj) GHC.Base.<> (("expand" Data.Aeson.Types.ToJSON..= postPromotionCodesPromotionCodeRequestBodyExpand obj) GHC.Base.<> ("metadata" Data.Aeson.Types.ToJSON..= postPromotionCodesPromotionCodeRequestBodyMetadata obj)))

instance Data.Aeson.Types.FromJSON.FromJSON PostPromotionCodesPromotionCodeRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPromotionCodesPromotionCodeRequestBody" (\obj -> ((GHC.Base.pure PostPromotionCodesPromotionCodeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

-- | Create a new 'PostPromotionCodesPromotionCodeRequestBody' with all required fields.
mkPostPromotionCodesPromotionCodeRequestBody :: PostPromotionCodesPromotionCodeRequestBody
mkPostPromotionCodesPromotionCodeRequestBody =
  PostPromotionCodesPromotionCodeRequestBody
    { postPromotionCodesPromotionCodeRequestBodyActive = GHC.Maybe.Nothing,
      postPromotionCodesPromotionCodeRequestBodyExpand = GHC.Maybe.Nothing,
      postPromotionCodesPromotionCodeRequestBodyMetadata = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/promotion_codes\/{promotion_code}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostPromotionCodesPromotionCodeRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostPromotionCodesPromotionCodeRequestBodyMetadata'EmptyString
  | PostPromotionCodesPromotionCodeRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostPromotionCodesPromotionCodeRequestBodyMetadata'Variants where
  toJSON (PostPromotionCodesPromotionCodeRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostPromotionCodesPromotionCodeRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostPromotionCodesPromotionCodeRequestBodyMetadata'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostPromotionCodesPromotionCodeRequestBodyMetadata'EmptyString
        | GHC.Base.otherwise -> case (PostPromotionCodesPromotionCodeRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postPromotionCodesPromotionCode'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPromotionCodesPromotionCodeResponseError' is used.
data PostPromotionCodesPromotionCodeResponse
  = -- | Means either no matching case available or a parse error
    PostPromotionCodesPromotionCodeResponseError GHC.Base.String
  | -- | Successful response.
    PostPromotionCodesPromotionCodeResponse200 PromotionCode
  | -- | Error response.
    PostPromotionCodesPromotionCodeResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)