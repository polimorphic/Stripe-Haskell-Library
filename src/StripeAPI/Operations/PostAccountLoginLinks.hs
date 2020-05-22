{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postAccountLoginLinks
module StripeAPI.Operations.PostAccountLoginLinks where

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

-- | > POST /v1/account/login_links
-- 
-- \<p>Creates a single-use login link for an Express account to access their Stripe dashboard.\<\/p>
-- 
-- \<p>\<strong>You may only create login links for \<a href=\"\/docs\/connect\/express-accounts\">Express accounts\<\/a> connected to your platform\<\/strong>.\<\/p>
postAccountLoginLinks :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostAccountLoginLinksRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostAccountLoginLinksResponse)) -- ^ Monad containing the result of the operation
postAccountLoginLinks config
                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountLoginLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountLoginLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 LoginLink)
                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountLoginLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/login_links") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/login_links
-- 
-- The same as 'postAccountLoginLinks' but returns the raw 'Data.ByteString.Char8.ByteString'
postAccountLoginLinksRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            PostAccountLoginLinksRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountLoginLinksRaw config
                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/login_links") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/login_links
-- 
-- Monadic version of 'postAccountLoginLinks' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountLoginLinksM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          PostAccountLoginLinksRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response PostAccountLoginLinksResponse))
postAccountLoginLinksM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostAccountLoginLinksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountLoginLinksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                  LoginLink)
                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountLoginLinksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/login_links") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/account/login_links
-- 
-- Monadic version of 'postAccountLoginLinksRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postAccountLoginLinksRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             PostAccountLoginLinksRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postAccountLoginLinksRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/account/login_links") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postAccountLoginLinksRequestBody
-- 
-- 
data PostAccountLoginLinksRequestBody = PostAccountLoginLinksRequestBody {
  -- | account
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountLoginLinksRequestBodyAccount :: GHC.Base.String
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountLoginLinksRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | redirect_url: Where to redirect the user after they log out of their dashboard.
  , postAccountLoginLinksRequestBodyRedirectUrl :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostAccountLoginLinksRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postAccountLoginLinksRequestBodyAccount obj) : (Data.Aeson..=) "expand" (postAccountLoginLinksRequestBodyExpand obj) : (Data.Aeson..=) "redirect_url" (postAccountLoginLinksRequestBodyRedirectUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postAccountLoginLinksRequestBodyAccount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postAccountLoginLinksRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "redirect_url" (postAccountLoginLinksRequestBodyRedirectUrl obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountLoginLinksRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountLoginLinksRequestBody" (\obj -> ((GHC.Base.pure PostAccountLoginLinksRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect_url"))
-- | Represents a response of the operation 'postAccountLoginLinks'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountLoginLinksResponseError' is used.
data PostAccountLoginLinksResponse =                   
   PostAccountLoginLinksResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostAccountLoginLinksResponse200 LoginLink         -- ^ Successful response.
  | PostAccountLoginLinksResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
