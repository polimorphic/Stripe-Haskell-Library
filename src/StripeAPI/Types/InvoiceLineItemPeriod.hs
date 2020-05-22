{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema InvoiceLineItemPeriod
module StripeAPI.Types.InvoiceLineItemPeriod where

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

-- | Defines the data type for the schema invoice_line_item_period
-- 
-- 
data InvoiceLineItemPeriod = InvoiceLineItemPeriod {
  -- | end: End of the line item\'s billing period
  invoiceLineItemPeriodEnd :: GHC.Integer.Type.Integer
  -- | start: Start of the line item\'s billing period
  , invoiceLineItemPeriodStart :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON InvoiceLineItemPeriod
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "end" (invoiceLineItemPeriodEnd obj) : (Data.Aeson..=) "start" (invoiceLineItemPeriodStart obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "end" (invoiceLineItemPeriodEnd obj) GHC.Base.<> (Data.Aeson..=) "start" (invoiceLineItemPeriodStart obj))
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceLineItemPeriod
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceLineItemPeriod" (\obj -> (GHC.Base.pure InvoiceLineItemPeriod GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "end")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start"))