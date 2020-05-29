{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTransactionAchCreditTransferData
module StripeAPI.Types.SourceTransactionAchCreditTransferData where

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

-- | Defines the data type for the schema source_transaction_ach_credit_transfer_data
-- 
-- 
data SourceTransactionAchCreditTransferData = SourceTransactionAchCreditTransferData {
  -- | customer_data: Customer data associated with the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  sourceTransactionAchCreditTransferDataCustomerData :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | fingerprint: Bank account fingerprint associated with the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionAchCreditTransferDataFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last4: Last 4 digits of the account number associated with the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionAchCreditTransferDataLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | routing_number: Routing number associated with the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionAchCreditTransferDataRoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTransactionAchCreditTransferData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "customer_data" (sourceTransactionAchCreditTransferDataCustomerData obj) : (Data.Aeson..=) "fingerprint" (sourceTransactionAchCreditTransferDataFingerprint obj) : (Data.Aeson..=) "last4" (sourceTransactionAchCreditTransferDataLast4 obj) : (Data.Aeson..=) "routing_number" (sourceTransactionAchCreditTransferDataRoutingNumber obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "customer_data" (sourceTransactionAchCreditTransferDataCustomerData obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (sourceTransactionAchCreditTransferDataFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "last4" (sourceTransactionAchCreditTransferDataLast4 obj) GHC.Base.<> (Data.Aeson..=) "routing_number" (sourceTransactionAchCreditTransferDataRoutingNumber obj))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTransactionAchCreditTransferData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTransactionAchCreditTransferData" (\obj -> (((GHC.Base.pure SourceTransactionAchCreditTransferData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number"))