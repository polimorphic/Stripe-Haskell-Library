{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getBillingPortalConfigurations
module StripeAPI.Operations.GetBillingPortalConfigurations where

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

-- | > GET /v1/billing_portal/configurations
--
-- \<p>Returns a list of configurations that describe the functionality of the customer portal.\<\/p>
getBillingPortalConfigurations ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetBillingPortalConfigurationsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetBillingPortalConfigurationsResponse)
getBillingPortalConfigurations parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetBillingPortalConfigurationsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetBillingPortalConfigurationsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetBillingPortalConfigurationsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetBillingPortalConfigurationsResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/v1/billing_portal/configurations")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "active") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBillingPortalConfigurationsParametersQueryActive parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBillingPortalConfigurationsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBillingPortalConfigurationsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "is_default") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBillingPortalConfigurationsParametersQueryIsDefault parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBillingPortalConfigurationsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getBillingPortalConfigurationsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/billing_portal\/configurations.GET.parameters@ in the specification.
data GetBillingPortalConfigurationsParameters = GetBillingPortalConfigurationsParameters
  { -- | queryActive: Represents the parameter named \'active\'
    --
    -- Only return configurations that are active or inactive (e.g., pass \`true\` to only list active configurations).
    getBillingPortalConfigurationsParametersQueryActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getBillingPortalConfigurationsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getBillingPortalConfigurationsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryIs_default: Represents the parameter named \'is_default\'
    --
    -- Only return the default or non-default configurations (e.g., pass \`true\` to only list the default configuration).
    getBillingPortalConfigurationsParametersQueryIsDefault :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getBillingPortalConfigurationsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getBillingPortalConfigurationsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetBillingPortalConfigurationsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryActive" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryActive obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryExpand obj : "queryIs_default" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryIsDefault obj : "queryLimit" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryLimit obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryStartingAfter obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryActive" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryActive obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryExpand obj) GHC.Base.<> (("queryIs_default" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryIsDefault obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryLimit obj) GHC.Base.<> ("queryStarting_after" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsParametersQueryStartingAfter obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON GetBillingPortalConfigurationsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetBillingPortalConfigurationsParameters" (\obj -> (((((GHC.Base.pure GetBillingPortalConfigurationsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryActive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryIs_default")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after"))

-- | Create a new 'GetBillingPortalConfigurationsParameters' with all required fields.
mkGetBillingPortalConfigurationsParameters :: GetBillingPortalConfigurationsParameters
mkGetBillingPortalConfigurationsParameters =
  GetBillingPortalConfigurationsParameters
    { getBillingPortalConfigurationsParametersQueryActive = GHC.Maybe.Nothing,
      getBillingPortalConfigurationsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getBillingPortalConfigurationsParametersQueryExpand = GHC.Maybe.Nothing,
      getBillingPortalConfigurationsParametersQueryIsDefault = GHC.Maybe.Nothing,
      getBillingPortalConfigurationsParametersQueryLimit = GHC.Maybe.Nothing,
      getBillingPortalConfigurationsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getBillingPortalConfigurations'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetBillingPortalConfigurationsResponseError' is used.
data GetBillingPortalConfigurationsResponse
  = -- | Means either no matching case available or a parse error
    GetBillingPortalConfigurationsResponseError GHC.Base.String
  | -- | Successful response.
    GetBillingPortalConfigurationsResponse200 GetBillingPortalConfigurationsResponseBody200
  | -- | Error response.
    GetBillingPortalConfigurationsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/billing_portal\/configurations.GET.responses.200.content.application\/json.schema@ in the specification.
data GetBillingPortalConfigurationsResponseBody200 = GetBillingPortalConfigurationsResponseBody200
  { -- | data
    getBillingPortalConfigurationsResponseBody200Data :: ([BillingPortal'configuration]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getBillingPortalConfigurationsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/billing_portal\/configurations\'
    getBillingPortalConfigurationsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetBillingPortalConfigurationsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getBillingPortalConfigurationsResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetBillingPortalConfigurationsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetBillingPortalConfigurationsResponseBody200" (\obj -> ((GHC.Base.pure GetBillingPortalConfigurationsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetBillingPortalConfigurationsResponseBody200' with all required fields.
mkGetBillingPortalConfigurationsResponseBody200 ::
  -- | 'getBillingPortalConfigurationsResponseBody200Data'
  [BillingPortal'configuration] ->
  -- | 'getBillingPortalConfigurationsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getBillingPortalConfigurationsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetBillingPortalConfigurationsResponseBody200
mkGetBillingPortalConfigurationsResponseBody200 getBillingPortalConfigurationsResponseBody200Data getBillingPortalConfigurationsResponseBody200HasMore getBillingPortalConfigurationsResponseBody200Url =
  GetBillingPortalConfigurationsResponseBody200
    { getBillingPortalConfigurationsResponseBody200Data = getBillingPortalConfigurationsResponseBody200Data,
      getBillingPortalConfigurationsResponseBody200HasMore = getBillingPortalConfigurationsResponseBody200HasMore,
      getBillingPortalConfigurationsResponseBody200Url = getBillingPortalConfigurationsResponseBody200Url
    }
