{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation deleteSubscriptionsSubscriptionExposedId
module StripeAPI.Operations.DeleteSubscriptionsSubscriptionExposedId where

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

-- | > DELETE /v1/subscriptions/{subscription_exposed_id}
--
-- \<p>Cancels a customer’s subscription immediately. The customer will not be charged again for the subscription.\<\/p>
--
-- \<p>Note, however, that any pending invoice items that you’ve created will still be charged for at the end of the period, unless manually \<a href=\"\#delete_invoiceitem\">deleted\<\/a>. If you’ve set the subscription to cancel at the end of the period, any pending prorations will also be left in place and collected at the end of the period. But if the subscription is set to cancel immediately, pending prorations will be removed.\<\/p>
--
-- \<p>By default, upon subscription cancellation, Stripe will stop automatic collection of all finalized invoices for the customer. This is intended to prevent unexpected payment attempts after the customer has canceled a subscription. However, you can resume automatic collection of the invoices manually after subscription cancellation to have us proceed. Or, you could check for unpaid invoices before allowing the customer to cancel the subscription at all.\<\/p>
deleteSubscriptionsSubscriptionExposedId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | subscription_exposed_id | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe DeleteSubscriptionsSubscriptionExposedIdRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response DeleteSubscriptionsSubscriptionExposedIdResponse)
deleteSubscriptionsSubscriptionExposedId
  subscriptionExposedId
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either DeleteSubscriptionsSubscriptionExposedIdResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSubscriptionsSubscriptionExposedIdResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either GHC.Base.String
                                                              Subscription
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     DeleteSubscriptionsSubscriptionExposedIdResponseDefault
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either GHC.Base.String
                                                              Error
                                                        )
                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_0
            )
            response_0
      )
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionExposedId)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/subscriptions\/{subscription_exposed_id}.DELETE.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data DeleteSubscriptionsSubscriptionExposedIdRequestBody
  = DeleteSubscriptionsSubscriptionExposedIdRequestBody
      { -- | expand: Specifies which fields in the response should be expanded.
        deleteSubscriptionsSubscriptionExposedIdRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | invoice_now: Will generate a final invoice that invoices for any un-invoiced metered usage and new\/pending proration invoice items.
        deleteSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow :: (GHC.Maybe.Maybe GHC.Types.Bool),
        -- | prorate: Will generate a proration invoice item that credits remaining unused time until the subscription period end.
        deleteSubscriptionsSubscriptionExposedIdRequestBodyProrate :: (GHC.Maybe.Maybe GHC.Types.Bool)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteSubscriptionsSubscriptionExposedIdRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("expand" Data.Aeson.Types.ToJSON..= deleteSubscriptionsSubscriptionExposedIdRequestBodyExpand obj : "invoice_now" Data.Aeson.Types.ToJSON..= deleteSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow obj : "prorate" Data.Aeson.Types.ToJSON..= deleteSubscriptionsSubscriptionExposedIdRequestBodyProrate obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("expand" Data.Aeson.Types.ToJSON..= deleteSubscriptionsSubscriptionExposedIdRequestBodyExpand obj) GHC.Base.<> (("invoice_now" Data.Aeson.Types.ToJSON..= deleteSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow obj) GHC.Base.<> ("prorate" Data.Aeson.Types.ToJSON..= deleteSubscriptionsSubscriptionExposedIdRequestBodyProrate obj)))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteSubscriptionsSubscriptionExposedIdRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteSubscriptionsSubscriptionExposedIdRequestBody" (\obj -> ((GHC.Base.pure DeleteSubscriptionsSubscriptionExposedIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice_now")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "prorate"))

-- | Create a new 'DeleteSubscriptionsSubscriptionExposedIdRequestBody' with all required fields.
mkDeleteSubscriptionsSubscriptionExposedIdRequestBody :: DeleteSubscriptionsSubscriptionExposedIdRequestBody
mkDeleteSubscriptionsSubscriptionExposedIdRequestBody =
  DeleteSubscriptionsSubscriptionExposedIdRequestBody
    { deleteSubscriptionsSubscriptionExposedIdRequestBodyExpand = GHC.Maybe.Nothing,
      deleteSubscriptionsSubscriptionExposedIdRequestBodyInvoiceNow = GHC.Maybe.Nothing,
      deleteSubscriptionsSubscriptionExposedIdRequestBodyProrate = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'deleteSubscriptionsSubscriptionExposedId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteSubscriptionsSubscriptionExposedIdResponseError' is used.
data DeleteSubscriptionsSubscriptionExposedIdResponse
  = -- | Means either no matching case available or a parse error
    DeleteSubscriptionsSubscriptionExposedIdResponseError GHC.Base.String
  | -- | Successful response.
    DeleteSubscriptionsSubscriptionExposedIdResponse200 Subscription
  | -- | Error response.
    DeleteSubscriptionsSubscriptionExposedIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
