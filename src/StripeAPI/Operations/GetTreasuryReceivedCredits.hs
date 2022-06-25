-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTreasuryReceivedCredits
module StripeAPI.Operations.GetTreasuryReceivedCredits where

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

-- | > GET /v1/treasury/received_credits
-- 
-- \<p>Returns a list of ReceivedCredits.\<\/p>
getTreasuryReceivedCredits :: forall m . StripeAPI.Common.MonadHTTP m => GetTreasuryReceivedCreditsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTreasuryReceivedCreditsResponse) -- ^ Monadic computation which returns the result of the operation
getTreasuryReceivedCredits parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTreasuryReceivedCreditsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTreasuryReceivedCreditsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       GetTreasuryReceivedCreditsResponseBody200)
                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTreasuryReceivedCreditsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/treasury/received_credits") [StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedCreditsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedCreditsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.pack "financial_account") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getTreasuryReceivedCreditsParametersQueryFinancialAccount parameters)) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedCreditsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.pack "linked_flows") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedCreditsParametersQueryLinkedFlows parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedCreditsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryReceivedCreditsParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/treasury\/received_credits.GET.parameters@ in the specification.
-- 
-- 
data GetTreasuryReceivedCreditsParameters = GetTreasuryReceivedCreditsParameters {
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getTreasuryReceivedCreditsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getTreasuryReceivedCreditsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryFinancial_account: Represents the parameter named \'financial_account\'
  -- 
  -- The FinancialAccount that received the funds.
  , getTreasuryReceivedCreditsParametersQueryFinancialAccount :: Data.Text.Internal.Text
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getTreasuryReceivedCreditsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryLinked_flows: Represents the parameter named \'linked_flows\'
  -- 
  -- Only return ReceivedCredits described by the flow.
  , getTreasuryReceivedCreditsParametersQueryLinkedFlows :: (GHC.Maybe.Maybe GetTreasuryReceivedCreditsParametersQueryLinkedFlows')
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTreasuryReceivedCreditsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryStatus: Represents the parameter named \'status\'
  -- 
  -- Only return ReceivedCredits that have the given status: \`succeeded\` or \`failed\`.
  , getTreasuryReceivedCreditsParametersQueryStatus :: (GHC.Maybe.Maybe GetTreasuryReceivedCreditsParametersQueryStatus')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryReceivedCreditsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryReceivedCreditsParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLinked_flows" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryLinkedFlows obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryStatus obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryReceivedCreditsParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLinked_flows" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryLinkedFlows obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTreasuryReceivedCreditsParametersQueryStatus obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryReceivedCreditsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryReceivedCreditsParameters" (\obj -> ((((((GHC.Base.pure GetTreasuryReceivedCreditsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryFinancial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLinked_flows")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus"))
-- | Create a new 'GetTreasuryReceivedCreditsParameters' with all required fields.
mkGetTreasuryReceivedCreditsParameters :: Data.Text.Internal.Text -- ^ 'getTreasuryReceivedCreditsParametersQueryFinancialAccount'
  -> GetTreasuryReceivedCreditsParameters
mkGetTreasuryReceivedCreditsParameters getTreasuryReceivedCreditsParametersQueryFinancialAccount = GetTreasuryReceivedCreditsParameters{getTreasuryReceivedCreditsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                                                                                                        getTreasuryReceivedCreditsParametersQueryExpand = GHC.Maybe.Nothing,
                                                                                                                                        getTreasuryReceivedCreditsParametersQueryFinancialAccount = getTreasuryReceivedCreditsParametersQueryFinancialAccount,
                                                                                                                                        getTreasuryReceivedCreditsParametersQueryLimit = GHC.Maybe.Nothing,
                                                                                                                                        getTreasuryReceivedCreditsParametersQueryLinkedFlows = GHC.Maybe.Nothing,
                                                                                                                                        getTreasuryReceivedCreditsParametersQueryStartingAfter = GHC.Maybe.Nothing,
                                                                                                                                        getTreasuryReceivedCreditsParametersQueryStatus = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/treasury\/received_credits.GET.parameters.properties.queryLinked_flows@ in the specification.
-- 
-- Represents the parameter named \'linked_flows\'
-- 
-- Only return ReceivedCredits described by the flow.
data GetTreasuryReceivedCreditsParametersQueryLinkedFlows' = GetTreasuryReceivedCreditsParametersQueryLinkedFlows' {
  -- | source_flow_type
  getTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType :: GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryReceivedCreditsParametersQueryLinkedFlows'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["source_flow_type" Data.Aeson.Types.ToJSON..= getTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["source_flow_type" Data.Aeson.Types.ToJSON..= getTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryReceivedCreditsParametersQueryLinkedFlows'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryReceivedCreditsParametersQueryLinkedFlows'" (\obj -> GHC.Base.pure GetTreasuryReceivedCreditsParametersQueryLinkedFlows' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source_flow_type"))
-- | Create a new 'GetTreasuryReceivedCreditsParametersQueryLinkedFlows'' with all required fields.
mkGetTreasuryReceivedCreditsParametersQueryLinkedFlows' :: GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType' -- ^ 'getTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'
  -> GetTreasuryReceivedCreditsParametersQueryLinkedFlows'
mkGetTreasuryReceivedCreditsParametersQueryLinkedFlows' getTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType = GetTreasuryReceivedCreditsParametersQueryLinkedFlows'{getTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType = getTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType}
-- | Defines the enum schema located at @paths.\/v1\/treasury\/received_credits.GET.parameters.properties.queryLinked_flows.properties.source_flow_type@ in the specification.
-- 
-- 
data GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType' =
   GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumCreditReversal -- ^ Represents the JSON value @"credit_reversal"@
  | GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumOther -- ^ Represents the JSON value @"other"@
  | GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumOutboundPayment -- ^ Represents the JSON value @"outbound_payment"@
  | GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumPayout -- ^ Represents the JSON value @"payout"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'
    where toJSON (GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'Other val) = val
          toJSON (GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumCreditReversal) = "credit_reversal"
          toJSON (GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumOther) = "other"
          toJSON (GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumOutboundPayment) = "outbound_payment"
          toJSON (GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumPayout) = "payout"
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "credit_reversal" -> GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumCreditReversal
                                            | val GHC.Classes.== "other" -> GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumOther
                                            | val GHC.Classes.== "outbound_payment" -> GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumOutboundPayment
                                            | val GHC.Classes.== "payout" -> GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'EnumPayout
                                            | GHC.Base.otherwise -> GetTreasuryReceivedCreditsParametersQueryLinkedFlows'SourceFlowType'Other val)
-- | Defines the enum schema located at @paths.\/v1\/treasury\/received_credits.GET.parameters.properties.queryStatus@ in the specification.
-- 
-- Represents the parameter named \'status\'
-- 
-- Only return ReceivedCredits that have the given status: \`succeeded\` or \`failed\`.
data GetTreasuryReceivedCreditsParametersQueryStatus' =
   GetTreasuryReceivedCreditsParametersQueryStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetTreasuryReceivedCreditsParametersQueryStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetTreasuryReceivedCreditsParametersQueryStatus'EnumFailed -- ^ Represents the JSON value @"failed"@
  | GetTreasuryReceivedCreditsParametersQueryStatus'EnumSucceeded -- ^ Represents the JSON value @"succeeded"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryReceivedCreditsParametersQueryStatus'
    where toJSON (GetTreasuryReceivedCreditsParametersQueryStatus'Other val) = val
          toJSON (GetTreasuryReceivedCreditsParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GetTreasuryReceivedCreditsParametersQueryStatus'EnumFailed) = "failed"
          toJSON (GetTreasuryReceivedCreditsParametersQueryStatus'EnumSucceeded) = "succeeded"
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryReceivedCreditsParametersQueryStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "failed" -> GetTreasuryReceivedCreditsParametersQueryStatus'EnumFailed
                                            | val GHC.Classes.== "succeeded" -> GetTreasuryReceivedCreditsParametersQueryStatus'EnumSucceeded
                                            | GHC.Base.otherwise -> GetTreasuryReceivedCreditsParametersQueryStatus'Other val)
-- | Represents a response of the operation 'getTreasuryReceivedCredits'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTreasuryReceivedCreditsResponseError' is used.
data GetTreasuryReceivedCreditsResponse =
   GetTreasuryReceivedCreditsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTreasuryReceivedCreditsResponse200 GetTreasuryReceivedCreditsResponseBody200 -- ^ Successful response.
  | GetTreasuryReceivedCreditsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/treasury\/received_credits.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTreasuryReceivedCreditsResponseBody200 = GetTreasuryReceivedCreditsResponseBody200 {
  -- | data: Details about each object.
  getTreasuryReceivedCreditsResponseBody200Data :: ([Treasury'receivedCredit])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getTreasuryReceivedCreditsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTreasuryReceivedCreditsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryReceivedCreditsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryReceivedCreditsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryReceivedCreditsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryReceivedCreditsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryReceivedCreditsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryReceivedCreditsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryReceivedCreditsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryReceivedCreditsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryReceivedCreditsResponseBody200" (\obj -> ((GHC.Base.pure GetTreasuryReceivedCreditsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'GetTreasuryReceivedCreditsResponseBody200' with all required fields.
mkGetTreasuryReceivedCreditsResponseBody200 :: [Treasury'receivedCredit] -- ^ 'getTreasuryReceivedCreditsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getTreasuryReceivedCreditsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getTreasuryReceivedCreditsResponseBody200Url'
  -> GetTreasuryReceivedCreditsResponseBody200
mkGetTreasuryReceivedCreditsResponseBody200 getTreasuryReceivedCreditsResponseBody200Data getTreasuryReceivedCreditsResponseBody200HasMore getTreasuryReceivedCreditsResponseBody200Url = GetTreasuryReceivedCreditsResponseBody200{getTreasuryReceivedCreditsResponseBody200Data = getTreasuryReceivedCreditsResponseBody200Data,
                                                                                                                                                                                                                                    getTreasuryReceivedCreditsResponseBody200HasMore = getTreasuryReceivedCreditsResponseBody200HasMore,
                                                                                                                                                                                                                                    getTreasuryReceivedCreditsResponseBody200Url = getTreasuryReceivedCreditsResponseBody200Url}
