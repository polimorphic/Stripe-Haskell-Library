{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema SourceTypeIdeal
module StripeAPI.Types.SourceTypeIdeal where

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

-- | Defines the object schema located at @components.schemas.source_type_ideal@ in the specification.
data SourceTypeIdeal
  = SourceTypeIdeal
      { -- | bank
        sourceTypeIdealBank :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | bic
        sourceTypeIdealBic :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | iban_last4
        sourceTypeIdealIbanLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | statement_descriptor
        sourceTypeIdealStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceTypeIdeal where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank" Data.Aeson.Types.ToJSON..= sourceTypeIdealBank obj : "bic" Data.Aeson.Types.ToJSON..= sourceTypeIdealBic obj : "iban_last4" Data.Aeson.Types.ToJSON..= sourceTypeIdealIbanLast4 obj : "statement_descriptor" Data.Aeson.Types.ToJSON..= sourceTypeIdealStatementDescriptor obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bank" Data.Aeson.Types.ToJSON..= sourceTypeIdealBank obj) GHC.Base.<> (("bic" Data.Aeson.Types.ToJSON..= sourceTypeIdealBic obj) GHC.Base.<> (("iban_last4" Data.Aeson.Types.ToJSON..= sourceTypeIdealIbanLast4 obj) GHC.Base.<> ("statement_descriptor" Data.Aeson.Types.ToJSON..= sourceTypeIdealStatementDescriptor obj))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeIdeal where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeIdeal" (\obj -> (((GHC.Base.pure SourceTypeIdeal GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))

-- | Create a new 'SourceTypeIdeal' with all required fields.
mkSourceTypeIdeal :: SourceTypeIdeal
mkSourceTypeIdeal =
  SourceTypeIdeal
    { sourceTypeIdealBank = GHC.Maybe.Nothing,
      sourceTypeIdealBic = GHC.Maybe.Nothing,
      sourceTypeIdealIbanLast4 = GHC.Maybe.Nothing,
      sourceTypeIdealStatementDescriptor = GHC.Maybe.Nothing
    }
