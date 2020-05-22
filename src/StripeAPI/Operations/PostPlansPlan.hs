{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postPlansPlan
module StripeAPI.Operations.PostPlansPlan where

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

-- | > POST /v1/plans/{plan}
-- 
-- \<p>Updates the specified plan by setting the values of the parameters passed. Any parameters not provided are left unchanged. By design, you cannot change a plan’s ID, amount, currency, or billing cycle.\<\/p>
postPlansPlan :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                           -- ^ plan | Constraints: Maximum length of 5000
  -> PostPlansPlanRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostPlansPlanResponse)) -- ^ Monad containing the result of the operation
postPlansPlan config
              plan
              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPlansPlanResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPlansPlanResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Plan)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPlansPlanResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/plans/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel plan)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/plans/{plan}
-- 
-- The same as 'postPlansPlan' but returns the raw 'Data.ByteString.Char8.ByteString'
postPlansPlanRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                  StripeAPI.Common.SecurityScheme s) =>
                    StripeAPI.Common.Configuration s ->
                    GHC.Base.String ->
                    PostPlansPlanRequestBody ->
                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPlansPlanRaw config
                 plan
                 body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/plans/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel plan)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/plans/{plan}
-- 
-- Monadic version of 'postPlansPlan' (use with 'StripeAPI.Common.runWithConfiguration')
postPlansPlanM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                StripeAPI.Common.SecurityScheme s) =>
                  GHC.Base.String ->
                  PostPlansPlanRequestBody ->
                  Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response PostPlansPlanResponse))
postPlansPlanM plan
               body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostPlansPlanResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPlansPlanResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          Plan)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPlansPlanResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/plans/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel plan)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/plans/{plan}
-- 
-- Monadic version of 'postPlansPlanRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postPlansPlanRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                   StripeAPI.Common.SecurityScheme s) =>
                     GHC.Base.String ->
                     PostPlansPlanRequestBody ->
                     Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                        m
                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postPlansPlanRawM plan
                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/plans/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel plan)) GHC.Base.++ ""))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postPlansPlanRequestBody
-- 
-- 
data PostPlansPlanRequestBody = PostPlansPlanRequestBody {
  -- | active: Whether the plan is currently available for new subscriptions.
  postPlansPlanRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | expand: Specifies which fields in the response should be expanded.
  , postPlansPlanRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postPlansPlanRequestBodyMetadata :: (GHC.Maybe.Maybe PostPlansPlanRequestBodyMetadata')
  -- | nickname: A brief description of the plan, hidden from customers.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPlansPlanRequestBodyNickname :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | product: The product the plan belongs to. Note that after updating, statement descriptors and line items of the plan in active subscriptions will be affected.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPlansPlanRequestBodyProduct :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | trial_period_days: Default number of trial days when subscribing a customer to this plan using [\`trial_from_plan=true\`](https:\/\/stripe.com\/docs\/api\#create_subscription-trial_from_plan).
  , postPlansPlanRequestBodyTrialPeriodDays :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansPlanRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (postPlansPlanRequestBodyActive obj) : (Data.Aeson..=) "expand" (postPlansPlanRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postPlansPlanRequestBodyMetadata obj) : (Data.Aeson..=) "nickname" (postPlansPlanRequestBodyNickname obj) : (Data.Aeson..=) "product" (postPlansPlanRequestBodyProduct obj) : (Data.Aeson..=) "trial_period_days" (postPlansPlanRequestBodyTrialPeriodDays obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (postPlansPlanRequestBodyActive obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postPlansPlanRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postPlansPlanRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "nickname" (postPlansPlanRequestBodyNickname obj) GHC.Base.<> ((Data.Aeson..=) "product" (postPlansPlanRequestBodyProduct obj) GHC.Base.<> (Data.Aeson..=) "trial_period_days" (postPlansPlanRequestBodyTrialPeriodDays obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostPlansPlanRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPlansPlanRequestBody" (\obj -> (((((GHC.Base.pure PostPlansPlanRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "nickname")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "product")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "trial_period_days"))
-- | Defines the data type for the schema postPlansPlanRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostPlansPlanRequestBodyMetadata' = PostPlansPlanRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostPlansPlanRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostPlansPlanRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPlansPlanRequestBodyMetadata'" (\obj -> GHC.Base.pure PostPlansPlanRequestBodyMetadata')
-- | Represents a response of the operation 'postPlansPlan'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPlansPlanResponseError' is used.
data PostPlansPlanResponse =                   
   PostPlansPlanResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | PostPlansPlanResponse200 Plan              -- ^ Successful response.
  | PostPlansPlanResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
