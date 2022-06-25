-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionPhoneNumberCollection
module StripeAPI.Types.PaymentPagesCheckoutSessionPhoneNumberCollection where

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

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_phone_number_collection@ in the specification.
-- 
-- 
data PaymentPagesCheckoutSessionPhoneNumberCollection = PaymentPagesCheckoutSessionPhoneNumberCollection {
  -- | enabled: Indicates whether phone number collection is enabled for the session
  paymentPagesCheckoutSessionPhoneNumberCollectionEnabled :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionPhoneNumberCollection
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionPhoneNumberCollectionEnabled obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionPhoneNumberCollectionEnabled obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionPhoneNumberCollection
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionPhoneNumberCollection" (\obj -> GHC.Base.pure PaymentPagesCheckoutSessionPhoneNumberCollection GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled"))
-- | Create a new 'PaymentPagesCheckoutSessionPhoneNumberCollection' with all required fields.
mkPaymentPagesCheckoutSessionPhoneNumberCollection :: GHC.Types.Bool -- ^ 'paymentPagesCheckoutSessionPhoneNumberCollectionEnabled'
  -> PaymentPagesCheckoutSessionPhoneNumberCollection
mkPaymentPagesCheckoutSessionPhoneNumberCollection paymentPagesCheckoutSessionPhoneNumberCollectionEnabled = PaymentPagesCheckoutSessionPhoneNumberCollection{paymentPagesCheckoutSessionPhoneNumberCollectionEnabled = paymentPagesCheckoutSessionPhoneNumberCollectionEnabled}