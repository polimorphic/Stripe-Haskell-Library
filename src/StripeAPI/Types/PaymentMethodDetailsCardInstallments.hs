{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema PaymentMethodDetailsCardInstallments
module StripeAPI.Types.PaymentMethodDetailsCardInstallments where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardInstallmentsPlan
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_details_card_installments@ in the specification.
data PaymentMethodDetailsCardInstallments
  = PaymentMethodDetailsCardInstallments
      { -- | plan: Installment plan selected for the payment.
        paymentMethodDetailsCardInstallmentsPlan :: (GHC.Maybe.Maybe PaymentMethodDetailsCardInstallmentsPlan')
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardInstallments where
  toJSON obj = Data.Aeson.Types.Internal.object ("plan" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardInstallmentsPlan obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("plan" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardInstallmentsPlan obj)

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallments where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardInstallments" (\obj -> GHC.Base.pure PaymentMethodDetailsCardInstallments GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan"))

-- | Create a new 'PaymentMethodDetailsCardInstallments' with all required fields.
mkPaymentMethodDetailsCardInstallments :: PaymentMethodDetailsCardInstallments
mkPaymentMethodDetailsCardInstallments = PaymentMethodDetailsCardInstallments {paymentMethodDetailsCardInstallmentsPlan = GHC.Maybe.Nothing}

-- | Defines the object schema located at @components.schemas.payment_method_details_card_installments.properties.plan.anyOf@ in the specification.
--
-- Installment plan selected for the payment.
data PaymentMethodDetailsCardInstallmentsPlan'
  = PaymentMethodDetailsCardInstallmentsPlan'
      { -- | count: For \`fixed_count\` installment plans, this is the number of installment payments your customer will make to their credit card.
        paymentMethodDetailsCardInstallmentsPlan'Count :: (GHC.Maybe.Maybe GHC.Types.Int)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardInstallmentsPlan' where
  toJSON obj = Data.Aeson.Types.Internal.object ("count" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardInstallmentsPlan'Count obj : "interval" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "month" : "type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fixed_count" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("count" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardInstallmentsPlan'Count obj) GHC.Base.<> (("interval" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "month") GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fixed_count")))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardInstallmentsPlan' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardInstallmentsPlan'" (\obj -> GHC.Base.pure PaymentMethodDetailsCardInstallmentsPlan' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "count"))

-- | Create a new 'PaymentMethodDetailsCardInstallmentsPlan'' with all required fields.
mkPaymentMethodDetailsCardInstallmentsPlan' :: PaymentMethodDetailsCardInstallmentsPlan'
mkPaymentMethodDetailsCardInstallmentsPlan' = PaymentMethodDetailsCardInstallmentsPlan' {paymentMethodDetailsCardInstallmentsPlan'Count = GHC.Maybe.Nothing}
