{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceOrder
module StripeAPI.Types.SourceOrder where

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
import StripeAPI.Types.Shipping
import StripeAPI.Types.SourceOrderItem

-- | Defines the data type for the schema source_order
-- 
-- 
data SourceOrder = SourceOrder {
  -- | amount: A positive integer in the smallest currency unit (that is, 100 cents for \$1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order.
  sourceOrderAmount :: GHC.Integer.Type.Integer
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , sourceOrderCurrency :: Data.Text.Internal.Text
  -- | email: The email address of the customer placing the order.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceOrderEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | items: List of items constituting the order.
  , sourceOrderItems :: (GHC.Maybe.Maybe ([] SourceOrderItem))
  -- | shipping: 
  , sourceOrderShipping :: (GHC.Maybe.Maybe Shipping)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceOrder
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (sourceOrderAmount obj) : (Data.Aeson..=) "currency" (sourceOrderCurrency obj) : (Data.Aeson..=) "email" (sourceOrderEmail obj) : (Data.Aeson..=) "items" (sourceOrderItems obj) : (Data.Aeson..=) "shipping" (sourceOrderShipping obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (sourceOrderAmount obj) GHC.Base.<> ((Data.Aeson..=) "currency" (sourceOrderCurrency obj) GHC.Base.<> ((Data.Aeson..=) "email" (sourceOrderEmail obj) GHC.Base.<> ((Data.Aeson..=) "items" (sourceOrderItems obj) GHC.Base.<> (Data.Aeson..=) "shipping" (sourceOrderShipping obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceOrder
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOrder" (\obj -> ((((GHC.Base.pure SourceOrder GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "items")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping"))