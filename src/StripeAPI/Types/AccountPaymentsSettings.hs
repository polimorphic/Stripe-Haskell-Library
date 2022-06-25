-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AccountPaymentsSettings
module StripeAPI.Types.AccountPaymentsSettings where

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

-- | Defines the object schema located at @components.schemas.account_payments_settings@ in the specification.
-- 
-- 
data AccountPaymentsSettings = AccountPaymentsSettings {
  -- | statement_descriptor: The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic \`statement_descriptor\` specified on the charge.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  accountPaymentsSettingsStatementDescriptor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | statement_descriptor_kana: The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only)
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountPaymentsSettingsStatementDescriptorKana :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | statement_descriptor_kanji: The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only)
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountPaymentsSettingsStatementDescriptorKanji :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | statement_descriptor_prefix_kana: The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic \`statement_descriptor_suffix_kana\` specified on the charge. \`statement_descriptor_prefix_kana\` is useful for maximizing descriptor space for the dynamic portion.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountPaymentsSettingsStatementDescriptorPrefixKana :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | statement_descriptor_prefix_kanji: The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic \`statement_descriptor_suffix_kanji\` specified on the charge. \`statement_descriptor_prefix_kanji\` is useful for maximizing descriptor space for the dynamic portion.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountPaymentsSettingsStatementDescriptorPrefixKanji :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountPaymentsSettings
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (accountPaymentsSettingsStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_kana" Data.Aeson.Types.ToJSON..=)) (accountPaymentsSettingsStatementDescriptorKana obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_kanji" Data.Aeson.Types.ToJSON..=)) (accountPaymentsSettingsStatementDescriptorKanji obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_prefix_kana" Data.Aeson.Types.ToJSON..=)) (accountPaymentsSettingsStatementDescriptorPrefixKana obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_prefix_kanji" Data.Aeson.Types.ToJSON..=)) (accountPaymentsSettingsStatementDescriptorPrefixKanji obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (accountPaymentsSettingsStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_kana" Data.Aeson.Types.ToJSON..=)) (accountPaymentsSettingsStatementDescriptorKana obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_kanji" Data.Aeson.Types.ToJSON..=)) (accountPaymentsSettingsStatementDescriptorKanji obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_prefix_kana" Data.Aeson.Types.ToJSON..=)) (accountPaymentsSettingsStatementDescriptorPrefixKana obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_prefix_kanji" Data.Aeson.Types.ToJSON..=)) (accountPaymentsSettingsStatementDescriptorPrefixKanji obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountPaymentsSettings
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountPaymentsSettings" (\obj -> ((((GHC.Base.pure AccountPaymentsSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor_kanji")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor_prefix_kana")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor_prefix_kanji"))
-- | Create a new 'AccountPaymentsSettings' with all required fields.
mkAccountPaymentsSettings :: AccountPaymentsSettings
mkAccountPaymentsSettings = AccountPaymentsSettings{accountPaymentsSettingsStatementDescriptor = GHC.Maybe.Nothing,
                                                    accountPaymentsSettingsStatementDescriptorKana = GHC.Maybe.Nothing,
                                                    accountPaymentsSettingsStatementDescriptorKanji = GHC.Maybe.Nothing,
                                                    accountPaymentsSettingsStatementDescriptorPrefixKana = GHC.Maybe.Nothing,
                                                    accountPaymentsSettingsStatementDescriptorPrefixKanji = GHC.Maybe.Nothing}
