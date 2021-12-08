{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema SetupAttemptPaymentMethodDetailsIdeal
module StripeAPI.Types.SetupAttemptPaymentMethodDetailsIdeal where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
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
import {-# SOURCE #-} StripeAPI.Types.Mandate
import {-# SOURCE #-} StripeAPI.Types.PaymentMethod
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.setup_attempt_payment_method_details_ideal@ in the specification.
data SetupAttemptPaymentMethodDetailsIdeal = SetupAttemptPaymentMethodDetailsIdeal
  { -- | bank: The customer\'s bank. Can be one of \`abn_amro\`, \`asn_bank\`, \`bunq\`, \`handelsbanken\`, \`ing\`, \`knab\`, \`moneyou\`, \`rabobank\`, \`regiobank\`, \`revolut\`, \`sns_bank\`, \`triodos_bank\`, or \`van_lanschot\`.
    setupAttemptPaymentMethodDetailsIdealBank :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsIdealBank'),
    -- | bic: The Bank Identifier Code of the customer\'s bank.
    setupAttemptPaymentMethodDetailsIdealBic :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsIdealBic'),
    -- | generated_sepa_debit: The ID of the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
    setupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit'Variants),
    -- | generated_sepa_debit_mandate: The mandate for the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
    setupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate'Variants),
    -- | iban_last4: Last four characters of the IBAN.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsIdealIbanLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | verified_name: Owner\'s verified full name. Values are verified or provided by iDEAL directly
    -- (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    setupAttemptPaymentMethodDetailsIdealVerifiedName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsIdeal where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealBank obj : "bic" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealBic obj : "generated_sepa_debit" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit obj : "generated_sepa_debit_mandate" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate obj : "iban_last4" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealIbanLast4 obj : "verified_name" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealVerifiedName obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bank" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealBank obj) GHC.Base.<> (("bic" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealBic obj) GHC.Base.<> (("generated_sepa_debit" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit obj) GHC.Base.<> (("generated_sepa_debit_mandate" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate obj) GHC.Base.<> (("iban_last4" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealIbanLast4 obj) GHC.Base.<> ("verified_name" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsIdealVerifiedName obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsIdeal where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupAttemptPaymentMethodDetailsIdeal" (\obj -> (((((GHC.Base.pure SetupAttemptPaymentMethodDetailsIdeal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "generated_sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "generated_sepa_debit_mandate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))

-- | Create a new 'SetupAttemptPaymentMethodDetailsIdeal' with all required fields.
mkSetupAttemptPaymentMethodDetailsIdeal :: SetupAttemptPaymentMethodDetailsIdeal
mkSetupAttemptPaymentMethodDetailsIdeal =
  SetupAttemptPaymentMethodDetailsIdeal
    { setupAttemptPaymentMethodDetailsIdealBank = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsIdealBic = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsIdealIbanLast4 = GHC.Maybe.Nothing,
      setupAttemptPaymentMethodDetailsIdealVerifiedName = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.setup_attempt_payment_method_details_ideal.properties.bank@ in the specification.
--
-- The customer\'s bank. Can be one of \`abn_amro\`, \`asn_bank\`, \`bunq\`, \`handelsbanken\`, \`ing\`, \`knab\`, \`moneyou\`, \`rabobank\`, \`regiobank\`, \`revolut\`, \`sns_bank\`, \`triodos_bank\`, or \`van_lanschot\`.
data SetupAttemptPaymentMethodDetailsIdealBank'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SetupAttemptPaymentMethodDetailsIdealBank'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SetupAttemptPaymentMethodDetailsIdealBank'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"abn_amro"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumAbnAmro
  | -- | Represents the JSON value @"asn_bank"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumAsnBank
  | -- | Represents the JSON value @"bunq"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumBunq
  | -- | Represents the JSON value @"handelsbanken"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumHandelsbanken
  | -- | Represents the JSON value @"ing"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumIng
  | -- | Represents the JSON value @"knab"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumKnab
  | -- | Represents the JSON value @"moneyou"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumMoneyou
  | -- | Represents the JSON value @"rabobank"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumRabobank
  | -- | Represents the JSON value @"regiobank"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumRegiobank
  | -- | Represents the JSON value @"revolut"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumRevolut
  | -- | Represents the JSON value @"sns_bank"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumSnsBank
  | -- | Represents the JSON value @"triodos_bank"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumTriodosBank
  | -- | Represents the JSON value @"van_lanschot"@
    SetupAttemptPaymentMethodDetailsIdealBank'EnumVanLanschot
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsIdealBank' where
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'Other val) = val
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumAbnAmro) = "abn_amro"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumAsnBank) = "asn_bank"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumBunq) = "bunq"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumHandelsbanken) = "handelsbanken"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumIng) = "ing"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumKnab) = "knab"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumMoneyou) = "moneyou"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumRabobank) = "rabobank"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumRegiobank) = "regiobank"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumRevolut) = "revolut"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumSnsBank) = "sns_bank"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumTriodosBank) = "triodos_bank"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBank'EnumVanLanschot) = "van_lanschot"

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsIdealBank' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "abn_amro" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumAbnAmro
            | val GHC.Classes.== "asn_bank" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumAsnBank
            | val GHC.Classes.== "bunq" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumBunq
            | val GHC.Classes.== "handelsbanken" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumHandelsbanken
            | val GHC.Classes.== "ing" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumIng
            | val GHC.Classes.== "knab" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumKnab
            | val GHC.Classes.== "moneyou" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumMoneyou
            | val GHC.Classes.== "rabobank" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumRabobank
            | val GHC.Classes.== "regiobank" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumRegiobank
            | val GHC.Classes.== "revolut" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumRevolut
            | val GHC.Classes.== "sns_bank" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumSnsBank
            | val GHC.Classes.== "triodos_bank" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumTriodosBank
            | val GHC.Classes.== "van_lanschot" -> SetupAttemptPaymentMethodDetailsIdealBank'EnumVanLanschot
            | GHC.Base.otherwise -> SetupAttemptPaymentMethodDetailsIdealBank'Other val
      )

