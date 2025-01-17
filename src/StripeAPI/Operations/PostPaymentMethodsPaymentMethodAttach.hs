{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postPaymentMethodsPaymentMethodAttach
module StripeAPI.Operations.PostPaymentMethodsPaymentMethodAttach where

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

-- | > POST /v1/payment_methods/{payment_method}/attach
--
-- \<p>Attaches a PaymentMethod object to a Customer.\<\/p>
--
-- \<p>To attach a new PaymentMethod to a customer for future payments, we recommend you use a \<a href=\"\/docs\/api\/setup_intents\">SetupIntent\<\/a>
-- or a PaymentIntent with \<a href=\"\/docs\/api\/payment_intents\/create\#create_payment_intent-setup_future_usage\">setup_future_usage\<\/a>.
-- These approaches will perform any necessary steps to ensure that the PaymentMethod can be used in a future payment. Using the
-- \<code>\/v1\/payment_methods\/:id\/attach\<\/code> endpoint does not ensure that future payments can be made with the attached PaymentMethod.
-- See \<a href=\"\/docs\/payments\/payment-intents\#future-usage\">Optimizing cards for future payments\<\/a> for more information about setting up future payments.\<\/p>
--
-- \<p>To use this PaymentMethod as the default for invoice or subscription payments,
-- set \<a href=\"\/docs\/api\/customers\/update\#update_customer-invoice_settings-default_payment_method\">\<code>invoice_settings.default_payment_method\<\/code>\<\/a>,
-- on the Customer to the PaymentMethod’s ID.\<\/p>
postPaymentMethodsPaymentMethodAttach ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | payment_method | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  PostPaymentMethodsPaymentMethodAttachRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPaymentMethodsPaymentMethodAttachResponse)
postPaymentMethodsPaymentMethodAttach
  paymentMethod
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostPaymentMethodsPaymentMethodAttachResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostPaymentMethodsPaymentMethodAttachResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              PaymentMethod
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostPaymentMethodsPaymentMethodAttachResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ "/attach"))) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/payment_methods\/{payment_method}\/attach.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostPaymentMethodsPaymentMethodAttachRequestBody = PostPaymentMethodsPaymentMethodAttachRequestBody
  { -- | customer: The ID of the customer to which to attach the PaymentMethod.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postPaymentMethodsPaymentMethodAttachRequestBodyCustomer :: Data.Text.Internal.Text,
    -- | expand: Specifies which fields in the response should be expanded.
    postPaymentMethodsPaymentMethodAttachRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodsPaymentMethodAttachRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("customer" Data.Aeson.Types.ToJSON..= postPaymentMethodsPaymentMethodAttachRequestBodyCustomer obj : "expand" Data.Aeson.Types.ToJSON..= postPaymentMethodsPaymentMethodAttachRequestBodyExpand obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("customer" Data.Aeson.Types.ToJSON..= postPaymentMethodsPaymentMethodAttachRequestBodyCustomer obj) GHC.Base.<> ("expand" Data.Aeson.Types.ToJSON..= postPaymentMethodsPaymentMethodAttachRequestBodyExpand obj))

instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodAttachRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodAttachRequestBody" (\obj -> (GHC.Base.pure PostPaymentMethodsPaymentMethodAttachRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))

-- | Create a new 'PostPaymentMethodsPaymentMethodAttachRequestBody' with all required fields.
mkPostPaymentMethodsPaymentMethodAttachRequestBody ::
  -- | 'postPaymentMethodsPaymentMethodAttachRequestBodyCustomer'
  Data.Text.Internal.Text ->
  PostPaymentMethodsPaymentMethodAttachRequestBody
mkPostPaymentMethodsPaymentMethodAttachRequestBody postPaymentMethodsPaymentMethodAttachRequestBodyCustomer =
  PostPaymentMethodsPaymentMethodAttachRequestBody
    { postPaymentMethodsPaymentMethodAttachRequestBodyCustomer = postPaymentMethodsPaymentMethodAttachRequestBodyCustomer,
      postPaymentMethodsPaymentMethodAttachRequestBodyExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postPaymentMethodsPaymentMethodAttach'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentMethodsPaymentMethodAttachResponseError' is used.
data PostPaymentMethodsPaymentMethodAttachResponse
  = -- | Means either no matching case available or a parse error
    PostPaymentMethodsPaymentMethodAttachResponseError GHC.Base.String
  | -- | Successful response.
    PostPaymentMethodsPaymentMethodAttachResponse200 PaymentMethod
  | -- | Error response.
    PostPaymentMethodsPaymentMethodAttachResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
