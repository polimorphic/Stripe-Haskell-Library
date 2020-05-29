{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PlanTier
module StripeAPI.Types.PlanTier where

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

-- | Defines the data type for the schema plan_tier
-- 
-- 
data PlanTier = PlanTier {
  -- | flat_amount: Price for the entire tier.
  planTierFlatAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | flat_amount_decimal: Same as \`flat_amount\`, but contains a decimal value with at most 12 decimal places.
  , planTierFlatAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | unit_amount: Per unit price for units relevant to the tier.
  , planTierUnitAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | unit_amount_decimal: Same as \`unit_amount\`, but contains a decimal value with at most 12 decimal places.
  , planTierUnitAmountDecimal :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | up_to: Up to and including to this quantity will be contained in the tier.
  , planTierUpTo :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PlanTier
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "flat_amount" (planTierFlatAmount obj) : (Data.Aeson..=) "flat_amount_decimal" (planTierFlatAmountDecimal obj) : (Data.Aeson..=) "unit_amount" (planTierUnitAmount obj) : (Data.Aeson..=) "unit_amount_decimal" (planTierUnitAmountDecimal obj) : (Data.Aeson..=) "up_to" (planTierUpTo obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "flat_amount" (planTierFlatAmount obj) GHC.Base.<> ((Data.Aeson..=) "flat_amount_decimal" (planTierFlatAmountDecimal obj) GHC.Base.<> ((Data.Aeson..=) "unit_amount" (planTierUnitAmount obj) GHC.Base.<> ((Data.Aeson..=) "unit_amount_decimal" (planTierUnitAmountDecimal obj) GHC.Base.<> (Data.Aeson..=) "up_to" (planTierUpTo obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PlanTier
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PlanTier" (\obj -> ((((GHC.Base.pure PlanTier GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flat_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flat_amount_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "unit_amount_decimal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "up_to"))