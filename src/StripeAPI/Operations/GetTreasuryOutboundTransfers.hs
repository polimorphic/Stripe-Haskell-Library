-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTreasuryOutboundTransfers
module StripeAPI.Operations.GetTreasuryOutboundTransfers where

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

-- | > GET /v1/treasury/outbound_transfers
-- 
-- \<p>Returns a list of OutboundTransfers sent from the specified FinancialAccount.\<\/p>
getTreasuryOutboundTransfers :: forall m . StripeAPI.Common.MonadHTTP m => GetTreasuryOutboundTransfersParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTreasuryOutboundTransfersResponse) -- ^ Monadic computation which returns the result of the operation
getTreasuryOutboundTransfers parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTreasuryOutboundTransfersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTreasuryOutboundTransfersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             GetTreasuryOutboundTransfersResponseBody200)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTreasuryOutboundTransfersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/treasury/outbound_transfers") [StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundTransfersParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundTransfersParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.pack "financial_account") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getTreasuryOutboundTransfersParametersQueryFinancialAccount parameters)) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundTransfersParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundTransfersParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundTransfersParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/treasury\/outbound_transfers.GET.parameters@ in the specification.
-- 
-- 
data GetTreasuryOutboundTransfersParameters = GetTreasuryOutboundTransfersParameters {
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getTreasuryOutboundTransfersParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getTreasuryOutboundTransfersParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryFinancial_account: Represents the parameter named \'financial_account\'
  -- 
  -- Returns objects associated with this FinancialAccount.
  , getTreasuryOutboundTransfersParametersQueryFinancialAccount :: Data.Text.Internal.Text
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getTreasuryOutboundTransfersParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTreasuryOutboundTransfersParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryStatus: Represents the parameter named \'status\'
  -- 
  -- Only return OutboundTransfers that have the given status: \`processing\`, \`canceled\`, \`failed\`, \`posted\`, or \`returned\`.
  , getTreasuryOutboundTransfersParametersQueryStatus :: (GHC.Maybe.Maybe GetTreasuryOutboundTransfersParametersQueryStatus')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryOutboundTransfersParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundTransfersParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundTransfersParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryOutboundTransfersParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundTransfersParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundTransfersParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundTransfersParametersQueryStatus obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundTransfersParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundTransfersParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryOutboundTransfersParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundTransfersParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundTransfersParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundTransfersParametersQueryStatus obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryOutboundTransfersParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryOutboundTransfersParameters" (\obj -> (((((GHC.Base.pure GetTreasuryOutboundTransfersParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryFinancial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus"))
-- | Create a new 'GetTreasuryOutboundTransfersParameters' with all required fields.
mkGetTreasuryOutboundTransfersParameters :: Data.Text.Internal.Text -- ^ 'getTreasuryOutboundTransfersParametersQueryFinancialAccount'
  -> GetTreasuryOutboundTransfersParameters
mkGetTreasuryOutboundTransfersParameters getTreasuryOutboundTransfersParametersQueryFinancialAccount = GetTreasuryOutboundTransfersParameters{getTreasuryOutboundTransfersParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                                                                                                              getTreasuryOutboundTransfersParametersQueryExpand = GHC.Maybe.Nothing,
                                                                                                                                              getTreasuryOutboundTransfersParametersQueryFinancialAccount = getTreasuryOutboundTransfersParametersQueryFinancialAccount,
                                                                                                                                              getTreasuryOutboundTransfersParametersQueryLimit = GHC.Maybe.Nothing,
                                                                                                                                              getTreasuryOutboundTransfersParametersQueryStartingAfter = GHC.Maybe.Nothing,
                                                                                                                                              getTreasuryOutboundTransfersParametersQueryStatus = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/treasury\/outbound_transfers.GET.parameters.properties.queryStatus@ in the specification.
-- 
-- Represents the parameter named \'status\'
-- 
-- Only return OutboundTransfers that have the given status: \`processing\`, \`canceled\`, \`failed\`, \`posted\`, or \`returned\`.
data GetTreasuryOutboundTransfersParametersQueryStatus' =
   GetTreasuryOutboundTransfersParametersQueryStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetTreasuryOutboundTransfersParametersQueryStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetTreasuryOutboundTransfersParametersQueryStatus'EnumCanceled -- ^ Represents the JSON value @"canceled"@
  | GetTreasuryOutboundTransfersParametersQueryStatus'EnumFailed -- ^ Represents the JSON value @"failed"@
  | GetTreasuryOutboundTransfersParametersQueryStatus'EnumPosted -- ^ Represents the JSON value @"posted"@
  | GetTreasuryOutboundTransfersParametersQueryStatus'EnumProcessing -- ^ Represents the JSON value @"processing"@
  | GetTreasuryOutboundTransfersParametersQueryStatus'EnumReturned -- ^ Represents the JSON value @"returned"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryOutboundTransfersParametersQueryStatus'
    where toJSON (GetTreasuryOutboundTransfersParametersQueryStatus'Other val) = val
          toJSON (GetTreasuryOutboundTransfersParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GetTreasuryOutboundTransfersParametersQueryStatus'EnumCanceled) = "canceled"
          toJSON (GetTreasuryOutboundTransfersParametersQueryStatus'EnumFailed) = "failed"
          toJSON (GetTreasuryOutboundTransfersParametersQueryStatus'EnumPosted) = "posted"
          toJSON (GetTreasuryOutboundTransfersParametersQueryStatus'EnumProcessing) = "processing"
          toJSON (GetTreasuryOutboundTransfersParametersQueryStatus'EnumReturned) = "returned"
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryOutboundTransfersParametersQueryStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "canceled" -> GetTreasuryOutboundTransfersParametersQueryStatus'EnumCanceled
                                            | val GHC.Classes.== "failed" -> GetTreasuryOutboundTransfersParametersQueryStatus'EnumFailed
                                            | val GHC.Classes.== "posted" -> GetTreasuryOutboundTransfersParametersQueryStatus'EnumPosted
                                            | val GHC.Classes.== "processing" -> GetTreasuryOutboundTransfersParametersQueryStatus'EnumProcessing
                                            | val GHC.Classes.== "returned" -> GetTreasuryOutboundTransfersParametersQueryStatus'EnumReturned
                                            | GHC.Base.otherwise -> GetTreasuryOutboundTransfersParametersQueryStatus'Other val)
-- | Represents a response of the operation 'getTreasuryOutboundTransfers'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTreasuryOutboundTransfersResponseError' is used.
data GetTreasuryOutboundTransfersResponse =
   GetTreasuryOutboundTransfersResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTreasuryOutboundTransfersResponse200 GetTreasuryOutboundTransfersResponseBody200 -- ^ Successful response.
  | GetTreasuryOutboundTransfersResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/treasury\/outbound_transfers.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTreasuryOutboundTransfersResponseBody200 = GetTreasuryOutboundTransfersResponseBody200 {
  -- | data: Details about each object.
  getTreasuryOutboundTransfersResponseBody200Data :: ([Treasury'outboundTransfer])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getTreasuryOutboundTransfersResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTreasuryOutboundTransfersResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryOutboundTransfersResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryOutboundTransfersResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryOutboundTransfersResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryOutboundTransfersResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryOutboundTransfersResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryOutboundTransfersResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryOutboundTransfersResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryOutboundTransfersResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryOutboundTransfersResponseBody200" (\obj -> ((GHC.Base.pure GetTreasuryOutboundTransfersResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'GetTreasuryOutboundTransfersResponseBody200' with all required fields.
mkGetTreasuryOutboundTransfersResponseBody200 :: [Treasury'outboundTransfer] -- ^ 'getTreasuryOutboundTransfersResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getTreasuryOutboundTransfersResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getTreasuryOutboundTransfersResponseBody200Url'
  -> GetTreasuryOutboundTransfersResponseBody200
mkGetTreasuryOutboundTransfersResponseBody200 getTreasuryOutboundTransfersResponseBody200Data getTreasuryOutboundTransfersResponseBody200HasMore getTreasuryOutboundTransfersResponseBody200Url = GetTreasuryOutboundTransfersResponseBody200{getTreasuryOutboundTransfersResponseBody200Data = getTreasuryOutboundTransfersResponseBody200Data,
                                                                                                                                                                                                                                              getTreasuryOutboundTransfersResponseBody200HasMore = getTreasuryOutboundTransfersResponseBody200HasMore,
                                                                                                                                                                                                                                              getTreasuryOutboundTransfersResponseBody200Url = getTreasuryOutboundTransfersResponseBody200Url}
