{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema AccountCardPaymentsSettings
module StripeAPI.Types.AccountCardPaymentsSettings where

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
import {-# SOURCE #-} StripeAPI.Types.AccountDeclineChargeOn
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.account_card_payments_settings@ in the specification.
data AccountCardPaymentsSettings
  = AccountCardPaymentsSettings
      { -- | decline_on:
        accountCardPaymentsSettingsDeclineOn :: (GHC.Maybe.Maybe AccountDeclineChargeOn),
        -- | statement_descriptor_prefix: The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic \`statement_descriptor\` specified on the charge. \`statement_descriptor_prefix\` is useful for maximizing descriptor space for the dynamic portion.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        accountCardPaymentsSettingsStatementDescriptorPrefix :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountCardPaymentsSettings where
  toJSON obj = Data.Aeson.Types.Internal.object ("decline_on" Data.Aeson.Types.ToJSON..= accountCardPaymentsSettingsDeclineOn obj : "statement_descriptor_prefix" Data.Aeson.Types.ToJSON..= accountCardPaymentsSettingsStatementDescriptorPrefix obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("decline_on" Data.Aeson.Types.ToJSON..= accountCardPaymentsSettingsDeclineOn obj) GHC.Base.<> ("statement_descriptor_prefix" Data.Aeson.Types.ToJSON..= accountCardPaymentsSettingsStatementDescriptorPrefix obj))

instance Data.Aeson.Types.FromJSON.FromJSON AccountCardPaymentsSettings where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountCardPaymentsSettings" (\obj -> (GHC.Base.pure AccountCardPaymentsSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "decline_on")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor_prefix"))

-- | Create a new 'AccountCardPaymentsSettings' with all required fields.
mkAccountCardPaymentsSettings :: AccountCardPaymentsSettings
mkAccountCardPaymentsSettings =
  AccountCardPaymentsSettings
    { accountCardPaymentsSettingsDeclineOn = GHC.Maybe.Nothing,
      accountCardPaymentsSettingsStatementDescriptorPrefix = GHC.Maybe.Nothing
    }
