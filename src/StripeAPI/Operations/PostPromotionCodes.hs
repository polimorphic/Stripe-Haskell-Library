-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postPromotionCodes
module StripeAPI.Operations.PostPromotionCodes where

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

-- | > POST /v1/promotion_codes
-- 
-- \<p>A promotion code points to a coupon. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.\<\/p>
postPromotionCodes :: forall m . StripeAPI.Common.MonadHTTP m => PostPromotionCodesRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPromotionCodesResponse) -- ^ Monadic computation which returns the result of the operation
postPromotionCodes body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPromotionCodesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPromotionCodesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         PromotionCode)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPromotionCodesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/promotion_codes") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/promotion_codes.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostPromotionCodesRequestBody = PostPromotionCodesRequestBody {
  -- | active: Whether the promotion code is currently active.
  postPromotionCodesRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | code: The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for a specific customer. If left blank, we will generate one automatically.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 500
  , postPromotionCodesRequestBodyCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | coupon: The coupon for this promotion code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPromotionCodesRequestBodyCoupon :: Data.Text.Internal.Text
  -- | customer: The customer that this promotion code can be used by. If not set, the promotion code can be used by all customers.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPromotionCodesRequestBodyCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postPromotionCodesRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | expires_at: The timestamp at which this promotion code will expire. If the coupon has specified a \`redeems_by\`, then this value cannot be after the coupon\'s \`redeems_by\`.
  , postPromotionCodesRequestBodyExpiresAt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | max_redemptions: A positive integer specifying the number of times the promotion code can be redeemed. If the coupon has specified a \`max_redemptions\`, then this value cannot be greater than the coupon\'s \`max_redemptions\`.
  , postPromotionCodesRequestBodyMaxRedemptions :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postPromotionCodesRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | restrictions: Settings that restrict the redemption of the promotion code.
  , postPromotionCodesRequestBodyRestrictions :: (GHC.Maybe.Maybe PostPromotionCodesRequestBodyRestrictions')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPromotionCodesRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyCode obj) : ["coupon" Data.Aeson.Types.ToJSON..= postPromotionCodesRequestBodyCoupon obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyExpiresAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_redemptions" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyMaxRedemptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("restrictions" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyRestrictions obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyCode obj) : ["coupon" Data.Aeson.Types.ToJSON..= postPromotionCodesRequestBodyCoupon obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyExpiresAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("max_redemptions" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyMaxRedemptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("restrictions" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyRestrictions obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPromotionCodesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPromotionCodesRequestBody" (\obj -> ((((((((GHC.Base.pure PostPromotionCodesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "max_redemptions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "restrictions"))
-- | Create a new 'PostPromotionCodesRequestBody' with all required fields.
mkPostPromotionCodesRequestBody :: Data.Text.Internal.Text -- ^ 'postPromotionCodesRequestBodyCoupon'
  -> PostPromotionCodesRequestBody
mkPostPromotionCodesRequestBody postPromotionCodesRequestBodyCoupon = PostPromotionCodesRequestBody{postPromotionCodesRequestBodyActive = GHC.Maybe.Nothing,
                                                                                                    postPromotionCodesRequestBodyCode = GHC.Maybe.Nothing,
                                                                                                    postPromotionCodesRequestBodyCoupon = postPromotionCodesRequestBodyCoupon,
                                                                                                    postPromotionCodesRequestBodyCustomer = GHC.Maybe.Nothing,
                                                                                                    postPromotionCodesRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                    postPromotionCodesRequestBodyExpiresAt = GHC.Maybe.Nothing,
                                                                                                    postPromotionCodesRequestBodyMaxRedemptions = GHC.Maybe.Nothing,
                                                                                                    postPromotionCodesRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                                                    postPromotionCodesRequestBodyRestrictions = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/promotion_codes.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.restrictions@ in the specification.
-- 
-- Settings that restrict the redemption of the promotion code.
data PostPromotionCodesRequestBodyRestrictions' = PostPromotionCodesRequestBodyRestrictions' {
  -- | first_time_transaction
  postPromotionCodesRequestBodyRestrictions'FirstTimeTransaction :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | minimum_amount
  , postPromotionCodesRequestBodyRestrictions'MinimumAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | minimum_amount_currency
  , postPromotionCodesRequestBodyRestrictions'MinimumAmountCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPromotionCodesRequestBodyRestrictions'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_time_transaction" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyRestrictions'FirstTimeTransaction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum_amount" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyRestrictions'MinimumAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum_amount_currency" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyRestrictions'MinimumAmountCurrency obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("first_time_transaction" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyRestrictions'FirstTimeTransaction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum_amount" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyRestrictions'MinimumAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("minimum_amount_currency" Data.Aeson.Types.ToJSON..=)) (postPromotionCodesRequestBodyRestrictions'MinimumAmountCurrency obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPromotionCodesRequestBodyRestrictions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPromotionCodesRequestBodyRestrictions'" (\obj -> ((GHC.Base.pure PostPromotionCodesRequestBodyRestrictions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "first_time_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "minimum_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "minimum_amount_currency"))
-- | Create a new 'PostPromotionCodesRequestBodyRestrictions'' with all required fields.
mkPostPromotionCodesRequestBodyRestrictions' :: PostPromotionCodesRequestBodyRestrictions'
mkPostPromotionCodesRequestBodyRestrictions' = PostPromotionCodesRequestBodyRestrictions'{postPromotionCodesRequestBodyRestrictions'FirstTimeTransaction = GHC.Maybe.Nothing,
                                                                                          postPromotionCodesRequestBodyRestrictions'MinimumAmount = GHC.Maybe.Nothing,
                                                                                          postPromotionCodesRequestBodyRestrictions'MinimumAmountCurrency = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postPromotionCodes'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPromotionCodesResponseError' is used.
data PostPromotionCodesResponse =
   PostPromotionCodesResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostPromotionCodesResponse200 PromotionCode -- ^ Successful response.
  | PostPromotionCodesResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
