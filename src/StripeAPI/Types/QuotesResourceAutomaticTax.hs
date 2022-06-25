-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema QuotesResourceAutomaticTax
module StripeAPI.Types.QuotesResourceAutomaticTax where

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

-- | Defines the object schema located at @components.schemas.quotes_resource_automatic_tax@ in the specification.
-- 
-- 
data QuotesResourceAutomaticTax = QuotesResourceAutomaticTax {
  -- | enabled: Automatically calculate taxes
  quotesResourceAutomaticTaxEnabled :: GHC.Types.Bool
  -- | status: The status of the most recent automated tax calculation for this quote.
  , quotesResourceAutomaticTaxStatus :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable QuotesResourceAutomaticTaxStatus'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceAutomaticTax
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= quotesResourceAutomaticTaxEnabled obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (quotesResourceAutomaticTaxStatus obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= quotesResourceAutomaticTaxEnabled obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (quotesResourceAutomaticTaxStatus obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceAutomaticTax
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "QuotesResourceAutomaticTax" (\obj -> (GHC.Base.pure QuotesResourceAutomaticTax GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status"))
-- | Create a new 'QuotesResourceAutomaticTax' with all required fields.
mkQuotesResourceAutomaticTax :: GHC.Types.Bool -- ^ 'quotesResourceAutomaticTaxEnabled'
  -> QuotesResourceAutomaticTax
mkQuotesResourceAutomaticTax quotesResourceAutomaticTaxEnabled = QuotesResourceAutomaticTax{quotesResourceAutomaticTaxEnabled = quotesResourceAutomaticTaxEnabled,
                                                                                            quotesResourceAutomaticTaxStatus = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.quotes_resource_automatic_tax.properties.status@ in the specification.
-- 
-- The status of the most recent automated tax calculation for this quote.
data QuotesResourceAutomaticTaxStatus'NonNullable =
   QuotesResourceAutomaticTaxStatus'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | QuotesResourceAutomaticTaxStatus'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | QuotesResourceAutomaticTaxStatus'NonNullableEnumComplete -- ^ Represents the JSON value @"complete"@
  | QuotesResourceAutomaticTaxStatus'NonNullableEnumFailed -- ^ Represents the JSON value @"failed"@
  | QuotesResourceAutomaticTaxStatus'NonNullableEnumRequiresLocationInputs -- ^ Represents the JSON value @"requires_location_inputs"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceAutomaticTaxStatus'NonNullable
    where toJSON (QuotesResourceAutomaticTaxStatus'NonNullableOther val) = val
          toJSON (QuotesResourceAutomaticTaxStatus'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (QuotesResourceAutomaticTaxStatus'NonNullableEnumComplete) = "complete"
          toJSON (QuotesResourceAutomaticTaxStatus'NonNullableEnumFailed) = "failed"
          toJSON (QuotesResourceAutomaticTaxStatus'NonNullableEnumRequiresLocationInputs) = "requires_location_inputs"
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceAutomaticTaxStatus'NonNullable
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "complete" -> QuotesResourceAutomaticTaxStatus'NonNullableEnumComplete
                                            | val GHC.Classes.== "failed" -> QuotesResourceAutomaticTaxStatus'NonNullableEnumFailed
                                            | val GHC.Classes.== "requires_location_inputs" -> QuotesResourceAutomaticTaxStatus'NonNullableEnumRequiresLocationInputs
                                            | GHC.Base.otherwise -> QuotesResourceAutomaticTaxStatus'NonNullableOther val)