-- | Defines the enum schema located at @components.schemas.setup_attempt_payment_method_details_ideal.properties.bic@ in the specification.
--
-- The Bank Identifier Code of the customer\'s bank.
data SetupAttemptPaymentMethodDetailsIdealBic'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SetupAttemptPaymentMethodDetailsIdealBic'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SetupAttemptPaymentMethodDetailsIdealBic'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ABNANL2A"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumABNANL2A
  | -- | Represents the JSON value @"ASNBNL21"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumASNBNL21
  | -- | Represents the JSON value @"BUNQNL2A"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumBUNQNL2A
  | -- | Represents the JSON value @"FVLBNL22"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumFVLBNL22
  | -- | Represents the JSON value @"HANDNL2A"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumHANDNL2A
  | -- | Represents the JSON value @"INGBNL2A"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumINGBNL2A
  | -- | Represents the JSON value @"KNABNL2H"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumKNABNL2H
  | -- | Represents the JSON value @"MOYONL21"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumMOYONL21
  | -- | Represents the JSON value @"RABONL2U"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumRABONL2U
  | -- | Represents the JSON value @"RBRBNL21"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumRBRBNL21
  | -- | Represents the JSON value @"REVOLT21"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumREVOLT21
  | -- | Represents the JSON value @"SNSBNL2A"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumSNSBNL2A
  | -- | Represents the JSON value @"TRIONL2U"@
    SetupAttemptPaymentMethodDetailsIdealBic'EnumTRIONL2U
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsIdealBic' where
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'Other val) = val
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumABNANL2A) = "ABNANL2A"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumASNBNL21) = "ASNBNL21"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumBUNQNL2A) = "BUNQNL2A"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumFVLBNL22) = "FVLBNL22"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumHANDNL2A) = "HANDNL2A"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumINGBNL2A) = "INGBNL2A"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumKNABNL2H) = "KNABNL2H"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumMOYONL21) = "MOYONL21"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumRABONL2U) = "RABONL2U"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumRBRBNL21) = "RBRBNL21"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumREVOLT21) = "REVOLT21"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumSNSBNL2A) = "SNSBNL2A"
  toJSON (SetupAttemptPaymentMethodDetailsIdealBic'EnumTRIONL2U) = "TRIONL2U"

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsIdealBic' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "ABNANL2A" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumABNANL2A
            | val GHC.Classes.== "ASNBNL21" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumASNBNL21
            | val GHC.Classes.== "BUNQNL2A" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumBUNQNL2A
            | val GHC.Classes.== "FVLBNL22" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumFVLBNL22
            | val GHC.Classes.== "HANDNL2A" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumHANDNL2A
            | val GHC.Classes.== "INGBNL2A" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumINGBNL2A
            | val GHC.Classes.== "KNABNL2H" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumKNABNL2H
            | val GHC.Classes.== "MOYONL21" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumMOYONL21
            | val GHC.Classes.== "RABONL2U" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumRABONL2U
            | val GHC.Classes.== "RBRBNL21" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumRBRBNL21
            | val GHC.Classes.== "REVOLT21" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumREVOLT21
            | val GHC.Classes.== "SNSBNL2A" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumSNSBNL2A
            | val GHC.Classes.== "TRIONL2U" -> SetupAttemptPaymentMethodDetailsIdealBic'EnumTRIONL2U
            | GHC.Base.otherwise -> SetupAttemptPaymentMethodDetailsIdealBic'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.setup_attempt_payment_method_details_ideal.properties.generated_sepa_debit.anyOf@ in the specification.
--
-- The ID of the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
data SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit'Variants
  = SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit'Text Data.Text.Internal.Text
  | SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit'PaymentMethod PaymentMethod
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit'Variants where
  toJSON (SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit'PaymentMethod a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit'Variants where
  parseJSON val = case (SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebit'PaymentMethod Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.setup_attempt_payment_method_details_ideal.properties.generated_sepa_debit_mandate.anyOf@ in the specification.
--
-- The mandate for the SEPA Direct Debit PaymentMethod which was generated by this SetupAttempt.
data SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate'Variants
  = SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate'Text Data.Text.Internal.Text
  | SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate'Mandate Mandate
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate'Variants where
  toJSON (SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate'Mandate a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate'Variants where
  parseJSON val = case (SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SetupAttemptPaymentMethodDetailsIdealGeneratedSepaDebitMandate'Mandate Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a