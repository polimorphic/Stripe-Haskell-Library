{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postPaymentIntentsIntentCapture
module StripeAPI.Operations.PostPaymentIntentsIntentCapture where

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

-- | > POST /v1/payment_intents/{intent}/capture
-- 
-- \<p>Capture the funds of an existing uncaptured PaymentIntent when its status is \<code>requires_capture\<\/code>.\<\/p>
-- 
-- \<p>Uncaptured PaymentIntents will be canceled exactly seven days after they are created.\<\/p>
-- 
-- \<p>Learn more about \<a href=\"\/docs\/payments\/capture-later\">separate authorization and capture\<\/a>.\<\/p>
postPaymentIntentsIntentCapture :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                             -- ^ intent | Constraints: Maximum length of 5000
  -> PostPaymentIntentsIntentCaptureRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentCaptureResponse)) -- ^ Monad containing the result of the operation
postPaymentIntentsIntentCapture config
                                intent
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentCaptureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCaptureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                               PaymentIntent)
                                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCaptureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 Error)
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents/{intent}/capture
-- 
-- The same as 'postPaymentIntentsIntentCapture' but returns the raw 'Data.ByteString.Char8.ByteString'
postPaymentIntentsIntentCaptureRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      StripeAPI.Common.Configuration s ->
                                      GHC.Base.String ->
                                      PostPaymentIntentsIntentCaptureRequestBody ->
                                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentCaptureRaw config
                                   intent
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents/{intent}/capture
-- 
-- Monadic version of 'postPaymentIntentsIntentCapture' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentIntentsIntentCaptureM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                  StripeAPI.Common.SecurityScheme s) =>
                                    GHC.Base.String ->
                                    PostPaymentIntentsIntentCaptureRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentCaptureResponse))
postPaymentIntentsIntentCaptureM intent
                                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentCaptureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCaptureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                PaymentIntent)
                                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCaptureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/payment_intents/{intent}/capture
-- 
-- Monadic version of 'postPaymentIntentsIntentCaptureRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postPaymentIntentsIntentCaptureRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                     StripeAPI.Common.SecurityScheme s) =>
                                       GHC.Base.String ->
                                       PostPaymentIntentsIntentCaptureRequestBody ->
                                       Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                          m
                                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPaymentIntentsIntentCaptureRawM intent
                                    body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/payment_intents/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.++ "/capture"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postPaymentIntentsIntentCaptureRequestBody
-- 
-- 
data PostPaymentIntentsIntentCaptureRequestBody = PostPaymentIntentsIntentCaptureRequestBody {
  -- | amount_to_capture: The amount to capture from the PaymentIntent, which must be less than or equal to the original amount. Any additional amount will be automatically refunded. Defaults to the full \`amount_capturable\` if not provided.
  postPaymentIntentsIntentCaptureRequestBodyAmountToCapture :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | application_fee_amount: The amount of the application fee (if any) that will be applied to the
  -- payment and transferred to the application owner\'s Stripe account. For
  -- more information, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
  , postPaymentIntentsIntentCaptureRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentIntentsIntentCaptureRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | statement_descriptor: For non-card charges, you can use this value as the complete description that appears on your customers’ statements. Must contain at least one letter, maximum 22 characters.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postPaymentIntentsIntentCaptureRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | statement_descriptor_suffix: Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postPaymentIntentsIntentCaptureRequestBodyStatementDescriptorSuffix :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | transfer_data: The parameters used to automatically create a Transfer when the payment
  -- is captured. For more information, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
  , postPaymentIntentsIntentCaptureRequestBodyTransferData :: (GHC.Maybe.Maybe PostPaymentIntentsIntentCaptureRequestBodyTransferData')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentCaptureRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount_to_capture" (postPaymentIntentsIntentCaptureRequestBodyAmountToCapture obj) : (Data.Aeson..=) "application_fee_amount" (postPaymentIntentsIntentCaptureRequestBodyApplicationFeeAmount obj) : (Data.Aeson..=) "expand" (postPaymentIntentsIntentCaptureRequestBodyExpand obj) : (Data.Aeson..=) "statement_descriptor" (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptor obj) : (Data.Aeson..=) "statement_descriptor_suffix" (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptorSuffix obj) : (Data.Aeson..=) "transfer_data" (postPaymentIntentsIntentCaptureRequestBodyTransferData obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount_to_capture" (postPaymentIntentsIntentCaptureRequestBodyAmountToCapture obj) GHC.Base.<> ((Data.Aeson..=) "application_fee_amount" (postPaymentIntentsIntentCaptureRequestBodyApplicationFeeAmount obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPaymentIntentsIntentCaptureRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor_suffix" (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptorSuffix obj) GHC.Base.<> (Data.Aeson..=) "transfer_data" (postPaymentIntentsIntentCaptureRequestBodyTransferData obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentCaptureRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentCaptureRequestBody" (\obj -> (((((GHC.Base.pure PostPaymentIntentsIntentCaptureRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_to_capture")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfer_data"))
-- | Defines the data type for the schema postPaymentIntentsIntentCaptureRequestBodyTransfer_data\'
-- 
-- The parameters used to automatically create a Transfer when the payment
-- is captured. For more information, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
data PostPaymentIntentsIntentCaptureRequestBodyTransferData' = PostPaymentIntentsIntentCaptureRequestBodyTransferData' {
  -- | amount
  postPaymentIntentsIntentCaptureRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPaymentIntentsIntentCaptureRequestBodyTransferData'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (postPaymentIntentsIntentCaptureRequestBodyTransferData'Amount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (postPaymentIntentsIntentCaptureRequestBodyTransferData'Amount obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentCaptureRequestBodyTransferData'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentCaptureRequestBodyTransferData'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentCaptureRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount"))
-- | Represents a response of the operation 'postPaymentIntentsIntentCapture'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentIntentsIntentCaptureResponseError' is used.
data PostPaymentIntentsIntentCaptureResponse =                   
   PostPaymentIntentsIntentCaptureResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostPaymentIntentsIntentCaptureResponse200 PaymentIntent     -- ^ Successful response.
  | PostPaymentIntentsIntentCaptureResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
