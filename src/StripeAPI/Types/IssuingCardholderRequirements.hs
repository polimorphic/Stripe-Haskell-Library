{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema IssuingCardholderRequirements
module StripeAPI.Types.IssuingCardholderRequirements where

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

-- | Defines the object schema located at @components.schemas.issuing_cardholder_requirements@ in the specification.
data IssuingCardholderRequirements
  = IssuingCardholderRequirements
      { -- | disabled_reason: If \`disabled_reason\` is present, all cards will decline authorizations with \`cardholder_verification_required\` reason.
        issuingCardholderRequirementsDisabledReason :: (GHC.Maybe.Maybe IssuingCardholderRequirementsDisabledReason'),
        -- | past_due: If not empty, this field contains the list of fields that need to be collected in order to verify and re-enabled the cardholder.
        issuingCardholderRequirementsPastDue :: (GHC.Maybe.Maybe ([IssuingCardholderRequirementsPastDue']))
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderRequirements where
  toJSON obj = Data.Aeson.Types.Internal.object ("disabled_reason" Data.Aeson.Types.ToJSON..= issuingCardholderRequirementsDisabledReason obj : "past_due" Data.Aeson.Types.ToJSON..= issuingCardholderRequirementsPastDue obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("disabled_reason" Data.Aeson.Types.ToJSON..= issuingCardholderRequirementsDisabledReason obj) GHC.Base.<> ("past_due" Data.Aeson.Types.ToJSON..= issuingCardholderRequirementsPastDue obj))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderRequirements where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderRequirements" (\obj -> (GHC.Base.pure IssuingCardholderRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disabled_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "past_due"))

-- | Create a new 'IssuingCardholderRequirements' with all required fields.
mkIssuingCardholderRequirements :: IssuingCardholderRequirements
mkIssuingCardholderRequirements =
  IssuingCardholderRequirements
    { issuingCardholderRequirementsDisabledReason = GHC.Maybe.Nothing,
      issuingCardholderRequirementsPastDue = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.issuing_cardholder_requirements.properties.disabled_reason@ in the specification.
--
-- If \`disabled_reason\` is present, all cards will decline authorizations with \`cardholder_verification_required\` reason.
data IssuingCardholderRequirementsDisabledReason'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingCardholderRequirementsDisabledReason'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingCardholderRequirementsDisabledReason'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"listed"@
    IssuingCardholderRequirementsDisabledReason'EnumListed
  | -- | Represents the JSON value @"rejected.listed"@
    IssuingCardholderRequirementsDisabledReason'EnumRejected'listed
  | -- | Represents the JSON value @"under_review"@
    IssuingCardholderRequirementsDisabledReason'EnumUnderReview
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderRequirementsDisabledReason' where
  toJSON (IssuingCardholderRequirementsDisabledReason'Other val) = val
  toJSON (IssuingCardholderRequirementsDisabledReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingCardholderRequirementsDisabledReason'EnumListed) = "listed"
  toJSON (IssuingCardholderRequirementsDisabledReason'EnumRejected'listed) = "rejected.listed"
  toJSON (IssuingCardholderRequirementsDisabledReason'EnumUnderReview) = "under_review"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderRequirementsDisabledReason' where
  parseJSON val =
    GHC.Base.pure
      ( if  | val GHC.Classes.== "listed" -> IssuingCardholderRequirementsDisabledReason'EnumListed
            | val GHC.Classes.== "rejected.listed" -> IssuingCardholderRequirementsDisabledReason'EnumRejected'listed
            | val GHC.Classes.== "under_review" -> IssuingCardholderRequirementsDisabledReason'EnumUnderReview
            | GHC.Base.otherwise -> IssuingCardholderRequirementsDisabledReason'Other val
      )

-- | Defines the enum schema located at @components.schemas.issuing_cardholder_requirements.properties.past_due.items@ in the specification.
data IssuingCardholderRequirementsPastDue'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingCardholderRequirementsPastDue'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingCardholderRequirementsPastDue'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"individual.dob.day"@
    IssuingCardholderRequirementsPastDue'EnumIndividual'dob'day
  | -- | Represents the JSON value @"individual.dob.month"@
    IssuingCardholderRequirementsPastDue'EnumIndividual'dob'month
  | -- | Represents the JSON value @"individual.dob.year"@
    IssuingCardholderRequirementsPastDue'EnumIndividual'dob'year
  | -- | Represents the JSON value @"individual.first_name"@
    IssuingCardholderRequirementsPastDue'EnumIndividual'firstName
  | -- | Represents the JSON value @"individual.last_name"@
    IssuingCardholderRequirementsPastDue'EnumIndividual'lastName
  | -- | Represents the JSON value @"individual.verification.document"@
    IssuingCardholderRequirementsPastDue'EnumIndividual'verification'document
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderRequirementsPastDue' where
  toJSON (IssuingCardholderRequirementsPastDue'Other val) = val
  toJSON (IssuingCardholderRequirementsPastDue'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingCardholderRequirementsPastDue'EnumIndividual'dob'day) = "individual.dob.day"
  toJSON (IssuingCardholderRequirementsPastDue'EnumIndividual'dob'month) = "individual.dob.month"
  toJSON (IssuingCardholderRequirementsPastDue'EnumIndividual'dob'year) = "individual.dob.year"
  toJSON (IssuingCardholderRequirementsPastDue'EnumIndividual'firstName) = "individual.first_name"
  toJSON (IssuingCardholderRequirementsPastDue'EnumIndividual'lastName) = "individual.last_name"
  toJSON (IssuingCardholderRequirementsPastDue'EnumIndividual'verification'document) = "individual.verification.document"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderRequirementsPastDue' where
  parseJSON val =
    GHC.Base.pure
      ( if  | val GHC.Classes.== "individual.dob.day" -> IssuingCardholderRequirementsPastDue'EnumIndividual'dob'day
            | val GHC.Classes.== "individual.dob.month" -> IssuingCardholderRequirementsPastDue'EnumIndividual'dob'month
            | val GHC.Classes.== "individual.dob.year" -> IssuingCardholderRequirementsPastDue'EnumIndividual'dob'year
            | val GHC.Classes.== "individual.first_name" -> IssuingCardholderRequirementsPastDue'EnumIndividual'firstName
            | val GHC.Classes.== "individual.last_name" -> IssuingCardholderRequirementsPastDue'EnumIndividual'lastName
            | val GHC.Classes.== "individual.verification.document" -> IssuingCardholderRequirementsPastDue'EnumIndividual'verification'document
            | GHC.Base.otherwise -> IssuingCardholderRequirementsPastDue'Other val
      )
