{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema Issuing_Settlement
module StripeAPI.Types.Issuing_Settlement where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
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
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.issuing.settlement@ in the specification.
--
-- When a non-stripe BIN is used, any use of an [issued card](https:\/\/stripe.com\/docs\/issuing) must be settled directly with the card network. The net amount owed is represented by an Issuing \`Settlement\` object.
data Issuing'settlement
  = Issuing'settlement
      { -- | bin: The Bank Identification Number reflecting this settlement record.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuing'settlementBin :: Data.Text.Internal.Text,
        -- | clearing_date: The date that the transactions are cleared and posted to user\'s accounts.
        issuing'settlementClearingDate :: GHC.Types.Int,
        -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
        issuing'settlementCreated :: GHC.Types.Int,
        -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
        issuing'settlementCurrency :: Data.Text.Internal.Text,
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuing'settlementId :: Data.Text.Internal.Text,
        -- | interchange_fees: The total interchange received as reimbursement for the transactions.
        issuing'settlementInterchangeFees :: GHC.Types.Int,
        -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
        issuing'settlementLivemode :: GHC.Types.Bool,
        -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        issuing'settlementMetadata :: Data.Aeson.Types.Internal.Object,
        -- | net_total: The total net amount required to settle with the network.
        issuing'settlementNetTotal :: GHC.Types.Int,
        -- | network_fees: The total amount of fees owed to the network.
        issuing'settlementNetworkFees :: GHC.Types.Int,
        -- | network_settlement_identifier: The Settlement Identification Number assigned by the network.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuing'settlementNetworkSettlementIdentifier :: Data.Text.Internal.Text,
        -- | settlement_service: One of \`international\` or \`uk_national_net\`.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuing'settlementSettlementService :: Data.Text.Internal.Text,
        -- | transaction_count: The total number of transactions reflected in this settlement.
        issuing'settlementTransactionCount :: GHC.Types.Int,
        -- | transaction_volume: The total transaction amount reflected in this settlement.
        issuing'settlementTransactionVolume :: GHC.Types.Int
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Issuing'settlement where
  toJSON obj = Data.Aeson.Types.Internal.object ("bin" Data.Aeson.Types.ToJSON..= issuing'settlementBin obj : "clearing_date" Data.Aeson.Types.ToJSON..= issuing'settlementClearingDate obj : "created" Data.Aeson.Types.ToJSON..= issuing'settlementCreated obj : "currency" Data.Aeson.Types.ToJSON..= issuing'settlementCurrency obj : "id" Data.Aeson.Types.ToJSON..= issuing'settlementId obj : "interchange_fees" Data.Aeson.Types.ToJSON..= issuing'settlementInterchangeFees obj : "livemode" Data.Aeson.Types.ToJSON..= issuing'settlementLivemode obj : "metadata" Data.Aeson.Types.ToJSON..= issuing'settlementMetadata obj : "net_total" Data.Aeson.Types.ToJSON..= issuing'settlementNetTotal obj : "network_fees" Data.Aeson.Types.ToJSON..= issuing'settlementNetworkFees obj : "network_settlement_identifier" Data.Aeson.Types.ToJSON..= issuing'settlementNetworkSettlementIdentifier obj : "settlement_service" Data.Aeson.Types.ToJSON..= issuing'settlementSettlementService obj : "transaction_count" Data.Aeson.Types.ToJSON..= issuing'settlementTransactionCount obj : "transaction_volume" Data.Aeson.Types.ToJSON..= issuing'settlementTransactionVolume obj : "network" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "visa" : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "issuing.settlement" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bin" Data.Aeson.Types.ToJSON..= issuing'settlementBin obj) GHC.Base.<> (("clearing_date" Data.Aeson.Types.ToJSON..= issuing'settlementClearingDate obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= issuing'settlementCreated obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= issuing'settlementCurrency obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= issuing'settlementId obj) GHC.Base.<> (("interchange_fees" Data.Aeson.Types.ToJSON..= issuing'settlementInterchangeFees obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= issuing'settlementLivemode obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= issuing'settlementMetadata obj) GHC.Base.<> (("net_total" Data.Aeson.Types.ToJSON..= issuing'settlementNetTotal obj) GHC.Base.<> (("network_fees" Data.Aeson.Types.ToJSON..= issuing'settlementNetworkFees obj) GHC.Base.<> (("network_settlement_identifier" Data.Aeson.Types.ToJSON..= issuing'settlementNetworkSettlementIdentifier obj) GHC.Base.<> (("settlement_service" Data.Aeson.Types.ToJSON..= issuing'settlementSettlementService obj) GHC.Base.<> (("transaction_count" Data.Aeson.Types.ToJSON..= issuing'settlementTransactionCount obj) GHC.Base.<> (("transaction_volume" Data.Aeson.Types.ToJSON..= issuing'settlementTransactionVolume obj) GHC.Base.<> (("network" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "visa") GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "issuing.settlement"))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON Issuing'settlement where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Issuing'settlement" (\obj -> (((((((((((((GHC.Base.pure Issuing'settlement GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bin")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "clearing_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interchange_fees")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "net_total")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network_fees")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network_settlement_identifier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "settlement_service")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction_volume"))

-- | Create a new 'Issuing'settlement' with all required fields.
mkIssuing'settlement ::
  -- | 'issuing'settlementBin'
  Data.Text.Internal.Text ->
  -- | 'issuing'settlementClearingDate'
  GHC.Types.Int ->
  -- | 'issuing'settlementCreated'
  GHC.Types.Int ->
  -- | 'issuing'settlementCurrency'
  Data.Text.Internal.Text ->
  -- | 'issuing'settlementId'
  Data.Text.Internal.Text ->
  -- | 'issuing'settlementInterchangeFees'
  GHC.Types.Int ->
  -- | 'issuing'settlementLivemode'
  GHC.Types.Bool ->
  -- | 'issuing'settlementMetadata'
  Data.Aeson.Types.Internal.Object ->
  -- | 'issuing'settlementNetTotal'
  GHC.Types.Int ->
  -- | 'issuing'settlementNetworkFees'
  GHC.Types.Int ->
  -- | 'issuing'settlementNetworkSettlementIdentifier'
  Data.Text.Internal.Text ->
  -- | 'issuing'settlementSettlementService'
  Data.Text.Internal.Text ->
  -- | 'issuing'settlementTransactionCount'
  GHC.Types.Int ->
  -- | 'issuing'settlementTransactionVolume'
  GHC.Types.Int ->
  Issuing'settlement
mkIssuing'settlement issuing'settlementBin issuing'settlementClearingDate issuing'settlementCreated issuing'settlementCurrency issuing'settlementId issuing'settlementInterchangeFees issuing'settlementLivemode issuing'settlementMetadata issuing'settlementNetTotal issuing'settlementNetworkFees issuing'settlementNetworkSettlementIdentifier issuing'settlementSettlementService issuing'settlementTransactionCount issuing'settlementTransactionVolume =
  Issuing'settlement
    { issuing'settlementBin = issuing'settlementBin,
      issuing'settlementClearingDate = issuing'settlementClearingDate,
      issuing'settlementCreated = issuing'settlementCreated,
      issuing'settlementCurrency = issuing'settlementCurrency,
      issuing'settlementId = issuing'settlementId,
      issuing'settlementInterchangeFees = issuing'settlementInterchangeFees,
      issuing'settlementLivemode = issuing'settlementLivemode,
      issuing'settlementMetadata = issuing'settlementMetadata,
      issuing'settlementNetTotal = issuing'settlementNetTotal,
      issuing'settlementNetworkFees = issuing'settlementNetworkFees,
      issuing'settlementNetworkSettlementIdentifier = issuing'settlementNetworkSettlementIdentifier,
      issuing'settlementSettlementService = issuing'settlementSettlementService,
      issuing'settlementTransactionCount = issuing'settlementTransactionCount,
      issuing'settlementTransactionVolume = issuing'settlementTransactionVolume
    }
