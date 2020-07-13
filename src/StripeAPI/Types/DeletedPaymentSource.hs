{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema DeletedPaymentSource
module StripeAPI.Types.DeletedPaymentSource where

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
import {-# SOURCE #-} StripeAPI.Types.DeletedAlipayAccount
import {-# SOURCE #-} StripeAPI.Types.DeletedBankAccount
import {-# SOURCE #-} StripeAPI.Types.DeletedBitcoinReceiver
import {-# SOURCE #-} StripeAPI.Types.DeletedCard
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.deleted_payment_source.anyOf@ in the specification.
data DeletedPaymentSource
  = DeletedPaymentSource
      { -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        deletedPaymentSourceCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        deletedPaymentSourceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeletedPaymentSource where
  toJSON obj = Data.Aeson.Types.Internal.object ("currency" Data.Aeson.Types.ToJSON..= deletedPaymentSourceCurrency obj : "id" Data.Aeson.Types.ToJSON..= deletedPaymentSourceId obj : "deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "alipay_account" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("currency" Data.Aeson.Types.ToJSON..= deletedPaymentSourceCurrency obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= deletedPaymentSourceId obj) GHC.Base.<> (("deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "alipay_account"))))

instance Data.Aeson.Types.FromJSON.FromJSON DeletedPaymentSource where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedPaymentSource" (\obj -> (GHC.Base.pure DeletedPaymentSource GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id"))

-- | Create a new 'DeletedPaymentSource' with all required fields.
mkDeletedPaymentSource :: DeletedPaymentSource
mkDeletedPaymentSource =
  DeletedPaymentSource
    { deletedPaymentSourceCurrency = GHC.Maybe.Nothing,
      deletedPaymentSourceId = GHC.Maybe.Nothing
    }