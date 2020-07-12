{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation getIssuingCardsCardPin
module StripeAPI.Operations.GetIssuingCardsCardPin where

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

-- | > GET /v1/issuing/cards/{card}/pin
--
-- \<p>Retrieves the PIN for a card object, subject to cardholder verification, see \<a href=\"\/docs\/issuing\/pin_management\">Retrieve and update cardholder PIN\<\/a>\<\/p>
getIssuingCardsCardPin ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetIssuingCardsCardPinParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetIssuingCardsCardPinResponse)
getIssuingCardsCardPin parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetIssuingCardsCardPinResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetIssuingCardsCardPinResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
                                                            Issuing'cardPin
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetIssuingCardsCardPinResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getIssuingCardsCardPinParametersPathCard parameters))) GHC.Base.++ "/pin")))
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsCardPinParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "verification") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getIssuingCardsCardPinParametersQueryVerification parameters)) (Data.Text.pack "deepObject") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/issuing\/cards\/{card}\/pin.GET.parameters@ in the specification.
data GetIssuingCardsCardPinParameters
  = GetIssuingCardsCardPinParameters
      { -- | pathCard: Represents the parameter named \'card\'
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getIssuingCardsCardPinParametersPathCard :: Data.Text.Internal.Text,
        -- | queryExpand: Represents the parameter named \'expand\'
        --
        -- Specifies which fields in the response should be expanded.
        getIssuingCardsCardPinParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | queryVerification: Represents the parameter named \'verification\'
        --
        -- The id of the \`Verification\` that was sent and the code entered by the cardholder
        getIssuingCardsCardPinParametersQueryVerification :: GetIssuingCardsCardPinParametersQueryVerification'
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingCardsCardPinParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathCard" Data.Aeson.Types.ToJSON..= getIssuingCardsCardPinParametersPathCard obj : "queryExpand" Data.Aeson.Types.ToJSON..= getIssuingCardsCardPinParametersQueryExpand obj : "queryVerification" Data.Aeson.Types.ToJSON..= getIssuingCardsCardPinParametersQueryVerification obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathCard" Data.Aeson.Types.ToJSON..= getIssuingCardsCardPinParametersPathCard obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getIssuingCardsCardPinParametersQueryExpand obj) GHC.Base.<> ("queryVerification" Data.Aeson.Types.ToJSON..= getIssuingCardsCardPinParametersQueryVerification obj)))

instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsCardPinParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingCardsCardPinParameters" (\obj -> ((GHC.Base.pure GetIssuingCardsCardPinParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryVerification"))

-- | Create a new 'GetIssuingCardsCardPinParameters' with all required fields.
mkGetIssuingCardsCardPinParameters ::
  -- | 'getIssuingCardsCardPinParametersPathCard'
  Data.Text.Internal.Text ->
  -- | 'getIssuingCardsCardPinParametersQueryVerification'
  GetIssuingCardsCardPinParametersQueryVerification' ->
  GetIssuingCardsCardPinParameters
mkGetIssuingCardsCardPinParameters getIssuingCardsCardPinParametersPathCard getIssuingCardsCardPinParametersQueryVerification =
  GetIssuingCardsCardPinParameters
    { getIssuingCardsCardPinParametersPathCard = getIssuingCardsCardPinParametersPathCard,
      getIssuingCardsCardPinParametersQueryExpand = GHC.Maybe.Nothing,
      getIssuingCardsCardPinParametersQueryVerification = getIssuingCardsCardPinParametersQueryVerification
    }

-- | Defines the object schema located at @paths.\/v1\/issuing\/cards\/{card}\/pin.GET.parameters.properties.queryVerification@ in the specification.
--
-- Represents the parameter named \'verification\'
--
-- The id of the \`Verification\` that was sent and the code entered by the cardholder
data GetIssuingCardsCardPinParametersQueryVerification'
  = GetIssuingCardsCardPinParametersQueryVerification'
      { -- | id
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getIssuingCardsCardPinParametersQueryVerification'Id :: Data.Text.Internal.Text,
        -- | one_time_code
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getIssuingCardsCardPinParametersQueryVerification'OneTimeCode :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingCardsCardPinParametersQueryVerification' where
  toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= getIssuingCardsCardPinParametersQueryVerification'Id obj : "one_time_code" Data.Aeson.Types.ToJSON..= getIssuingCardsCardPinParametersQueryVerification'OneTimeCode obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= getIssuingCardsCardPinParametersQueryVerification'Id obj) GHC.Base.<> ("one_time_code" Data.Aeson.Types.ToJSON..= getIssuingCardsCardPinParametersQueryVerification'OneTimeCode obj))

instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsCardPinParametersQueryVerification' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingCardsCardPinParametersQueryVerification'" (\obj -> (GHC.Base.pure GetIssuingCardsCardPinParametersQueryVerification' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "one_time_code"))

-- | Create a new 'GetIssuingCardsCardPinParametersQueryVerification'' with all required fields.
mkGetIssuingCardsCardPinParametersQueryVerification' ::
  -- | 'getIssuingCardsCardPinParametersQueryVerification'Id'
  Data.Text.Internal.Text ->
  -- | 'getIssuingCardsCardPinParametersQueryVerification'OneTimeCode'
  Data.Text.Internal.Text ->
  GetIssuingCardsCardPinParametersQueryVerification'
mkGetIssuingCardsCardPinParametersQueryVerification' getIssuingCardsCardPinParametersQueryVerification'Id getIssuingCardsCardPinParametersQueryVerification'OneTimeCode =
  GetIssuingCardsCardPinParametersQueryVerification'
    { getIssuingCardsCardPinParametersQueryVerification'Id = getIssuingCardsCardPinParametersQueryVerification'Id,
      getIssuingCardsCardPinParametersQueryVerification'OneTimeCode = getIssuingCardsCardPinParametersQueryVerification'OneTimeCode
    }

-- | Represents a response of the operation 'getIssuingCardsCardPin'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIssuingCardsCardPinResponseError' is used.
data GetIssuingCardsCardPinResponse
  = -- | Means either no matching case available or a parse error
    GetIssuingCardsCardPinResponseError GHC.Base.String
  | -- | Successful response.
    GetIssuingCardsCardPinResponse200 Issuing'cardPin
  | -- | Error response.
    GetIssuingCardsCardPinResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
