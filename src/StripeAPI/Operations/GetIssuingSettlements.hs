-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getIssuingSettlements
module StripeAPI.Operations.GetIssuingSettlements where

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

-- | > GET /v1/issuing/settlements
-- 
-- \<p>Returns a list of Issuing \<code>Settlement\<\/code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.\<\/p>
getIssuingSettlements :: forall m . StripeAPI.Common.MonadHTTP m => GetIssuingSettlementsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetIssuingSettlementsResponse) -- ^ Monadic computation which returns the result of the operation
getIssuingSettlements parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetIssuingSettlementsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingSettlementsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        GetIssuingSettlementsResponseBody200)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingSettlementsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/issuing/settlements") [StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingSettlementsParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingSettlementsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingSettlementsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingSettlementsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingSettlementsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/issuing\/settlements.GET.parameters@ in the specification.
-- 
-- 
data GetIssuingSettlementsParameters = GetIssuingSettlementsParameters {
  -- | queryCreated: Represents the parameter named \'created\'
  -- 
  -- Only return issuing settlements that were created during the given date interval.
  getIssuingSettlementsParametersQueryCreated :: (GHC.Maybe.Maybe GetIssuingSettlementsParametersQueryCreated'Variants)
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getIssuingSettlementsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getIssuingSettlementsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getIssuingSettlementsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getIssuingSettlementsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingSettlementsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryStartingAfter obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryStartingAfter obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingSettlementsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingSettlementsParameters" (\obj -> ((((GHC.Base.pure GetIssuingSettlementsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))
-- | Create a new 'GetIssuingSettlementsParameters' with all required fields.
mkGetIssuingSettlementsParameters :: GetIssuingSettlementsParameters
mkGetIssuingSettlementsParameters = GetIssuingSettlementsParameters{getIssuingSettlementsParametersQueryCreated = GHC.Maybe.Nothing,
                                                                    getIssuingSettlementsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                                    getIssuingSettlementsParametersQueryExpand = GHC.Maybe.Nothing,
                                                                    getIssuingSettlementsParametersQueryLimit = GHC.Maybe.Nothing,
                                                                    getIssuingSettlementsParametersQueryStartingAfter = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/issuing\/settlements.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- 
data GetIssuingSettlementsParametersQueryCreated'OneOf1 = GetIssuingSettlementsParametersQueryCreated'OneOf1 {
  -- | gt
  getIssuingSettlementsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | gte
  , getIssuingSettlementsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lt
  , getIssuingSettlementsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lte
  , getIssuingSettlementsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingSettlementsParametersQueryCreated'OneOf1
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getIssuingSettlementsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingSettlementsParametersQueryCreated'OneOf1
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingSettlementsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetIssuingSettlementsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))
-- | Create a new 'GetIssuingSettlementsParametersQueryCreated'OneOf1' with all required fields.
mkGetIssuingSettlementsParametersQueryCreated'OneOf1 :: GetIssuingSettlementsParametersQueryCreated'OneOf1
mkGetIssuingSettlementsParametersQueryCreated'OneOf1 = GetIssuingSettlementsParametersQueryCreated'OneOf1{getIssuingSettlementsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
                                                                                                          getIssuingSettlementsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
                                                                                                          getIssuingSettlementsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
                                                                                                          getIssuingSettlementsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/issuing\/settlements.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- Represents the parameter named \'created\'
-- 
-- Only return issuing settlements that were created during the given date interval.
data GetIssuingSettlementsParametersQueryCreated'Variants =
   GetIssuingSettlementsParametersQueryCreated'GetIssuingSettlementsParametersQueryCreated'OneOf1 GetIssuingSettlementsParametersQueryCreated'OneOf1
  | GetIssuingSettlementsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingSettlementsParametersQueryCreated'Variants
    where toJSON (GetIssuingSettlementsParametersQueryCreated'GetIssuingSettlementsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (GetIssuingSettlementsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingSettlementsParametersQueryCreated'Variants
    where parseJSON val = case (GetIssuingSettlementsParametersQueryCreated'GetIssuingSettlementsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetIssuingSettlementsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'getIssuingSettlements'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIssuingSettlementsResponseError' is used.
data GetIssuingSettlementsResponse =
   GetIssuingSettlementsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetIssuingSettlementsResponse200 GetIssuingSettlementsResponseBody200 -- ^ Successful response.
  | GetIssuingSettlementsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/issuing\/settlements.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetIssuingSettlementsResponseBody200 = GetIssuingSettlementsResponseBody200 {
  -- | data
  getIssuingSettlementsResponseBody200Data :: ([Issuing'settlement])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getIssuingSettlementsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/issuing\/settlements\'
  , getIssuingSettlementsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingSettlementsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getIssuingSettlementsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getIssuingSettlementsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getIssuingSettlementsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getIssuingSettlementsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getIssuingSettlementsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getIssuingSettlementsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingSettlementsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingSettlementsResponseBody200" (\obj -> ((GHC.Base.pure GetIssuingSettlementsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'GetIssuingSettlementsResponseBody200' with all required fields.
mkGetIssuingSettlementsResponseBody200 :: [Issuing'settlement] -- ^ 'getIssuingSettlementsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getIssuingSettlementsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getIssuingSettlementsResponseBody200Url'
  -> GetIssuingSettlementsResponseBody200
mkGetIssuingSettlementsResponseBody200 getIssuingSettlementsResponseBody200Data getIssuingSettlementsResponseBody200HasMore getIssuingSettlementsResponseBody200Url = GetIssuingSettlementsResponseBody200{getIssuingSettlementsResponseBody200Data = getIssuingSettlementsResponseBody200Data,
                                                                                                                                                                                                           getIssuingSettlementsResponseBody200HasMore = getIssuingSettlementsResponseBody200HasMore,
                                                                                                                                                                                                           getIssuingSettlementsResponseBody200Url = getIssuingSettlementsResponseBody200Url}
