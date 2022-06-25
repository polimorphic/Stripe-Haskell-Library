-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PortalFeatures
module StripeAPI.Types.PortalFeatures where

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
import {-# SOURCE #-} StripeAPI.Types.PortalCustomerUpdate
import {-# SOURCE #-} StripeAPI.Types.PortalInvoiceList
import {-# SOURCE #-} StripeAPI.Types.PortalPaymentMethodUpdate
import {-# SOURCE #-} StripeAPI.Types.PortalSubscriptionCancel
import {-# SOURCE #-} StripeAPI.Types.PortalSubscriptionPause
import {-# SOURCE #-} StripeAPI.Types.PortalSubscriptionUpdate

-- | Defines the object schema located at @components.schemas.portal_features@ in the specification.
-- 
-- 
data PortalFeatures = PortalFeatures {
  -- | customer_update: 
  portalFeaturesCustomerUpdate :: PortalCustomerUpdate
  -- | invoice_history: 
  , portalFeaturesInvoiceHistory :: PortalInvoiceList
  -- | payment_method_update: 
  , portalFeaturesPaymentMethodUpdate :: PortalPaymentMethodUpdate
  -- | subscription_cancel: 
  , portalFeaturesSubscriptionCancel :: PortalSubscriptionCancel
  -- | subscription_pause: 
  , portalFeaturesSubscriptionPause :: PortalSubscriptionPause
  -- | subscription_update: 
  , portalFeaturesSubscriptionUpdate :: PortalSubscriptionUpdate
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFeatures
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["customer_update" Data.Aeson.Types.ToJSON..= portalFeaturesCustomerUpdate obj] : ["invoice_history" Data.Aeson.Types.ToJSON..= portalFeaturesInvoiceHistory obj] : ["payment_method_update" Data.Aeson.Types.ToJSON..= portalFeaturesPaymentMethodUpdate obj] : ["subscription_cancel" Data.Aeson.Types.ToJSON..= portalFeaturesSubscriptionCancel obj] : ["subscription_pause" Data.Aeson.Types.ToJSON..= portalFeaturesSubscriptionPause obj] : ["subscription_update" Data.Aeson.Types.ToJSON..= portalFeaturesSubscriptionUpdate obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["customer_update" Data.Aeson.Types.ToJSON..= portalFeaturesCustomerUpdate obj] : ["invoice_history" Data.Aeson.Types.ToJSON..= portalFeaturesInvoiceHistory obj] : ["payment_method_update" Data.Aeson.Types.ToJSON..= portalFeaturesPaymentMethodUpdate obj] : ["subscription_cancel" Data.Aeson.Types.ToJSON..= portalFeaturesSubscriptionCancel obj] : ["subscription_pause" Data.Aeson.Types.ToJSON..= portalFeaturesSubscriptionPause obj] : ["subscription_update" Data.Aeson.Types.ToJSON..= portalFeaturesSubscriptionUpdate obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PortalFeatures
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFeatures" (\obj -> (((((GHC.Base.pure PortalFeatures GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer_update")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invoice_history")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payment_method_update")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subscription_cancel")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subscription_pause")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subscription_update"))
-- | Create a new 'PortalFeatures' with all required fields.
mkPortalFeatures :: PortalCustomerUpdate -- ^ 'portalFeaturesCustomerUpdate'
  -> PortalInvoiceList -- ^ 'portalFeaturesInvoiceHistory'
  -> PortalPaymentMethodUpdate -- ^ 'portalFeaturesPaymentMethodUpdate'
  -> PortalSubscriptionCancel -- ^ 'portalFeaturesSubscriptionCancel'
  -> PortalSubscriptionPause -- ^ 'portalFeaturesSubscriptionPause'
  -> PortalSubscriptionUpdate -- ^ 'portalFeaturesSubscriptionUpdate'
  -> PortalFeatures
mkPortalFeatures portalFeaturesCustomerUpdate portalFeaturesInvoiceHistory portalFeaturesPaymentMethodUpdate portalFeaturesSubscriptionCancel portalFeaturesSubscriptionPause portalFeaturesSubscriptionUpdate = PortalFeatures{portalFeaturesCustomerUpdate = portalFeaturesCustomerUpdate,
                                                                                                                                                                                                                                portalFeaturesInvoiceHistory = portalFeaturesInvoiceHistory,
                                                                                                                                                                                                                                portalFeaturesPaymentMethodUpdate = portalFeaturesPaymentMethodUpdate,
                                                                                                                                                                                                                                portalFeaturesSubscriptionCancel = portalFeaturesSubscriptionCancel,
                                                                                                                                                                                                                                portalFeaturesSubscriptionPause = portalFeaturesSubscriptionPause,
                                                                                                                                                                                                                                portalFeaturesSubscriptionUpdate = portalFeaturesSubscriptionUpdate}
