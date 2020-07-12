{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation postRefundsRefund
module StripeAPI.Operations.PostRefundsRefund where

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

-- | > POST /v1/refunds/{refund}
--
-- \<p>Updates the specified refund by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
--
-- \<p>This request only accepts \<code>metadata\<\/code> as an argument.\<\/p>
postRefundsRefund ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | refund
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostRefundsRefundRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostRefundsRefundResponse)
postRefundsRefund
  refund
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostRefundsRefundResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostRefundsRefundResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either GHC.Base.String
                                                              Refund
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostRefundsRefundResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/refunds/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel refund)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/refunds\/{refund}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostRefundsRefundRequestBody
  = PostRefundsRefundRequestBody
      { -- | expand: Specifies which fields in the response should be expanded.
        postRefundsRefundRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
        postRefundsRefundRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostRefundsRefundRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("expand" Data.Aeson.Types.ToJSON..= postRefundsRefundRequestBodyExpand obj : "metadata" Data.Aeson.Types.ToJSON..= postRefundsRefundRequestBodyMetadata obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("expand" Data.Aeson.Types.ToJSON..= postRefundsRefundRequestBodyExpand obj) GHC.Base.<> ("metadata" Data.Aeson.Types.ToJSON..= postRefundsRefundRequestBodyMetadata obj))

instance Data.Aeson.Types.FromJSON.FromJSON PostRefundsRefundRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRefundsRefundRequestBody" (\obj -> (GHC.Base.pure PostRefundsRefundRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

-- | Create a new 'PostRefundsRefundRequestBody' with all required fields.
mkPostRefundsRefundRequestBody :: PostRefundsRefundRequestBody
mkPostRefundsRefundRequestBody =
  PostRefundsRefundRequestBody
    { postRefundsRefundRequestBodyExpand = GHC.Maybe.Nothing,
      postRefundsRefundRequestBodyMetadata = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postRefundsRefund'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostRefundsRefundResponseError' is used.
data PostRefundsRefundResponse
  = -- | Means either no matching case available or a parse error
    PostRefundsRefundResponseError GHC.Base.String
  | -- | Successful response.
    PostRefundsRefundResponse200 Refund
  | -- | Error response.
    PostRefundsRefundResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
