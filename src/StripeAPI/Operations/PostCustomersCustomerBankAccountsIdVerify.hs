{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCustomersCustomerBankAccountsIdVerify
module StripeAPI.Operations.PostCustomersCustomerBankAccountsIdVerify where

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
import qualified Data.Vector
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

-- | > POST /v1/customers/{customer}/bank_accounts/{id}/verify
-- 
-- \<p>Verify a specified bank account for a given customer.\<\/p>
postCustomersCustomerBankAccountsIdVerify :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> Data.Text.Internal.Text                                                                                                                               -- ^ customer | Constraints: Maximum length of 5000
  -> Data.Text.Internal.Text                                                                                                                               -- ^ id | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdVerifyRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCustomersCustomerBankAccountsIdVerifyResponse)) -- ^ Monad containing the result of the operation
postCustomersCustomerBankAccountsIdVerify config
                                          customer
                                          id
                                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBankAccountsIdVerifyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsIdVerifyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             BankAccount)
                                                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsIdVerifyResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/verify"))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/bank_accounts/{id}/verify
-- 
-- The same as 'postCustomersCustomerBankAccountsIdVerify' but returns the raw 'Data.ByteString.Char8.ByteString'
postCustomersCustomerBankAccountsIdVerifyRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                              StripeAPI.Common.SecurityScheme s) =>
                                                StripeAPI.Common.Configuration s ->
                                                Data.Text.Internal.Text ->
                                                Data.Text.Internal.Text ->
                                                GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdVerifyRequestBody ->
                                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerBankAccountsIdVerifyRaw config
                                             customer
                                             id
                                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/verify"))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/bank_accounts/{id}/verify
-- 
-- Monadic version of 'postCustomersCustomerBankAccountsIdVerify' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerBankAccountsIdVerifyM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                            StripeAPI.Common.SecurityScheme s) =>
                                              Data.Text.Internal.Text ->
                                              Data.Text.Internal.Text ->
                                              GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdVerifyRequestBody ->
                                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                 m
                                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                     (Network.HTTP.Client.Types.Response PostCustomersCustomerBankAccountsIdVerifyResponse))
postCustomersCustomerBankAccountsIdVerifyM customer
                                           id
                                           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerBankAccountsIdVerifyResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsIdVerifyResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              BankAccount)
                                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerBankAccountsIdVerifyResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/verify"))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/bank_accounts/{id}/verify
-- 
-- Monadic version of 'postCustomersCustomerBankAccountsIdVerifyRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerBankAccountsIdVerifyRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                               StripeAPI.Common.SecurityScheme s) =>
                                                 Data.Text.Internal.Text ->
                                                 Data.Text.Internal.Text ->
                                                 GHC.Maybe.Maybe PostCustomersCustomerBankAccountsIdVerifyRequestBody ->
                                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                                    m
                                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerBankAccountsIdVerifyRawM customer
                                              id
                                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/verify"))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postCustomersCustomerBankAccountsIdVerifyRequestBody
-- 
-- 
data PostCustomersCustomerBankAccountsIdVerifyRequestBody = PostCustomersCustomerBankAccountsIdVerifyRequestBody {
  -- | amounts: Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
  postCustomersCustomerBankAccountsIdVerifyRequestBodyAmounts :: (GHC.Maybe.Maybe ([] GHC.Integer.Type.Integer))
  -- | expand: Specifies which fields in the response should be expanded.
  , postCustomersCustomerBankAccountsIdVerifyRequestBodyExpand :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerBankAccountsIdVerifyRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amounts" (postCustomersCustomerBankAccountsIdVerifyRequestBodyAmounts obj) : (Data.Aeson..=) "expand" (postCustomersCustomerBankAccountsIdVerifyRequestBodyExpand obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amounts" (postCustomersCustomerBankAccountsIdVerifyRequestBodyAmounts obj) GHC.Base.<> (Data.Aeson..=) "expand" (postCustomersCustomerBankAccountsIdVerifyRequestBodyExpand obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBankAccountsIdVerifyRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBankAccountsIdVerifyRequestBody" (\obj -> (GHC.Base.pure PostCustomersCustomerBankAccountsIdVerifyRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))
-- | Represents a response of the operation 'postCustomersCustomerBankAccountsIdVerify'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerBankAccountsIdVerifyResponseError' is used.
data PostCustomersCustomerBankAccountsIdVerifyResponse =                   
   PostCustomersCustomerBankAccountsIdVerifyResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostCustomersCustomerBankAccountsIdVerifyResponse200 BankAccount       -- ^ Successful response.
  | PostCustomersCustomerBankAccountsIdVerifyResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
