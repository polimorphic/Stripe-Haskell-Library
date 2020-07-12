{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema Capability
module StripeAPI.Types.Capability where

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
import {-# SOURCE #-} StripeAPI.Types.Account
import {-# SOURCE #-} StripeAPI.Types.AccountCapabilityRequirements
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.capability@ in the specification.
--
-- This is an object representing a capability for a Stripe account.
--
-- Related guide: [Capabilities Overview](https:\/\/stripe.com\/docs\/connect\/capabilities-overview).
data Capability
  = Capability
      { -- | account: The account for which the capability enables functionality.
        capabilityAccount :: CapabilityAccount'Variants,
        -- | id: The identifier for the capability.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        capabilityId :: Data.Text.Internal.Text,
        -- | requested: Whether the capability has been requested.
        capabilityRequested :: GHC.Types.Bool,
        -- | requested_at: Time at which the capability was requested. Measured in seconds since the Unix epoch.
        capabilityRequestedAt :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | requirements:
        capabilityRequirements :: (GHC.Maybe.Maybe AccountCapabilityRequirements),
        -- | status: The status of the capability. Can be \`active\`, \`inactive\`, \`pending\`, or \`unrequested\`.
        capabilityStatus :: CapabilityStatus'
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Capability where
  toJSON obj = Data.Aeson.Types.Internal.object ("account" Data.Aeson.Types.ToJSON..= capabilityAccount obj : "id" Data.Aeson.Types.ToJSON..= capabilityId obj : "requested" Data.Aeson.Types.ToJSON..= capabilityRequested obj : "requested_at" Data.Aeson.Types.ToJSON..= capabilityRequestedAt obj : "requirements" Data.Aeson.Types.ToJSON..= capabilityRequirements obj : "status" Data.Aeson.Types.ToJSON..= capabilityStatus obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "capability" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("account" Data.Aeson.Types.ToJSON..= capabilityAccount obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= capabilityId obj) GHC.Base.<> (("requested" Data.Aeson.Types.ToJSON..= capabilityRequested obj) GHC.Base.<> (("requested_at" Data.Aeson.Types.ToJSON..= capabilityRequestedAt obj) GHC.Base.<> (("requirements" Data.Aeson.Types.ToJSON..= capabilityRequirements obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= capabilityStatus obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "capability")))))))

instance Data.Aeson.Types.FromJSON.FromJSON Capability where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Capability" (\obj -> (((((GHC.Base.pure Capability GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "requested")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "requested_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "requirements")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'Capability' with all required fields.
mkCapability ::
  -- | 'capabilityAccount'
  CapabilityAccount'Variants ->
  -- | 'capabilityId'
  Data.Text.Internal.Text ->
  -- | 'capabilityRequested'
  GHC.Types.Bool ->
  -- | 'capabilityStatus'
  CapabilityStatus' ->
  Capability
mkCapability capabilityAccount capabilityId capabilityRequested capabilityStatus =
  Capability
    { capabilityAccount = capabilityAccount,
      capabilityId = capabilityId,
      capabilityRequested = capabilityRequested,
      capabilityRequestedAt = GHC.Maybe.Nothing,
      capabilityRequirements = GHC.Maybe.Nothing,
      capabilityStatus = capabilityStatus
    }

-- | Defines the oneOf schema located at @components.schemas.capability.properties.account.anyOf@ in the specification.
--
-- The account for which the capability enables functionality.
data CapabilityAccount'Variants
  = CapabilityAccount'Account Account
  | CapabilityAccount'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CapabilityAccount'Variants where
  toJSON (CapabilityAccount'Account a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (CapabilityAccount'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON CapabilityAccount'Variants where
  parseJSON val = case (CapabilityAccount'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CapabilityAccount'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.capability.properties.status@ in the specification.
--
-- The status of the capability. Can be \`active\`, \`inactive\`, \`pending\`, or \`unrequested\`.
data CapabilityStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    CapabilityStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    CapabilityStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"active"@
    CapabilityStatus'EnumActive
  | -- | Represents the JSON value @"disabled"@
    CapabilityStatus'EnumDisabled
  | -- | Represents the JSON value @"inactive"@
    CapabilityStatus'EnumInactive
  | -- | Represents the JSON value @"pending"@
    CapabilityStatus'EnumPending
  | -- | Represents the JSON value @"unrequested"@
    CapabilityStatus'EnumUnrequested
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON CapabilityStatus' where
  toJSON (CapabilityStatus'Other val) = val
  toJSON (CapabilityStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (CapabilityStatus'EnumActive) = "active"
  toJSON (CapabilityStatus'EnumDisabled) = "disabled"
  toJSON (CapabilityStatus'EnumInactive) = "inactive"
  toJSON (CapabilityStatus'EnumPending) = "pending"
  toJSON (CapabilityStatus'EnumUnrequested) = "unrequested"

instance Data.Aeson.Types.FromJSON.FromJSON CapabilityStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if  | val GHC.Classes.== "active" -> CapabilityStatus'EnumActive
            | val GHC.Classes.== "disabled" -> CapabilityStatus'EnumDisabled
            | val GHC.Classes.== "inactive" -> CapabilityStatus'EnumInactive
            | val GHC.Classes.== "pending" -> CapabilityStatus'EnumPending
            | val GHC.Classes.== "unrequested" -> CapabilityStatus'EnumUnrequested
            | GHC.Base.otherwise -> CapabilityStatus'Other val
      )
