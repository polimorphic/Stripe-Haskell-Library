-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTreasuryDebitReversals
module StripeAPI.Operations.GetTreasuryDebitReversals where

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

-- | > GET /v1/treasury/debit_reversals
-- 
-- \<p>Returns a list of DebitReversals.\<\/p>
getTreasuryDebitReversals :: forall m . StripeAPI.Common.MonadHTTP m => GetTreasuryDebitReversalsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTreasuryDebitReversalsResponse) -- ^ Monadic computation which returns the result of the operation
getTreasuryDebitReversals parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTreasuryDebitReversalsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTreasuryDebitReversalsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetTreasuryDebitReversalsResponseBody200)
                                                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTreasuryDebitReversalsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/treasury/debit_reversals") [StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryDebitReversalsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryDebitReversalsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "financial_account") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getTreasuryDebitReversalsParametersQueryFinancialAccount parameters)) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryDebitReversalsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "received_debit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryDebitReversalsParametersQueryReceivedDebit parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "resolution") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryDebitReversalsParametersQueryResolution parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryDebitReversalsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryDebitReversalsParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/treasury\/debit_reversals.GET.parameters@ in the specification.
-- 
-- 
data GetTreasuryDebitReversalsParameters = GetTreasuryDebitReversalsParameters {
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getTreasuryDebitReversalsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getTreasuryDebitReversalsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryFinancial_account: Represents the parameter named \'financial_account\'
  -- 
  -- Returns objects associated with this FinancialAccount.
  , getTreasuryDebitReversalsParametersQueryFinancialAccount :: Data.Text.Internal.Text
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getTreasuryDebitReversalsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryReceived_debit: Represents the parameter named \'received_debit\'
  -- 
  -- Only return DebitReversals for the ReceivedDebit ID.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTreasuryDebitReversalsParametersQueryReceivedDebit :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryResolution: Represents the parameter named \'resolution\'
  -- 
  -- Only return DebitReversals for a given resolution.
  , getTreasuryDebitReversalsParametersQueryResolution :: (GHC.Maybe.Maybe GetTreasuryDebitReversalsParametersQueryResolution')
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTreasuryDebitReversalsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryStatus: Represents the parameter named \'status\'
  -- 
  -- Only return DebitReversals for a given status.
  , getTreasuryDebitReversalsParametersQueryStatus :: (GHC.Maybe.Maybe GetTreasuryDebitReversalsParametersQueryStatus')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryDebitReversalsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryDebitReversalsParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryReceived_debit" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryReceivedDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryResolution" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryResolution obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryStatus obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryDebitReversalsParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryReceived_debit" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryReceivedDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryResolution" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryResolution obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTreasuryDebitReversalsParametersQueryStatus obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryDebitReversalsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryDebitReversalsParameters" (\obj -> (((((((GHC.Base.pure GetTreasuryDebitReversalsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryFinancial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryReceived_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryResolution")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus"))
-- | Create a new 'GetTreasuryDebitReversalsParameters' with all required fields.
mkGetTreasuryDebitReversalsParameters :: Data.Text.Internal.Text -- ^ 'getTreasuryDebitReversalsParametersQueryFinancialAccount'
  -> GetTreasuryDebitReversalsParameters
mkGetTreasuryDebitReversalsParameters getTreasuryDebitReversalsParametersQueryFinancialAccount = GetTreasuryDebitReversalsParameters{getTreasuryDebitReversalsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                                                                                                     getTreasuryDebitReversalsParametersQueryExpand = GHC.Maybe.Nothing,
                                                                                                                                     getTreasuryDebitReversalsParametersQueryFinancialAccount = getTreasuryDebitReversalsParametersQueryFinancialAccount,
                                                                                                                                     getTreasuryDebitReversalsParametersQueryLimit = GHC.Maybe.Nothing,
                                                                                                                                     getTreasuryDebitReversalsParametersQueryReceivedDebit = GHC.Maybe.Nothing,
                                                                                                                                     getTreasuryDebitReversalsParametersQueryResolution = GHC.Maybe.Nothing,
                                                                                                                                     getTreasuryDebitReversalsParametersQueryStartingAfter = GHC.Maybe.Nothing,
                                                                                                                                     getTreasuryDebitReversalsParametersQueryStatus = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/treasury\/debit_reversals.GET.parameters.properties.queryResolution@ in the specification.
-- 
-- Represents the parameter named \'resolution\'
-- 
-- Only return DebitReversals for a given resolution.
data GetTreasuryDebitReversalsParametersQueryResolution' =
   GetTreasuryDebitReversalsParametersQueryResolution'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetTreasuryDebitReversalsParametersQueryResolution'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetTreasuryDebitReversalsParametersQueryResolution'EnumLost -- ^ Represents the JSON value @"lost"@
  | GetTreasuryDebitReversalsParametersQueryResolution'EnumWon -- ^ Represents the JSON value @"won"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryDebitReversalsParametersQueryResolution'
    where toJSON (GetTreasuryDebitReversalsParametersQueryResolution'Other val) = val
          toJSON (GetTreasuryDebitReversalsParametersQueryResolution'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GetTreasuryDebitReversalsParametersQueryResolution'EnumLost) = "lost"
          toJSON (GetTreasuryDebitReversalsParametersQueryResolution'EnumWon) = "won"
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryDebitReversalsParametersQueryResolution'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "lost" -> GetTreasuryDebitReversalsParametersQueryResolution'EnumLost
                                            | val GHC.Classes.== "won" -> GetTreasuryDebitReversalsParametersQueryResolution'EnumWon
                                            | GHC.Base.otherwise -> GetTreasuryDebitReversalsParametersQueryResolution'Other val)
-- | Defines the enum schema located at @paths.\/v1\/treasury\/debit_reversals.GET.parameters.properties.queryStatus@ in the specification.
-- 
-- Represents the parameter named \'status\'
-- 
-- Only return DebitReversals for a given status.
data GetTreasuryDebitReversalsParametersQueryStatus' =
   GetTreasuryDebitReversalsParametersQueryStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetTreasuryDebitReversalsParametersQueryStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetTreasuryDebitReversalsParametersQueryStatus'EnumCanceled -- ^ Represents the JSON value @"canceled"@
  | GetTreasuryDebitReversalsParametersQueryStatus'EnumCompleted -- ^ Represents the JSON value @"completed"@
  | GetTreasuryDebitReversalsParametersQueryStatus'EnumProcessing -- ^ Represents the JSON value @"processing"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryDebitReversalsParametersQueryStatus'
    where toJSON (GetTreasuryDebitReversalsParametersQueryStatus'Other val) = val
          toJSON (GetTreasuryDebitReversalsParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GetTreasuryDebitReversalsParametersQueryStatus'EnumCanceled) = "canceled"
          toJSON (GetTreasuryDebitReversalsParametersQueryStatus'EnumCompleted) = "completed"
          toJSON (GetTreasuryDebitReversalsParametersQueryStatus'EnumProcessing) = "processing"
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryDebitReversalsParametersQueryStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "canceled" -> GetTreasuryDebitReversalsParametersQueryStatus'EnumCanceled
                                            | val GHC.Classes.== "completed" -> GetTreasuryDebitReversalsParametersQueryStatus'EnumCompleted
                                            | val GHC.Classes.== "processing" -> GetTreasuryDebitReversalsParametersQueryStatus'EnumProcessing
                                            | GHC.Base.otherwise -> GetTreasuryDebitReversalsParametersQueryStatus'Other val)
-- | Represents a response of the operation 'getTreasuryDebitReversals'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTreasuryDebitReversalsResponseError' is used.
data GetTreasuryDebitReversalsResponse =
   GetTreasuryDebitReversalsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTreasuryDebitReversalsResponse200 GetTreasuryDebitReversalsResponseBody200 -- ^ Successful response.
  | GetTreasuryDebitReversalsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/treasury\/debit_reversals.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTreasuryDebitReversalsResponseBody200 = GetTreasuryDebitReversalsResponseBody200 {
  -- | data: Details about each object.
  getTreasuryDebitReversalsResponseBody200Data :: ([Treasury'debitReversal])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getTreasuryDebitReversalsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTreasuryDebitReversalsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryDebitReversalsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryDebitReversalsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryDebitReversalsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryDebitReversalsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryDebitReversalsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryDebitReversalsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryDebitReversalsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryDebitReversalsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryDebitReversalsResponseBody200" (\obj -> ((GHC.Base.pure GetTreasuryDebitReversalsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'GetTreasuryDebitReversalsResponseBody200' with all required fields.
mkGetTreasuryDebitReversalsResponseBody200 :: [Treasury'debitReversal] -- ^ 'getTreasuryDebitReversalsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getTreasuryDebitReversalsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getTreasuryDebitReversalsResponseBody200Url'
  -> GetTreasuryDebitReversalsResponseBody200
mkGetTreasuryDebitReversalsResponseBody200 getTreasuryDebitReversalsResponseBody200Data getTreasuryDebitReversalsResponseBody200HasMore getTreasuryDebitReversalsResponseBody200Url = GetTreasuryDebitReversalsResponseBody200{getTreasuryDebitReversalsResponseBody200Data = getTreasuryDebitReversalsResponseBody200Data,
                                                                                                                                                                                                                               getTreasuryDebitReversalsResponseBody200HasMore = getTreasuryDebitReversalsResponseBody200HasMore,
                                                                                                                                                                                                                               getTreasuryDebitReversalsResponseBody200Url = getTreasuryDebitReversalsResponseBody200Url}
