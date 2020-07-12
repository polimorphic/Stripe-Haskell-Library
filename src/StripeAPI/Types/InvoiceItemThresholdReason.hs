{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema InvoiceItemThresholdReason
module StripeAPI.Types.InvoiceItemThresholdReason where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.invoice_item_threshold_reason@ in the specification.
data InvoiceItemThresholdReason
  = InvoiceItemThresholdReason
      { -- | line_item_ids: The IDs of the line items that triggered the threshold invoice.
        invoiceItemThresholdReasonLineItemIds :: ([Data.Text.Internal.Text]),
        -- | usage_gte: The quantity threshold boundary that applied to the given line item.
        invoiceItemThresholdReasonUsageGte :: GHC.Types.Int
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON InvoiceItemThresholdReason where
  toJSON obj = Data.Aeson.Types.Internal.object ("line_item_ids" Data.Aeson.Types.ToJSON..= invoiceItemThresholdReasonLineItemIds obj : "usage_gte" Data.Aeson.Types.ToJSON..= invoiceItemThresholdReasonUsageGte obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("line_item_ids" Data.Aeson.Types.ToJSON..= invoiceItemThresholdReasonLineItemIds obj) GHC.Base.<> ("usage_gte" Data.Aeson.Types.ToJSON..= invoiceItemThresholdReasonUsageGte obj))

instance Data.Aeson.Types.FromJSON.FromJSON InvoiceItemThresholdReason where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceItemThresholdReason" (\obj -> (GHC.Base.pure InvoiceItemThresholdReason GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "line_item_ids")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "usage_gte"))

-- | Create a new 'InvoiceItemThresholdReason' with all required fields.
mkInvoiceItemThresholdReason ::
  -- | 'invoiceItemThresholdReasonLineItemIds'
  [Data.Text.Internal.Text] ->
  -- | 'invoiceItemThresholdReasonUsageGte'
  GHC.Types.Int ->
  InvoiceItemThresholdReason
mkInvoiceItemThresholdReason invoiceItemThresholdReasonLineItemIds invoiceItemThresholdReasonUsageGte =
  InvoiceItemThresholdReason
    { invoiceItemThresholdReasonLineItemIds = invoiceItemThresholdReasonLineItemIds,
      invoiceItemThresholdReasonUsageGte = invoiceItemThresholdReasonUsageGte
    }
