-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CheckoutSessionPaymentMethodOptions
module StripeAPI.Types.CheckoutSessionPaymentMethodOptions where

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
import {-# SOURCE #-} StripeAPI.Types.CheckoutAcssDebitPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutAffirmPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutAfterpayClearpayPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutAlipayPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutAuBecsDebitPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutBacsDebitPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutBancontactPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutBoletoPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutCardPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutEpsPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutFpxPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutGiropayPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutGrabPayPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutIdealPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutKlarnaPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutKonbiniPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutOxxoPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutP24PaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutPaynowPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutSepaDebitPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutSofortPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.CheckoutUsBankAccountPaymentMethodOptions

-- | Defines the object schema located at @components.schemas.checkout_session_payment_method_options@ in the specification.
-- 
-- 
data CheckoutSessionPaymentMethodOptions = CheckoutSessionPaymentMethodOptions {
  -- | acss_debit: 
  checkoutSessionPaymentMethodOptionsAcssDebit :: (GHC.Maybe.Maybe CheckoutAcssDebitPaymentMethodOptions)
  -- | affirm: 
  , checkoutSessionPaymentMethodOptionsAffirm :: (GHC.Maybe.Maybe CheckoutAffirmPaymentMethodOptions)
  -- | afterpay_clearpay: 
  , checkoutSessionPaymentMethodOptionsAfterpayClearpay :: (GHC.Maybe.Maybe CheckoutAfterpayClearpayPaymentMethodOptions)
  -- | alipay: 
  , checkoutSessionPaymentMethodOptionsAlipay :: (GHC.Maybe.Maybe CheckoutAlipayPaymentMethodOptions)
  -- | au_becs_debit: 
  , checkoutSessionPaymentMethodOptionsAuBecsDebit :: (GHC.Maybe.Maybe CheckoutAuBecsDebitPaymentMethodOptions)
  -- | bacs_debit: 
  , checkoutSessionPaymentMethodOptionsBacsDebit :: (GHC.Maybe.Maybe CheckoutBacsDebitPaymentMethodOptions)
  -- | bancontact: 
  , checkoutSessionPaymentMethodOptionsBancontact :: (GHC.Maybe.Maybe CheckoutBancontactPaymentMethodOptions)
  -- | boleto: 
  , checkoutSessionPaymentMethodOptionsBoleto :: (GHC.Maybe.Maybe CheckoutBoletoPaymentMethodOptions)
  -- | card: 
  , checkoutSessionPaymentMethodOptionsCard :: (GHC.Maybe.Maybe CheckoutCardPaymentMethodOptions)
  -- | eps: 
  , checkoutSessionPaymentMethodOptionsEps :: (GHC.Maybe.Maybe CheckoutEpsPaymentMethodOptions)
  -- | fpx: 
  , checkoutSessionPaymentMethodOptionsFpx :: (GHC.Maybe.Maybe CheckoutFpxPaymentMethodOptions)
  -- | giropay: 
  , checkoutSessionPaymentMethodOptionsGiropay :: (GHC.Maybe.Maybe CheckoutGiropayPaymentMethodOptions)
  -- | grabpay: 
  , checkoutSessionPaymentMethodOptionsGrabpay :: (GHC.Maybe.Maybe CheckoutGrabPayPaymentMethodOptions)
  -- | ideal: 
  , checkoutSessionPaymentMethodOptionsIdeal :: (GHC.Maybe.Maybe CheckoutIdealPaymentMethodOptions)
  -- | klarna: 
  , checkoutSessionPaymentMethodOptionsKlarna :: (GHC.Maybe.Maybe CheckoutKlarnaPaymentMethodOptions)
  -- | konbini: 
  , checkoutSessionPaymentMethodOptionsKonbini :: (GHC.Maybe.Maybe CheckoutKonbiniPaymentMethodOptions)
  -- | oxxo: 
  , checkoutSessionPaymentMethodOptionsOxxo :: (GHC.Maybe.Maybe CheckoutOxxoPaymentMethodOptions)
  -- | p24: 
  , checkoutSessionPaymentMethodOptionsP24 :: (GHC.Maybe.Maybe CheckoutP24PaymentMethodOptions)
  -- | paynow: 
  , checkoutSessionPaymentMethodOptionsPaynow :: (GHC.Maybe.Maybe CheckoutPaynowPaymentMethodOptions)
  -- | sepa_debit: 
  , checkoutSessionPaymentMethodOptionsSepaDebit :: (GHC.Maybe.Maybe CheckoutSepaDebitPaymentMethodOptions)
  -- | sofort: 
  , checkoutSessionPaymentMethodOptionsSofort :: (GHC.Maybe.Maybe CheckoutSofortPaymentMethodOptions)
  -- | us_bank_account: 
  , checkoutSessionPaymentMethodOptionsUsBankAccount :: (GHC.Maybe.Maybe CheckoutUsBankAccountPaymentMethodOptions)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutSessionPaymentMethodOptions
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("affirm" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsAffirm obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("afterpay_clearpay" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsAfterpayClearpay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alipay" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsAlipay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("au_becs_debit" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsAuBecsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bacs_debit" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsBacsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bancontact" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsBancontact obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("boleto" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsBoleto obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("eps" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsEps obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fpx" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsFpx obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("giropay" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsGiropay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("grabpay" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsGrabpay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ideal" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsIdeal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("klarna" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsKlarna obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("konbini" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsKonbini obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oxxo" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsOxxo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("p24" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsP24 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paynow" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsPaynow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sepa_debit" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sofort" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsSofort obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsUsBankAccount obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("affirm" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsAffirm obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("afterpay_clearpay" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsAfterpayClearpay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alipay" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsAlipay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("au_becs_debit" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsAuBecsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bacs_debit" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsBacsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bancontact" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsBancontact obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("boleto" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsBoleto obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("eps" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsEps obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fpx" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsFpx obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("giropay" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsGiropay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("grabpay" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsGrabpay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ideal" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsIdeal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("klarna" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsKlarna obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("konbini" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsKonbini obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oxxo" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsOxxo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("p24" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsP24 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paynow" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsPaynow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sepa_debit" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sofort" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsSofort obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (checkoutSessionPaymentMethodOptionsUsBankAccount obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutSessionPaymentMethodOptions
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CheckoutSessionPaymentMethodOptions" (\obj -> (((((((((((((((((((((GHC.Base.pure CheckoutSessionPaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "acss_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "affirm")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "afterpay_clearpay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alipay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "au_becs_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bacs_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "boleto")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "eps")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fpx")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "giropay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "grabpay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "konbini")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "oxxo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "p24")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "paynow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account"))
-- | Create a new 'CheckoutSessionPaymentMethodOptions' with all required fields.
mkCheckoutSessionPaymentMethodOptions :: CheckoutSessionPaymentMethodOptions
mkCheckoutSessionPaymentMethodOptions = CheckoutSessionPaymentMethodOptions{checkoutSessionPaymentMethodOptionsAcssDebit = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsAffirm = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsAfterpayClearpay = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsAlipay = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsAuBecsDebit = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsBacsDebit = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsBancontact = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsBoleto = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsCard = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsEps = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsFpx = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsGiropay = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsGrabpay = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsIdeal = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsKlarna = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsKonbini = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsOxxo = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsP24 = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsPaynow = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsSepaDebit = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsSofort = GHC.Maybe.Nothing,
                                                                            checkoutSessionPaymentMethodOptionsUsBankAccount = GHC.Maybe.Nothing}
