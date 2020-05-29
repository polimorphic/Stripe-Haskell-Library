{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceTypeSofort
module StripeAPI.Types.SourceTypeSofort where

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

-- | Defines the data type for the schema source_type_sofort
-- 
-- 
data SourceTypeSofort = SourceTypeSofort {
  -- | bank_code
  sourceTypeSofortBankCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | bank_name
  , sourceTypeSofortBankName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | bic
  , sourceTypeSofortBic :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  , sourceTypeSofortCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | iban_last4
  , sourceTypeSofortIbanLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | preferred_language
  , sourceTypeSofortPreferredLanguage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | statement_descriptor
  , sourceTypeSofortStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceTypeSofort
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "bank_code" (sourceTypeSofortBankCode obj) : (Data.Aeson..=) "bank_name" (sourceTypeSofortBankName obj) : (Data.Aeson..=) "bic" (sourceTypeSofortBic obj) : (Data.Aeson..=) "country" (sourceTypeSofortCountry obj) : (Data.Aeson..=) "iban_last4" (sourceTypeSofortIbanLast4 obj) : (Data.Aeson..=) "preferred_language" (sourceTypeSofortPreferredLanguage obj) : (Data.Aeson..=) "statement_descriptor" (sourceTypeSofortStatementDescriptor obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "bank_code" (sourceTypeSofortBankCode obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (sourceTypeSofortBankName obj) GHC.Base.<> ((Data.Aeson..=) "bic" (sourceTypeSofortBic obj) GHC.Base.<> ((Data.Aeson..=) "country" (sourceTypeSofortCountry obj) GHC.Base.<> ((Data.Aeson..=) "iban_last4" (sourceTypeSofortIbanLast4 obj) GHC.Base.<> ((Data.Aeson..=) "preferred_language" (sourceTypeSofortPreferredLanguage obj) GHC.Base.<> (Data.Aeson..=) "statement_descriptor" (sourceTypeSofortStatementDescriptor obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceTypeSofort
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceTypeSofort" (\obj -> ((((((GHC.Base.pure SourceTypeSofort GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bic")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "iban_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "preferred_language")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor"))