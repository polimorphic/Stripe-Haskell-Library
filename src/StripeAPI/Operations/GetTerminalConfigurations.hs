-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTerminalConfigurations
module StripeAPI.Operations.GetTerminalConfigurations where

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

-- | > GET /v1/terminal/configurations
-- 
-- \<p>Returns a list of \<code>Configuration\<\/code> objects.\<\/p>
getTerminalConfigurations :: forall m . StripeAPI.Common.MonadHTTP m => GetTerminalConfigurationsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTerminalConfigurationsResponse) -- ^ Monadic computation which returns the result of the operation
getTerminalConfigurations parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTerminalConfigurationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTerminalConfigurationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTerminalConfigurationsResponseBody200)
                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTerminalConfigurationsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/terminal/configurations") [StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalConfigurationsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalConfigurationsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.pack "is_account_default") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalConfigurationsParametersQueryIsAccountDefault parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalConfigurationsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTerminalConfigurationsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/terminal\/configurations.GET.parameters@ in the specification.
-- 
-- 
data GetTerminalConfigurationsParameters = GetTerminalConfigurationsParameters {
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getTerminalConfigurationsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getTerminalConfigurationsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryIs_account_default: Represents the parameter named \'is_account_default\'
  -- 
  -- if present, only return the account default or non-default configurations.
  , getTerminalConfigurationsParametersQueryIsAccountDefault :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getTerminalConfigurationsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTerminalConfigurationsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalConfigurationsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTerminalConfigurationsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTerminalConfigurationsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIs_account_default" Data.Aeson.Types.ToJSON..=)) (getTerminalConfigurationsParametersQueryIsAccountDefault obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTerminalConfigurationsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTerminalConfigurationsParametersQueryStartingAfter obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTerminalConfigurationsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTerminalConfigurationsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryIs_account_default" Data.Aeson.Types.ToJSON..=)) (getTerminalConfigurationsParametersQueryIsAccountDefault obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTerminalConfigurationsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTerminalConfigurationsParametersQueryStartingAfter obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalConfigurationsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTerminalConfigurationsParameters" (\obj -> ((((GHC.Base.pure GetTerminalConfigurationsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryIs_account_default")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))
-- | Create a new 'GetTerminalConfigurationsParameters' with all required fields.
mkGetTerminalConfigurationsParameters :: GetTerminalConfigurationsParameters
mkGetTerminalConfigurationsParameters = GetTerminalConfigurationsParameters{getTerminalConfigurationsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                                            getTerminalConfigurationsParametersQueryExpand = GHC.Maybe.Nothing,
                                                                            getTerminalConfigurationsParametersQueryIsAccountDefault = GHC.Maybe.Nothing,
                                                                            getTerminalConfigurationsParametersQueryLimit = GHC.Maybe.Nothing,
                                                                            getTerminalConfigurationsParametersQueryStartingAfter = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getTerminalConfigurations'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTerminalConfigurationsResponseError' is used.
data GetTerminalConfigurationsResponse =
   GetTerminalConfigurationsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTerminalConfigurationsResponse200 GetTerminalConfigurationsResponseBody200 -- ^ Successful response.
  | GetTerminalConfigurationsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/terminal\/configurations.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTerminalConfigurationsResponseBody200 = GetTerminalConfigurationsResponseBody200 {
  -- | data
  getTerminalConfigurationsResponseBody200Data :: ([Terminal'configuration])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getTerminalConfigurationsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/terminal\/configurations\'
  , getTerminalConfigurationsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTerminalConfigurationsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTerminalConfigurationsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTerminalConfigurationsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTerminalConfigurationsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTerminalConfigurationsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTerminalConfigurationsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTerminalConfigurationsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTerminalConfigurationsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTerminalConfigurationsResponseBody200" (\obj -> ((GHC.Base.pure GetTerminalConfigurationsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'GetTerminalConfigurationsResponseBody200' with all required fields.
mkGetTerminalConfigurationsResponseBody200 :: [Terminal'configuration] -- ^ 'getTerminalConfigurationsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getTerminalConfigurationsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getTerminalConfigurationsResponseBody200Url'
  -> GetTerminalConfigurationsResponseBody200
mkGetTerminalConfigurationsResponseBody200 getTerminalConfigurationsResponseBody200Data getTerminalConfigurationsResponseBody200HasMore getTerminalConfigurationsResponseBody200Url = GetTerminalConfigurationsResponseBody200{getTerminalConfigurationsResponseBody200Data = getTerminalConfigurationsResponseBody200Data,
                                                                                                                                                                                                                               getTerminalConfigurationsResponseBody200HasMore = getTerminalConfigurationsResponseBody200HasMore,
                                                                                                                                                                                                                               getTerminalConfigurationsResponseBody200Url = getTerminalConfigurationsResponseBody200Url}
