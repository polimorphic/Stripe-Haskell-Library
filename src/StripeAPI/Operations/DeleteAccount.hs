{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation deleteAccount
module StripeAPI.Operations.DeleteAccount where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
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

-- | > DELETE /v1/account
-- 
-- \<p>With \<a href=\"\/docs\/connect\">Connect\<\/a>, you can delete Custom or Express accounts you manage.\<\/p>
-- 
-- \<p>Accounts created using test-mode keys can be deleted at any time. Accounts created using live-mode keys can only be deleted once all balances are zero.\<\/p>
-- 
-- \<p>If you want to delete your own account, use the \<a href=\"https:\/\/dashboard.stripe.com\/account\">account information tab in your account settings\<\/a> instead.\<\/p>
deleteAccount :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> DeleteAccountRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response DeleteAccountResponse)) -- ^ Monad containing the result of the operation
deleteAccount config
              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         DeletedAccount)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/account
-- 
-- The same as 'deleteAccount' but returns the raw 'Data.ByteString.Char8.ByteString'
deleteAccountRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    StripeAPI.Common.Configuration s ->
                    DeleteAccountRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteAccountRaw config
                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/account
-- 
-- Monadic version of 'deleteAccount' (use with 'StripeAPI.Common.runWithConfiguration')
deleteAccountM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  DeleteAccountRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response DeleteAccountResponse))
deleteAccountM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteAccountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteAccountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          DeletedAccount)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> DeleteAccountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > DELETE /v1/account
-- 
-- Monadic version of 'deleteAccountRaw' (use with 'StripeAPI.Common.runWithConfiguration')
deleteAccountRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     DeleteAccountRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
deleteAccountRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "DELETE")) (Data.Text.pack "/v1/account") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema deleteAccountRequestBody
-- 
-- 
data DeleteAccountRequestBody = DeleteAccountRequestBody {
  -- | account
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  deleteAccountRequestBodyAccount :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeleteAccountRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (deleteAccountRequestBodyAccount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (deleteAccountRequestBodyAccount obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteAccountRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteAccountRequestBody" (\obj -> GHC.Base.pure DeleteAccountRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account"))
-- | Represents a response of the operation 'deleteAccount'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteAccountResponseError' is used.
data DeleteAccountResponse =                   
   DeleteAccountResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | DeleteAccountResponse200 DeletedAccount    -- ^ Successful response.
  | DeleteAccountResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
