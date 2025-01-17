{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postAccountsAccountCapabilitiesCapability
module StripeAPI.Operations.PostAccountsAccountCapabilitiesCapability where

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

-- | > POST /v1/accounts/{account}/capabilities/{capability}
--
-- \<p>Updates an existing Account Capability.\<\/p>
postAccountsAccountCapabilitiesCapability ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostAccountsAccountCapabilitiesCapabilityParameters ->
  -- | The request body to send
  GHC.Maybe.Maybe PostAccountsAccountCapabilitiesCapabilityRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAccountsAccountCapabilitiesCapabilityResponse)
postAccountsAccountCapabilitiesCapability
  parameters
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostAccountsAccountCapabilitiesCapabilityResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostAccountsAccountCapabilitiesCapabilityResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Capability
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostAccountsAccountCapabilitiesCapabilityResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (postAccountsAccountCapabilitiesCapabilityParametersPathAccount parameters))) GHC.Base.++ ("/capabilities/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (postAccountsAccountCapabilitiesCapabilityParametersPathCapability parameters))) GHC.Base.++ ""))))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/capabilities\/{capability}.POST.parameters@ in the specification.
data PostAccountsAccountCapabilitiesCapabilityParameters = PostAccountsAccountCapabilitiesCapabilityParameters
  { -- | pathAccount: Represents the parameter named \'account\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountsAccountCapabilitiesCapabilityParametersPathAccount :: Data.Text.Internal.Text,
    -- | pathCapability: Represents the parameter named \'capability\'
    postAccountsAccountCapabilitiesCapabilityParametersPathCapability :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountCapabilitiesCapabilityParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathAccount" Data.Aeson.Types.ToJSON..= postAccountsAccountCapabilitiesCapabilityParametersPathAccount obj : "pathCapability" Data.Aeson.Types.ToJSON..= postAccountsAccountCapabilitiesCapabilityParametersPathCapability obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathAccount" Data.Aeson.Types.ToJSON..= postAccountsAccountCapabilitiesCapabilityParametersPathAccount obj) GHC.Base.<> ("pathCapability" Data.Aeson.Types.ToJSON..= postAccountsAccountCapabilitiesCapabilityParametersPathCapability obj))

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountCapabilitiesCapabilityParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountCapabilitiesCapabilityParameters" (\obj -> (GHC.Base.pure PostAccountsAccountCapabilitiesCapabilityParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCapability"))

-- | Create a new 'PostAccountsAccountCapabilitiesCapabilityParameters' with all required fields.
mkPostAccountsAccountCapabilitiesCapabilityParameters ::
  -- | 'postAccountsAccountCapabilitiesCapabilityParametersPathAccount'
  Data.Text.Internal.Text ->
  -- | 'postAccountsAccountCapabilitiesCapabilityParametersPathCapability'
  Data.Text.Internal.Text ->
  PostAccountsAccountCapabilitiesCapabilityParameters
mkPostAccountsAccountCapabilitiesCapabilityParameters postAccountsAccountCapabilitiesCapabilityParametersPathAccount postAccountsAccountCapabilitiesCapabilityParametersPathCapability =
  PostAccountsAccountCapabilitiesCapabilityParameters
    { postAccountsAccountCapabilitiesCapabilityParametersPathAccount = postAccountsAccountCapabilitiesCapabilityParametersPathAccount,
      postAccountsAccountCapabilitiesCapabilityParametersPathCapability = postAccountsAccountCapabilitiesCapabilityParametersPathCapability
    }

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/capabilities\/{capability}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostAccountsAccountCapabilitiesCapabilityRequestBody = PostAccountsAccountCapabilitiesCapabilityRequestBody
  { -- | expand: Specifies which fields in the response should be expanded.
    postAccountsAccountCapabilitiesCapabilityRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | requested: Passing true requests the capability for the account, if it is not already requested. A requested capability may not immediately become active. Any requirements to activate the capability are returned in the \`requirements\` arrays.
    postAccountsAccountCapabilitiesCapabilityRequestBodyRequested :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountCapabilitiesCapabilityRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("expand" Data.Aeson.Types.ToJSON..= postAccountsAccountCapabilitiesCapabilityRequestBodyExpand obj : "requested" Data.Aeson.Types.ToJSON..= postAccountsAccountCapabilitiesCapabilityRequestBodyRequested obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("expand" Data.Aeson.Types.ToJSON..= postAccountsAccountCapabilitiesCapabilityRequestBodyExpand obj) GHC.Base.<> ("requested" Data.Aeson.Types.ToJSON..= postAccountsAccountCapabilitiesCapabilityRequestBodyRequested obj))

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountCapabilitiesCapabilityRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountCapabilitiesCapabilityRequestBody" (\obj -> (GHC.Base.pure PostAccountsAccountCapabilitiesCapabilityRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "requested"))

-- | Create a new 'PostAccountsAccountCapabilitiesCapabilityRequestBody' with all required fields.
mkPostAccountsAccountCapabilitiesCapabilityRequestBody :: PostAccountsAccountCapabilitiesCapabilityRequestBody
mkPostAccountsAccountCapabilitiesCapabilityRequestBody =
  PostAccountsAccountCapabilitiesCapabilityRequestBody
    { postAccountsAccountCapabilitiesCapabilityRequestBodyExpand = GHC.Maybe.Nothing,
      postAccountsAccountCapabilitiesCapabilityRequestBodyRequested = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postAccountsAccountCapabilitiesCapability'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountsAccountCapabilitiesCapabilityResponseError' is used.
data PostAccountsAccountCapabilitiesCapabilityResponse
  = -- | Means either no matching case available or a parse error
    PostAccountsAccountCapabilitiesCapabilityResponseError GHC.Base.String
  | -- | Successful response.
    PostAccountsAccountCapabilitiesCapabilityResponse200 Capability
  | -- | Error response.
    PostAccountsAccountCapabilitiesCapabilityResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
