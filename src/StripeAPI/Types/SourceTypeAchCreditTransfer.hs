{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema SourceTypeAchCreditTransfer
module StripeAPI.Types.SourceTypeAchCreditTransfer where

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

-- | Defines the object schema located at @components.schemas.source_type_ach_credit_transfer@ in the specification.
data SourceTypeAchCreditTransfer
  = SourceTypeAchCreditTransfer
      { -- | account_number
        sourceTypeAchCreditTransferAccountNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | bank_name
        sourceTypeAchCreditTransferBankName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | fingerprint
        sourceTypeAchCreditTransferFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | refund_account_holder_name
        sourceTypeAchCreditTransferRefundAccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | refund_account_holder_type
        sourceTypeAchCreditTransferRefundAccountHolderType :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | refund_routing_number
        sourceTypeAchCreditTransferRefundRoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | routing_number
        sourceTypeAchCreditTransferRoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | swift_code
        sourceTypeAchCreditTransferSwiftCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeAchCreditTransfer where
  toJSON obj = Data.Aeson.Types.Internal.object ("account_number" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferAccountNumber obj : "bank_name" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferBankName obj : "fingerprint" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferFingerprint obj : "refund_account_holder_name" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferRefundAccountHolderName obj : "refund_account_holder_type" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferRefundAccountHolderType obj : "refund_routing_number" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferRefundRoutingNumber obj : "routing_number" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferRoutingNumber obj : "swift_code" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferSwiftCode obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("account_number" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferAccountNumber obj) GHC.Base.<> (("bank_name" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferBankName obj) GHC.Base.<> (("fingerprint" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferFingerprint obj) GHC.Base.<> (("refund_account_holder_name" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferRefundAccountHolderName obj) GHC.Base.<> (("refund_account_holder_type" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferRefundAccountHolderType obj) GHC.Base.<> (("refund_routing_number" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferRefundRoutingNumber obj) GHC.Base.<> (("routing_number" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferRoutingNumber obj) GHC.Base.<> ("swift_code" Data.Aeson.Types.ToJSON..= sourceTypeAchCreditTransferSwiftCode obj))))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeAchCreditTransfer where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeAchCreditTransfer" (\obj -> (((((((GHC.Base.pure SourceTypeAchCreditTransfer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "swift_code"))

-- | Create a new 'SourceTypeAchCreditTransfer' with all required fields.
mkSourceTypeAchCreditTransfer :: SourceTypeAchCreditTransfer
mkSourceTypeAchCreditTransfer =
  SourceTypeAchCreditTransfer
    { sourceTypeAchCreditTransferAccountNumber = GHC.Maybe.Nothing,
      sourceTypeAchCreditTransferBankName = GHC.Maybe.Nothing,
      sourceTypeAchCreditTransferFingerprint = GHC.Maybe.Nothing,
      sourceTypeAchCreditTransferRefundAccountHolderName = GHC.Maybe.Nothing,
      sourceTypeAchCreditTransferRefundAccountHolderType = GHC.Maybe.Nothing,
      sourceTypeAchCreditTransferRefundRoutingNumber = GHC.Maybe.Nothing,
      sourceTypeAchCreditTransferRoutingNumber = GHC.Maybe.Nothing,
      sourceTypeAchCreditTransferSwiftCode = GHC.Maybe.Nothing
    }
