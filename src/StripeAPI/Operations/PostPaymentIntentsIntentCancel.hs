-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postPaymentIntentsIntentCancel
module StripeAPI.Operations.PostPaymentIntentsIntentCancel where

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

-- | > POST /v1/payment_intents/{intent}/cancel
-- 
-- \<p>A PaymentIntent object can be canceled when it is in one of these statuses: \<code>requires_payment_method\<\/code>, \<code>requires_capture\<\/code>, \<code>requires_confirmation\<\/code>, \<code>requires_action\<\/code>, or \<code>processing\<\/code>. \<\/p>
-- 
-- \<p>Once canceled, no additional charges will be made by the PaymentIntent and any operations on the PaymentIntent will fail with an error. For PaymentIntents with \<code>status=’requires_capture’\<\/code>, the remaining \<code>amount_capturable\<\/code> will automatically be refunded. \<\/p>
-- 
-- \<p>You cannot cancel the PaymentIntent for a Checkout Session. \<a href=\"\/docs\/api\/checkout\/sessions\/expire\">Expire the Checkout Session\<\/a> instead\<\/p>
postPaymentIntentsIntentCancel :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ intent | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostPaymentIntentsIntentCancelRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentCancelResponse) -- ^ Monadic computation which returns the result of the operation
postPaymentIntentsIntentCancel intent
                               body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentCancelResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCancelResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             PaymentIntent)
                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCancelResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/cancel"))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/payment_intents\/{intent}\/cancel.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostPaymentIntentsIntentCancelRequestBody = PostPaymentIntentsIntentCancelRequestBody {
  -- | cancellation_reason: Reason for canceling this PaymentIntent. Possible values are \`duplicate\`, \`fraudulent\`, \`requested_by_customer\`, or \`abandoned\`
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentIntentsIntentCancelRequestBodyCancellationReason :: (GHC.Maybe.Maybe PostPaymentIntentsIntentCancelRequestBodyCancellationReason')
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentIntentsIntentCancelRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentIntentsIntentCancelRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_reason" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCancelRequestBodyCancellationReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCancelRequestBodyExpand obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cancellation_reason" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCancelRequestBodyCancellationReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCancelRequestBodyExpand obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentCancelRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentCancelRequestBody" (\obj -> (GHC.Base.pure PostPaymentIntentsIntentCancelRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cancellation_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))
-- | Create a new 'PostPaymentIntentsIntentCancelRequestBody' with all required fields.
mkPostPaymentIntentsIntentCancelRequestBody :: PostPaymentIntentsIntentCancelRequestBody
mkPostPaymentIntentsIntentCancelRequestBody = PostPaymentIntentsIntentCancelRequestBody{postPaymentIntentsIntentCancelRequestBodyCancellationReason = GHC.Maybe.Nothing,
                                                                                        postPaymentIntentsIntentCancelRequestBodyExpand = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/payment_intents\/{intent}\/cancel.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.cancellation_reason@ in the specification.
-- 
-- Reason for canceling this PaymentIntent. Possible values are \`duplicate\`, \`fraudulent\`, \`requested_by_customer\`, or \`abandoned\`
data PostPaymentIntentsIntentCancelRequestBodyCancellationReason' =
   PostPaymentIntentsIntentCancelRequestBodyCancellationReason'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostPaymentIntentsIntentCancelRequestBodyCancellationReason'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumAbandoned -- ^ Represents the JSON value @"abandoned"@
  | PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumDuplicate -- ^ Represents the JSON value @"duplicate"@
  | PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumFraudulent -- ^ Represents the JSON value @"fraudulent"@
  | PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumRequestedByCustomer -- ^ Represents the JSON value @"requested_by_customer"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentIntentsIntentCancelRequestBodyCancellationReason'
    where toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'Other val) = val
          toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumAbandoned) = "abandoned"
          toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumDuplicate) = "duplicate"
          toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumFraudulent) = "fraudulent"
          toJSON (PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumRequestedByCustomer) = "requested_by_customer"
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentCancelRequestBodyCancellationReason'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "abandoned" -> PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumAbandoned
                                            | val GHC.Classes.== "duplicate" -> PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumDuplicate
                                            | val GHC.Classes.== "fraudulent" -> PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumFraudulent
                                            | val GHC.Classes.== "requested_by_customer" -> PostPaymentIntentsIntentCancelRequestBodyCancellationReason'EnumRequestedByCustomer
                                            | GHC.Base.otherwise -> PostPaymentIntentsIntentCancelRequestBodyCancellationReason'Other val)
-- | Represents a response of the operation 'postPaymentIntentsIntentCancel'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentIntentsIntentCancelResponseError' is used.
data PostPaymentIntentsIntentCancelResponse =
   PostPaymentIntentsIntentCancelResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostPaymentIntentsIntentCancelResponse200 PaymentIntent -- ^ Successful response.
  | PostPaymentIntentsIntentCancelResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
