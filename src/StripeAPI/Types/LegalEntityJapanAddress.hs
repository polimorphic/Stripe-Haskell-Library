{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema LegalEntityJapanAddress
module StripeAPI.Types.LegalEntityJapanAddress where

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

-- | Defines the object schema located at @components.schemas.legal_entity_japan_address@ in the specification.
data LegalEntityJapanAddress
  = LegalEntityJapanAddress
      { -- | city: City\/Ward.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        legalEntityJapanAddressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        legalEntityJapanAddressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line1: Block\/Building number.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        legalEntityJapanAddressLine1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line2: Building details.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        legalEntityJapanAddressLine2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | postal_code: ZIP or postal code.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        legalEntityJapanAddressPostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | state: Prefecture.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        legalEntityJapanAddressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | town: Town\/cho-me.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        legalEntityJapanAddressTown :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityJapanAddress where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressCity obj : "country" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressCountry obj : "line1" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressLine1 obj : "line2" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressLine2 obj : "postal_code" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressPostalCode obj : "state" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressState obj : "town" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressTown obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressCity obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressCountry obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressLine1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressLine2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressPostalCode obj) GHC.Base.<> (("state" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressState obj) GHC.Base.<> ("town" Data.Aeson.Types.ToJSON..= legalEntityJapanAddressTown obj)))))))

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityJapanAddress where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityJapanAddress" (\obj -> ((((((GHC.Base.pure LegalEntityJapanAddress GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "town"))

-- | Create a new 'LegalEntityJapanAddress' with all required fields.
mkLegalEntityJapanAddress :: LegalEntityJapanAddress
mkLegalEntityJapanAddress =
  LegalEntityJapanAddress
    { legalEntityJapanAddressCity = GHC.Maybe.Nothing,
      legalEntityJapanAddressCountry = GHC.Maybe.Nothing,
      legalEntityJapanAddressLine1 = GHC.Maybe.Nothing,
      legalEntityJapanAddressLine2 = GHC.Maybe.Nothing,
      legalEntityJapanAddressPostalCode = GHC.Maybe.Nothing,
      legalEntityJapanAddressState = GHC.Maybe.Nothing,
      legalEntityJapanAddressTown = GHC.Maybe.Nothing
    }
