{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTransactionChfCreditTransferData
module StripeAPI.Types.SourceTransactionChfCreditTransferData where

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

-- | Defines the data type for the schema source_transaction_chf_credit_transfer_data
-- 
-- 
data SourceTransactionChfCreditTransferData = SourceTransactionChfCreditTransferData {
  -- | reference: Reference associated with the transfer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  sourceTransactionChfCreditTransferDataReference :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | sender_address_country: Sender\'s country address.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionChfCreditTransferDataSenderAddressCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | sender_address_line1: Sender\'s line 1 address.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionChfCreditTransferDataSenderAddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | sender_iban: Sender\'s bank account IBAN.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionChfCreditTransferDataSenderIban :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | sender_name: Sender\'s name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceTransactionChfCreditTransferDataSenderName :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTransactionChfCreditTransferData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "reference" (sourceTransactionChfCreditTransferDataReference obj) : (Data.Aeson..=) "sender_address_country" (sourceTransactionChfCreditTransferDataSenderAddressCountry obj) : (Data.Aeson..=) "sender_address_line1" (sourceTransactionChfCreditTransferDataSenderAddressLine1 obj) : (Data.Aeson..=) "sender_iban" (sourceTransactionChfCreditTransferDataSenderIban obj) : (Data.Aeson..=) "sender_name" (sourceTransactionChfCreditTransferDataSenderName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "reference" (sourceTransactionChfCreditTransferDataReference obj) GHC.Base.<> ((Data.Aeson..=) "sender_address_country" (sourceTransactionChfCreditTransferDataSenderAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "sender_address_line1" (sourceTransactionChfCreditTransferDataSenderAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "sender_iban" (sourceTransactionChfCreditTransferDataSenderIban obj) GHC.Base.<> (Data.Aeson..=) "sender_name" (sourceTransactionChfCreditTransferDataSenderName obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTransactionChfCreditTransferData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTransactionChfCreditTransferData" (\obj -> ((((GHC.Base.pure SourceTransactionChfCreditTransferData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_iban")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_name"))