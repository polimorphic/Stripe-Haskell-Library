-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postPaymentIntentsIntentVerifyMicrodeposits
module StripeAPI.Operations.PostPaymentIntentsIntentVerifyMicrodeposits where

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

-- | > POST /v1/payment_intents/{intent}/verify_microdeposits
-- 
-- \<p>Verifies microdeposits on a PaymentIntent object.\<\/p>
postPaymentIntentsIntentVerifyMicrodeposits :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ intent | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostPaymentIntentsIntentVerifyMicrodepositsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentVerifyMicrodepositsResponse) -- ^ Monadic computation which returns the result of the operation
postPaymentIntentsIntentVerifyMicrodeposits intent
                                            body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentVerifyMicrodepositsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentVerifyMicrodepositsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    PaymentIntent)
                                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentVerifyMicrodepositsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/verify_microdeposits"))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/payment_intents\/{intent}\/verify_microdeposits.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostPaymentIntentsIntentVerifyMicrodepositsRequestBody = PostPaymentIntentsIntentVerifyMicrodepositsRequestBody {
  -- | amounts: Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
  postPaymentIntentsIntentVerifyMicrodepositsRequestBodyAmounts :: (GHC.Maybe.Maybe ([GHC.Types.Int]))
  -- | client_secret: The client secret of the PaymentIntent.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentVerifyMicrodepositsRequestBodyClientSecret :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | descriptor_code: A six-character code starting with SM present in the microdeposit sent to the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentIntentsIntentVerifyMicrodepositsRequestBodyDescriptorCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentIntentsIntentVerifyMicrodepositsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentIntentsIntentVerifyMicrodepositsRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amounts" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentVerifyMicrodepositsRequestBodyAmounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_secret" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentVerifyMicrodepositsRequestBodyClientSecret obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("descriptor_code" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentVerifyMicrodepositsRequestBodyDescriptorCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentVerifyMicrodepositsRequestBodyExpand obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amounts" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentVerifyMicrodepositsRequestBodyAmounts obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("client_secret" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentVerifyMicrodepositsRequestBodyClientSecret obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("descriptor_code" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentVerifyMicrodepositsRequestBodyDescriptorCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentVerifyMicrodepositsRequestBodyExpand obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentVerifyMicrodepositsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentVerifyMicrodepositsRequestBody" (\obj -> (((GHC.Base.pure PostPaymentIntentsIntentVerifyMicrodepositsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "descriptor_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))
-- | Create a new 'PostPaymentIntentsIntentVerifyMicrodepositsRequestBody' with all required fields.
mkPostPaymentIntentsIntentVerifyMicrodepositsRequestBody :: PostPaymentIntentsIntentVerifyMicrodepositsRequestBody
mkPostPaymentIntentsIntentVerifyMicrodepositsRequestBody = PostPaymentIntentsIntentVerifyMicrodepositsRequestBody{postPaymentIntentsIntentVerifyMicrodepositsRequestBodyAmounts = GHC.Maybe.Nothing,
                                                                                                                  postPaymentIntentsIntentVerifyMicrodepositsRequestBodyClientSecret = GHC.Maybe.Nothing,
                                                                                                                  postPaymentIntentsIntentVerifyMicrodepositsRequestBodyDescriptorCode = GHC.Maybe.Nothing,
                                                                                                                  postPaymentIntentsIntentVerifyMicrodepositsRequestBodyExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postPaymentIntentsIntentVerifyMicrodeposits'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentIntentsIntentVerifyMicrodepositsResponseError' is used.
data PostPaymentIntentsIntentVerifyMicrodepositsResponse =
   PostPaymentIntentsIntentVerifyMicrodepositsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostPaymentIntentsIntentVerifyMicrodepositsResponse200 PaymentIntent -- ^ Successful response.
  | PostPaymentIntentsIntentVerifyMicrodepositsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
