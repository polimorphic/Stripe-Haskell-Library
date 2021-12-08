{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GelatoReportDocumentOptions
module StripeAPI.Types.GelatoReportDocumentOptions where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
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

-- | Defines the object schema located at @components.schemas.gelato_report_document_options@ in the specification.
data GelatoReportDocumentOptions = GelatoReportDocumentOptions
  { -- | allowed_types: Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
    gelatoReportDocumentOptionsAllowedTypes :: (GHC.Maybe.Maybe ([GelatoReportDocumentOptionsAllowedTypes'])),
    -- | require_id_number: Collect an ID number and perform an [ID number check](https:\/\/stripe.com\/docs\/identity\/verification-checks?type=id-number) with the document’s extracted name and date of birth.
    gelatoReportDocumentOptionsRequireIdNumber :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | require_live_capture: Disable image uploads, identity document images have to be captured using the device’s camera.
    gelatoReportDocumentOptionsRequireLiveCapture :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | require_matching_selfie: Capture a face image and perform a [selfie check](https:\/\/stripe.com\/docs\/identity\/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https:\/\/stripe.com\/docs\/identity\/selfie).
    gelatoReportDocumentOptionsRequireMatchingSelfie :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GelatoReportDocumentOptions where
  toJSON obj = Data.Aeson.Types.Internal.object ("allowed_types" Data.Aeson.Types.ToJSON..= gelatoReportDocumentOptionsAllowedTypes obj : "require_id_number" Data.Aeson.Types.ToJSON..= gelatoReportDocumentOptionsRequireIdNumber obj : "require_live_capture" Data.Aeson.Types.ToJSON..= gelatoReportDocumentOptionsRequireLiveCapture obj : "require_matching_selfie" Data.Aeson.Types.ToJSON..= gelatoReportDocumentOptionsRequireMatchingSelfie obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allowed_types" Data.Aeson.Types.ToJSON..= gelatoReportDocumentOptionsAllowedTypes obj) GHC.Base.<> (("require_id_number" Data.Aeson.Types.ToJSON..= gelatoReportDocumentOptionsRequireIdNumber obj) GHC.Base.<> (("require_live_capture" Data.Aeson.Types.ToJSON..= gelatoReportDocumentOptionsRequireLiveCapture obj) GHC.Base.<> ("require_matching_selfie" Data.Aeson.Types.ToJSON..= gelatoReportDocumentOptionsRequireMatchingSelfie obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GelatoReportDocumentOptions where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoReportDocumentOptions" (\obj -> (((GHC.Base.pure GelatoReportDocumentOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allowed_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "require_id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "require_live_capture")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "require_matching_selfie"))

-- | Create a new 'GelatoReportDocumentOptions' with all required fields.
mkGelatoReportDocumentOptions :: GelatoReportDocumentOptions
mkGelatoReportDocumentOptions =
  GelatoReportDocumentOptions
    { gelatoReportDocumentOptionsAllowedTypes = GHC.Maybe.Nothing,
      gelatoReportDocumentOptionsRequireIdNumber = GHC.Maybe.Nothing,
      gelatoReportDocumentOptionsRequireLiveCapture = GHC.Maybe.Nothing,
      gelatoReportDocumentOptionsRequireMatchingSelfie = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.gelato_report_document_options.properties.allowed_types.items@ in the specification.
data GelatoReportDocumentOptionsAllowedTypes'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GelatoReportDocumentOptionsAllowedTypes'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GelatoReportDocumentOptionsAllowedTypes'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"driving_license"@
    GelatoReportDocumentOptionsAllowedTypes'EnumDrivingLicense
  | -- | Represents the JSON value @"id_card"@
    GelatoReportDocumentOptionsAllowedTypes'EnumIdCard
  | -- | Represents the JSON value @"passport"@
    GelatoReportDocumentOptionsAllowedTypes'EnumPassport
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GelatoReportDocumentOptionsAllowedTypes' where
  toJSON (GelatoReportDocumentOptionsAllowedTypes'Other val) = val
  toJSON (GelatoReportDocumentOptionsAllowedTypes'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GelatoReportDocumentOptionsAllowedTypes'EnumDrivingLicense) = "driving_license"
  toJSON (GelatoReportDocumentOptionsAllowedTypes'EnumIdCard) = "id_card"
  toJSON (GelatoReportDocumentOptionsAllowedTypes'EnumPassport) = "passport"

instance Data.Aeson.Types.FromJSON.FromJSON GelatoReportDocumentOptionsAllowedTypes' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "driving_license" -> GelatoReportDocumentOptionsAllowedTypes'EnumDrivingLicense
            | val GHC.Classes.== "id_card" -> GelatoReportDocumentOptionsAllowedTypes'EnumIdCard
            | val GHC.Classes.== "passport" -> GelatoReportDocumentOptionsAllowedTypes'EnumPassport
            | GHC.Base.otherwise -> GelatoReportDocumentOptionsAllowedTypes'Other val
      )