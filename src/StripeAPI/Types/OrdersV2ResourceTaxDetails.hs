-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema OrdersV2ResourceTaxDetails
module StripeAPI.Types.OrdersV2ResourceTaxDetails where

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
import {-# SOURCE #-} StripeAPI.Types.OrdersV2ResourceTaxDetailsResourceTaxId

-- | Defines the object schema located at @components.schemas.orders_v2_resource_tax_details@ in the specification.
-- 
-- 
data OrdersV2ResourceTaxDetails = OrdersV2ResourceTaxDetails {
  -- | tax_exempt: Describes the purchaser\'s tax exemption status. One of \`none\`, \`exempt\`, or \`reverse\`.
  ordersV2ResourceTaxDetailsTaxExempt :: OrdersV2ResourceTaxDetailsTaxExempt'
  -- | tax_ids: The purchaser\'s tax IDs to be used in calculation of tax for this Order.
  , ordersV2ResourceTaxDetailsTaxIds :: ([OrdersV2ResourceTaxDetailsResourceTaxId])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourceTaxDetails
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["tax_exempt" Data.Aeson.Types.ToJSON..= ordersV2ResourceTaxDetailsTaxExempt obj] : ["tax_ids" Data.Aeson.Types.ToJSON..= ordersV2ResourceTaxDetailsTaxIds obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["tax_exempt" Data.Aeson.Types.ToJSON..= ordersV2ResourceTaxDetailsTaxExempt obj] : ["tax_ids" Data.Aeson.Types.ToJSON..= ordersV2ResourceTaxDetailsTaxIds obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourceTaxDetails
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "OrdersV2ResourceTaxDetails" (\obj -> (GHC.Base.pure OrdersV2ResourceTaxDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_exempt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_ids"))
-- | Create a new 'OrdersV2ResourceTaxDetails' with all required fields.
mkOrdersV2ResourceTaxDetails :: OrdersV2ResourceTaxDetailsTaxExempt' -- ^ 'ordersV2ResourceTaxDetailsTaxExempt'
  -> [OrdersV2ResourceTaxDetailsResourceTaxId] -- ^ 'ordersV2ResourceTaxDetailsTaxIds'
  -> OrdersV2ResourceTaxDetails
mkOrdersV2ResourceTaxDetails ordersV2ResourceTaxDetailsTaxExempt ordersV2ResourceTaxDetailsTaxIds = OrdersV2ResourceTaxDetails{ordersV2ResourceTaxDetailsTaxExempt = ordersV2ResourceTaxDetailsTaxExempt,
                                                                                                                               ordersV2ResourceTaxDetailsTaxIds = ordersV2ResourceTaxDetailsTaxIds}
-- | Defines the enum schema located at @components.schemas.orders_v2_resource_tax_details.properties.tax_exempt@ in the specification.
-- 
-- Describes the purchaser\'s tax exemption status. One of \`none\`, \`exempt\`, or \`reverse\`.
data OrdersV2ResourceTaxDetailsTaxExempt' =
   OrdersV2ResourceTaxDetailsTaxExempt'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | OrdersV2ResourceTaxDetailsTaxExempt'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | OrdersV2ResourceTaxDetailsTaxExempt'EnumExempt -- ^ Represents the JSON value @"exempt"@
  | OrdersV2ResourceTaxDetailsTaxExempt'EnumNone -- ^ Represents the JSON value @"none"@
  | OrdersV2ResourceTaxDetailsTaxExempt'EnumReverse -- ^ Represents the JSON value @"reverse"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourceTaxDetailsTaxExempt'
    where toJSON (OrdersV2ResourceTaxDetailsTaxExempt'Other val) = val
          toJSON (OrdersV2ResourceTaxDetailsTaxExempt'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (OrdersV2ResourceTaxDetailsTaxExempt'EnumExempt) = "exempt"
          toJSON (OrdersV2ResourceTaxDetailsTaxExempt'EnumNone) = "none"
          toJSON (OrdersV2ResourceTaxDetailsTaxExempt'EnumReverse) = "reverse"
instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourceTaxDetailsTaxExempt'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "exempt" -> OrdersV2ResourceTaxDetailsTaxExempt'EnumExempt
                                            | val GHC.Classes.== "none" -> OrdersV2ResourceTaxDetailsTaxExempt'EnumNone
                                            | val GHC.Classes.== "reverse" -> OrdersV2ResourceTaxDetailsTaxExempt'EnumReverse
                                            | GHC.Base.otherwise -> OrdersV2ResourceTaxDetailsTaxExempt'Other val)
