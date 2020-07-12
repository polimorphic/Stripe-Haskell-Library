{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema SourceTypeSepaDebit
module StripeAPI.Types.SourceTypeSepaDebit where

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

-- | Defines the object schema located at @components.schemas.source_type_sepa_debit@ in the specification.
data SourceTypeSepaDebit
  = SourceTypeSepaDebit
      { -- | bank_code
        sourceTypeSepaDebitBankCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | branch_code
        sourceTypeSepaDebitBranchCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | country
        sourceTypeSepaDebitCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | fingerprint
        sourceTypeSepaDebitFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | last4
        sourceTypeSepaDebitLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | mandate_reference
        sourceTypeSepaDebitMandateReference :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | mandate_url
        sourceTypeSepaDebitMandateUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeSepaDebit where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank_code" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitBankCode obj : "branch_code" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitBranchCode obj : "country" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitCountry obj : "fingerprint" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitFingerprint obj : "last4" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitLast4 obj : "mandate_reference" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitMandateReference obj : "mandate_url" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitMandateUrl obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bank_code" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitBankCode obj) GHC.Base.<> (("branch_code" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitBranchCode obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitCountry obj) GHC.Base.<> (("fingerprint" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitFingerprint obj) GHC.Base.<> (("last4" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitLast4 obj) GHC.Base.<> (("mandate_reference" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitMandateReference obj) GHC.Base.<> ("mandate_url" Data.Aeson.Types.ToJSON..= sourceTypeSepaDebitMandateUrl obj)))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeSepaDebit where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeSepaDebit" (\obj -> ((((((GHC.Base.pure SourceTypeSepaDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "branch_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mandate_url"))

-- | Create a new 'SourceTypeSepaDebit' with all required fields.
mkSourceTypeSepaDebit :: SourceTypeSepaDebit
mkSourceTypeSepaDebit =
  SourceTypeSepaDebit
    { sourceTypeSepaDebitBankCode = GHC.Maybe.Nothing,
      sourceTypeSepaDebitBranchCode = GHC.Maybe.Nothing,
      sourceTypeSepaDebitCountry = GHC.Maybe.Nothing,
      sourceTypeSepaDebitFingerprint = GHC.Maybe.Nothing,
      sourceTypeSepaDebitLast4 = GHC.Maybe.Nothing,
      sourceTypeSepaDebitMandateReference = GHC.Maybe.Nothing,
      sourceTypeSepaDebitMandateUrl = GHC.Maybe.Nothing
    }
