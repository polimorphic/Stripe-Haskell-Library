{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PackageDimensions
module StripeAPI.Types.PackageDimensions where

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

-- | Defines the data type for the schema package_dimensions
-- 
-- 
data PackageDimensions = PackageDimensions {
  -- | height: Height, in inches.
  packageDimensionsHeight :: GHC.Types.Double
  -- | length: Length, in inches.
  , packageDimensionsLength :: GHC.Types.Double
  -- | weight: Weight, in ounces.
  , packageDimensionsWeight :: GHC.Types.Double
  -- | width: Width, in inches.
  , packageDimensionsWidth :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PackageDimensions
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "height" (packageDimensionsHeight obj) : (Data.Aeson..=) "length" (packageDimensionsLength obj) : (Data.Aeson..=) "weight" (packageDimensionsWeight obj) : (Data.Aeson..=) "width" (packageDimensionsWidth obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "height" (packageDimensionsHeight obj) GHC.Base.<> ((Data.Aeson..=) "length" (packageDimensionsLength obj) GHC.Base.<> ((Data.Aeson..=) "weight" (packageDimensionsWeight obj) GHC.Base.<> (Data.Aeson..=) "width" (packageDimensionsWidth obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PackageDimensions
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PackageDimensions" (\obj -> (((GHC.Base.pure PackageDimensions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))