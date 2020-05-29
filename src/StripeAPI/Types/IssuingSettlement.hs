{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema IssuingSettlement
module StripeAPI.Types.IssuingSettlement where

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

-- | Defines the data type for the schema issuing.settlement
-- 
-- When a non-stripe BIN is used, any use of an [issued card](https:\/\/stripe.com\/docs\/issuing) must be settled directly with the card network. The net amount owed is represented by an Issuing \`Settlement\` object.
data Issuing'settlement = Issuing'settlement {
  -- | bin: The Bank Identification Number reflecting this settlement record.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  issuing'settlementBin :: Data.Text.Internal.Text
  -- | clearing_date: The date that the transactions are cleared and posted to user\'s accounts.
  , issuing'settlementClearingDate :: GHC.Integer.Type.Integer
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , issuing'settlementCreated :: GHC.Integer.Type.Integer
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , issuing'settlementCurrency :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuing'settlementId :: Data.Text.Internal.Text
  -- | interchange_fees: The total interchange received as reimbursement for the transactions.
  , issuing'settlementInterchangeFees :: GHC.Integer.Type.Integer
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , issuing'settlementLivemode :: GHC.Types.Bool
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , issuing'settlementMetadata :: Issuing'settlementMetadata'
  -- | net_total: The total net amount required to settle with the network.
  , issuing'settlementNetTotal :: GHC.Integer.Type.Integer
  -- | network: The card network for this settlement report. One of [\"visa\"]
  , issuing'settlementNetwork :: Issuing'settlementNetwork'
  -- | network_fees: The total amount of fees owed to the network.
  , issuing'settlementNetworkFees :: GHC.Integer.Type.Integer
  -- | network_settlement_identifier: The Settlement Identification Number assigned by the network.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuing'settlementNetworkSettlementIdentifier :: Data.Text.Internal.Text
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , issuing'settlementObject :: Issuing'settlementObject'
  -- | settlement_service: One of \`international\` or \`uk_national_net\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuing'settlementSettlementService :: Data.Text.Internal.Text
  -- | transaction_count: The total number of transactions reflected in this settlement.
  , issuing'settlementTransactionCount :: GHC.Integer.Type.Integer
  -- | transaction_volume: The total transaction amount reflected in this settlement.
  , issuing'settlementTransactionVolume :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Issuing'settlement
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bin" (issuing'settlementBin obj) : (Data.Aeson..=) "clearing_date" (issuing'settlementClearingDate obj) : (Data.Aeson..=) "created" (issuing'settlementCreated obj) : (Data.Aeson..=) "currency" (issuing'settlementCurrency obj) : (Data.Aeson..=) "id" (issuing'settlementId obj) : (Data.Aeson..=) "interchange_fees" (issuing'settlementInterchangeFees obj) : (Data.Aeson..=) "livemode" (issuing'settlementLivemode obj) : (Data.Aeson..=) "metadata" (issuing'settlementMetadata obj) : (Data.Aeson..=) "net_total" (issuing'settlementNetTotal obj) : (Data.Aeson..=) "network" (issuing'settlementNetwork obj) : (Data.Aeson..=) "network_fees" (issuing'settlementNetworkFees obj) : (Data.Aeson..=) "network_settlement_identifier" (issuing'settlementNetworkSettlementIdentifier obj) : (Data.Aeson..=) "object" (issuing'settlementObject obj) : (Data.Aeson..=) "settlement_service" (issuing'settlementSettlementService obj) : (Data.Aeson..=) "transaction_count" (issuing'settlementTransactionCount obj) : (Data.Aeson..=) "transaction_volume" (issuing'settlementTransactionVolume obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bin" (issuing'settlementBin obj) GHC.Base.<> ((Data.Aeson..=) "clearing_date" (issuing'settlementClearingDate obj) GHC.Base.<> ((Data.Aeson..=) "created" (issuing'settlementCreated obj) GHC.Base.<> ((Data.Aeson..=) "currency" (issuing'settlementCurrency obj) GHC.Base.<> ((Data.Aeson..=) "id" (issuing'settlementId obj) GHC.Base.<> ((Data.Aeson..=) "interchange_fees" (issuing'settlementInterchangeFees obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (issuing'settlementLivemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (issuing'settlementMetadata obj) GHC.Base.<> ((Data.Aeson..=) "net_total" (issuing'settlementNetTotal obj) GHC.Base.<> ((Data.Aeson..=) "network" (issuing'settlementNetwork obj) GHC.Base.<> ((Data.Aeson..=) "network_fees" (issuing'settlementNetworkFees obj) GHC.Base.<> ((Data.Aeson..=) "network_settlement_identifier" (issuing'settlementNetworkSettlementIdentifier obj) GHC.Base.<> ((Data.Aeson..=) "object" (issuing'settlementObject obj) GHC.Base.<> ((Data.Aeson..=) "settlement_service" (issuing'settlementSettlementService obj) GHC.Base.<> ((Data.Aeson..=) "transaction_count" (issuing'settlementTransactionCount obj) GHC.Base.<> (Data.Aeson..=) "transaction_volume" (issuing'settlementTransactionVolume obj))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Issuing'settlement
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Issuing'settlement" (\obj -> (((((((((((((((GHC.Base.pure Issuing'settlement GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "clearing_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interchange_fees")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "net_total")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network_fees")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network_settlement_identifier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "settlement_service")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction_volume"))
-- | Defines the data type for the schema issuing.settlementMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data Issuing'settlementMetadata' = Issuing'settlementMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Issuing'settlementMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON Issuing'settlementMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Issuing'settlementMetadata'" (\obj -> GHC.Base.pure Issuing'settlementMetadata')
-- | Defines the enum schema issuing.settlementNetwork\'
-- 
-- The card network for this settlement report. One of [\"visa\"]
data Issuing'settlementNetwork'
    = Issuing'settlementNetwork'EnumOther Data.Aeson.Types.Internal.Value
    | Issuing'settlementNetwork'EnumTyped Data.Text.Internal.Text
    | Issuing'settlementNetwork'EnumStringVisa
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Issuing'settlementNetwork'
    where toJSON (Issuing'settlementNetwork'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Issuing'settlementNetwork'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Issuing'settlementNetwork'EnumStringVisa) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "visa"
instance Data.Aeson.FromJSON Issuing'settlementNetwork'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "visa")
                                          then Issuing'settlementNetwork'EnumStringVisa
                                          else Issuing'settlementNetwork'EnumOther val)
-- | Defines the enum schema issuing.settlementObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data Issuing'settlementObject'
    = Issuing'settlementObject'EnumOther Data.Aeson.Types.Internal.Value
    | Issuing'settlementObject'EnumTyped Data.Text.Internal.Text
    | Issuing'settlementObject'EnumStringIssuing'settlement
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Issuing'settlementObject'
    where toJSON (Issuing'settlementObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Issuing'settlementObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Issuing'settlementObject'EnumStringIssuing'settlement) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "issuing.settlement"
instance Data.Aeson.FromJSON Issuing'settlementObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "issuing.settlement")
                                          then Issuing'settlementObject'EnumStringIssuing'settlement
                                          else Issuing'settlementObject'EnumOther val)