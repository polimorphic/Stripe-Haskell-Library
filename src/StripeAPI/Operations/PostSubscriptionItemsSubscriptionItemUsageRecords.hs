-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postSubscriptionItemsSubscriptionItemUsageRecords
module StripeAPI.Operations.PostSubscriptionItemsSubscriptionItemUsageRecords where

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

-- | > POST /v1/subscription_items/{subscription_item}/usage_records
-- 
-- \<p>Creates a usage record for a specified subscription item and date, and fills it with a quantity.\<\/p>
-- 
-- \<p>Usage records provide \<code>quantity\<\/code> information that Stripe uses to track how much a customer is using your service. With usage information and the pricing model set up by the \<a href=\"https:\/\/stripe.com\/docs\/billing\/subscriptions\/metered-billing\">metered billing\<\/a> plan, Stripe helps you send accurate invoices to your customers.\<\/p>
-- 
-- \<p>The default calculation for usage is to add up all the \<code>quantity\<\/code> values of the usage records within a billing period. You can change this default behavior with the billing plan’s \<code>aggregate_usage\<\/code> \<a href=\"\/docs\/api\/plans\/create\#create_plan-aggregate_usage\">parameter\<\/a>. When there is more than one usage record with the same timestamp, Stripe adds the \<code>quantity\<\/code> values together. In most cases, this is the desired resolution, however, you can change this behavior with the \<code>action\<\/code> parameter.\<\/p>
-- 
-- \<p>The default pricing model for metered billing is \<a href=\"\/docs\/api\/plans\/object\#plan_object-billing_scheme\">per-unit pricing\<\/a>. For finer granularity, you can configure metered billing to have a \<a href=\"https:\/\/stripe.com\/docs\/billing\/subscriptions\/tiers\">tiered pricing\<\/a> model.\<\/p>
postSubscriptionItemsSubscriptionItemUsageRecords :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ subscription_item
  -> PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostSubscriptionItemsSubscriptionItemUsageRecordsResponse) -- ^ Monadic computation which returns the result of the operation
postSubscriptionItemsSubscriptionItemUsageRecords subscriptionItem
                                                  body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSubscriptionItemsSubscriptionItemUsageRecordsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsSubscriptionItemUsageRecordsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      UsageRecord)
                                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSubscriptionItemsSubscriptionItemUsageRecordsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/subscription_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel subscriptionItem)) GHC.Base.++ "/usage_records"))) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/subscription_items\/{subscription_item}\/usage_records.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody = PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody {
  -- | action: Valid values are \`increment\` (default) or \`set\`. When using \`increment\` the specified \`quantity\` will be added to the usage at the specified timestamp. The \`set\` action will overwrite the usage quantity at that timestamp. If the subscription has [billing thresholds](https:\/\/stripe.com\/docs\/api\/subscriptions\/object\#subscription_object-billing_thresholds), \`increment\` is the only allowed value.
  postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction :: (GHC.Maybe.Maybe PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction')
  -- | expand: Specifies which fields in the response should be expanded.
  , postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | quantity: The usage quantity for the specified timestamp.
  , postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyQuantity :: GHC.Types.Int
  -- | timestamp: The timestamp for the usage event. This timestamp must be within the current billing period of the subscription of the provided \`subscription_item\`, and must not be in the future. When passing \`\"now\"\`, Stripe records usage for the current time. Default is \`\"now\"\` if a value is not provided.
  , postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp :: (GHC.Maybe.Maybe PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("action" Data.Aeson.Types.ToJSON..=)) (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyExpand obj) : ["quantity" Data.Aeson.Types.ToJSON..= postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyQuantity obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timestamp" Data.Aeson.Types.ToJSON..=)) (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("action" Data.Aeson.Types.ToJSON..=)) (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyExpand obj) : ["quantity" Data.Aeson.Types.ToJSON..= postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyQuantity obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("timestamp" Data.Aeson.Types.ToJSON..=)) (postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody" (\obj -> (((GHC.Base.pure PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "timestamp"))
-- | Create a new 'PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody' with all required fields.
mkPostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody :: GHC.Types.Int -- ^ 'postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyQuantity'
  -> PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody
mkPostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyQuantity = PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBody{postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction = GHC.Maybe.Nothing,
                                                                                                                                                                                                   postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                                                                                                                   postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyQuantity = postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyQuantity,
                                                                                                                                                                                                   postSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/subscription_items\/{subscription_item}\/usage_records.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.action@ in the specification.
-- 
-- Valid values are \`increment\` (default) or \`set\`. When using \`increment\` the specified \`quantity\` will be added to the usage at the specified timestamp. The \`set\` action will overwrite the usage quantity at that timestamp. If the subscription has [billing thresholds](https:\/\/stripe.com\/docs\/api\/subscriptions\/object\#subscription_object-billing_thresholds), \`increment\` is the only allowed value.
data PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction' =
   PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumIncrement -- ^ Represents the JSON value @"increment"@
  | PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumSet -- ^ Represents the JSON value @"set"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'
    where toJSON (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'Other val) = val
          toJSON (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumIncrement) = "increment"
          toJSON (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumSet) = "set"
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "increment" -> PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumIncrement
                                            | val GHC.Classes.== "set" -> PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'EnumSet
                                            | GHC.Base.otherwise -> PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyAction'Other val)
-- | Defines the oneOf schema located at @paths.\/v1\/subscription_items\/{subscription_item}\/usage_records.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.timestamp.anyOf@ in the specification.
-- 
-- The timestamp for the usage event. This timestamp must be within the current billing period of the subscription of the provided \`subscription_item\`, and must not be in the future. When passing \`\"now\"\`, Stripe records usage for the current time. Default is \`\"now\"\` if a value is not provided.
data PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp'Variants =
   PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp'Now -- ^ Represents the JSON value @"now"@
  | PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp'Variants
    where toJSON (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp'Int a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp'Now) = "now"
instance Data.Aeson.Types.FromJSON.FromJSON PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp'Variants
    where parseJSON val = if | val GHC.Classes.== "now" -> GHC.Base.pure PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp'Now
                             | GHC.Base.otherwise -> case (PostSubscriptionItemsSubscriptionItemUsageRecordsRequestBodyTimestamp'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                         Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                                                         Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postSubscriptionItemsSubscriptionItemUsageRecords'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSubscriptionItemsSubscriptionItemUsageRecordsResponseError' is used.
data PostSubscriptionItemsSubscriptionItemUsageRecordsResponse =
   PostSubscriptionItemsSubscriptionItemUsageRecordsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSubscriptionItemsSubscriptionItemUsageRecordsResponse200 UsageRecord -- ^ Successful response.
  | PostSubscriptionItemsSubscriptionItemUsageRecordsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
