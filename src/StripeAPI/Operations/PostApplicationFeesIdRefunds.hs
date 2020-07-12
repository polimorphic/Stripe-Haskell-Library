{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation postApplicationFeesIdRefunds
module StripeAPI.Operations.PostApplicationFeesIdRefunds where

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

-- | > POST /v1/application_fees/{id}/refunds
--
-- \<p>Refunds an application fee that has previously been collected but not yet refunded.
-- Funds will be refunded to the Stripe account from which the fee was originally collected.\<\/p>
--
-- \<p>You can optionally refund only part of an application fee.
-- You can do so multiple times, until the entire fee has been refunded.\<\/p>
--
-- \<p>Once entirely refunded, an application fee can’t be refunded again.
-- This method will raise an error when called on an already-refunded application fee,
-- or when trying to refund more money than is left on an application fee.\<\/p>
postApplicationFeesIdRefunds ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | id | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostApplicationFeesIdRefundsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostApplicationFeesIdRefundsResponse)
postApplicationFeesIdRefunds
  id
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostApplicationFeesIdRefundsResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostApplicationFeesIdRefundsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either GHC.Base.String
                                                              FeeRefund
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostApplicationFeesIdRefundsResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/application_fees/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/refunds"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/application_fees\/{id}\/refunds.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostApplicationFeesIdRefundsRequestBody
  = PostApplicationFeesIdRefundsRequestBody
      { -- | amount: A positive integer, in _%s_, representing how much of this fee to refund. Can refund only up to the remaining unrefunded amount of the fee.
        postApplicationFeesIdRefundsRequestBodyAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | expand: Specifies which fields in the response should be expanded.
        postApplicationFeesIdRefundsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
        postApplicationFeesIdRefundsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostApplicationFeesIdRefundsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= postApplicationFeesIdRefundsRequestBodyAmount obj : "expand" Data.Aeson.Types.ToJSON..= postApplicationFeesIdRefundsRequestBodyExpand obj : "metadata" Data.Aeson.Types.ToJSON..= postApplicationFeesIdRefundsRequestBodyMetadata obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= postApplicationFeesIdRefundsRequestBodyAmount obj) GHC.Base.<> (("expand" Data.Aeson.Types.ToJSON..= postApplicationFeesIdRefundsRequestBodyExpand obj) GHC.Base.<> ("metadata" Data.Aeson.Types.ToJSON..= postApplicationFeesIdRefundsRequestBodyMetadata obj)))

instance Data.Aeson.Types.FromJSON.FromJSON PostApplicationFeesIdRefundsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostApplicationFeesIdRefundsRequestBody" (\obj -> ((GHC.Base.pure PostApplicationFeesIdRefundsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))

-- | Create a new 'PostApplicationFeesIdRefundsRequestBody' with all required fields.
mkPostApplicationFeesIdRefundsRequestBody :: PostApplicationFeesIdRefundsRequestBody
mkPostApplicationFeesIdRefundsRequestBody =
  PostApplicationFeesIdRefundsRequestBody
    { postApplicationFeesIdRefundsRequestBodyAmount = GHC.Maybe.Nothing,
      postApplicationFeesIdRefundsRequestBodyExpand = GHC.Maybe.Nothing,
      postApplicationFeesIdRefundsRequestBodyMetadata = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postApplicationFeesIdRefunds'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostApplicationFeesIdRefundsResponseError' is used.
data PostApplicationFeesIdRefundsResponse
  = -- | Means either no matching case available or a parse error
    PostApplicationFeesIdRefundsResponseError GHC.Base.String
  | -- | Successful response.
    PostApplicationFeesIdRefundsResponse200 FeeRefund
  | -- | Error response.
    PostApplicationFeesIdRefundsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
