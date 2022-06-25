-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodCardWalletVisaCheckout
module StripeAPI.Types.PaymentMethodCardWalletVisaCheckout where

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
import {-# SOURCE #-} StripeAPI.Types.Address

-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_visa_checkout@ in the specification.
-- 
-- 
data PaymentMethodCardWalletVisaCheckout = PaymentMethodCardWalletVisaCheckout {
  -- | billing_address: Owner\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  paymentMethodCardWalletVisaCheckoutBillingAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable))
  -- | email: Owner\'s verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutEmail :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | name: Owner\'s verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | shipping_address: Owner\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
  , paymentMethodCardWalletVisaCheckoutShippingAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletVisaCheckout
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_address" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_address" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_address" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_address" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletVisaCheckout
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletVisaCheckout" (\obj -> (((GHC.Base.pure PaymentMethodCardWalletVisaCheckout GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_address"))
-- | Create a new 'PaymentMethodCardWalletVisaCheckout' with all required fields.
mkPaymentMethodCardWalletVisaCheckout :: PaymentMethodCardWalletVisaCheckout
mkPaymentMethodCardWalletVisaCheckout = PaymentMethodCardWalletVisaCheckout{paymentMethodCardWalletVisaCheckoutBillingAddress = GHC.Maybe.Nothing,
                                                                            paymentMethodCardWalletVisaCheckoutEmail = GHC.Maybe.Nothing,
                                                                            paymentMethodCardWalletVisaCheckoutName = GHC.Maybe.Nothing,
                                                                            paymentMethodCardWalletVisaCheckoutShippingAddress = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_visa_checkout.properties.billing_address.anyOf@ in the specification.
-- 
-- Owner\\\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable = PaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullablePostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | state: State, county, province, or region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableState obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableState obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable" (\obj -> (((((GHC.Base.pure PaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))
-- | Create a new 'PaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable' with all required fields.
mkPaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable :: PaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable
mkPaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable = PaymentMethodCardWalletVisaCheckoutBillingAddress'NonNullable{paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableCity = GHC.Maybe.Nothing,
                                                                                                                                paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableCountry = GHC.Maybe.Nothing,
                                                                                                                                paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableLine1 = GHC.Maybe.Nothing,
                                                                                                                                paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableLine2 = GHC.Maybe.Nothing,
                                                                                                                                paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullablePostalCode = GHC.Maybe.Nothing,
                                                                                                                                paymentMethodCardWalletVisaCheckoutBillingAddress'NonNullableState = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.payment_method_card_wallet_visa_checkout.properties.shipping_address.anyOf@ in the specification.
-- 
-- Owner\\\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable = PaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullablePostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | state: State, county, province, or region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableState obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableState obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable" (\obj -> (((((GHC.Base.pure PaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))
-- | Create a new 'PaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable' with all required fields.
mkPaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable :: PaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable
mkPaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable = PaymentMethodCardWalletVisaCheckoutShippingAddress'NonNullable{paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableCity = GHC.Maybe.Nothing,
                                                                                                                                  paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableCountry = GHC.Maybe.Nothing,
                                                                                                                                  paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableLine1 = GHC.Maybe.Nothing,
                                                                                                                                  paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableLine2 = GHC.Maybe.Nothing,
                                                                                                                                  paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullablePostalCode = GHC.Maybe.Nothing,
                                                                                                                                  paymentMethodCardWalletVisaCheckoutShippingAddress'NonNullableState = GHC.Maybe.Nothing}
