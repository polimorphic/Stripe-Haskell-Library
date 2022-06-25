-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodAuBecsDebit
module StripeAPI.Types.PaymentMethodAuBecsDebit where

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

-- | Defines the object schema located at @components.schemas.payment_method_au_becs_debit@ in the specification.
-- 
-- 
data PaymentMethodAuBecsDebit = PaymentMethodAuBecsDebit {
  -- | bsb_number: Six-digit number identifying bank and branch associated with this bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodAuBecsDebitBsbNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodAuBecsDebitFingerprint :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | last4: Last four digits of the bank account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodAuBecsDebitLast4 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodAuBecsDebit
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bsb_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodAuBecsDebitBsbNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodAuBecsDebitFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodAuBecsDebitLast4 obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bsb_number" Data.Aeson.Types.ToJSON..=)) (paymentMethodAuBecsDebitBsbNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (paymentMethodAuBecsDebitFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (paymentMethodAuBecsDebitLast4 obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodAuBecsDebit
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodAuBecsDebit" (\obj -> ((GHC.Base.pure PaymentMethodAuBecsDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bsb_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last4"))
-- | Create a new 'PaymentMethodAuBecsDebit' with all required fields.
mkPaymentMethodAuBecsDebit :: PaymentMethodAuBecsDebit
mkPaymentMethodAuBecsDebit = PaymentMethodAuBecsDebit{paymentMethodAuBecsDebitBsbNumber = GHC.Maybe.Nothing,
                                                      paymentMethodAuBecsDebitFingerprint = GHC.Maybe.Nothing,
                                                      paymentMethodAuBecsDebitLast4 = GHC.Maybe.Nothing}
