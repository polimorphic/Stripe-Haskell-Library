{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema PaymentMethodDetailsCardWalletMasterpass
module StripeAPI.Types.PaymentMethodDetailsCardWalletMasterpass where

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
import {-# SOURCE #-} StripeAPI.Types.Address
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_details_card_wallet_masterpass@ in the specification.
data PaymentMethodDetailsCardWalletMasterpass
  = PaymentMethodDetailsCardWalletMasterpass
      { -- | billing_address: Owner\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        paymentMethodDetailsCardWalletMasterpassBillingAddress :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletMasterpassBillingAddress'),
        -- | email: Owner\'s verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | name: Owner\'s verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | shipping_address: Owner\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        paymentMethodDetailsCardWalletMasterpassShippingAddress :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletMasterpassShippingAddress')
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardWalletMasterpass where
  toJSON obj = Data.Aeson.Types.Internal.object ("billing_address" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress obj : "email" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassEmail obj : "name" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassName obj : "shipping_address" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("billing_address" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassEmail obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassName obj) GHC.Base.<> ("shipping_address" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardWalletMasterpass where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardWalletMasterpass" (\obj -> (((GHC.Base.pure PaymentMethodDetailsCardWalletMasterpass GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_address"))

-- | Create a new 'PaymentMethodDetailsCardWalletMasterpass' with all required fields.
mkPaymentMethodDetailsCardWalletMasterpass :: PaymentMethodDetailsCardWalletMasterpass
mkPaymentMethodDetailsCardWalletMasterpass =
  PaymentMethodDetailsCardWalletMasterpass
    { paymentMethodDetailsCardWalletMasterpassBillingAddress = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassEmail = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassName = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassShippingAddress = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_details_card_wallet_masterpass.properties.billing_address.anyOf@ in the specification.
--
-- Owner\\\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodDetailsCardWalletMasterpassBillingAddress'
  = PaymentMethodDetailsCardWalletMasterpassBillingAddress'
      { -- | city: City, district, suburb, town, or village.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassBillingAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassBillingAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line1: Address line 1 (e.g., street, PO Box, or company name).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassBillingAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassBillingAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | postal_code: ZIP or postal code.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassBillingAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | state: State, county, province, or region.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassBillingAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardWalletMasterpassBillingAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'City obj : "country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'State obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassBillingAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardWalletMasterpassBillingAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardWalletMasterpassBillingAddress'" (\obj -> (((((GHC.Base.pure PaymentMethodDetailsCardWalletMasterpassBillingAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'PaymentMethodDetailsCardWalletMasterpassBillingAddress'' with all required fields.
mkPaymentMethodDetailsCardWalletMasterpassBillingAddress' :: PaymentMethodDetailsCardWalletMasterpassBillingAddress'
mkPaymentMethodDetailsCardWalletMasterpassBillingAddress' =
  PaymentMethodDetailsCardWalletMasterpassBillingAddress'
    { paymentMethodDetailsCardWalletMasterpassBillingAddress'City = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassBillingAddress'Country = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassBillingAddress'Line1 = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassBillingAddress'Line2 = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassBillingAddress'PostalCode = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassBillingAddress'State = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_details_card_wallet_masterpass.properties.shipping_address.anyOf@ in the specification.
--
-- Owner\\\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodDetailsCardWalletMasterpassShippingAddress'
  = PaymentMethodDetailsCardWalletMasterpassShippingAddress'
      { -- | city: City, district, suburb, town, or village.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassShippingAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassShippingAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line1: Address line 1 (e.g., street, PO Box, or company name).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassShippingAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassShippingAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | postal_code: ZIP or postal code.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassShippingAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | state: State, county, province, or region.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletMasterpassShippingAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardWalletMasterpassShippingAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'City obj : "country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'State obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletMasterpassShippingAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardWalletMasterpassShippingAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardWalletMasterpassShippingAddress'" (\obj -> (((((GHC.Base.pure PaymentMethodDetailsCardWalletMasterpassShippingAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'PaymentMethodDetailsCardWalletMasterpassShippingAddress'' with all required fields.
mkPaymentMethodDetailsCardWalletMasterpassShippingAddress' :: PaymentMethodDetailsCardWalletMasterpassShippingAddress'
mkPaymentMethodDetailsCardWalletMasterpassShippingAddress' =
  PaymentMethodDetailsCardWalletMasterpassShippingAddress'
    { paymentMethodDetailsCardWalletMasterpassShippingAddress'City = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassShippingAddress'Country = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassShippingAddress'Line1 = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassShippingAddress'Line2 = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassShippingAddress'PostalCode = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletMasterpassShippingAddress'State = GHC.Maybe.Nothing
    }
