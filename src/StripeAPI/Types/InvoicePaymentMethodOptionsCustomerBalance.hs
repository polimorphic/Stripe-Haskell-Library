-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InvoicePaymentMethodOptionsCustomerBalance
module StripeAPI.Types.InvoicePaymentMethodOptionsCustomerBalance where

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
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsCustomerBalanceBankTransfer

-- | Defines the object schema located at @components.schemas.invoice_payment_method_options_customer_balance@ in the specification.
-- 
-- 
data InvoicePaymentMethodOptionsCustomerBalance = InvoicePaymentMethodOptionsCustomerBalance {
  -- | bank_transfer: 
  invoicePaymentMethodOptionsCustomerBalanceBankTransfer :: (GHC.Maybe.Maybe InvoicePaymentMethodOptionsCustomerBalanceBankTransfer)
  -- | funding_type: The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: \`bank_transfer\`.
  , invoicePaymentMethodOptionsCustomerBalanceFundingType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoicePaymentMethodOptionsCustomerBalance
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_transfer" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsCustomerBalanceBankTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funding_type" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsCustomerBalanceFundingType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_transfer" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsCustomerBalanceBankTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("funding_type" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsCustomerBalanceFundingType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON InvoicePaymentMethodOptionsCustomerBalance
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicePaymentMethodOptionsCustomerBalance" (\obj -> (GHC.Base.pure InvoicePaymentMethodOptionsCustomerBalance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "funding_type"))
-- | Create a new 'InvoicePaymentMethodOptionsCustomerBalance' with all required fields.
mkInvoicePaymentMethodOptionsCustomerBalance :: InvoicePaymentMethodOptionsCustomerBalance
mkInvoicePaymentMethodOptionsCustomerBalance = InvoicePaymentMethodOptionsCustomerBalance{invoicePaymentMethodOptionsCustomerBalanceBankTransfer = GHC.Maybe.Nothing,
                                                                                          invoicePaymentMethodOptionsCustomerBalanceFundingType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.invoice_payment_method_options_customer_balance.properties.funding_type@ in the specification.
-- 
-- The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: \`bank_transfer\`.
data InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullable =
   InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullableEnumBankTransfer -- ^ Represents the JSON value @"bank_transfer"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullable
    where toJSON (InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullableOther val) = val
          toJSON (InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullableEnumBankTransfer) = "bank_transfer"
instance Data.Aeson.Types.FromJSON.FromJSON InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullable
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "bank_transfer" -> InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullableEnumBankTransfer
                                            | GHC.Base.otherwise -> InvoicePaymentMethodOptionsCustomerBalanceFundingType'NonNullableOther val)
