{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AccountCapabilities
module StripeAPI.Types.AccountCapabilities where

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

-- | Defines the data type for the schema account_capabilities
-- 
-- 
data AccountCapabilities = AccountCapabilities {
  -- | card_issuing: The status of the card issuing capability of the account, or whether you can use Issuing to distribute funds on cards
  accountCapabilitiesCardIssuing :: (GHC.Maybe.Maybe AccountCapabilitiesCardIssuing')
  -- | card_payments: The status of the card payments capability of the account, or whether the account can directly process credit and debit card charges.
  , accountCapabilitiesCardPayments :: (GHC.Maybe.Maybe AccountCapabilitiesCardPayments')
  -- | legacy_payments: The status of the legacy payments capability of the account.
  , accountCapabilitiesLegacyPayments :: (GHC.Maybe.Maybe AccountCapabilitiesLegacyPayments')
  -- | transfers: The status of the transfers capability of the account, or whether your platform can transfer funds to the account.
  , accountCapabilitiesTransfers :: (GHC.Maybe.Maybe AccountCapabilitiesTransfers')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountCapabilities
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "card_issuing" (accountCapabilitiesCardIssuing obj) : (Data.Aeson..=) "card_payments" (accountCapabilitiesCardPayments obj) : (Data.Aeson..=) "legacy_payments" (accountCapabilitiesLegacyPayments obj) : (Data.Aeson..=) "transfers" (accountCapabilitiesTransfers obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "card_issuing" (accountCapabilitiesCardIssuing obj) GHC.Base.<> ((Data.Aeson..=) "card_payments" (accountCapabilitiesCardPayments obj) GHC.Base.<> ((Data.Aeson..=) "legacy_payments" (accountCapabilitiesLegacyPayments obj) GHC.Base.<> (Data.Aeson..=) "transfers" (accountCapabilitiesTransfers obj))))
instance Data.Aeson.Types.FromJSON.FromJSON AccountCapabilities
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountCapabilities" (\obj -> (((GHC.Base.pure AccountCapabilities GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_issuing")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "legacy_payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transfers"))
-- | Defines the enum schema account_capabilitiesCard_issuing\'
-- 
-- The status of the card issuing capability of the account, or whether you can use Issuing to distribute funds on cards
data AccountCapabilitiesCardIssuing'
    = AccountCapabilitiesCardIssuing'EnumOther Data.Aeson.Types.Internal.Value
    | AccountCapabilitiesCardIssuing'EnumTyped Data.Text.Internal.Text
    | AccountCapabilitiesCardIssuing'EnumStringActive
    | AccountCapabilitiesCardIssuing'EnumStringInactive
    | AccountCapabilitiesCardIssuing'EnumStringPending
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountCapabilitiesCardIssuing'
    where toJSON (AccountCapabilitiesCardIssuing'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountCapabilitiesCardIssuing'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountCapabilitiesCardIssuing'EnumStringActive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active"
          toJSON (AccountCapabilitiesCardIssuing'EnumStringInactive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "inactive"
          toJSON (AccountCapabilitiesCardIssuing'EnumStringPending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
instance Data.Aeson.FromJSON AccountCapabilitiesCardIssuing'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active")
                                          then AccountCapabilitiesCardIssuing'EnumStringActive
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "inactive")
                                                then AccountCapabilitiesCardIssuing'EnumStringInactive
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                                      then AccountCapabilitiesCardIssuing'EnumStringPending
                                                      else AccountCapabilitiesCardIssuing'EnumOther val)
-- | Defines the enum schema account_capabilitiesCard_payments\'
-- 
-- The status of the card payments capability of the account, or whether the account can directly process credit and debit card charges.
data AccountCapabilitiesCardPayments'
    = AccountCapabilitiesCardPayments'EnumOther Data.Aeson.Types.Internal.Value
    | AccountCapabilitiesCardPayments'EnumTyped Data.Text.Internal.Text
    | AccountCapabilitiesCardPayments'EnumStringActive
    | AccountCapabilitiesCardPayments'EnumStringInactive
    | AccountCapabilitiesCardPayments'EnumStringPending
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountCapabilitiesCardPayments'
    where toJSON (AccountCapabilitiesCardPayments'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountCapabilitiesCardPayments'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountCapabilitiesCardPayments'EnumStringActive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active"
          toJSON (AccountCapabilitiesCardPayments'EnumStringInactive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "inactive"
          toJSON (AccountCapabilitiesCardPayments'EnumStringPending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
instance Data.Aeson.FromJSON AccountCapabilitiesCardPayments'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active")
                                          then AccountCapabilitiesCardPayments'EnumStringActive
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "inactive")
                                                then AccountCapabilitiesCardPayments'EnumStringInactive
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                                      then AccountCapabilitiesCardPayments'EnumStringPending
                                                      else AccountCapabilitiesCardPayments'EnumOther val)
-- | Defines the enum schema account_capabilitiesLegacy_payments\'
-- 
-- The status of the legacy payments capability of the account.
data AccountCapabilitiesLegacyPayments'
    = AccountCapabilitiesLegacyPayments'EnumOther Data.Aeson.Types.Internal.Value
    | AccountCapabilitiesLegacyPayments'EnumTyped Data.Text.Internal.Text
    | AccountCapabilitiesLegacyPayments'EnumStringActive
    | AccountCapabilitiesLegacyPayments'EnumStringInactive
    | AccountCapabilitiesLegacyPayments'EnumStringPending
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountCapabilitiesLegacyPayments'
    where toJSON (AccountCapabilitiesLegacyPayments'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountCapabilitiesLegacyPayments'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountCapabilitiesLegacyPayments'EnumStringActive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active"
          toJSON (AccountCapabilitiesLegacyPayments'EnumStringInactive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "inactive"
          toJSON (AccountCapabilitiesLegacyPayments'EnumStringPending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
instance Data.Aeson.FromJSON AccountCapabilitiesLegacyPayments'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active")
                                          then AccountCapabilitiesLegacyPayments'EnumStringActive
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "inactive")
                                                then AccountCapabilitiesLegacyPayments'EnumStringInactive
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                                      then AccountCapabilitiesLegacyPayments'EnumStringPending
                                                      else AccountCapabilitiesLegacyPayments'EnumOther val)
-- | Defines the enum schema account_capabilitiesTransfers\'
-- 
-- The status of the transfers capability of the account, or whether your platform can transfer funds to the account.
data AccountCapabilitiesTransfers'
    = AccountCapabilitiesTransfers'EnumOther Data.Aeson.Types.Internal.Value
    | AccountCapabilitiesTransfers'EnumTyped Data.Text.Internal.Text
    | AccountCapabilitiesTransfers'EnumStringActive
    | AccountCapabilitiesTransfers'EnumStringInactive
    | AccountCapabilitiesTransfers'EnumStringPending
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountCapabilitiesTransfers'
    where toJSON (AccountCapabilitiesTransfers'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountCapabilitiesTransfers'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountCapabilitiesTransfers'EnumStringActive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active"
          toJSON (AccountCapabilitiesTransfers'EnumStringInactive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "inactive"
          toJSON (AccountCapabilitiesTransfers'EnumStringPending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
instance Data.Aeson.FromJSON AccountCapabilitiesTransfers'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "active")
                                          then AccountCapabilitiesTransfers'EnumStringActive
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "inactive")
                                                then AccountCapabilitiesTransfers'EnumStringInactive
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                                      then AccountCapabilitiesTransfers'EnumStringPending
                                                      else AccountCapabilitiesTransfers'EnumOther val)