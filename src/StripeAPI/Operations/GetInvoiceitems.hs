-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getInvoiceitems
module StripeAPI.Operations.GetInvoiceitems where

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

-- | > GET /v1/invoiceitems
-- 
-- \<p>Returns a list of your invoice items. Invoice items are returned sorted by creation date, with the most recently created invoice items appearing first.\<\/p>
getInvoiceitems :: forall m . StripeAPI.Common.MonadHTTP m => GetInvoiceitemsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetInvoiceitemsResponse) -- ^ Monadic computation which returns the result of the operation
getInvoiceitems parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetInvoiceitemsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetInvoiceitemsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetInvoiceitemsResponseBody200)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetInvoiceitemsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/invoiceitems") [StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoiceitemsParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "customer") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoiceitemsParametersQueryCustomer parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoiceitemsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoiceitemsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "invoice") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoiceitemsParametersQueryInvoice parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoiceitemsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "pending") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoiceitemsParametersQueryPending parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getInvoiceitemsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/invoiceitems.GET.parameters@ in the specification.
-- 
-- 
data GetInvoiceitemsParameters = GetInvoiceitemsParameters {
  -- | queryCreated: Represents the parameter named \'created\'
  getInvoiceitemsParametersQueryCreated :: (GHC.Maybe.Maybe GetInvoiceitemsParametersQueryCreated'Variants)
  -- | queryCustomer: Represents the parameter named \'customer\'
  -- 
  -- The identifier of the customer whose invoice items to return. If none is provided, all invoice items will be returned.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getInvoiceitemsParametersQueryCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getInvoiceitemsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getInvoiceitemsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryInvoice: Represents the parameter named \'invoice\'
  -- 
  -- Only return invoice items belonging to this invoice. If none is provided, all invoice items will be returned. If specifying an invoice, no customer identifier is needed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getInvoiceitemsParametersQueryInvoice :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getInvoiceitemsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPending: Represents the parameter named \'pending\'
  -- 
  -- Set to \`true\` to only show pending invoice items, which are not yet attached to any invoices. Set to \`false\` to only show invoice items already attached to invoices. If unspecified, no filter is applied.
  , getInvoiceitemsParametersQueryPending :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getInvoiceitemsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetInvoiceitemsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryInvoice" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryInvoice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPending" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryPending obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryStartingAfter obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryInvoice" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryInvoice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPending" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryPending obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryStartingAfter obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetInvoiceitemsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetInvoiceitemsParameters" (\obj -> (((((((GHC.Base.pure GetInvoiceitemsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryInvoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPending")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after"))
-- | Create a new 'GetInvoiceitemsParameters' with all required fields.
mkGetInvoiceitemsParameters :: GetInvoiceitemsParameters
mkGetInvoiceitemsParameters = GetInvoiceitemsParameters{getInvoiceitemsParametersQueryCreated = GHC.Maybe.Nothing,
                                                        getInvoiceitemsParametersQueryCustomer = GHC.Maybe.Nothing,
                                                        getInvoiceitemsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                        getInvoiceitemsParametersQueryExpand = GHC.Maybe.Nothing,
                                                        getInvoiceitemsParametersQueryInvoice = GHC.Maybe.Nothing,
                                                        getInvoiceitemsParametersQueryLimit = GHC.Maybe.Nothing,
                                                        getInvoiceitemsParametersQueryPending = GHC.Maybe.Nothing,
                                                        getInvoiceitemsParametersQueryStartingAfter = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/invoiceitems.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- 
data GetInvoiceitemsParametersQueryCreated'OneOf1 = GetInvoiceitemsParametersQueryCreated'OneOf1 {
  -- | gt
  getInvoiceitemsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | gte
  , getInvoiceitemsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lt
  , getInvoiceitemsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lte
  , getInvoiceitemsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetInvoiceitemsParametersQueryCreated'OneOf1
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getInvoiceitemsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetInvoiceitemsParametersQueryCreated'OneOf1
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetInvoiceitemsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetInvoiceitemsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))
-- | Create a new 'GetInvoiceitemsParametersQueryCreated'OneOf1' with all required fields.
mkGetInvoiceitemsParametersQueryCreated'OneOf1 :: GetInvoiceitemsParametersQueryCreated'OneOf1
mkGetInvoiceitemsParametersQueryCreated'OneOf1 = GetInvoiceitemsParametersQueryCreated'OneOf1{getInvoiceitemsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
                                                                                              getInvoiceitemsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
                                                                                              getInvoiceitemsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
                                                                                              getInvoiceitemsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/invoiceitems.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- Represents the parameter named \'created\'
data GetInvoiceitemsParametersQueryCreated'Variants =
   GetInvoiceitemsParametersQueryCreated'GetInvoiceitemsParametersQueryCreated'OneOf1 GetInvoiceitemsParametersQueryCreated'OneOf1
  | GetInvoiceitemsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetInvoiceitemsParametersQueryCreated'Variants
    where toJSON (GetInvoiceitemsParametersQueryCreated'GetInvoiceitemsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (GetInvoiceitemsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON GetInvoiceitemsParametersQueryCreated'Variants
    where parseJSON val = case (GetInvoiceitemsParametersQueryCreated'GetInvoiceitemsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetInvoiceitemsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'getInvoiceitems'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetInvoiceitemsResponseError' is used.
data GetInvoiceitemsResponse =
   GetInvoiceitemsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetInvoiceitemsResponse200 GetInvoiceitemsResponseBody200 -- ^ Successful response.
  | GetInvoiceitemsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/invoiceitems.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetInvoiceitemsResponseBody200 = GetInvoiceitemsResponseBody200 {
  -- | data
  getInvoiceitemsResponseBody200Data :: ([Invoiceitem])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getInvoiceitemsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/invoiceitems\'
  , getInvoiceitemsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetInvoiceitemsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getInvoiceitemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getInvoiceitemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getInvoiceitemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getInvoiceitemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getInvoiceitemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getInvoiceitemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetInvoiceitemsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetInvoiceitemsResponseBody200" (\obj -> ((GHC.Base.pure GetInvoiceitemsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'GetInvoiceitemsResponseBody200' with all required fields.
mkGetInvoiceitemsResponseBody200 :: [Invoiceitem] -- ^ 'getInvoiceitemsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getInvoiceitemsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getInvoiceitemsResponseBody200Url'
  -> GetInvoiceitemsResponseBody200
mkGetInvoiceitemsResponseBody200 getInvoiceitemsResponseBody200Data getInvoiceitemsResponseBody200HasMore getInvoiceitemsResponseBody200Url = GetInvoiceitemsResponseBody200{getInvoiceitemsResponseBody200Data = getInvoiceitemsResponseBody200Data,
                                                                                                                                                                             getInvoiceitemsResponseBody200HasMore = getInvoiceitemsResponseBody200HasMore,
                                                                                                                                                                             getInvoiceitemsResponseBody200Url = getInvoiceitemsResponseBody200Url}
