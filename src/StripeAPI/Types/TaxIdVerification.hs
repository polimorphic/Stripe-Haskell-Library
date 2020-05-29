{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema TaxIdVerification
module StripeAPI.Types.TaxIdVerification where

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

-- | Defines the data type for the schema tax_id_verification
-- 
-- 
data TaxIdVerification = TaxIdVerification {
  -- | status: Verification status, one of \`pending\`, \`verified\`, \`unverified\`, or \`unavailable\`.
  taxIdVerificationStatus :: TaxIdVerificationStatus'
  -- | verified_address: Verified address.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxIdVerificationVerifiedAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | verified_name: Verified name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxIdVerificationVerifiedName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON TaxIdVerification
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "status" (taxIdVerificationStatus obj) : (Data.Aeson..=) "verified_address" (taxIdVerificationVerifiedAddress obj) : (Data.Aeson..=) "verified_name" (taxIdVerificationVerifiedName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "status" (taxIdVerificationStatus obj) GHC.Base.<> ((Data.Aeson..=) "verified_address" (taxIdVerificationVerifiedAddress obj) GHC.Base.<> (Data.Aeson..=) "verified_name" (taxIdVerificationVerifiedName obj)))
instance Data.Aeson.Types.FromJSON.FromJSON TaxIdVerification
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxIdVerification" (\obj -> ((GHC.Base.pure TaxIdVerification GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name"))
-- | Defines the enum schema tax_id_verificationStatus\'
-- 
-- Verification status, one of \`pending\`, \`verified\`, \`unverified\`, or \`unavailable\`.
data TaxIdVerificationStatus'
    = TaxIdVerificationStatus'EnumOther Data.Aeson.Types.Internal.Value
    | TaxIdVerificationStatus'EnumTyped Data.Text.Internal.Text
    | TaxIdVerificationStatus'EnumStringPending
    | TaxIdVerificationStatus'EnumStringUnavailable
    | TaxIdVerificationStatus'EnumStringUnverified
    | TaxIdVerificationStatus'EnumStringVerified
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON TaxIdVerificationStatus'
    where toJSON (TaxIdVerificationStatus'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (TaxIdVerificationStatus'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (TaxIdVerificationStatus'EnumStringPending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
          toJSON (TaxIdVerificationStatus'EnumStringUnavailable) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unavailable"
          toJSON (TaxIdVerificationStatus'EnumStringUnverified) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unverified"
          toJSON (TaxIdVerificationStatus'EnumStringVerified) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verified"
instance Data.Aeson.FromJSON TaxIdVerificationStatus'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                          then TaxIdVerificationStatus'EnumStringPending
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unavailable")
                                                then TaxIdVerificationStatus'EnumStringUnavailable
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unverified")
                                                      then TaxIdVerificationStatus'EnumStringUnverified
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verified")
                                                            then TaxIdVerificationStatus'EnumStringVerified
                                                            else TaxIdVerificationStatus'EnumOther val)