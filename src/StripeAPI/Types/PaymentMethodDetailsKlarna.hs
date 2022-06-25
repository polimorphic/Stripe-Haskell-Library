-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodDetailsKlarna
module StripeAPI.Types.PaymentMethodDetailsKlarna where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_klarna@ in the specification.
-- 
-- 
data PaymentMethodDetailsKlarna = PaymentMethodDetailsKlarna {
  -- | payment_method_category: The Klarna payment method used for this transaction.
  -- Can be one of \`pay_later\`, \`pay_now\`, \`pay_with_financing\`, or \`pay_in_installments\`
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodDetailsKlarnaPaymentMethodCategory :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | preferred_locale: Preferred language of the Klarna authorization page that the customer is redirected to.
  -- Can be one of \`de-AT\`, \`en-AT\`, \`nl-BE\`, \`fr-BE\`, \`en-BE\`, \`de-DE\`, \`en-DE\`, \`da-DK\`, \`en-DK\`, \`es-ES\`, \`en-ES\`, \`fi-FI\`, \`sv-FI\`, \`en-FI\`, \`en-GB\`, \`en-IE\`, \`it-IT\`, \`en-IT\`, \`nl-NL\`, \`en-NL\`, \`nb-NO\`, \`en-NO\`, \`sv-SE\`, \`en-SE\`, \`en-US\`, \`es-US\`, \`fr-FR\`, \`en-FR\`, \`en-AU\`, or \`en-NZ\`
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsKlarnaPreferredLocale :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsKlarna
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_category" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsKlarnaPaymentMethodCategory obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_locale" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsKlarnaPreferredLocale obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_category" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsKlarnaPaymentMethodCategory obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_locale" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsKlarnaPreferredLocale obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsKlarna
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsKlarna" (\obj -> (GHC.Base.pure PaymentMethodDetailsKlarna GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_method_category")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred_locale"))
-- | Create a new 'PaymentMethodDetailsKlarna' with all required fields.
mkPaymentMethodDetailsKlarna :: PaymentMethodDetailsKlarna
mkPaymentMethodDetailsKlarna = PaymentMethodDetailsKlarna{paymentMethodDetailsKlarnaPaymentMethodCategory = GHC.Maybe.Nothing,
                                                          paymentMethodDetailsKlarnaPreferredLocale = GHC.Maybe.Nothing}