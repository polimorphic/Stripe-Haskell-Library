-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SubscriptionsResourcePendingUpdate
module StripeAPI.Types.SubscriptionsResourcePendingUpdate where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.SubscriptionItem

-- | Defines the object schema located at @components.schemas.subscriptions_resource_pending_update@ in the specification.
-- 
-- Pending Updates store the changes pending from a previous update that will be applied
-- to the Subscription upon successful payment.
data SubscriptionsResourcePendingUpdate = SubscriptionsResourcePendingUpdate {
  -- | billing_cycle_anchor: If the update is applied, determines the date of the first full invoice, and, for plans with \`month\` or \`year\` intervals, the day of the month for subsequent invoices. The timestamp is in UTC format.
  subscriptionsResourcePendingUpdateBillingCycleAnchor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | expires_at: The point after which the changes reflected by this update will be discarded and no longer applied.
  , subscriptionsResourcePendingUpdateExpiresAt :: GHC.Types.Int
  -- | subscription_items: List of subscription items, each with an attached plan, that will be set if the update is applied.
  , subscriptionsResourcePendingUpdateSubscriptionItems :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([SubscriptionItem])))
  -- | trial_end: Unix timestamp representing the end of the trial period the customer will get before being charged for the first time, if the update is applied.
  , subscriptionsResourcePendingUpdateTrialEnd :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | trial_from_plan: Indicates if a plan\'s \`trial_period_days\` should be applied to the subscription. Setting \`trial_end\` per subscription is preferred, and this defaults to \`false\`. Setting this flag to \`true\` together with \`trial_end\` is not allowed. See [Using trial periods on subscriptions](https:\/\/stripe.com\/docs\/billing\/subscriptions\/trials) to learn more.
  , subscriptionsResourcePendingUpdateTrialFromPlan :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SubscriptionsResourcePendingUpdate
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_cycle_anchor" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourcePendingUpdateBillingCycleAnchor obj) : ["expires_at" Data.Aeson.Types.ToJSON..= subscriptionsResourcePendingUpdateExpiresAt obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription_items" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourcePendingUpdateSubscriptionItems obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_end" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourcePendingUpdateTrialEnd obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_from_plan" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourcePendingUpdateTrialFromPlan obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_cycle_anchor" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourcePendingUpdateBillingCycleAnchor obj) : ["expires_at" Data.Aeson.Types.ToJSON..= subscriptionsResourcePendingUpdateExpiresAt obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("subscription_items" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourcePendingUpdateSubscriptionItems obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_end" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourcePendingUpdateTrialEnd obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("trial_from_plan" Data.Aeson.Types.ToJSON..=)) (subscriptionsResourcePendingUpdateTrialFromPlan obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionsResourcePendingUpdate
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionsResourcePendingUpdate" (\obj -> ((((GHC.Base.pure SubscriptionsResourcePendingUpdate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "billing_cycle_anchor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "subscription_items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "trial_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "trial_from_plan"))
-- | Create a new 'SubscriptionsResourcePendingUpdate' with all required fields.
mkSubscriptionsResourcePendingUpdate :: GHC.Types.Int -- ^ 'subscriptionsResourcePendingUpdateExpiresAt'
  -> SubscriptionsResourcePendingUpdate
mkSubscriptionsResourcePendingUpdate subscriptionsResourcePendingUpdateExpiresAt = SubscriptionsResourcePendingUpdate{subscriptionsResourcePendingUpdateBillingCycleAnchor = GHC.Maybe.Nothing,
                                                                                                                      subscriptionsResourcePendingUpdateExpiresAt = subscriptionsResourcePendingUpdateExpiresAt,
                                                                                                                      subscriptionsResourcePendingUpdateSubscriptionItems = GHC.Maybe.Nothing,
                                                                                                                      subscriptionsResourcePendingUpdateTrialEnd = GHC.Maybe.Nothing,
                                                                                                                      subscriptionsResourcePendingUpdateTrialFromPlan = GHC.Maybe.Nothing}
