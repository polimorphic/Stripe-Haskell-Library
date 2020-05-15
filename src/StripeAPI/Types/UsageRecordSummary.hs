{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.UsageRecordSummary where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified StripeAPI.Common
import StripeAPI.Types.Period

data UsageRecordSummary
    = UsageRecordSummary {usageRecordSummaryId :: GHC.Base.String,
                          usageRecordSummaryInvoice :: (GHC.Maybe.Maybe GHC.Base.String),
                          usageRecordSummaryLivemode :: GHC.Types.Bool,
                          usageRecordSummaryObject :: UsageRecordSummaryObject',
                          usageRecordSummaryPeriod :: Period,
                          usageRecordSummarySubscriptionItem :: GHC.Base.String,
                          usageRecordSummaryTotalUsage :: GHC.Integer.Type.Integer}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data UsageRecordSummaryObject'
    = UsageRecordSummaryObject'EnumOther Data.Aeson.Types.Internal.Value
    | UsageRecordSummaryObject'EnumTyped GHC.Base.String
    | UsageRecordSummaryObject'EnumStringUsageRecordSummary
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON UsageRecordSummaryObject'
    where toJSON (UsageRecordSummaryObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (UsageRecordSummaryObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (UsageRecordSummaryObject'EnumStringUsageRecordSummary) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "usage_record_summary"
instance Data.Aeson.FromJSON UsageRecordSummaryObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "usage_record_summary")
                                          then UsageRecordSummaryObject'EnumStringUsageRecordSummary
                                          else UsageRecordSummaryObject'EnumOther val)
instance Data.Aeson.ToJSON UsageRecordSummary
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (usageRecordSummaryId obj) : (Data.Aeson..=) "invoice" (usageRecordSummaryInvoice obj) : (Data.Aeson..=) "livemode" (usageRecordSummaryLivemode obj) : (Data.Aeson..=) "object" (usageRecordSummaryObject obj) : (Data.Aeson..=) "period" (usageRecordSummaryPeriod obj) : (Data.Aeson..=) "subscription_item" (usageRecordSummarySubscriptionItem obj) : (Data.Aeson..=) "total_usage" (usageRecordSummaryTotalUsage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (usageRecordSummaryId obj) GHC.Base.<> ((Data.Aeson..=) "invoice" (usageRecordSummaryInvoice obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (usageRecordSummaryLivemode obj) GHC.Base.<> ((Data.Aeson..=) "object" (usageRecordSummaryObject obj) GHC.Base.<> ((Data.Aeson..=) "period" (usageRecordSummaryPeriod obj) GHC.Base.<> ((Data.Aeson..=) "subscription_item" (usageRecordSummarySubscriptionItem obj) GHC.Base.<> (Data.Aeson..=) "total_usage" (usageRecordSummaryTotalUsage obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON UsageRecordSummary
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "UsageRecordSummary" (\obj -> ((((((GHC.Base.pure UsageRecordSummary GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subscription_item")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_usage"))