{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.SourceTypeKlarna where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
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
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common

data SourceTypeKlarna
    = SourceTypeKlarna {sourceTypeKlarnaBackgroundImageUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaClientToken :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaFirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaLastName :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaLocale :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaLogoUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPageTitle :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayLaterAssetUrlsDescriptive :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayLaterAssetUrlsStandard :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayLaterName :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayLaterRedirectUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayNowAssetUrlsDescriptive :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayNowAssetUrlsStandard :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayNowName :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayNowRedirectUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayOverTimeAssetUrlsDescriptive :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayOverTimeAssetUrlsStandard :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayOverTimeName :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPayOverTimeRedirectUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPaymentMethodCategories :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPurchaseCountry :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaPurchaseType :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaRedirectUrl :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaShippingFirstName :: (GHC.Maybe.Maybe GHC.Base.String),
                        sourceTypeKlarnaShippingLastName :: (GHC.Maybe.Maybe GHC.Base.String)}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeKlarna
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "background_image_url" (sourceTypeKlarnaBackgroundImageUrl obj) : (Data.Aeson..=) "client_token" (sourceTypeKlarnaClientToken obj) : (Data.Aeson..=) "first_name" (sourceTypeKlarnaFirstName obj) : (Data.Aeson..=) "last_name" (sourceTypeKlarnaLastName obj) : (Data.Aeson..=) "locale" (sourceTypeKlarnaLocale obj) : (Data.Aeson..=) "logo_url" (sourceTypeKlarnaLogoUrl obj) : (Data.Aeson..=) "page_title" (sourceTypeKlarnaPageTitle obj) : (Data.Aeson..=) "pay_later_asset_urls_descriptive" (sourceTypeKlarnaPayLaterAssetUrlsDescriptive obj) : (Data.Aeson..=) "pay_later_asset_urls_standard" (sourceTypeKlarnaPayLaterAssetUrlsStandard obj) : (Data.Aeson..=) "pay_later_name" (sourceTypeKlarnaPayLaterName obj) : (Data.Aeson..=) "pay_later_redirect_url" (sourceTypeKlarnaPayLaterRedirectUrl obj) : (Data.Aeson..=) "pay_now_asset_urls_descriptive" (sourceTypeKlarnaPayNowAssetUrlsDescriptive obj) : (Data.Aeson..=) "pay_now_asset_urls_standard" (sourceTypeKlarnaPayNowAssetUrlsStandard obj) : (Data.Aeson..=) "pay_now_name" (sourceTypeKlarnaPayNowName obj) : (Data.Aeson..=) "pay_now_redirect_url" (sourceTypeKlarnaPayNowRedirectUrl obj) : (Data.Aeson..=) "pay_over_time_asset_urls_descriptive" (sourceTypeKlarnaPayOverTimeAssetUrlsDescriptive obj) : (Data.Aeson..=) "pay_over_time_asset_urls_standard" (sourceTypeKlarnaPayOverTimeAssetUrlsStandard obj) : (Data.Aeson..=) "pay_over_time_name" (sourceTypeKlarnaPayOverTimeName obj) : (Data.Aeson..=) "pay_over_time_redirect_url" (sourceTypeKlarnaPayOverTimeRedirectUrl obj) : (Data.Aeson..=) "payment_method_categories" (sourceTypeKlarnaPaymentMethodCategories obj) : (Data.Aeson..=) "purchase_country" (sourceTypeKlarnaPurchaseCountry obj) : (Data.Aeson..=) "purchase_type" (sourceTypeKlarnaPurchaseType obj) : (Data.Aeson..=) "redirect_url" (sourceTypeKlarnaRedirectUrl obj) : (Data.Aeson..=) "shipping_first_name" (sourceTypeKlarnaShippingFirstName obj) : (Data.Aeson..=) "shipping_last_name" (sourceTypeKlarnaShippingLastName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "background_image_url" (sourceTypeKlarnaBackgroundImageUrl obj) GHC.Base.<> ((Data.Aeson..=) "client_token" (sourceTypeKlarnaClientToken obj) GHC.Base.<> ((Data.Aeson..=) "first_name" (sourceTypeKlarnaFirstName obj) GHC.Base.<> ((Data.Aeson..=) "last_name" (sourceTypeKlarnaLastName obj) GHC.Base.<> ((Data.Aeson..=) "locale" (sourceTypeKlarnaLocale obj) GHC.Base.<> ((Data.Aeson..=) "logo_url" (sourceTypeKlarnaLogoUrl obj) GHC.Base.<> ((Data.Aeson..=) "page_title" (sourceTypeKlarnaPageTitle obj) GHC.Base.<> ((Data.Aeson..=) "pay_later_asset_urls_descriptive" (sourceTypeKlarnaPayLaterAssetUrlsDescriptive obj) GHC.Base.<> ((Data.Aeson..=) "pay_later_asset_urls_standard" (sourceTypeKlarnaPayLaterAssetUrlsStandard obj) GHC.Base.<> ((Data.Aeson..=) "pay_later_name" (sourceTypeKlarnaPayLaterName obj) GHC.Base.<> ((Data.Aeson..=) "pay_later_redirect_url" (sourceTypeKlarnaPayLaterRedirectUrl obj) GHC.Base.<> ((Data.Aeson..=) "pay_now_asset_urls_descriptive" (sourceTypeKlarnaPayNowAssetUrlsDescriptive obj) GHC.Base.<> ((Data.Aeson..=) "pay_now_asset_urls_standard" (sourceTypeKlarnaPayNowAssetUrlsStandard obj) GHC.Base.<> ((Data.Aeson..=) "pay_now_name" (sourceTypeKlarnaPayNowName obj) GHC.Base.<> ((Data.Aeson..=) "pay_now_redirect_url" (sourceTypeKlarnaPayNowRedirectUrl obj) GHC.Base.<> ((Data.Aeson..=) "pay_over_time_asset_urls_descriptive" (sourceTypeKlarnaPayOverTimeAssetUrlsDescriptive obj) GHC.Base.<> ((Data.Aeson..=) "pay_over_time_asset_urls_standard" (sourceTypeKlarnaPayOverTimeAssetUrlsStandard obj) GHC.Base.<> ((Data.Aeson..=) "pay_over_time_name" (sourceTypeKlarnaPayOverTimeName obj) GHC.Base.<> ((Data.Aeson..=) "pay_over_time_redirect_url" (sourceTypeKlarnaPayOverTimeRedirectUrl obj) GHC.Base.<> ((Data.Aeson..=) "payment_method_categories" (sourceTypeKlarnaPaymentMethodCategories obj) GHC.Base.<> ((Data.Aeson..=) "purchase_country" (sourceTypeKlarnaPurchaseCountry obj) GHC.Base.<> ((Data.Aeson..=) "purchase_type" (sourceTypeKlarnaPurchaseType obj) GHC.Base.<> ((Data.Aeson..=) "redirect_url" (sourceTypeKlarnaRedirectUrl obj) GHC.Base.<> ((Data.Aeson..=) "shipping_first_name" (sourceTypeKlarnaShippingFirstName obj) GHC.Base.<> (Data.Aeson..=) "shipping_last_name" (sourceTypeKlarnaShippingLastName obj)))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeKlarna
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeKlarna" (\obj -> ((((((((((((((((((((((((GHC.Base.pure SourceTypeKlarna GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "background_image_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_token")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "locale")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "logo_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "page_title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_later_asset_urls_descriptive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_later_asset_urls_standard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_later_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_later_redirect_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_now_asset_urls_descriptive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_now_asset_urls_standard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_now_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_now_redirect_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_over_time_asset_urls_descriptive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_over_time_asset_urls_standard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_over_time_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pay_over_time_redirect_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_method_categories")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "purchase_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "purchase_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_last_name"))