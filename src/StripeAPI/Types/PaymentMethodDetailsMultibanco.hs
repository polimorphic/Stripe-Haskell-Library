{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema PaymentMethodDetailsMultibanco
module StripeAPI.Types.PaymentMethodDetailsMultibanco where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_multibanco@ in the specification.
data PaymentMethodDetailsMultibanco
  = PaymentMethodDetailsMultibanco
      { -- | entity: Entity number associated with this Multibanco payment.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsMultibancoEntity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | reference: Reference number associated with this Multibanco payment.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsMultibancoReference :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsMultibanco where
  toJSON obj = Data.Aeson.Types.Internal.object ("entity" Data.Aeson.Types.ToJSON..= paymentMethodDetailsMultibancoEntity obj : "reference" Data.Aeson.Types.ToJSON..= paymentMethodDetailsMultibancoReference obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("entity" Data.Aeson.Types.ToJSON..= paymentMethodDetailsMultibancoEntity obj) GHC.Base.<> ("reference" Data.Aeson.Types.ToJSON..= paymentMethodDetailsMultibancoReference obj))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsMultibanco where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsMultibanco" (\obj -> (GHC.Base.pure PaymentMethodDetailsMultibanco GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reference"))

-- | Create a new 'PaymentMethodDetailsMultibanco' with all required fields.
mkPaymentMethodDetailsMultibanco :: PaymentMethodDetailsMultibanco
mkPaymentMethodDetailsMultibanco =
  PaymentMethodDetailsMultibanco
    { paymentMethodDetailsMultibancoEntity = GHC.Maybe.Nothing,
      paymentMethodDetailsMultibancoReference = GHC.Maybe.Nothing
    }
