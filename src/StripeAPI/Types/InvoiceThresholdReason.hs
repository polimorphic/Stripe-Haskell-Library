-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InvoiceThresholdReason
module StripeAPI.Types.InvoiceThresholdReason where

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
import {-# SOURCE #-} StripeAPI.Types.InvoiceItemThresholdReason

-- | Defines the object schema located at @components.schemas.invoice_threshold_reason@ in the specification.
-- 
-- 
data InvoiceThresholdReason = InvoiceThresholdReason {
  -- | amount_gte: The total invoice amount threshold boundary if it triggered the threshold invoice.
  invoiceThresholdReasonAmountGte :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | item_reasons: Indicates which line items triggered a threshold invoice.
  , invoiceThresholdReasonItemReasons :: ([InvoiceItemThresholdReason])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoiceThresholdReason
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_gte" Data.Aeson.Types.ToJSON..=)) (invoiceThresholdReasonAmountGte obj) : ["item_reasons" Data.Aeson.Types.ToJSON..= invoiceThresholdReasonItemReasons obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_gte" Data.Aeson.Types.ToJSON..=)) (invoiceThresholdReasonAmountGte obj) : ["item_reasons" Data.Aeson.Types.ToJSON..= invoiceThresholdReasonItemReasons obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceThresholdReason
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceThresholdReason" (\obj -> (GHC.Base.pure InvoiceThresholdReason GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "item_reasons"))
-- | Create a new 'InvoiceThresholdReason' with all required fields.
mkInvoiceThresholdReason :: [InvoiceItemThresholdReason] -- ^ 'invoiceThresholdReasonItemReasons'
  -> InvoiceThresholdReason
mkInvoiceThresholdReason invoiceThresholdReasonItemReasons = InvoiceThresholdReason{invoiceThresholdReasonAmountGte = GHC.Maybe.Nothing,
                                                                                    invoiceThresholdReasonItemReasons = invoiceThresholdReasonItemReasons}
