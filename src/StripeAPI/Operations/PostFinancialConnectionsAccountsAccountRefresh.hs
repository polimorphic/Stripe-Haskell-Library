-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postFinancialConnectionsAccountsAccountRefresh
module StripeAPI.Operations.PostFinancialConnectionsAccountsAccountRefresh where

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

-- | > POST /v1/financial_connections/accounts/{account}/refresh
-- 
-- \<p>Refreshes the data associated with a Financial Connections \<code>Account\<\/code>.\<\/p>
postFinancialConnectionsAccountsAccountRefresh :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ account | Constraints: Maximum length of 5000
  -> PostFinancialConnectionsAccountsAccountRefreshRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostFinancialConnectionsAccountsAccountRefreshResponse) -- ^ Monadic computation which returns the result of the operation
postFinancialConnectionsAccountsAccountRefresh account
                                               body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostFinancialConnectionsAccountsAccountRefreshResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostFinancialConnectionsAccountsAccountRefreshResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             FinancialConnections'account)
                                                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostFinancialConnectionsAccountsAccountRefreshResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/financial_connections/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/refresh"))) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/financial_connections\/accounts\/{account}\/refresh.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostFinancialConnectionsAccountsAccountRefreshRequestBody = PostFinancialConnectionsAccountsAccountRefreshRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postFinancialConnectionsAccountsAccountRefreshRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | features: The list of account features that you would like to refresh. Either: \`balance\` or \`ownership\`.
  , postFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures :: ([PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFinancialConnectionsAccountsAccountRefreshRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postFinancialConnectionsAccountsAccountRefreshRequestBodyExpand obj) : ["features" Data.Aeson.Types.ToJSON..= postFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postFinancialConnectionsAccountsAccountRefreshRequestBodyExpand obj) : ["features" Data.Aeson.Types.ToJSON..= postFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostFinancialConnectionsAccountsAccountRefreshRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFinancialConnectionsAccountsAccountRefreshRequestBody" (\obj -> (GHC.Base.pure PostFinancialConnectionsAccountsAccountRefreshRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "features"))
-- | Create a new 'PostFinancialConnectionsAccountsAccountRefreshRequestBody' with all required fields.
mkPostFinancialConnectionsAccountsAccountRefreshRequestBody :: [PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'] -- ^ 'postFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'
  -> PostFinancialConnectionsAccountsAccountRefreshRequestBody
mkPostFinancialConnectionsAccountsAccountRefreshRequestBody postFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures = PostFinancialConnectionsAccountsAccountRefreshRequestBody{postFinancialConnectionsAccountsAccountRefreshRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                                                                                                          postFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures = postFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures}
-- | Defines the enum schema located at @paths.\/v1\/financial_connections\/accounts\/{account}\/refresh.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.features.items@ in the specification.
-- 
-- 
data PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures' =
   PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'EnumBalance -- ^ Represents the JSON value @"balance"@
  | PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'EnumOwnership -- ^ Represents the JSON value @"ownership"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'
    where toJSON (PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'Other val) = val
          toJSON (PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'EnumBalance) = "balance"
          toJSON (PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'EnumOwnership) = "ownership"
instance Data.Aeson.Types.FromJSON.FromJSON PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "balance" -> PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'EnumBalance
                                            | val GHC.Classes.== "ownership" -> PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'EnumOwnership
                                            | GHC.Base.otherwise -> PostFinancialConnectionsAccountsAccountRefreshRequestBodyFeatures'Other val)
-- | Represents a response of the operation 'postFinancialConnectionsAccountsAccountRefresh'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostFinancialConnectionsAccountsAccountRefreshResponseError' is used.
data PostFinancialConnectionsAccountsAccountRefreshResponse =
   PostFinancialConnectionsAccountsAccountRefreshResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostFinancialConnectionsAccountsAccountRefreshResponse200 FinancialConnections'account -- ^ Successful response.
  | PostFinancialConnectionsAccountsAccountRefreshResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
