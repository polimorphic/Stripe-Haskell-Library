{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema ThreeDSecureUsage
module StripeAPI.Types.ThreeDSecureUsage where

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

-- | Defines the object schema located at @components.schemas.three_d_secure_usage@ in the specification.
data ThreeDSecureUsage
  = ThreeDSecureUsage
      { -- | supported: Whether 3D Secure is supported on this card.
        threeDSecureUsageSupported :: GHC.Types.Bool
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ThreeDSecureUsage where
  toJSON obj = Data.Aeson.Types.Internal.object ("supported" Data.Aeson.Types.ToJSON..= threeDSecureUsageSupported obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("supported" Data.Aeson.Types.ToJSON..= threeDSecureUsageSupported obj)

instance Data.Aeson.Types.FromJSON.FromJSON ThreeDSecureUsage where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ThreeDSecureUsage" (\obj -> GHC.Base.pure ThreeDSecureUsage GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "supported"))

-- | Create a new 'ThreeDSecureUsage' with all required fields.
mkThreeDSecureUsage ::
  -- | 'threeDSecureUsageSupported'
  GHC.Types.Bool ->
  ThreeDSecureUsage
mkThreeDSecureUsage threeDSecureUsageSupported = ThreeDSecureUsage {threeDSecureUsageSupported = threeDSecureUsageSupported}
