{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema Order
module StripeAPI.Types.Order where

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
import {-# SOURCE #-} StripeAPI.Types.Charge
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.DeletedCustomer
import {-# SOURCE #-} StripeAPI.Types.OrderItem
import {-# SOURCE #-} StripeAPI.Types.OrderReturn
import {-# SOURCE #-} StripeAPI.Types.Shipping
import {-# SOURCE #-} StripeAPI.Types.ShippingMethod
import {-# SOURCE #-} StripeAPI.Types.StatusTransitions
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.order@ in the specification.
--
-- Order objects are created to handle end customers\' purchases of previously
-- defined [products](https:\/\/stripe.com\/docs\/api\#products). You can create, retrieve, and pay individual orders, as well
-- as list all orders. Orders are identified by a unique, random ID.
--
-- Related guide: [Tax, Shipping, and Inventory](https:\/\/stripe.com\/docs\/orders).
data Order
  = Order
      { -- | amount: A positive integer in the smallest currency unit (that is, 100 cents for \$1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order.
        orderAmount :: GHC.Types.Int,
        -- | amount_returned: The total amount that was returned to the customer.
        orderAmountReturned :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | application: ID of the Connect Application that created the order.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderApplication :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | application_fee: A fee in cents that will be applied to the order and transferred to the application owner’s Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees documentation.
        orderApplicationFee :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | charge: The ID of the payment used to pay for the order. Present if the order status is \`paid\`, \`fulfilled\`, or \`refunded\`.
        orderCharge :: (GHC.Maybe.Maybe OrderCharge'Variants),
        -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
        orderCreated :: GHC.Types.Int,
        -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
        orderCurrency :: Data.Text.Internal.Text,
        -- | customer: The customer used for the order.
        orderCustomer :: (GHC.Maybe.Maybe OrderCustomer'Variants),
        -- | email: The email address of the customer placing the order.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | external_coupon_code: External coupon code to load for this order.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderExternalCouponCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderId :: Data.Text.Internal.Text,
        -- | items: List of items constituting the order. An order can have up to 25 items.
        orderItems :: ([OrderItem]),
        -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
        orderLivemode :: GHC.Types.Bool,
        -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        orderMetadata :: Data.Aeson.Types.Internal.Object,
        -- | returns: A list of returns that have taken place for this order.
        orderReturns :: (GHC.Maybe.Maybe OrderReturns'),
        -- | selected_shipping_method: The shipping method that is currently selected for this order, if any. If present, it is equal to one of the \`id\`s of shipping methods in the \`shipping_methods\` array. At order creation time, if there are multiple shipping methods, Stripe will automatically selected the first method.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderSelectedShippingMethod :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | shipping: The shipping address for the order. Present if the order is for goods to be shipped.
        orderShipping :: (GHC.Maybe.Maybe OrderShipping'),
        -- | shipping_methods: A list of supported shipping methods for this order. The desired shipping method can be specified either by updating the order, or when paying it.
        orderShippingMethods :: (GHC.Maybe.Maybe ([ShippingMethod])),
        -- | status: Current order status. One of \`created\`, \`paid\`, \`canceled\`, \`fulfilled\`, or \`returned\`. More details in the [Orders Guide](https:\/\/stripe.com\/docs\/orders\/guide\#understanding-order-statuses).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderStatus :: Data.Text.Internal.Text,
        -- | status_transitions: The timestamps at which the order status was updated.
        orderStatusTransitions :: (GHC.Maybe.Maybe OrderStatusTransitions'),
        -- | updated: Time at which the object was last updated. Measured in seconds since the Unix epoch.
        orderUpdated :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | upstream_id: The user\'s order ID if it is different from the Stripe order ID.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderUpstreamId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Order where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= orderAmount obj : "amount_returned" Data.Aeson.Types.ToJSON..= orderAmountReturned obj : "application" Data.Aeson.Types.ToJSON..= orderApplication obj : "application_fee" Data.Aeson.Types.ToJSON..= orderApplicationFee obj : "charge" Data.Aeson.Types.ToJSON..= orderCharge obj : "created" Data.Aeson.Types.ToJSON..= orderCreated obj : "currency" Data.Aeson.Types.ToJSON..= orderCurrency obj : "customer" Data.Aeson.Types.ToJSON..= orderCustomer obj : "email" Data.Aeson.Types.ToJSON..= orderEmail obj : "external_coupon_code" Data.Aeson.Types.ToJSON..= orderExternalCouponCode obj : "id" Data.Aeson.Types.ToJSON..= orderId obj : "items" Data.Aeson.Types.ToJSON..= orderItems obj : "livemode" Data.Aeson.Types.ToJSON..= orderLivemode obj : "metadata" Data.Aeson.Types.ToJSON..= orderMetadata obj : "returns" Data.Aeson.Types.ToJSON..= orderReturns obj : "selected_shipping_method" Data.Aeson.Types.ToJSON..= orderSelectedShippingMethod obj : "shipping" Data.Aeson.Types.ToJSON..= orderShipping obj : "shipping_methods" Data.Aeson.Types.ToJSON..= orderShippingMethods obj : "status" Data.Aeson.Types.ToJSON..= orderStatus obj : "status_transitions" Data.Aeson.Types.ToJSON..= orderStatusTransitions obj : "updated" Data.Aeson.Types.ToJSON..= orderUpdated obj : "upstream_id" Data.Aeson.Types.ToJSON..= orderUpstreamId obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "order" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= orderAmount obj) GHC.Base.<> (("amount_returned" Data.Aeson.Types.ToJSON..= orderAmountReturned obj) GHC.Base.<> (("application" Data.Aeson.Types.ToJSON..= orderApplication obj) GHC.Base.<> (("application_fee" Data.Aeson.Types.ToJSON..= orderApplicationFee obj) GHC.Base.<> (("charge" Data.Aeson.Types.ToJSON..= orderCharge obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= orderCreated obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= orderCurrency obj) GHC.Base.<> (("customer" Data.Aeson.Types.ToJSON..= orderCustomer obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= orderEmail obj) GHC.Base.<> (("external_coupon_code" Data.Aeson.Types.ToJSON..= orderExternalCouponCode obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= orderId obj) GHC.Base.<> (("items" Data.Aeson.Types.ToJSON..= orderItems obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= orderLivemode obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= orderMetadata obj) GHC.Base.<> (("returns" Data.Aeson.Types.ToJSON..= orderReturns obj) GHC.Base.<> (("selected_shipping_method" Data.Aeson.Types.ToJSON..= orderSelectedShippingMethod obj) GHC.Base.<> (("shipping" Data.Aeson.Types.ToJSON..= orderShipping obj) GHC.Base.<> (("shipping_methods" Data.Aeson.Types.ToJSON..= orderShippingMethods obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= orderStatus obj) GHC.Base.<> (("status_transitions" Data.Aeson.Types.ToJSON..= orderStatusTransitions obj) GHC.Base.<> (("updated" Data.Aeson.Types.ToJSON..= orderUpdated obj) GHC.Base.<> (("upstream_id" Data.Aeson.Types.ToJSON..= orderUpstreamId obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "order")))))))))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON Order where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Order" (\obj -> (((((((((((((((((((((GHC.Base.pure Order GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_returned")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "external_coupon_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "returns")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selected_shipping_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status_transitions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "updated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "upstream_id"))

-- | Create a new 'Order' with all required fields.
mkOrder ::
  -- | 'orderAmount'
  GHC.Types.Int ->
  -- | 'orderCreated'
  GHC.Types.Int ->
  -- | 'orderCurrency'
  Data.Text.Internal.Text ->
  -- | 'orderId'
  Data.Text.Internal.Text ->
  -- | 'orderItems'
  [OrderItem] ->
  -- | 'orderLivemode'
  GHC.Types.Bool ->
  -- | 'orderMetadata'
  Data.Aeson.Types.Internal.Object ->
  -- | 'orderStatus'
  Data.Text.Internal.Text ->
  Order
mkOrder orderAmount orderCreated orderCurrency orderId orderItems orderLivemode orderMetadata orderStatus =
  Order
    { orderAmount = orderAmount,
      orderAmountReturned = GHC.Maybe.Nothing,
      orderApplication = GHC.Maybe.Nothing,
      orderApplicationFee = GHC.Maybe.Nothing,
      orderCharge = GHC.Maybe.Nothing,
      orderCreated = orderCreated,
      orderCurrency = orderCurrency,
      orderCustomer = GHC.Maybe.Nothing,
      orderEmail = GHC.Maybe.Nothing,
      orderExternalCouponCode = GHC.Maybe.Nothing,
      orderId = orderId,
      orderItems = orderItems,
      orderLivemode = orderLivemode,
      orderMetadata = orderMetadata,
      orderReturns = GHC.Maybe.Nothing,
      orderSelectedShippingMethod = GHC.Maybe.Nothing,
      orderShipping = GHC.Maybe.Nothing,
      orderShippingMethods = GHC.Maybe.Nothing,
      orderStatus = orderStatus,
      orderStatusTransitions = GHC.Maybe.Nothing,
      orderUpdated = GHC.Maybe.Nothing,
      orderUpstreamId = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.order.properties.charge.anyOf@ in the specification.
--
-- The ID of the payment used to pay for the order. Present if the order status is \`paid\`, \`fulfilled\`, or \`refunded\`.
data OrderCharge'Variants
  = OrderCharge'Charge Charge
  | OrderCharge'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON OrderCharge'Variants where
  toJSON (OrderCharge'Charge a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (OrderCharge'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON OrderCharge'Variants where
  parseJSON val = case (OrderCharge'Charge Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((OrderCharge'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.order.properties.customer.anyOf@ in the specification.
--
-- The customer used for the order.
data OrderCustomer'Variants
  = OrderCustomer'Customer Customer
  | OrderCustomer'DeletedCustomer DeletedCustomer
  | OrderCustomer'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON OrderCustomer'Variants where
  toJSON (OrderCustomer'Customer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (OrderCustomer'DeletedCustomer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (OrderCustomer'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON OrderCustomer'Variants where
  parseJSON val = case (OrderCustomer'Customer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((OrderCustomer'DeletedCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((OrderCustomer'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @components.schemas.order.properties.returns@ in the specification.
--
-- A list of returns that have taken place for this order.
data OrderReturns'
  = OrderReturns'
      { -- | data: Details about each object.
        orderReturns'Data :: ([OrderReturn]),
        -- | has_more: True if this list has another page of items after this one that can be fetched.
        orderReturns'HasMore :: GHC.Types.Bool,
        -- | url: The URL where this list can be accessed.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderReturns'Url :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OrderReturns' where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= orderReturns'Data obj : "has_more" Data.Aeson.Types.ToJSON..= orderReturns'HasMore obj : "url" Data.Aeson.Types.ToJSON..= orderReturns'Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= orderReturns'Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= orderReturns'HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= orderReturns'Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON OrderReturns' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OrderReturns'" (\obj -> ((GHC.Base.pure OrderReturns' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'OrderReturns'' with all required fields.
mkOrderReturns' ::
  -- | 'orderReturns'Data'
  [OrderReturn] ->
  -- | 'orderReturns'HasMore'
  GHC.Types.Bool ->
  -- | 'orderReturns'Url'
  Data.Text.Internal.Text ->
  OrderReturns'
mkOrderReturns' orderReturns'Data orderReturns'HasMore orderReturns'Url =
  OrderReturns'
    { orderReturns'Data = orderReturns'Data,
      orderReturns'HasMore = orderReturns'HasMore,
      orderReturns'Url = orderReturns'Url
    }

-- | Defines the object schema located at @components.schemas.order.properties.shipping.anyOf@ in the specification.
--
-- The shipping address for the order. Present if the order is for goods to be shipped.
data OrderShipping'
  = OrderShipping'
      { -- | address:
        orderShipping'Address :: (GHC.Maybe.Maybe Address),
        -- | carrier: The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderShipping'Carrier :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | name: Recipient name.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderShipping'Name :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | phone: Recipient phone (including extension).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderShipping'Phone :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | tracking_number: The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        orderShipping'TrackingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OrderShipping' where
  toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= orderShipping'Address obj : "carrier" Data.Aeson.Types.ToJSON..= orderShipping'Carrier obj : "name" Data.Aeson.Types.ToJSON..= orderShipping'Name obj : "phone" Data.Aeson.Types.ToJSON..= orderShipping'Phone obj : "tracking_number" Data.Aeson.Types.ToJSON..= orderShipping'TrackingNumber obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= orderShipping'Address obj) GHC.Base.<> (("carrier" Data.Aeson.Types.ToJSON..= orderShipping'Carrier obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= orderShipping'Name obj) GHC.Base.<> (("phone" Data.Aeson.Types.ToJSON..= orderShipping'Phone obj) GHC.Base.<> ("tracking_number" Data.Aeson.Types.ToJSON..= orderShipping'TrackingNumber obj)))))

instance Data.Aeson.Types.FromJSON.FromJSON OrderShipping' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OrderShipping'" (\obj -> ((((GHC.Base.pure OrderShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tracking_number"))

-- | Create a new 'OrderShipping'' with all required fields.
mkOrderShipping' :: OrderShipping'
mkOrderShipping' =
  OrderShipping'
    { orderShipping'Address = GHC.Maybe.Nothing,
      orderShipping'Carrier = GHC.Maybe.Nothing,
      orderShipping'Name = GHC.Maybe.Nothing,
      orderShipping'Phone = GHC.Maybe.Nothing,
      orderShipping'TrackingNumber = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.order.properties.status_transitions.anyOf@ in the specification.
--
-- The timestamps at which the order status was updated.
data OrderStatusTransitions'
  = OrderStatusTransitions'
      { -- | canceled: The time that the order was canceled.
        orderStatusTransitions'Canceled :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | fulfiled: The time that the order was fulfilled.
        orderStatusTransitions'Fulfiled :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | paid: The time that the order was paid.
        orderStatusTransitions'Paid :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | returned: The time that the order was returned.
        orderStatusTransitions'Returned :: (GHC.Maybe.Maybe GHC.Types.Int)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OrderStatusTransitions' where
  toJSON obj = Data.Aeson.Types.Internal.object ("canceled" Data.Aeson.Types.ToJSON..= orderStatusTransitions'Canceled obj : "fulfiled" Data.Aeson.Types.ToJSON..= orderStatusTransitions'Fulfiled obj : "paid" Data.Aeson.Types.ToJSON..= orderStatusTransitions'Paid obj : "returned" Data.Aeson.Types.ToJSON..= orderStatusTransitions'Returned obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("canceled" Data.Aeson.Types.ToJSON..= orderStatusTransitions'Canceled obj) GHC.Base.<> (("fulfiled" Data.Aeson.Types.ToJSON..= orderStatusTransitions'Fulfiled obj) GHC.Base.<> (("paid" Data.Aeson.Types.ToJSON..= orderStatusTransitions'Paid obj) GHC.Base.<> ("returned" Data.Aeson.Types.ToJSON..= orderStatusTransitions'Returned obj))))

instance Data.Aeson.Types.FromJSON.FromJSON OrderStatusTransitions' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OrderStatusTransitions'" (\obj -> (((GHC.Base.pure OrderStatusTransitions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "canceled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fulfiled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "paid")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "returned"))

-- | Create a new 'OrderStatusTransitions'' with all required fields.
mkOrderStatusTransitions' :: OrderStatusTransitions'
mkOrderStatusTransitions' =
  OrderStatusTransitions'
    { orderStatusTransitions'Canceled = GHC.Maybe.Nothing,
      orderStatusTransitions'Fulfiled = GHC.Maybe.Nothing,
      orderStatusTransitions'Paid = GHC.Maybe.Nothing,
      orderStatusTransitions'Returned = GHC.Maybe.Nothing
    }
