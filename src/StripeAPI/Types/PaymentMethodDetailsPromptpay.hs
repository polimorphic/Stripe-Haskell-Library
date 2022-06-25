-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodDetailsPromptpay
module StripeAPI.Types.PaymentMethodDetailsPromptpay where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_promptpay@ in the specification.
-- 
-- 
data PaymentMethodDetailsPromptpay = PaymentMethodDetailsPromptpay {
  -- | reference: Bill reference generated by PromptPay
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodDetailsPromptpayReference :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsPromptpay
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsPromptpayReference obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsPromptpayReference obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsPromptpay
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsPromptpay" (\obj -> GHC.Base.pure PaymentMethodDetailsPromptpay GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reference"))
-- | Create a new 'PaymentMethodDetailsPromptpay' with all required fields.
mkPaymentMethodDetailsPromptpay :: PaymentMethodDetailsPromptpay
mkPaymentMethodDetailsPromptpay = PaymentMethodDetailsPromptpay{paymentMethodDetailsPromptpayReference = GHC.Maybe.Nothing}
