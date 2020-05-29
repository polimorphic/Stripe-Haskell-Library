{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SubscriptionPendingInvoiceItemInterval
module StripeAPI.Types.SubscriptionPendingInvoiceItemInterval where

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

-- | Defines the data type for the schema subscription_pending_invoice_item_interval
-- 
-- 
data SubscriptionPendingInvoiceItemInterval = SubscriptionPendingInvoiceItemInterval {
  -- | interval: Specifies invoicing frequency. Either \`day\`, \`week\`, \`month\` or \`year\`.
  subscriptionPendingInvoiceItemIntervalInterval :: SubscriptionPendingInvoiceItemIntervalInterval'
  -- | interval_count: The number of intervals between invoices. For example, \`interval=month\` and \`interval_count=3\` bills every 3 months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks).
  , subscriptionPendingInvoiceItemIntervalIntervalCount :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SubscriptionPendingInvoiceItemInterval
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "interval" (subscriptionPendingInvoiceItemIntervalInterval obj) : (Data.Aeson..=) "interval_count" (subscriptionPendingInvoiceItemIntervalIntervalCount obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "interval" (subscriptionPendingInvoiceItemIntervalInterval obj) GHC.Base.<> (Data.Aeson..=) "interval_count" (subscriptionPendingInvoiceItemIntervalIntervalCount obj))
instance Data.Aeson.Types.FromJSON.FromJSON SubscriptionPendingInvoiceItemInterval
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SubscriptionPendingInvoiceItemInterval" (\obj -> (GHC.Base.pure SubscriptionPendingInvoiceItemInterval GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval_count"))
-- | Defines the enum schema subscription_pending_invoice_item_intervalInterval\'
-- 
-- Specifies invoicing frequency. Either \`day\`, \`week\`, \`month\` or \`year\`.
data SubscriptionPendingInvoiceItemIntervalInterval'
    = SubscriptionPendingInvoiceItemIntervalInterval'EnumOther Data.Aeson.Types.Internal.Value
    | SubscriptionPendingInvoiceItemIntervalInterval'EnumTyped Data.Text.Internal.Text
    | SubscriptionPendingInvoiceItemIntervalInterval'EnumStringDay
    | SubscriptionPendingInvoiceItemIntervalInterval'EnumStringMonth
    | SubscriptionPendingInvoiceItemIntervalInterval'EnumStringWeek
    | SubscriptionPendingInvoiceItemIntervalInterval'EnumStringYear
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SubscriptionPendingInvoiceItemIntervalInterval'
    where toJSON (SubscriptionPendingInvoiceItemIntervalInterval'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (SubscriptionPendingInvoiceItemIntervalInterval'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (SubscriptionPendingInvoiceItemIntervalInterval'EnumStringDay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day"
          toJSON (SubscriptionPendingInvoiceItemIntervalInterval'EnumStringMonth) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month"
          toJSON (SubscriptionPendingInvoiceItemIntervalInterval'EnumStringWeek) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week"
          toJSON (SubscriptionPendingInvoiceItemIntervalInterval'EnumStringYear) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year"
instance Data.Aeson.FromJSON SubscriptionPendingInvoiceItemIntervalInterval'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "day")
                                          then SubscriptionPendingInvoiceItemIntervalInterval'EnumStringDay
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "month")
                                                then SubscriptionPendingInvoiceItemIntervalInterval'EnumStringMonth
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "week")
                                                      then SubscriptionPendingInvoiceItemIntervalInterval'EnumStringWeek
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "year")
                                                            then SubscriptionPendingInvoiceItemIntervalInterval'EnumStringYear
                                                            else SubscriptionPendingInvoiceItemIntervalInterval'EnumOther val)