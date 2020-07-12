{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation postIssuingCardsCardPin
module StripeAPI.Operations.PostIssuingCardsCardPin where

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

-- | > POST /v1/issuing/cards/{card}/pin
--
-- \<p>Updates the PIN for a card, subject to cardholder verification. See \<a href=\"\/docs\/issuing\/pin_management\">Retrieve and update cardholder PIN\<\/a>\<\/p>
postIssuingCardsCardPin ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | card | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  PostIssuingCardsCardPinRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostIssuingCardsCardPinResponse)
postIssuingCardsCardPin
  card
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostIssuingCardsCardPinResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostIssuingCardsCardPinResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either GHC.Base.String
                                                              Issuing'cardPin
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostIssuingCardsCardPinResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/pin"))) [] (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/issuing\/cards\/{card}\/pin.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostIssuingCardsCardPinRequestBody
  = PostIssuingCardsCardPinRequestBody
      { -- | expand: Specifies which fields in the response should be expanded.
        postIssuingCardsCardPinRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | pin: The new desired PIN
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postIssuingCardsCardPinRequestBodyPin :: Data.Text.Internal.Text,
        -- | verification: The id of the \`Verification\` that was sent and the code entered by the cardholder
        postIssuingCardsCardPinRequestBodyVerification :: PostIssuingCardsCardPinRequestBodyVerification'
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostIssuingCardsCardPinRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("expand" Data.Aeson.Types.ToJSON..= postIssuingCardsCardPinRequestBodyExpand obj : "pin" Data.Aeson.Types.ToJSON..= postIssuingCardsCardPinRequestBodyPin obj : "verification" Data.Aeson.Types.ToJSON..= postIssuingCardsCardPinRequestBodyVerification obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("expand" Data.Aeson.Types.ToJSON..= postIssuingCardsCardPinRequestBodyExpand obj) GHC.Base.<> (("pin" Data.Aeson.Types.ToJSON..= postIssuingCardsCardPinRequestBodyPin obj) GHC.Base.<> ("verification" Data.Aeson.Types.ToJSON..= postIssuingCardsCardPinRequestBodyVerification obj)))

instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingCardsCardPinRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingCardsCardPinRequestBody" (\obj -> ((GHC.Base.pure PostIssuingCardsCardPinRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification"))

-- | Create a new 'PostIssuingCardsCardPinRequestBody' with all required fields.
mkPostIssuingCardsCardPinRequestBody ::
  -- | 'postIssuingCardsCardPinRequestBodyPin'
  Data.Text.Internal.Text ->
  -- | 'postIssuingCardsCardPinRequestBodyVerification'
  PostIssuingCardsCardPinRequestBodyVerification' ->
  PostIssuingCardsCardPinRequestBody
mkPostIssuingCardsCardPinRequestBody postIssuingCardsCardPinRequestBodyPin postIssuingCardsCardPinRequestBodyVerification =
  PostIssuingCardsCardPinRequestBody
    { postIssuingCardsCardPinRequestBodyExpand = GHC.Maybe.Nothing,
      postIssuingCardsCardPinRequestBodyPin = postIssuingCardsCardPinRequestBodyPin,
      postIssuingCardsCardPinRequestBodyVerification = postIssuingCardsCardPinRequestBodyVerification
    }

-- | Defines the object schema located at @paths.\/v1\/issuing\/cards\/{card}\/pin.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.verification@ in the specification.
--
-- The id of the \`Verification\` that was sent and the code entered by the cardholder
data PostIssuingCardsCardPinRequestBodyVerification'
  = PostIssuingCardsCardPinRequestBodyVerification'
      { -- | id
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postIssuingCardsCardPinRequestBodyVerification'Id :: Data.Text.Internal.Text,
        -- | one_time_code
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        postIssuingCardsCardPinRequestBodyVerification'OneTimeCode :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostIssuingCardsCardPinRequestBodyVerification' where
  toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postIssuingCardsCardPinRequestBodyVerification'Id obj : "one_time_code" Data.Aeson.Types.ToJSON..= postIssuingCardsCardPinRequestBodyVerification'OneTimeCode obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postIssuingCardsCardPinRequestBodyVerification'Id obj) GHC.Base.<> ("one_time_code" Data.Aeson.Types.ToJSON..= postIssuingCardsCardPinRequestBodyVerification'OneTimeCode obj))

instance Data.Aeson.Types.FromJSON.FromJSON PostIssuingCardsCardPinRequestBodyVerification' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostIssuingCardsCardPinRequestBodyVerification'" (\obj -> (GHC.Base.pure PostIssuingCardsCardPinRequestBodyVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "one_time_code"))

-- | Create a new 'PostIssuingCardsCardPinRequestBodyVerification'' with all required fields.
mkPostIssuingCardsCardPinRequestBodyVerification' ::
  -- | 'postIssuingCardsCardPinRequestBodyVerification'Id'
  Data.Text.Internal.Text ->
  -- | 'postIssuingCardsCardPinRequestBodyVerification'OneTimeCode'
  Data.Text.Internal.Text ->
  PostIssuingCardsCardPinRequestBodyVerification'
mkPostIssuingCardsCardPinRequestBodyVerification' postIssuingCardsCardPinRequestBodyVerification'Id postIssuingCardsCardPinRequestBodyVerification'OneTimeCode =
  PostIssuingCardsCardPinRequestBodyVerification'
    { postIssuingCardsCardPinRequestBodyVerification'Id = postIssuingCardsCardPinRequestBodyVerification'Id,
      postIssuingCardsCardPinRequestBodyVerification'OneTimeCode = postIssuingCardsCardPinRequestBodyVerification'OneTimeCode
    }

-- | Represents a response of the operation 'postIssuingCardsCardPin'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostIssuingCardsCardPinResponseError' is used.
data PostIssuingCardsCardPinResponse
  = -- | Means either no matching case available or a parse error
    PostIssuingCardsCardPinResponseError GHC.Base.String
  | -- | Successful response.
    PostIssuingCardsCardPinResponse200 Issuing'cardPin
  | -- | Error response.
    PostIssuingCardsCardPinResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
