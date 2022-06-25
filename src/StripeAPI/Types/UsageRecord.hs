-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema UsageRecord
module StripeAPI.Types.UsageRecord where

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

-- | Defines the object schema located at @components.schemas.usage_record@ in the specification.
-- 
-- Usage records allow you to report customer usage and metrics to Stripe for
-- metered billing of subscription prices.
-- 
-- Related guide: [Metered Billing](https:\/\/stripe.com\/docs\/billing\/subscriptions\/metered-billing).
data UsageRecord = UsageRecord {
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  usageRecordId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , usageRecordLivemode :: GHC.Types.Bool
  -- | quantity: The usage quantity for the specified date.
  , usageRecordQuantity :: GHC.Types.Int
  -- | subscription_item: The ID of the subscription item this usage record contains data for.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , usageRecordSubscriptionItem :: Data.Text.Internal.Text
  -- | timestamp: The timestamp when this usage occurred.
  , usageRecordTimestamp :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON UsageRecord
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= usageRecordId obj] : ["livemode" Data.Aeson.Types.ToJSON..= usageRecordLivemode obj] : ["quantity" Data.Aeson.Types.ToJSON..= usageRecordQuantity obj] : ["subscription_item" Data.Aeson.Types.ToJSON..= usageRecordSubscriptionItem obj] : ["timestamp" Data.Aeson.Types.ToJSON..= usageRecordTimestamp obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "usage_record"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= usageRecordId obj] : ["livemode" Data.Aeson.Types.ToJSON..= usageRecordLivemode obj] : ["quantity" Data.Aeson.Types.ToJSON..= usageRecordQuantity obj] : ["subscription_item" Data.Aeson.Types.ToJSON..= usageRecordSubscriptionItem obj] : ["timestamp" Data.Aeson.Types.ToJSON..= usageRecordTimestamp obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "usage_record"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON UsageRecord
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UsageRecord" (\obj -> ((((GHC.Base.pure UsageRecord GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subscription_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "timestamp"))
-- | Create a new 'UsageRecord' with all required fields.
mkUsageRecord :: Data.Text.Internal.Text -- ^ 'usageRecordId'
  -> GHC.Types.Bool -- ^ 'usageRecordLivemode'
  -> GHC.Types.Int -- ^ 'usageRecordQuantity'
  -> Data.Text.Internal.Text -- ^ 'usageRecordSubscriptionItem'
  -> GHC.Types.Int -- ^ 'usageRecordTimestamp'
  -> UsageRecord
mkUsageRecord usageRecordId usageRecordLivemode usageRecordQuantity usageRecordSubscriptionItem usageRecordTimestamp = UsageRecord{usageRecordId = usageRecordId,
                                                                                                                                   usageRecordLivemode = usageRecordLivemode,
                                                                                                                                   usageRecordQuantity = usageRecordQuantity,
                                                                                                                                   usageRecordSubscriptionItem = usageRecordSubscriptionItem,
                                                                                                                                   usageRecordTimestamp = usageRecordTimestamp}
