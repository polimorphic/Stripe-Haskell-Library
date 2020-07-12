{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema PlatformTaxFee
module StripeAPI.Types.PlatformTaxFee where

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

-- | Defines the object schema located at @components.schemas.platform_tax_fee@ in the specification.
data PlatformTaxFee
  = PlatformTaxFee
      { -- | account: The Connected account that incurred this charge.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        platformTaxFeeAccount :: Data.Text.Internal.Text,
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        platformTaxFeeId :: Data.Text.Internal.Text,
        -- | source_transaction: The payment object that caused this tax to be inflicted.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        platformTaxFeeSourceTransaction :: Data.Text.Internal.Text,
        -- | type: The type of tax (VAT).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        platformTaxFeeType :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PlatformTaxFee where
  toJSON obj = Data.Aeson.Types.Internal.object ("account" Data.Aeson.Types.ToJSON..= platformTaxFeeAccount obj : "id" Data.Aeson.Types.ToJSON..= platformTaxFeeId obj : "source_transaction" Data.Aeson.Types.ToJSON..= platformTaxFeeSourceTransaction obj : "type" Data.Aeson.Types.ToJSON..= platformTaxFeeType obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "platform_tax_fee" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("account" Data.Aeson.Types.ToJSON..= platformTaxFeeAccount obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= platformTaxFeeId obj) GHC.Base.<> (("source_transaction" Data.Aeson.Types.ToJSON..= platformTaxFeeSourceTransaction obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= platformTaxFeeType obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "platform_tax_fee")))))

instance Data.Aeson.Types.FromJSON.FromJSON PlatformTaxFee where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PlatformTaxFee" (\obj -> (((GHC.Base.pure PlatformTaxFee GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'PlatformTaxFee' with all required fields.
mkPlatformTaxFee ::
  -- | 'platformTaxFeeAccount'
  Data.Text.Internal.Text ->
  -- | 'platformTaxFeeId'
  Data.Text.Internal.Text ->
  -- | 'platformTaxFeeSourceTransaction'
  Data.Text.Internal.Text ->
  -- | 'platformTaxFeeType'
  Data.Text.Internal.Text ->
  PlatformTaxFee
mkPlatformTaxFee platformTaxFeeAccount platformTaxFeeId platformTaxFeeSourceTransaction platformTaxFeeType =
  PlatformTaxFee
    { platformTaxFeeAccount = platformTaxFeeAccount,
      platformTaxFeeId = platformTaxFeeId,
      platformTaxFeeSourceTransaction = platformTaxFeeSourceTransaction,
      platformTaxFeeType = platformTaxFeeType
    }
