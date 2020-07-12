{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema LegalEntityDob
module StripeAPI.Types.LegalEntityDob where

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

-- | Defines the object schema located at @components.schemas.legal_entity_dob@ in the specification.
data LegalEntityDob
  = LegalEntityDob
      { -- | day: The day of birth, between 1 and 31.
        legalEntityDobDay :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | month: The month of birth, between 1 and 12.
        legalEntityDobMonth :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | year: The four-digit year of birth.
        legalEntityDobYear :: (GHC.Maybe.Maybe GHC.Types.Int)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityDob where
  toJSON obj = Data.Aeson.Types.Internal.object ("day" Data.Aeson.Types.ToJSON..= legalEntityDobDay obj : "month" Data.Aeson.Types.ToJSON..= legalEntityDobMonth obj : "year" Data.Aeson.Types.ToJSON..= legalEntityDobYear obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("day" Data.Aeson.Types.ToJSON..= legalEntityDobDay obj) GHC.Base.<> (("month" Data.Aeson.Types.ToJSON..= legalEntityDobMonth obj) GHC.Base.<> ("year" Data.Aeson.Types.ToJSON..= legalEntityDobYear obj)))

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityDob where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityDob" (\obj -> ((GHC.Base.pure LegalEntityDob GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "year"))

-- | Create a new 'LegalEntityDob' with all required fields.
mkLegalEntityDob :: LegalEntityDob
mkLegalEntityDob =
  LegalEntityDob
    { legalEntityDobDay = GHC.Maybe.Nothing,
      legalEntityDobMonth = GHC.Maybe.Nothing,
      legalEntityDobYear = GHC.Maybe.Nothing
    }
