{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema InvoiceTaxAmount
module StripeAPI.Types.InvoiceTaxAmount where

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
import StripeAPI.Types.TaxRate

-- | Defines the data type for the schema invoice_tax_amount
-- 
-- 
data InvoiceTaxAmount = InvoiceTaxAmount {
  -- | amount: The amount, in %s, of the tax.
  invoiceTaxAmountAmount :: GHC.Integer.Type.Integer
  -- | inclusive: Whether this tax amount is inclusive or exclusive.
  , invoiceTaxAmountInclusive :: GHC.Types.Bool
  -- | tax_rate: The tax rate that was applied to get this tax amount.
  , invoiceTaxAmountTaxRate :: InvoiceTaxAmountTaxRate'Variants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON InvoiceTaxAmount
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "amount" (invoiceTaxAmountAmount obj) : (Data.Aeson..=) "inclusive" (invoiceTaxAmountInclusive obj) : (Data.Aeson..=) "tax_rate" (invoiceTaxAmountTaxRate obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "amount" (invoiceTaxAmountAmount obj) GHC.Base.<> ((Data.Aeson..=) "inclusive" (invoiceTaxAmountInclusive obj) GHC.Base.<> (Data.Aeson..=) "tax_rate" (invoiceTaxAmountTaxRate obj)))
instance Data.Aeson.Types.FromJSON.FromJSON InvoiceTaxAmount
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoiceTaxAmount" (\obj -> ((GHC.Base.pure InvoiceTaxAmount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inclusive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_rate"))
-- | Define the one-of schema invoice_tax_amountTax_rate\'
-- 
-- The tax rate that was applied to get this tax amount.
data InvoiceTaxAmountTaxRate'Variants
    = InvoiceTaxAmountTaxRate'TaxRate TaxRate
    | InvoiceTaxAmountTaxRate'Text Data.Text.Internal.Text
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON InvoiceTaxAmountTaxRate'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON InvoiceTaxAmountTaxRate'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}