-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getOrdersIdLineItems
module StripeAPI.Operations.GetOrdersIdLineItems where

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

-- | > GET /v1/orders/{id}/line_items
-- 
-- \<p>When retrieving an order, there is an includable \<strong>line_items\<\/strong> property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.\<\/p>
getOrdersIdLineItems :: forall m . StripeAPI.Common.MonadHTTP m => GetOrdersIdLineItemsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetOrdersIdLineItemsResponse) -- ^ Monadic computation which returns the result of the operation
getOrdersIdLineItems parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetOrdersIdLineItemsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetOrdersIdLineItemsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     GetOrdersIdLineItemsResponseBody200)
                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetOrdersIdLineItemsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getOrdersIdLineItemsParametersPathId parameters))) GHC.Base.++ "/line_items"))) [StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrdersIdLineItemsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrdersIdLineItemsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrdersIdLineItemsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrdersIdLineItemsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/orders\/{id}\/line_items.GET.parameters@ in the specification.
-- 
-- 
data GetOrdersIdLineItemsParameters = GetOrdersIdLineItemsParameters {
  -- | pathId: Represents the parameter named \'id\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getOrdersIdLineItemsParametersPathId :: Data.Text.Internal.Text
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getOrdersIdLineItemsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getOrdersIdLineItemsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getOrdersIdLineItemsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getOrdersIdLineItemsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetOrdersIdLineItemsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathId" Data.Aeson.Types.ToJSON..= getOrdersIdLineItemsParametersPathId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getOrdersIdLineItemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getOrdersIdLineItemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getOrdersIdLineItemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getOrdersIdLineItemsParametersQueryStartingAfter obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathId" Data.Aeson.Types.ToJSON..= getOrdersIdLineItemsParametersPathId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getOrdersIdLineItemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getOrdersIdLineItemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getOrdersIdLineItemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getOrdersIdLineItemsParametersQueryStartingAfter obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetOrdersIdLineItemsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetOrdersIdLineItemsParameters" (\obj -> ((((GHC.Base.pure GetOrdersIdLineItemsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))
-- | Create a new 'GetOrdersIdLineItemsParameters' with all required fields.
mkGetOrdersIdLineItemsParameters :: Data.Text.Internal.Text -- ^ 'getOrdersIdLineItemsParametersPathId'
  -> GetOrdersIdLineItemsParameters
mkGetOrdersIdLineItemsParameters getOrdersIdLineItemsParametersPathId = GetOrdersIdLineItemsParameters{getOrdersIdLineItemsParametersPathId = getOrdersIdLineItemsParametersPathId,
                                                                                                       getOrdersIdLineItemsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                                                                       getOrdersIdLineItemsParametersQueryExpand = GHC.Maybe.Nothing,
                                                                                                       getOrdersIdLineItemsParametersQueryLimit = GHC.Maybe.Nothing,
                                                                                                       getOrdersIdLineItemsParametersQueryStartingAfter = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getOrdersIdLineItems'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetOrdersIdLineItemsResponseError' is used.
data GetOrdersIdLineItemsResponse =
   GetOrdersIdLineItemsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetOrdersIdLineItemsResponse200 GetOrdersIdLineItemsResponseBody200 -- ^ Successful response.
  | GetOrdersIdLineItemsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/orders\/{id}\/line_items.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetOrdersIdLineItemsResponseBody200 = GetOrdersIdLineItemsResponseBody200 {
  -- | data: Details about each object.
  getOrdersIdLineItemsResponseBody200Data :: ([Item])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getOrdersIdLineItemsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getOrdersIdLineItemsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetOrdersIdLineItemsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getOrdersIdLineItemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getOrdersIdLineItemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getOrdersIdLineItemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getOrdersIdLineItemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getOrdersIdLineItemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getOrdersIdLineItemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetOrdersIdLineItemsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetOrdersIdLineItemsResponseBody200" (\obj -> ((GHC.Base.pure GetOrdersIdLineItemsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'GetOrdersIdLineItemsResponseBody200' with all required fields.
mkGetOrdersIdLineItemsResponseBody200 :: [Item] -- ^ 'getOrdersIdLineItemsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getOrdersIdLineItemsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getOrdersIdLineItemsResponseBody200Url'
  -> GetOrdersIdLineItemsResponseBody200
mkGetOrdersIdLineItemsResponseBody200 getOrdersIdLineItemsResponseBody200Data getOrdersIdLineItemsResponseBody200HasMore getOrdersIdLineItemsResponseBody200Url = GetOrdersIdLineItemsResponseBody200{getOrdersIdLineItemsResponseBody200Data = getOrdersIdLineItemsResponseBody200Data,
                                                                                                                                                                                                      getOrdersIdLineItemsResponseBody200HasMore = getOrdersIdLineItemsResponseBody200HasMore,
                                                                                                                                                                                                      getOrdersIdLineItemsResponseBody200Url = getOrdersIdLineItemsResponseBody200Url}
