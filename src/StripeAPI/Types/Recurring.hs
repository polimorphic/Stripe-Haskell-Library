-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Recurring
module StripeAPI.Types.Recurring where

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

-- | Defines the object schema located at @components.schemas.recurring@ in the specification.
-- 
-- 
data Recurring = Recurring {
  -- | aggregate_usage: Specifies a usage aggregation strategy for prices of \`usage_type=metered\`. Allowed values are \`sum\` for summing up all usage during a period, \`last_during_period\` for using the last usage record reported within a period, \`last_ever\` for using the last usage record ever (across period bounds) or \`max\` which uses the usage record with the maximum reported usage during a period. Defaults to \`sum\`.
  recurringAggregateUsage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RecurringAggregateUsage'NonNullable))
  -- | interval: The frequency at which a subscription is billed. One of \`day\`, \`week\`, \`month\` or \`year\`.
  , recurringInterval :: RecurringInterval'
  -- | interval_count: The number of intervals (specified in the \`interval\` attribute) between subscription billings. For example, \`interval=month\` and \`interval_count=3\` bills every 3 months.
  , recurringIntervalCount :: GHC.Types.Int
  -- | usage_type: Configures how the quantity per period should be determined. Can be either \`metered\` or \`licensed\`. \`licensed\` automatically bills the \`quantity\` set when adding it to a subscription. \`metered\` aggregates the total usage based on usage records. Defaults to \`licensed\`.
  , recurringUsageType :: RecurringUsageType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Recurring
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("aggregate_usage" Data.Aeson.Types.ToJSON..=)) (recurringAggregateUsage obj) : ["interval" Data.Aeson.Types.ToJSON..= recurringInterval obj] : ["interval_count" Data.Aeson.Types.ToJSON..= recurringIntervalCount obj] : ["usage_type" Data.Aeson.Types.ToJSON..= recurringUsageType obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("aggregate_usage" Data.Aeson.Types.ToJSON..=)) (recurringAggregateUsage obj) : ["interval" Data.Aeson.Types.ToJSON..= recurringInterval obj] : ["interval_count" Data.Aeson.Types.ToJSON..= recurringIntervalCount obj] : ["usage_type" Data.Aeson.Types.ToJSON..= recurringUsageType obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Recurring
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Recurring" (\obj -> (((GHC.Base.pure Recurring GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "aggregate_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_type"))
-- | Create a new 'Recurring' with all required fields.
mkRecurring :: RecurringInterval' -- ^ 'recurringInterval'
  -> GHC.Types.Int -- ^ 'recurringIntervalCount'
  -> RecurringUsageType' -- ^ 'recurringUsageType'
  -> Recurring
mkRecurring recurringInterval recurringIntervalCount recurringUsageType = Recurring{recurringAggregateUsage = GHC.Maybe.Nothing,
                                                                                    recurringInterval = recurringInterval,
                                                                                    recurringIntervalCount = recurringIntervalCount,
                                                                                    recurringUsageType = recurringUsageType}
-- | Defines the enum schema located at @components.schemas.recurring.properties.aggregate_usage@ in the specification.
-- 
-- Specifies a usage aggregation strategy for prices of \`usage_type=metered\`. Allowed values are \`sum\` for summing up all usage during a period, \`last_during_period\` for using the last usage record reported within a period, \`last_ever\` for using the last usage record ever (across period bounds) or \`max\` which uses the usage record with the maximum reported usage during a period. Defaults to \`sum\`.
data RecurringAggregateUsage'NonNullable =
   RecurringAggregateUsage'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | RecurringAggregateUsage'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | RecurringAggregateUsage'NonNullableEnumLastDuringPeriod -- ^ Represents the JSON value @"last_during_period"@
  | RecurringAggregateUsage'NonNullableEnumLastEver -- ^ Represents the JSON value @"last_ever"@
  | RecurringAggregateUsage'NonNullableEnumMax -- ^ Represents the JSON value @"max"@
  | RecurringAggregateUsage'NonNullableEnumSum -- ^ Represents the JSON value @"sum"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RecurringAggregateUsage'NonNullable
    where toJSON (RecurringAggregateUsage'NonNullableOther val) = val
          toJSON (RecurringAggregateUsage'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (RecurringAggregateUsage'NonNullableEnumLastDuringPeriod) = "last_during_period"
          toJSON (RecurringAggregateUsage'NonNullableEnumLastEver) = "last_ever"
          toJSON (RecurringAggregateUsage'NonNullableEnumMax) = "max"
          toJSON (RecurringAggregateUsage'NonNullableEnumSum) = "sum"
instance Data.Aeson.Types.FromJSON.FromJSON RecurringAggregateUsage'NonNullable
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "last_during_period" -> RecurringAggregateUsage'NonNullableEnumLastDuringPeriod
                                            | val GHC.Classes.== "last_ever" -> RecurringAggregateUsage'NonNullableEnumLastEver
                                            | val GHC.Classes.== "max" -> RecurringAggregateUsage'NonNullableEnumMax
                                            | val GHC.Classes.== "sum" -> RecurringAggregateUsage'NonNullableEnumSum
                                            | GHC.Base.otherwise -> RecurringAggregateUsage'NonNullableOther val)
-- | Defines the enum schema located at @components.schemas.recurring.properties.interval@ in the specification.
-- 
-- The frequency at which a subscription is billed. One of \`day\`, \`week\`, \`month\` or \`year\`.
data RecurringInterval' =
   RecurringInterval'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | RecurringInterval'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | RecurringInterval'EnumDay -- ^ Represents the JSON value @"day"@
  | RecurringInterval'EnumMonth -- ^ Represents the JSON value @"month"@
  | RecurringInterval'EnumWeek -- ^ Represents the JSON value @"week"@
  | RecurringInterval'EnumYear -- ^ Represents the JSON value @"year"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RecurringInterval'
    where toJSON (RecurringInterval'Other val) = val
          toJSON (RecurringInterval'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (RecurringInterval'EnumDay) = "day"
          toJSON (RecurringInterval'EnumMonth) = "month"
          toJSON (RecurringInterval'EnumWeek) = "week"
          toJSON (RecurringInterval'EnumYear) = "year"
instance Data.Aeson.Types.FromJSON.FromJSON RecurringInterval'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "day" -> RecurringInterval'EnumDay
                                            | val GHC.Classes.== "month" -> RecurringInterval'EnumMonth
                                            | val GHC.Classes.== "week" -> RecurringInterval'EnumWeek
                                            | val GHC.Classes.== "year" -> RecurringInterval'EnumYear
                                            | GHC.Base.otherwise -> RecurringInterval'Other val)
-- | Defines the enum schema located at @components.schemas.recurring.properties.usage_type@ in the specification.
-- 
-- Configures how the quantity per period should be determined. Can be either \`metered\` or \`licensed\`. \`licensed\` automatically bills the \`quantity\` set when adding it to a subscription. \`metered\` aggregates the total usage based on usage records. Defaults to \`licensed\`.
data RecurringUsageType' =
   RecurringUsageType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | RecurringUsageType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | RecurringUsageType'EnumLicensed -- ^ Represents the JSON value @"licensed"@
  | RecurringUsageType'EnumMetered -- ^ Represents the JSON value @"metered"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON RecurringUsageType'
    where toJSON (RecurringUsageType'Other val) = val
          toJSON (RecurringUsageType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (RecurringUsageType'EnumLicensed) = "licensed"
          toJSON (RecurringUsageType'EnumMetered) = "metered"
instance Data.Aeson.Types.FromJSON.FromJSON RecurringUsageType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "licensed" -> RecurringUsageType'EnumLicensed
                                            | val GHC.Classes.== "metered" -> RecurringUsageType'EnumMetered
                                            | GHC.Base.otherwise -> RecurringUsageType'Other val)
