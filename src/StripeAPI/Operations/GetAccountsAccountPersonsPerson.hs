-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getAccountsAccountPersonsPerson
module StripeAPI.Operations.GetAccountsAccountPersonsPerson where

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

-- | > GET /v1/accounts/{account}/persons/{person}
-- 
-- \<p>Retrieves an existing person.\<\/p>
getAccountsAccountPersonsPerson :: forall m . StripeAPI.Common.MonadHTTP m => GetAccountsAccountPersonsPersonParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetAccountsAccountPersonsPersonResponse) -- ^ Monadic computation which returns the result of the operation
getAccountsAccountPersonsPerson parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAccountsAccountPersonsPersonResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountPersonsPersonResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      Person)
                                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountPersonsPersonResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getAccountsAccountPersonsPersonParametersPathAccount parameters))) GHC.Base.++ ("/persons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getAccountsAccountPersonsPersonParametersPathPerson parameters))) GHC.Base.++ ""))))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getAccountsAccountPersonsPersonParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/persons\/{person}.GET.parameters@ in the specification.
-- 
-- 
data GetAccountsAccountPersonsPersonParameters = GetAccountsAccountPersonsPersonParameters {
  -- | pathAccount: Represents the parameter named \'account\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getAccountsAccountPersonsPersonParametersPathAccount :: Data.Text.Internal.Text
  -- | pathPerson: Represents the parameter named \'person\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountsAccountPersonsPersonParametersPathPerson :: Data.Text.Internal.Text
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getAccountsAccountPersonsPersonParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetAccountsAccountPersonsPersonParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsPersonParametersPathAccount obj] : ["pathPerson" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsPersonParametersPathPerson obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsPersonParametersQueryExpand obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathAccount" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsPersonParametersPathAccount obj] : ["pathPerson" Data.Aeson.Types.ToJSON..= getAccountsAccountPersonsPersonParametersPathPerson obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getAccountsAccountPersonsPersonParametersQueryExpand obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountPersonsPersonParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountPersonsPersonParameters" (\obj -> ((GHC.Base.pure GetAccountsAccountPersonsPersonParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathPerson")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))
-- | Create a new 'GetAccountsAccountPersonsPersonParameters' with all required fields.
mkGetAccountsAccountPersonsPersonParameters :: Data.Text.Internal.Text -- ^ 'getAccountsAccountPersonsPersonParametersPathAccount'
  -> Data.Text.Internal.Text -- ^ 'getAccountsAccountPersonsPersonParametersPathPerson'
  -> GetAccountsAccountPersonsPersonParameters
mkGetAccountsAccountPersonsPersonParameters getAccountsAccountPersonsPersonParametersPathAccount getAccountsAccountPersonsPersonParametersPathPerson = GetAccountsAccountPersonsPersonParameters{getAccountsAccountPersonsPersonParametersPathAccount = getAccountsAccountPersonsPersonParametersPathAccount,
                                                                                                                                                                                                 getAccountsAccountPersonsPersonParametersPathPerson = getAccountsAccountPersonsPersonParametersPathPerson,
                                                                                                                                                                                                 getAccountsAccountPersonsPersonParametersQueryExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getAccountsAccountPersonsPerson'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountsAccountPersonsPersonResponseError' is used.
data GetAccountsAccountPersonsPersonResponse =
   GetAccountsAccountPersonsPersonResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetAccountsAccountPersonsPersonResponse200 Person -- ^ Successful response.
  | GetAccountsAccountPersonsPersonResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
