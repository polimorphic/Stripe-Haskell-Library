-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema OrdersV2ResourceTotalDetailsApiResourceBreakdown
module StripeAPI.Types.OrdersV2ResourceTotalDetailsApiResourceBreakdown where

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
import {-# SOURCE #-} StripeAPI.Types.LineItemsDiscountAmount
import {-# SOURCE #-} StripeAPI.Types.LineItemsTaxAmount

-- | Defines the object schema located at @components.schemas.orders_v2_resource_total_details_api_resource_breakdown@ in the specification.
-- 
-- 
data OrdersV2ResourceTotalDetailsApiResourceBreakdown = OrdersV2ResourceTotalDetailsApiResourceBreakdown {
  -- | discounts: The aggregated discounts.
  ordersV2ResourceTotalDetailsApiResourceBreakdownDiscounts :: ([LineItemsDiscountAmount])
  -- | taxes: The aggregated tax amounts by rate.
  , ordersV2ResourceTotalDetailsApiResourceBreakdownTaxes :: ([LineItemsTaxAmount])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourceTotalDetailsApiResourceBreakdown
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["discounts" Data.Aeson.Types.ToJSON..= ordersV2ResourceTotalDetailsApiResourceBreakdownDiscounts obj] : ["taxes" Data.Aeson.Types.ToJSON..= ordersV2ResourceTotalDetailsApiResourceBreakdownTaxes obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["discounts" Data.Aeson.Types.ToJSON..= ordersV2ResourceTotalDetailsApiResourceBreakdownDiscounts obj] : ["taxes" Data.Aeson.Types.ToJSON..= ordersV2ResourceTotalDetailsApiResourceBreakdownTaxes obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourceTotalDetailsApiResourceBreakdown
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "OrdersV2ResourceTotalDetailsApiResourceBreakdown" (\obj -> (GHC.Base.pure OrdersV2ResourceTotalDetailsApiResourceBreakdown GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "discounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "taxes"))
-- | Create a new 'OrdersV2ResourceTotalDetailsApiResourceBreakdown' with all required fields.
mkOrdersV2ResourceTotalDetailsApiResourceBreakdown :: [LineItemsDiscountAmount] -- ^ 'ordersV2ResourceTotalDetailsApiResourceBreakdownDiscounts'
  -> [LineItemsTaxAmount] -- ^ 'ordersV2ResourceTotalDetailsApiResourceBreakdownTaxes'
  -> OrdersV2ResourceTotalDetailsApiResourceBreakdown
mkOrdersV2ResourceTotalDetailsApiResourceBreakdown ordersV2ResourceTotalDetailsApiResourceBreakdownDiscounts ordersV2ResourceTotalDetailsApiResourceBreakdownTaxes = OrdersV2ResourceTotalDetailsApiResourceBreakdown{ordersV2ResourceTotalDetailsApiResourceBreakdownDiscounts = ordersV2ResourceTotalDetailsApiResourceBreakdownDiscounts,
                                                                                                                                                                                                                      ordersV2ResourceTotalDetailsApiResourceBreakdownTaxes = ordersV2ResourceTotalDetailsApiResourceBreakdownTaxes}