{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema TaxRate
module StripeAPI.Types.TaxRate where

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

-- | Defines the data type for the schema tax_rate
-- 
-- Tax rates can be applied to invoices and subscriptions to collect tax.
-- 
-- Related guide: [Tax Rates](https:\/\/stripe.com\/docs\/billing\/taxes\/tax-rates).
data TaxRate = TaxRate {
  -- | active: Defaults to \`true\`. When set to \`false\`, this tax rate cannot be applied to objects in the API, but will still be applied to subscriptions and invoices that already have it set.
  taxRateActive :: GHC.Types.Bool
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , taxRateCreated :: GHC.Integer.Type.Integer
  -- | description: An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxRateDescription :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | display_name: The display name of the tax rates as it will appear to your customer on their receipt email, PDF, and the hosted invoice page.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxRateDisplayName :: GHC.Base.String
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxRateId :: GHC.Base.String
  -- | inclusive: This specifies if the tax rate is inclusive or exclusive.
  , taxRateInclusive :: GHC.Types.Bool
  -- | jurisdiction: The jurisdiction for the tax rate.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxRateJurisdiction :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , taxRateLivemode :: GHC.Types.Bool
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , taxRateMetadata :: TaxRateMetadata'
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , taxRateObject :: TaxRateObject'
  -- | percentage: This represents the tax rate percent out of 100.
  , taxRatePercentage :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON TaxRate
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "active" (taxRateActive obj) : (Data.Aeson..=) "created" (taxRateCreated obj) : (Data.Aeson..=) "description" (taxRateDescription obj) : (Data.Aeson..=) "display_name" (taxRateDisplayName obj) : (Data.Aeson..=) "id" (taxRateId obj) : (Data.Aeson..=) "inclusive" (taxRateInclusive obj) : (Data.Aeson..=) "jurisdiction" (taxRateJurisdiction obj) : (Data.Aeson..=) "livemode" (taxRateLivemode obj) : (Data.Aeson..=) "metadata" (taxRateMetadata obj) : (Data.Aeson..=) "object" (taxRateObject obj) : (Data.Aeson..=) "percentage" (taxRatePercentage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "active" (taxRateActive obj) GHC.Base.<> ((Data.Aeson..=) "created" (taxRateCreated obj) GHC.Base.<> ((Data.Aeson..=) "description" (taxRateDescription obj) GHC.Base.<> ((Data.Aeson..=) "display_name" (taxRateDisplayName obj) GHC.Base.<> ((Data.Aeson..=) "id" (taxRateId obj) GHC.Base.<> ((Data.Aeson..=) "inclusive" (taxRateInclusive obj) GHC.Base.<> ((Data.Aeson..=) "jurisdiction" (taxRateJurisdiction obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (taxRateLivemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (taxRateMetadata obj) GHC.Base.<> ((Data.Aeson..=) "object" (taxRateObject obj) GHC.Base.<> (Data.Aeson..=) "percentage" (taxRatePercentage obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON TaxRate
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxRate" (\obj -> ((((((((((GHC.Base.pure TaxRate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inclusive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "jurisdiction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "percentage"))
-- | Defines the data type for the schema tax_rateMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data TaxRateMetadata' = TaxRateMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON TaxRateMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON TaxRateMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxRateMetadata'" (\obj -> GHC.Base.pure TaxRateMetadata')
-- | Defines the enum schema tax_rateObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data TaxRateObject'
    = TaxRateObject'EnumOther Data.Aeson.Types.Internal.Value
    | TaxRateObject'EnumTyped GHC.Base.String
    | TaxRateObject'EnumStringTaxRate
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON TaxRateObject'
    where toJSON (TaxRateObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (TaxRateObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (TaxRateObject'EnumStringTaxRate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_rate"
instance Data.Aeson.FromJSON TaxRateObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_rate")
                                          then TaxRateObject'EnumStringTaxRate
                                          else TaxRateObject'EnumOther val)