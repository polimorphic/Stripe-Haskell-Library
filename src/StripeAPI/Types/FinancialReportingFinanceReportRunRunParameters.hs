{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema FinancialReportingFinanceReportRunRunParameters
module StripeAPI.Types.FinancialReportingFinanceReportRunRunParameters where

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

-- | Defines the data type for the schema financial_reporting_finance_report_run_run_parameters
-- 
-- 
data FinancialReportingFinanceReportRunRunParameters = FinancialReportingFinanceReportRunRunParameters {
  -- | columns: The set of output columns requested for inclusion in the report run.
  financialReportingFinanceReportRunRunParametersColumns :: (GHC.Maybe.Maybe ([] Data.Text.Internal.Text))
  -- | connected_account: Connected account ID by which to filter the report run.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , financialReportingFinanceReportRunRunParametersConnectedAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | currency: Currency of objects to be included in the report run.
  , financialReportingFinanceReportRunRunParametersCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | interval_end: Ending timestamp of data to be included in the report run (exclusive).
  , financialReportingFinanceReportRunRunParametersIntervalEnd :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | interval_start: Starting timestamp of data to be included in the report run.
  , financialReportingFinanceReportRunRunParametersIntervalStart :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | payout: Payout ID by which to filter the report run.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , financialReportingFinanceReportRunRunParametersPayout :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reporting_category: Category of balance transactions to be included in the report run.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , financialReportingFinanceReportRunRunParametersReportingCategory :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | timezone: Defaults to \`Etc\/UTC\`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http:\/\/www.iana.org\/time-zones). Has no effect on \`interval_start\` or \`interval_end\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , financialReportingFinanceReportRunRunParametersTimezone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON FinancialReportingFinanceReportRunRunParameters
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "columns" (financialReportingFinanceReportRunRunParametersColumns obj) : (Data.Aeson..=) "connected_account" (financialReportingFinanceReportRunRunParametersConnectedAccount obj) : (Data.Aeson..=) "currency" (financialReportingFinanceReportRunRunParametersCurrency obj) : (Data.Aeson..=) "interval_end" (financialReportingFinanceReportRunRunParametersIntervalEnd obj) : (Data.Aeson..=) "interval_start" (financialReportingFinanceReportRunRunParametersIntervalStart obj) : (Data.Aeson..=) "payout" (financialReportingFinanceReportRunRunParametersPayout obj) : (Data.Aeson..=) "reporting_category" (financialReportingFinanceReportRunRunParametersReportingCategory obj) : (Data.Aeson..=) "timezone" (financialReportingFinanceReportRunRunParametersTimezone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "columns" (financialReportingFinanceReportRunRunParametersColumns obj) GHC.Base.<> ((Data.Aeson..=) "connected_account" (financialReportingFinanceReportRunRunParametersConnectedAccount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (financialReportingFinanceReportRunRunParametersCurrency obj) GHC.Base.<> ((Data.Aeson..=) "interval_end" (financialReportingFinanceReportRunRunParametersIntervalEnd obj) GHC.Base.<> ((Data.Aeson..=) "interval_start" (financialReportingFinanceReportRunRunParametersIntervalStart obj) GHC.Base.<> ((Data.Aeson..=) "payout" (financialReportingFinanceReportRunRunParametersPayout obj) GHC.Base.<> ((Data.Aeson..=) "reporting_category" (financialReportingFinanceReportRunRunParametersReportingCategory obj) GHC.Base.<> (Data.Aeson..=) "timezone" (financialReportingFinanceReportRunRunParametersTimezone obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON FinancialReportingFinanceReportRunRunParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "FinancialReportingFinanceReportRunRunParameters" (\obj -> (((((((GHC.Base.pure FinancialReportingFinanceReportRunRunParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "columns")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "connected_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "interval_start")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payout")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reporting_category")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "timezone"))