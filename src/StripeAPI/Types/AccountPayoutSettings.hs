{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AccountPayoutSettings
module StripeAPI.Types.AccountPayoutSettings where

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
import StripeAPI.Types.TransferSchedule

-- | Defines the data type for the schema account_payout_settings
-- 
-- 
data AccountPayoutSettings = AccountPayoutSettings {
  -- | debit_negative_balances: A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See our [Understanding Connect Account Balances](https:\/\/stripe.com\/docs\/connect\/account-balances) documentation for details. Default value is \`true\` for Express accounts and \`false\` for Custom accounts.
  accountPayoutSettingsDebitNegativeBalances :: GHC.Types.Bool
  -- | schedule: 
  , accountPayoutSettingsSchedule :: TransferSchedule
  -- | statement_descriptor: The text that appears on the bank account statement for payouts. If not set, this defaults to the platform\'s bank descriptor as set in the Dashboard.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountPayoutSettingsStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountPayoutSettings
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "debit_negative_balances" (accountPayoutSettingsDebitNegativeBalances obj) : (Data.Aeson..=) "schedule" (accountPayoutSettingsSchedule obj) : (Data.Aeson..=) "statement_descriptor" (accountPayoutSettingsStatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "debit_negative_balances" (accountPayoutSettingsDebitNegativeBalances obj) GHC.Base.<> ((Data.Aeson..=) "schedule" (accountPayoutSettingsSchedule obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (accountPayoutSettingsStatementDescriptor obj)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountPayoutSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountPayoutSettings" (\obj -> ((GHC.Base.pure AccountPayoutSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "debit_negative_balances")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "schedule")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))