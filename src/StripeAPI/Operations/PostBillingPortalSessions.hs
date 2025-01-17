{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postBillingPortalSessions
module StripeAPI.Operations.PostBillingPortalSessions where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/billing_portal/sessions
--
-- \<p>Creates a session of the customer portal.\<\/p>
postBillingPortalSessions ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  PostBillingPortalSessionsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostBillingPortalSessionsResponse)
postBillingPortalSessions body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostBillingPortalSessionsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostBillingPortalSessionsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            BillingPortal'session
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostBillingPortalSessionsResponseDefault
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Error
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/billing_portal/sessions") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/billing_portal\/sessions.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostBillingPortalSessionsRequestBody = PostBillingPortalSessionsRequestBody
  { -- | configuration: The ID of an existing [configuration](https:\/\/stripe.com\/docs\/api\/customer_portal\/configuration) to use for this session, describing its functionality and features. If not specified, the session uses the default configuration.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postBillingPortalSessionsRequestBodyConfiguration :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer: The ID of an existing customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postBillingPortalSessionsRequestBodyCustomer :: Data.Text.Internal.Text,
    -- | expand: Specifies which fields in the response should be expanded.
    postBillingPortalSessionsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | on_behalf_of: The \`on_behalf_of\` account to use for this session. When specified, only subscriptions and invoices with this \`on_behalf_of\` account appear in the portal. For more information, see the [docs](https:\/\/stripe.com\/docs\/connect\/charges-transfers\#on-behalf-of). Use the [Accounts API](https:\/\/stripe.com\/docs\/api\/accounts\/object\#account_object-settings-branding) to modify the \`on_behalf_of\` account\'s branding settings, which the portal displays.
    postBillingPortalSessionsRequestBodyOnBehalfOf :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | return_url: The default URL to redirect customers to when they click on the portal\'s link to return to your website.
    postBillingPortalSessionsRequestBodyReturnUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostBillingPortalSessionsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("configuration" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyConfiguration obj : "customer" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyCustomer obj : "expand" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyExpand obj : "on_behalf_of" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyOnBehalfOf obj : "return_url" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyReturnUrl obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("configuration" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyConfiguration obj) GHC.Base.<> (("customer" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyCustomer obj) GHC.Base.<> (("expand" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyExpand obj) GHC.Base.<> (("on_behalf_of" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyOnBehalfOf obj) GHC.Base.<> ("return_url" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyReturnUrl obj)))))

instance Data.Aeson.Types.FromJSON.FromJSON PostBillingPortalSessionsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostBillingPortalSessionsRequestBody" (\obj -> ((((GHC.Base.pure PostBillingPortalSessionsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "configuration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "on_behalf_of")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "return_url"))

-- | Create a new 'PostBillingPortalSessionsRequestBody' with all required fields.
mkPostBillingPortalSessionsRequestBody ::
  -- | 'postBillingPortalSessionsRequestBodyCustomer'
  Data.Text.Internal.Text ->
  PostBillingPortalSessionsRequestBody
mkPostBillingPortalSessionsRequestBody postBillingPortalSessionsRequestBodyCustomer =
  PostBillingPortalSessionsRequestBody
    { postBillingPortalSessionsRequestBodyConfiguration = GHC.Maybe.Nothing,
      postBillingPortalSessionsRequestBodyCustomer = postBillingPortalSessionsRequestBodyCustomer,
      postBillingPortalSessionsRequestBodyExpand = GHC.Maybe.Nothing,
      postBillingPortalSessionsRequestBodyOnBehalfOf = GHC.Maybe.Nothing,
      postBillingPortalSessionsRequestBodyReturnUrl = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postBillingPortalSessions'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostBillingPortalSessionsResponseError' is used.
data PostBillingPortalSessionsResponse
  = -- | Means either no matching case available or a parse error
    PostBillingPortalSessionsResponseError GHC.Base.String
  | -- | Successful response.
    PostBillingPortalSessionsResponse200 BillingPortal'session
  | -- | Error response.
    PostBillingPortalSessionsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
