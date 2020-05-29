{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTransactionGbpCreditTransferData
module StripeAPI.Types.SourceTransactionGbpCreditTransferData where

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

-- | Defines the data type for the schema source_transaction_gbp_credit_transfer_data
-- 
-- 
data SourceTransactionGbpCreditTransferData = SourceTransactionGbpCreditTransferData {
  -- | fingerprint: Bank account fingerprint associated with the Stripe owned bank account receiving the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  sourceTransactionGbpCreditTransferDataFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | funding_method: The credit transfer rails the sender used to push this transfer. The possible rails are: Faster Payments, BACS, CHAPS, and wire transfers. Currently only Faster Payments is supported.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionGbpCreditTransferDataFundingMethod :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | last4: Last 4 digits of sender account number associated with the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionGbpCreditTransferDataLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reference: Sender entered arbitrary information about the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionGbpCreditTransferDataReference :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | sender_account_number: Sender account number associated with the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionGbpCreditTransferDataSenderAccountNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | sender_name: Sender name associated with the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionGbpCreditTransferDataSenderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | sender_sort_code: Sender sort code associated with the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionGbpCreditTransferDataSenderSortCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTransactionGbpCreditTransferData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "fingerprint" (sourceTransactionGbpCreditTransferDataFingerprint obj) : (Data.Aeson..=) "funding_method" (sourceTransactionGbpCreditTransferDataFundingMethod obj) : (Data.Aeson..=) "last4" (sourceTransactionGbpCreditTransferDataLast4 obj) : (Data.Aeson..=) "reference" (sourceTransactionGbpCreditTransferDataReference obj) : (Data.Aeson..=) "sender_account_number" (sourceTransactionGbpCreditTransferDataSenderAccountNumber obj) : (Data.Aeson..=) "sender_name" (sourceTransactionGbpCreditTransferDataSenderName obj) : (Data.Aeson..=) "sender_sort_code" (sourceTransactionGbpCreditTransferDataSenderSortCode obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "fingerprint" (sourceTransactionGbpCreditTransferDataFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "funding_method" (sourceTransactionGbpCreditTransferDataFundingMethod obj) GHC.Base.<> ((Data.Aeson..=) "last4" (sourceTransactionGbpCreditTransferDataLast4 obj) GHC.Base.<> ((Data.Aeson..=) "reference" (sourceTransactionGbpCreditTransferDataReference obj) GHC.Base.<> ((Data.Aeson..=) "sender_account_number" (sourceTransactionGbpCreditTransferDataSenderAccountNumber obj) GHC.Base.<> ((Data.Aeson..=) "sender_name" (sourceTransactionGbpCreditTransferDataSenderName obj) GHC.Base.<> (Data.Aeson..=) "sender_sort_code" (sourceTransactionGbpCreditTransferDataSenderSortCode obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTransactionGbpCreditTransferData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTransactionGbpCreditTransferData" (\obj -> ((((((GHC.Base.pure SourceTransactionGbpCreditTransferData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_sort_code"))