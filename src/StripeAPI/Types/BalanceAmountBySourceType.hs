{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema BalanceAmountBySourceType
module StripeAPI.Types.BalanceAmountBySourceType where

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

-- | Defines the data type for the schema balance_amount_by_source_type
-- 
-- 
data BalanceAmountBySourceType = BalanceAmountBySourceType {
  -- | bank_account: Amount for bank account.
  balanceAmountBySourceTypeBankAccount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | card: Amount for card.
  , balanceAmountBySourceTypeCard :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | fpx: Amount for FPX.
  , balanceAmountBySourceTypeFpx :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON BalanceAmountBySourceType
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_account" (balanceAmountBySourceTypeBankAccount obj) : (Data.Aeson..=) "card" (balanceAmountBySourceTypeCard obj) : (Data.Aeson..=) "fpx" (balanceAmountBySourceTypeFpx obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_account" (balanceAmountBySourceTypeBankAccount obj) GHC.Base.<> ((Data.Aeson..=) "card" (balanceAmountBySourceTypeCard obj) GHC.Base.<> (Data.Aeson..=) "fpx" (balanceAmountBySourceTypeFpx obj)))
instance Data.Aeson.Types.FromJSON.FromJSON BalanceAmountBySourceType
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BalanceAmountBySourceType" (\obj -> ((GHC.Base.pure BalanceAmountBySourceType GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fpx"))