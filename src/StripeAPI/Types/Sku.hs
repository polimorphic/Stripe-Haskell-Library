-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Sku
module StripeAPI.Types.Sku where

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
import {-# SOURCE #-} StripeAPI.Types.PackageDimensions
import {-# SOURCE #-} StripeAPI.Types.Product
import {-# SOURCE #-} StripeAPI.Types.SkuInventory

-- | Defines the object schema located at @components.schemas.sku@ in the specification.
-- 
-- Stores representations of [stock keeping units](http:\/\/en.wikipedia.org\/wiki\/Stock_keeping_unit).
-- SKUs describe specific product variations, taking into account any combination of: attributes,
-- currency, and cost. For example, a product may be a T-shirt, whereas a specific SKU represents
-- the \`size: large\`, \`color: red\` version of that shirt.
-- 
-- Can also be used to manage inventory.
data Sku = Sku {
  -- | active: Whether the SKU is available for purchase.
  skuActive :: GHC.Types.Bool
  -- | attributes: A dictionary of attributes and values for the attributes defined by the product. If, for example, a product\'s attributes are \`[\"size\", \"gender\"]\`, a valid SKU has the following dictionary of attributes: \`{\"size\": \"Medium\", \"gender\": \"Unisex\"}\`.
  , skuAttributes :: Data.Aeson.Types.Internal.Object
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , skuCreated :: GHC.Types.Int
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , skuCurrency :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , skuId :: Data.Text.Internal.Text
  -- | image: The URL of an image for this SKU, meant to be displayable to the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 2048
  , skuImage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | inventory: 
  , skuInventory :: SkuInventory
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , skuLivemode :: GHC.Types.Bool
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , skuMetadata :: Data.Aeson.Types.Internal.Object
  -- | package_dimensions: The dimensions of this SKU for shipping purposes.
  , skuPackageDimensions :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SkuPackageDimensions'NonNullable))
  -- | price: The cost of the item as a positive integer in the smallest currency unit (that is, 100 cents to charge \$1.00, or 100 to charge ¥100, Japanese Yen being a zero-decimal currency).
  , skuPrice :: GHC.Types.Int
  -- | product: The ID of the product this SKU is associated with. The product must be currently active.
  , skuProduct :: SkuProduct'Variants
  -- | updated: Time at which the object was last updated. Measured in seconds since the Unix epoch.
  , skuUpdated :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Sku
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["active" Data.Aeson.Types.ToJSON..= skuActive obj] : ["attributes" Data.Aeson.Types.ToJSON..= skuAttributes obj] : ["created" Data.Aeson.Types.ToJSON..= skuCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= skuCurrency obj] : ["id" Data.Aeson.Types.ToJSON..= skuId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("image" Data.Aeson.Types.ToJSON..=)) (skuImage obj) : ["inventory" Data.Aeson.Types.ToJSON..= skuInventory obj] : ["livemode" Data.Aeson.Types.ToJSON..= skuLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= skuMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("package_dimensions" Data.Aeson.Types.ToJSON..=)) (skuPackageDimensions obj) : ["price" Data.Aeson.Types.ToJSON..= skuPrice obj] : ["product" Data.Aeson.Types.ToJSON..= skuProduct obj] : ["updated" Data.Aeson.Types.ToJSON..= skuUpdated obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "sku"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["active" Data.Aeson.Types.ToJSON..= skuActive obj] : ["attributes" Data.Aeson.Types.ToJSON..= skuAttributes obj] : ["created" Data.Aeson.Types.ToJSON..= skuCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= skuCurrency obj] : ["id" Data.Aeson.Types.ToJSON..= skuId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("image" Data.Aeson.Types.ToJSON..=)) (skuImage obj) : ["inventory" Data.Aeson.Types.ToJSON..= skuInventory obj] : ["livemode" Data.Aeson.Types.ToJSON..= skuLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= skuMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("package_dimensions" Data.Aeson.Types.ToJSON..=)) (skuPackageDimensions obj) : ["price" Data.Aeson.Types.ToJSON..= skuPrice obj] : ["product" Data.Aeson.Types.ToJSON..= skuProduct obj] : ["updated" Data.Aeson.Types.ToJSON..= skuUpdated obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "sku"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Sku
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Sku" (\obj -> ((((((((((((GHC.Base.pure Sku GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inventory")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "product")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "updated"))
-- | Create a new 'Sku' with all required fields.
mkSku :: GHC.Types.Bool -- ^ 'skuActive'
  -> Data.Aeson.Types.Internal.Object -- ^ 'skuAttributes'
  -> GHC.Types.Int -- ^ 'skuCreated'
  -> Data.Text.Internal.Text -- ^ 'skuCurrency'
  -> Data.Text.Internal.Text -- ^ 'skuId'
  -> SkuInventory -- ^ 'skuInventory'
  -> GHC.Types.Bool -- ^ 'skuLivemode'
  -> Data.Aeson.Types.Internal.Object -- ^ 'skuMetadata'
  -> GHC.Types.Int -- ^ 'skuPrice'
  -> SkuProduct'Variants -- ^ 'skuProduct'
  -> GHC.Types.Int -- ^ 'skuUpdated'
  -> Sku
mkSku skuActive skuAttributes skuCreated skuCurrency skuId skuInventory skuLivemode skuMetadata skuPrice skuProduct skuUpdated = Sku{skuActive = skuActive,
                                                                                                                                     skuAttributes = skuAttributes,
                                                                                                                                     skuCreated = skuCreated,
                                                                                                                                     skuCurrency = skuCurrency,
                                                                                                                                     skuId = skuId,
                                                                                                                                     skuImage = GHC.Maybe.Nothing,
                                                                                                                                     skuInventory = skuInventory,
                                                                                                                                     skuLivemode = skuLivemode,
                                                                                                                                     skuMetadata = skuMetadata,
                                                                                                                                     skuPackageDimensions = GHC.Maybe.Nothing,
                                                                                                                                     skuPrice = skuPrice,
                                                                                                                                     skuProduct = skuProduct,
                                                                                                                                     skuUpdated = skuUpdated}
-- | Defines the object schema located at @components.schemas.sku.properties.package_dimensions.anyOf@ in the specification.
-- 
-- The dimensions of this SKU for shipping purposes.
data SkuPackageDimensions'NonNullable = SkuPackageDimensions'NonNullable {
  -- | height: Height, in inches.
  skuPackageDimensions'NonNullableHeight :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | length: Length, in inches.
  , skuPackageDimensions'NonNullableLength :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | weight: Weight, in ounces.
  , skuPackageDimensions'NonNullableWeight :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | width: Width, in inches.
  , skuPackageDimensions'NonNullableWidth :: (GHC.Maybe.Maybe GHC.Types.Double)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SkuPackageDimensions'NonNullable
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("height" Data.Aeson.Types.ToJSON..=)) (skuPackageDimensions'NonNullableHeight obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("length" Data.Aeson.Types.ToJSON..=)) (skuPackageDimensions'NonNullableLength obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("weight" Data.Aeson.Types.ToJSON..=)) (skuPackageDimensions'NonNullableWeight obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("width" Data.Aeson.Types.ToJSON..=)) (skuPackageDimensions'NonNullableWidth obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("height" Data.Aeson.Types.ToJSON..=)) (skuPackageDimensions'NonNullableHeight obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("length" Data.Aeson.Types.ToJSON..=)) (skuPackageDimensions'NonNullableLength obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("weight" Data.Aeson.Types.ToJSON..=)) (skuPackageDimensions'NonNullableWeight obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("width" Data.Aeson.Types.ToJSON..=)) (skuPackageDimensions'NonNullableWidth obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SkuPackageDimensions'NonNullable
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SkuPackageDimensions'NonNullable" (\obj -> (((GHC.Base.pure SkuPackageDimensions'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "width"))
-- | Create a new 'SkuPackageDimensions'NonNullable' with all required fields.
mkSkuPackageDimensions'NonNullable :: SkuPackageDimensions'NonNullable
mkSkuPackageDimensions'NonNullable = SkuPackageDimensions'NonNullable{skuPackageDimensions'NonNullableHeight = GHC.Maybe.Nothing,
                                                                      skuPackageDimensions'NonNullableLength = GHC.Maybe.Nothing,
                                                                      skuPackageDimensions'NonNullableWeight = GHC.Maybe.Nothing,
                                                                      skuPackageDimensions'NonNullableWidth = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.sku.properties.product.anyOf@ in the specification.
-- 
-- The ID of the product this SKU is associated with. The product must be currently active.
data SkuProduct'Variants =
   SkuProduct'Text Data.Text.Internal.Text
  | SkuProduct'Product Product
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SkuProduct'Variants
    where toJSON (SkuProduct'Text a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (SkuProduct'Product a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON SkuProduct'Variants
    where parseJSON val = case (SkuProduct'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SkuProduct'Product Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
