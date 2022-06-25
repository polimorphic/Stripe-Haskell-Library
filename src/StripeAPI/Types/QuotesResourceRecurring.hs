-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema QuotesResourceRecurring
module StripeAPI.Types.QuotesResourceRecurring where

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
import {-# SOURCE #-} StripeAPI.Types.QuotesResourceTotalDetails

-- | Defines the object schema located at @components.schemas.quotes_resource_recurring@ in the specification.
-- 
-- 
data QuotesResourceRecurring = QuotesResourceRecurring {
  -- | amount_subtotal: Total before any discounts or taxes are applied.
  quotesResourceRecurringAmountSubtotal :: GHC.Types.Int
  -- | amount_total: Total after discounts and taxes are applied.
  , quotesResourceRecurringAmountTotal :: GHC.Types.Int
  -- | interval: The frequency at which a subscription is billed. One of \`day\`, \`week\`, \`month\` or \`year\`.
  , quotesResourceRecurringInterval :: QuotesResourceRecurringInterval'
  -- | interval_count: The number of intervals (specified in the \`interval\` attribute) between subscription billings. For example, \`interval=month\` and \`interval_count=3\` bills every 3 months.
  , quotesResourceRecurringIntervalCount :: GHC.Types.Int
  -- | total_details: 
  , quotesResourceRecurringTotalDetails :: QuotesResourceTotalDetails
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceRecurring
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount_subtotal" Data.Aeson.Types.ToJSON..= quotesResourceRecurringAmountSubtotal obj] : ["amount_total" Data.Aeson.Types.ToJSON..= quotesResourceRecurringAmountTotal obj] : ["interval" Data.Aeson.Types.ToJSON..= quotesResourceRecurringInterval obj] : ["interval_count" Data.Aeson.Types.ToJSON..= quotesResourceRecurringIntervalCount obj] : ["total_details" Data.Aeson.Types.ToJSON..= quotesResourceRecurringTotalDetails obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount_subtotal" Data.Aeson.Types.ToJSON..= quotesResourceRecurringAmountSubtotal obj] : ["amount_total" Data.Aeson.Types.ToJSON..= quotesResourceRecurringAmountTotal obj] : ["interval" Data.Aeson.Types.ToJSON..= quotesResourceRecurringInterval obj] : ["interval_count" Data.Aeson.Types.ToJSON..= quotesResourceRecurringIntervalCount obj] : ["total_details" Data.Aeson.Types.ToJSON..= quotesResourceRecurringTotalDetails obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceRecurring
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "QuotesResourceRecurring" (\obj -> ((((GHC.Base.pure QuotesResourceRecurring GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_subtotal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_total")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_details"))
-- | Create a new 'QuotesResourceRecurring' with all required fields.
mkQuotesResourceRecurring :: GHC.Types.Int -- ^ 'quotesResourceRecurringAmountSubtotal'
  -> GHC.Types.Int -- ^ 'quotesResourceRecurringAmountTotal'
  -> QuotesResourceRecurringInterval' -- ^ 'quotesResourceRecurringInterval'
  -> GHC.Types.Int -- ^ 'quotesResourceRecurringIntervalCount'
  -> QuotesResourceTotalDetails -- ^ 'quotesResourceRecurringTotalDetails'
  -> QuotesResourceRecurring
mkQuotesResourceRecurring quotesResourceRecurringAmountSubtotal quotesResourceRecurringAmountTotal quotesResourceRecurringInterval quotesResourceRecurringIntervalCount quotesResourceRecurringTotalDetails = QuotesResourceRecurring{quotesResourceRecurringAmountSubtotal = quotesResourceRecurringAmountSubtotal,
                                                                                                                                                                                                                                      quotesResourceRecurringAmountTotal = quotesResourceRecurringAmountTotal,
                                                                                                                                                                                                                                      quotesResourceRecurringInterval = quotesResourceRecurringInterval,
                                                                                                                                                                                                                                      quotesResourceRecurringIntervalCount = quotesResourceRecurringIntervalCount,
                                                                                                                                                                                                                                      quotesResourceRecurringTotalDetails = quotesResourceRecurringTotalDetails}
-- | Defines the enum schema located at @components.schemas.quotes_resource_recurring.properties.interval@ in the specification.
-- 
-- The frequency at which a subscription is billed. One of \`day\`, \`week\`, \`month\` or \`year\`.
data QuotesResourceRecurringInterval' =
   QuotesResourceRecurringInterval'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | QuotesResourceRecurringInterval'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | QuotesResourceRecurringInterval'EnumDay -- ^ Represents the JSON value @"day"@
  | QuotesResourceRecurringInterval'EnumMonth -- ^ Represents the JSON value @"month"@
  | QuotesResourceRecurringInterval'EnumWeek -- ^ Represents the JSON value @"week"@
  | QuotesResourceRecurringInterval'EnumYear -- ^ Represents the JSON value @"year"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceRecurringInterval'
    where toJSON (QuotesResourceRecurringInterval'Other val) = val
          toJSON (QuotesResourceRecurringInterval'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (QuotesResourceRecurringInterval'EnumDay) = "day"
          toJSON (QuotesResourceRecurringInterval'EnumMonth) = "month"
          toJSON (QuotesResourceRecurringInterval'EnumWeek) = "week"
          toJSON (QuotesResourceRecurringInterval'EnumYear) = "year"
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceRecurringInterval'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "day" -> QuotesResourceRecurringInterval'EnumDay
                                            | val GHC.Classes.== "month" -> QuotesResourceRecurringInterval'EnumMonth
                                            | val GHC.Classes.== "week" -> QuotesResourceRecurringInterval'EnumWeek
                                            | val GHC.Classes.== "year" -> QuotesResourceRecurringInterval'EnumYear
                                            | GHC.Base.otherwise -> QuotesResourceRecurringInterval'Other val)