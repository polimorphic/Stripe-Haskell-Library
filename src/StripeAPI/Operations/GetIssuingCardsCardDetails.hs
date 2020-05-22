{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getIssuingCardsCardDetails
module StripeAPI.Operations.GetIssuingCardsCardDetails where

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

-- | > GET /v1/issuing/cards/{card}/details
-- 
-- \<p>For virtual cards only. Retrieves an Issuing \<code>card_details\<\/code> object that contains \<a href=\"\/docs\/issuing\/cards\/management\#virtual-card-info\">the sensitive details\<\/a> of a virtual card.\<\/p>
getIssuingCardsCardDetails :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                        -- ^ card | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                        -- ^ expand: Specifies which fields in the response should be expanded.
  -> GetIssuingCardsCardDetailsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetIssuingCardsCardDetailsResponse)) -- ^ Monad containing the result of the operation
getIssuingCardsCardDetails config
                           card
                           expand
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetIssuingCardsCardDetailsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingCardsCardDetailsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                Issuing'cardDetails)
                                                                                                                                                                                                      | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingCardsCardDetailsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/details"))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/issuing/cards/{card}/details
-- 
-- The same as 'getIssuingCardsCardDetails' but returns the raw 'Data.ByteString.Char8.ByteString'
getIssuingCardsCardDetailsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 StripeAPI.Common.Configuration s ->
                                 GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GetIssuingCardsCardDetailsRequestBody ->
                                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIssuingCardsCardDetailsRaw config
                              card
                              expand
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/details"))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/issuing/cards/{card}/details
-- 
-- Monadic version of 'getIssuingCardsCardDetails' (use with 'StripeAPI.Common.runWithConfiguration')
getIssuingCardsCardDetailsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                             StripeAPI.Common.SecurityScheme s) =>
                               GHC.Base.String ->
                               GHC.Maybe.Maybe GHC.Base.String ->
                               GetIssuingCardsCardDetailsRequestBody ->
                               Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                  m
                                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                      (Network.HTTP.Client.Types.Response GetIssuingCardsCardDetailsResponse))
getIssuingCardsCardDetailsM card
                            expand
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetIssuingCardsCardDetailsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingCardsCardDetailsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 Issuing'cardDetails)
                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingCardsCardDetailsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/details"))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/issuing/cards/{card}/details
-- 
-- Monadic version of 'getIssuingCardsCardDetailsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getIssuingCardsCardDetailsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  GHC.Base.String ->
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GetIssuingCardsCardDetailsRequestBody ->
                                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                     m
                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getIssuingCardsCardDetailsRawM card
                               expand
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/issuing/cards/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel card)) GHC.Base.++ "/details"))) ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : []) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getIssuingCardsCardDetailsRequestBody
-- 
-- 
data GetIssuingCardsCardDetailsRequestBody = GetIssuingCardsCardDetailsRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetIssuingCardsCardDetailsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsCardDetailsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingCardsCardDetailsRequestBody" (\obj -> GHC.Base.pure GetIssuingCardsCardDetailsRequestBody)
-- | Represents a response of the operation 'getIssuingCardsCardDetails'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIssuingCardsCardDetailsResponseError' is used.
data GetIssuingCardsCardDetailsResponse =                      
   GetIssuingCardsCardDetailsResponseError GHC.Base.String     -- ^ Means either no matching case available or a parse error
  | GetIssuingCardsCardDetailsResponse200 Issuing'cardDetails  -- ^ Successful response.
  | GetIssuingCardsCardDetailsResponseDefault Error            -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
