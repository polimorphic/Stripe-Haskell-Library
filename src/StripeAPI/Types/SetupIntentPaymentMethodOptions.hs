-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SetupIntentPaymentMethodOptions
module StripeAPI.Types.SetupIntentPaymentMethodOptions where

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
import {-# SOURCE #-} StripeAPI.Types.LinkedAccountOptionsUsBankAccount
import {-# SOURCE #-} StripeAPI.Types.SetupIntentPaymentMethodOptionsAcssDebit
import {-# SOURCE #-} StripeAPI.Types.SetupIntentPaymentMethodOptionsCard
import {-# SOURCE #-} StripeAPI.Types.SetupIntentPaymentMethodOptionsLink
import {-# SOURCE #-} StripeAPI.Types.SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit
import {-# SOURCE #-} StripeAPI.Types.SetupIntentPaymentMethodOptionsSepaDebit
import {-# SOURCE #-} StripeAPI.Types.SetupIntentPaymentMethodOptionsUsBankAccount
import {-# SOURCE #-} StripeAPI.Types.SetupIntentTypeSpecificPaymentMethodOptionsClient

-- | Defines the object schema located at @components.schemas.setup_intent_payment_method_options@ in the specification.
-- 
-- 
data SetupIntentPaymentMethodOptions = SetupIntentPaymentMethodOptions {
  -- | acss_debit
  setupIntentPaymentMethodOptionsAcssDebit :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsAcssDebit')
  -- | card: 
  , setupIntentPaymentMethodOptionsCard :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsCard)
  -- | link
  , setupIntentPaymentMethodOptionsLink :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsLink')
  -- | sepa_debit
  , setupIntentPaymentMethodOptionsSepaDebit :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsSepaDebit')
  -- | us_bank_account
  , setupIntentPaymentMethodOptionsUsBankAccount :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsUsBankAccount')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptions
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sepa_debit" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsUsBankAccount obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sepa_debit" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsUsBankAccount obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptions
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptions" (\obj -> ((((GHC.Base.pure SetupIntentPaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "acss_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "link")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account"))
-- | Create a new 'SetupIntentPaymentMethodOptions' with all required fields.
mkSetupIntentPaymentMethodOptions :: SetupIntentPaymentMethodOptions
mkSetupIntentPaymentMethodOptions = SetupIntentPaymentMethodOptions{setupIntentPaymentMethodOptionsAcssDebit = GHC.Maybe.Nothing,
                                                                    setupIntentPaymentMethodOptionsCard = GHC.Maybe.Nothing,
                                                                    setupIntentPaymentMethodOptionsLink = GHC.Maybe.Nothing,
                                                                    setupIntentPaymentMethodOptionsSepaDebit = GHC.Maybe.Nothing,
                                                                    setupIntentPaymentMethodOptionsUsBankAccount = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.setup_intent_payment_method_options.properties.acss_debit.anyOf@ in the specification.
-- 
-- 
data SetupIntentPaymentMethodOptionsAcssDebit' = SetupIntentPaymentMethodOptionsAcssDebit' {
  -- | currency: Currency supported by the bank account
  setupIntentPaymentMethodOptionsAcssDebit'Currency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullable))
  -- | mandate_options: 
  , setupIntentPaymentMethodOptionsAcssDebit'MandateOptions :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit)
  -- | verification_method: Bank account verification method.
  , setupIntentPaymentMethodOptionsAcssDebit'VerificationMethod :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsAcssDebit'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebit'Currency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebit'MandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebit'VerificationMethod obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebit'Currency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebit'MandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsAcssDebit'VerificationMethod obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsAcssDebit'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptionsAcssDebit'" (\obj -> ((GHC.Base.pure SetupIntentPaymentMethodOptionsAcssDebit' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mandate_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))
-- | Create a new 'SetupIntentPaymentMethodOptionsAcssDebit'' with all required fields.
mkSetupIntentPaymentMethodOptionsAcssDebit' :: SetupIntentPaymentMethodOptionsAcssDebit'
mkSetupIntentPaymentMethodOptionsAcssDebit' = SetupIntentPaymentMethodOptionsAcssDebit'{setupIntentPaymentMethodOptionsAcssDebit'Currency = GHC.Maybe.Nothing,
                                                                                        setupIntentPaymentMethodOptionsAcssDebit'MandateOptions = GHC.Maybe.Nothing,
                                                                                        setupIntentPaymentMethodOptionsAcssDebit'VerificationMethod = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options.properties.acss_debit.anyOf.properties.currency@ in the specification.
-- 
-- Currency supported by the bank account
data SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullable =
   SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableEnumCad -- ^ Represents the JSON value @"cad"@
  | SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableEnumUsd -- ^ Represents the JSON value @"usd"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullable
    where toJSON (SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableOther val) = val
          toJSON (SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableEnumCad) = "cad"
          toJSON (SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableEnumUsd) = "usd"
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullable
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "cad" -> SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableEnumCad
                                            | val GHC.Classes.== "usd" -> SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableEnumUsd
                                            | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsAcssDebit'Currency'NonNullableOther val)
-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options.properties.acss_debit.anyOf.properties.verification_method@ in the specification.
-- 
-- Bank account verification method.
data SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod' =
   SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'EnumAutomatic -- ^ Represents the JSON value @"automatic"@
  | SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'EnumInstant -- ^ Represents the JSON value @"instant"@
  | SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'EnumMicrodeposits -- ^ Represents the JSON value @"microdeposits"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'
    where toJSON (SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'Other val) = val
          toJSON (SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'EnumAutomatic) = "automatic"
          toJSON (SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'EnumInstant) = "instant"
          toJSON (SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'EnumMicrodeposits) = "microdeposits"
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "automatic" -> SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'EnumAutomatic
                                            | val GHC.Classes.== "instant" -> SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'EnumInstant
                                            | val GHC.Classes.== "microdeposits" -> SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'EnumMicrodeposits
                                            | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsAcssDebit'VerificationMethod'Other val)
-- | Defines the object schema located at @components.schemas.setup_intent_payment_method_options.properties.link.anyOf@ in the specification.
-- 
-- 
data SetupIntentPaymentMethodOptionsLink' = SetupIntentPaymentMethodOptionsLink' {
  -- | persistent_token: Token used for persistent Link logins.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  setupIntentPaymentMethodOptionsLink'PersistentToken :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | verification_method: Bank account verification method.
  , setupIntentPaymentMethodOptionsLink'VerificationMethod :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsLink'VerificationMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsLink'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("persistent_token" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsLink'PersistentToken obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsLink'VerificationMethod obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("persistent_token" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsLink'PersistentToken obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsLink'VerificationMethod obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsLink'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptionsLink'" (\obj -> (GHC.Base.pure SetupIntentPaymentMethodOptionsLink' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "persistent_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))
-- | Create a new 'SetupIntentPaymentMethodOptionsLink'' with all required fields.
mkSetupIntentPaymentMethodOptionsLink' :: SetupIntentPaymentMethodOptionsLink'
mkSetupIntentPaymentMethodOptionsLink' = SetupIntentPaymentMethodOptionsLink'{setupIntentPaymentMethodOptionsLink'PersistentToken = GHC.Maybe.Nothing,
                                                                              setupIntentPaymentMethodOptionsLink'VerificationMethod = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options.properties.link.anyOf.properties.verification_method@ in the specification.
-- 
-- Bank account verification method.
data SetupIntentPaymentMethodOptionsLink'VerificationMethod' =
   SetupIntentPaymentMethodOptionsLink'VerificationMethod'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentPaymentMethodOptionsLink'VerificationMethod'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentPaymentMethodOptionsLink'VerificationMethod'EnumAutomatic -- ^ Represents the JSON value @"automatic"@
  | SetupIntentPaymentMethodOptionsLink'VerificationMethod'EnumInstant -- ^ Represents the JSON value @"instant"@
  | SetupIntentPaymentMethodOptionsLink'VerificationMethod'EnumMicrodeposits -- ^ Represents the JSON value @"microdeposits"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsLink'VerificationMethod'
    where toJSON (SetupIntentPaymentMethodOptionsLink'VerificationMethod'Other val) = val
          toJSON (SetupIntentPaymentMethodOptionsLink'VerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (SetupIntentPaymentMethodOptionsLink'VerificationMethod'EnumAutomatic) = "automatic"
          toJSON (SetupIntentPaymentMethodOptionsLink'VerificationMethod'EnumInstant) = "instant"
          toJSON (SetupIntentPaymentMethodOptionsLink'VerificationMethod'EnumMicrodeposits) = "microdeposits"
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsLink'VerificationMethod'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "automatic" -> SetupIntentPaymentMethodOptionsLink'VerificationMethod'EnumAutomatic
                                            | val GHC.Classes.== "instant" -> SetupIntentPaymentMethodOptionsLink'VerificationMethod'EnumInstant
                                            | val GHC.Classes.== "microdeposits" -> SetupIntentPaymentMethodOptionsLink'VerificationMethod'EnumMicrodeposits
                                            | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsLink'VerificationMethod'Other val)
-- | Defines the object schema located at @components.schemas.setup_intent_payment_method_options.properties.sepa_debit.anyOf@ in the specification.
-- 
-- 
data SetupIntentPaymentMethodOptionsSepaDebit' = SetupIntentPaymentMethodOptionsSepaDebit' {
  -- | mandate_options: 
  setupIntentPaymentMethodOptionsSepaDebit'MandateOptions :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsMandateOptionsSepaDebit)
  -- | verification_method: Bank account verification method.
  , setupIntentPaymentMethodOptionsSepaDebit'VerificationMethod :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsSepaDebit'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsSepaDebit'MandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsSepaDebit'VerificationMethod obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsSepaDebit'MandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsSepaDebit'VerificationMethod obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsSepaDebit'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptionsSepaDebit'" (\obj -> (GHC.Base.pure SetupIntentPaymentMethodOptionsSepaDebit' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mandate_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))
-- | Create a new 'SetupIntentPaymentMethodOptionsSepaDebit'' with all required fields.
mkSetupIntentPaymentMethodOptionsSepaDebit' :: SetupIntentPaymentMethodOptionsSepaDebit'
mkSetupIntentPaymentMethodOptionsSepaDebit' = SetupIntentPaymentMethodOptionsSepaDebit'{setupIntentPaymentMethodOptionsSepaDebit'MandateOptions = GHC.Maybe.Nothing,
                                                                                        setupIntentPaymentMethodOptionsSepaDebit'VerificationMethod = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options.properties.sepa_debit.anyOf.properties.verification_method@ in the specification.
-- 
-- Bank account verification method.
data SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod' =
   SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'EnumAutomatic -- ^ Represents the JSON value @"automatic"@
  | SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'EnumInstant -- ^ Represents the JSON value @"instant"@
  | SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'EnumMicrodeposits -- ^ Represents the JSON value @"microdeposits"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'
    where toJSON (SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'Other val) = val
          toJSON (SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'EnumAutomatic) = "automatic"
          toJSON (SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'EnumInstant) = "instant"
          toJSON (SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'EnumMicrodeposits) = "microdeposits"
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "automatic" -> SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'EnumAutomatic
                                            | val GHC.Classes.== "instant" -> SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'EnumInstant
                                            | val GHC.Classes.== "microdeposits" -> SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'EnumMicrodeposits
                                            | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsSepaDebit'VerificationMethod'Other val)
-- | Defines the object schema located at @components.schemas.setup_intent_payment_method_options.properties.us_bank_account.anyOf@ in the specification.
-- 
-- 
data SetupIntentPaymentMethodOptionsUsBankAccount' = SetupIntentPaymentMethodOptionsUsBankAccount' {
  -- | financial_connections: 
  setupIntentPaymentMethodOptionsUsBankAccount'FinancialConnections :: (GHC.Maybe.Maybe LinkedAccountOptionsUsBankAccount)
  -- | verification_method: Bank account verification method.
  , setupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod :: (GHC.Maybe.Maybe SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsUsBankAccount'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_connections" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsUsBankAccount'FinancialConnections obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_connections" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsUsBankAccount'FinancialConnections obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsUsBankAccount'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptionsUsBankAccount'" (\obj -> (GHC.Base.pure SetupIntentPaymentMethodOptionsUsBankAccount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_connections")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))
-- | Create a new 'SetupIntentPaymentMethodOptionsUsBankAccount'' with all required fields.
mkSetupIntentPaymentMethodOptionsUsBankAccount' :: SetupIntentPaymentMethodOptionsUsBankAccount'
mkSetupIntentPaymentMethodOptionsUsBankAccount' = SetupIntentPaymentMethodOptionsUsBankAccount'{setupIntentPaymentMethodOptionsUsBankAccount'FinancialConnections = GHC.Maybe.Nothing,
                                                                                                setupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options.properties.us_bank_account.anyOf.properties.verification_method@ in the specification.
-- 
-- Bank account verification method.
data SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod' =
   SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'EnumAutomatic -- ^ Represents the JSON value @"automatic"@
  | SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'EnumInstant -- ^ Represents the JSON value @"instant"@
  | SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'EnumMicrodeposits -- ^ Represents the JSON value @"microdeposits"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'
    where toJSON (SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'Other val) = val
          toJSON (SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'EnumAutomatic) = "automatic"
          toJSON (SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'EnumInstant) = "instant"
          toJSON (SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'EnumMicrodeposits) = "microdeposits"
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "automatic" -> SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'EnumAutomatic
                                            | val GHC.Classes.== "instant" -> SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'EnumInstant
                                            | val GHC.Classes.== "microdeposits" -> SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'EnumMicrodeposits
                                            | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsUsBankAccount'VerificationMethod'Other val)
