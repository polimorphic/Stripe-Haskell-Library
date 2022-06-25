-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentIntentNextActionPromptpayDisplayQrCode
module StripeAPI.Types.PaymentIntentNextActionPromptpayDisplayQrCode where

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

-- | Defines the object schema located at @components.schemas.payment_intent_next_action_promptpay_display_qr_code@ in the specification.
-- 
-- 
data PaymentIntentNextActionPromptpayDisplayQrCode = PaymentIntentNextActionPromptpayDisplayQrCode {
  -- | data: The raw data string used to generate QR code, it should be used together with QR code library.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentIntentNextActionPromptpayDisplayQrCodeData :: Data.Text.Internal.Text
  -- | hosted_instructions_url: The URL to the hosted PromptPay instructions page, which allows customers to view the PromptPay QR code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentIntentNextActionPromptpayDisplayQrCodeHostedInstructionsUrl :: Data.Text.Internal.Text
  -- | image_url_png: The image_url_png string used to render QR code, can be used as \<img src=\"…\" \/>
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentIntentNextActionPromptpayDisplayQrCodeImageUrlPng :: Data.Text.Internal.Text
  -- | image_url_svg: The image_url_svg string used to render QR code, can be used as \<img src=\"…\" \/>
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentIntentNextActionPromptpayDisplayQrCodeImageUrlSvg :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentNextActionPromptpayDisplayQrCode
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= paymentIntentNextActionPromptpayDisplayQrCodeData obj] : ["hosted_instructions_url" Data.Aeson.Types.ToJSON..= paymentIntentNextActionPromptpayDisplayQrCodeHostedInstructionsUrl obj] : ["image_url_png" Data.Aeson.Types.ToJSON..= paymentIntentNextActionPromptpayDisplayQrCodeImageUrlPng obj] : ["image_url_svg" Data.Aeson.Types.ToJSON..= paymentIntentNextActionPromptpayDisplayQrCodeImageUrlSvg obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= paymentIntentNextActionPromptpayDisplayQrCodeData obj] : ["hosted_instructions_url" Data.Aeson.Types.ToJSON..= paymentIntentNextActionPromptpayDisplayQrCodeHostedInstructionsUrl obj] : ["image_url_png" Data.Aeson.Types.ToJSON..= paymentIntentNextActionPromptpayDisplayQrCodeImageUrlPng obj] : ["image_url_svg" Data.Aeson.Types.ToJSON..= paymentIntentNextActionPromptpayDisplayQrCodeImageUrlSvg obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionPromptpayDisplayQrCode
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionPromptpayDisplayQrCode" (\obj -> (((GHC.Base.pure PaymentIntentNextActionPromptpayDisplayQrCode GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "hosted_instructions_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "image_url_png")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "image_url_svg"))
-- | Create a new 'PaymentIntentNextActionPromptpayDisplayQrCode' with all required fields.
mkPaymentIntentNextActionPromptpayDisplayQrCode :: Data.Text.Internal.Text -- ^ 'paymentIntentNextActionPromptpayDisplayQrCodeData'
  -> Data.Text.Internal.Text -- ^ 'paymentIntentNextActionPromptpayDisplayQrCodeHostedInstructionsUrl'
  -> Data.Text.Internal.Text -- ^ 'paymentIntentNextActionPromptpayDisplayQrCodeImageUrlPng'
  -> Data.Text.Internal.Text -- ^ 'paymentIntentNextActionPromptpayDisplayQrCodeImageUrlSvg'
  -> PaymentIntentNextActionPromptpayDisplayQrCode
mkPaymentIntentNextActionPromptpayDisplayQrCode paymentIntentNextActionPromptpayDisplayQrCodeData paymentIntentNextActionPromptpayDisplayQrCodeHostedInstructionsUrl paymentIntentNextActionPromptpayDisplayQrCodeImageUrlPng paymentIntentNextActionPromptpayDisplayQrCodeImageUrlSvg = PaymentIntentNextActionPromptpayDisplayQrCode{paymentIntentNextActionPromptpayDisplayQrCodeData = paymentIntentNextActionPromptpayDisplayQrCodeData,
                                                                                                                                                                                                                                                                                                                                       paymentIntentNextActionPromptpayDisplayQrCodeHostedInstructionsUrl = paymentIntentNextActionPromptpayDisplayQrCodeHostedInstructionsUrl,
                                                                                                                                                                                                                                                                                                                                       paymentIntentNextActionPromptpayDisplayQrCodeImageUrlPng = paymentIntentNextActionPromptpayDisplayQrCodeImageUrlPng,
                                                                                                                                                                                                                                                                                                                                       paymentIntentNextActionPromptpayDisplayQrCodeImageUrlSvg = paymentIntentNextActionPromptpayDisplayQrCodeImageUrlSvg}
