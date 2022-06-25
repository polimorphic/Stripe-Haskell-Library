-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AccountServiceResourceStatusDetails
module StripeAPI.Types.AccountServiceResourceStatusDetails where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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

-- | Defines the object schema located at @components.schemas.account_service_resource_status_details@ in the specification.
-- 
-- Additional details on the FinancialAccount Features information.
data AccountServiceResourceStatusDetails = AccountServiceResourceStatusDetails {
  -- | code: Represents the reason why the status is \`pending\` or \`restricted\`.
  accountServiceResourceStatusDetailsCode :: AccountServiceResourceStatusDetailsCode'
  -- | resolution: Represents what the user should do, if anything, to activate the Feature.
  , accountServiceResourceStatusDetailsResolution :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable AccountServiceResourceStatusDetailsResolution'NonNullable))
  -- | restriction: The \`platform_restrictions\` that are restricting this Feature.
  , accountServiceResourceStatusDetailsRestriction :: (GHC.Maybe.Maybe AccountServiceResourceStatusDetailsRestriction')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountServiceResourceStatusDetails
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= accountServiceResourceStatusDetailsCode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("resolution" Data.Aeson.Types.ToJSON..=)) (accountServiceResourceStatusDetailsResolution obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("restriction" Data.Aeson.Types.ToJSON..=)) (accountServiceResourceStatusDetailsRestriction obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["code" Data.Aeson.Types.ToJSON..= accountServiceResourceStatusDetailsCode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("resolution" Data.Aeson.Types.ToJSON..=)) (accountServiceResourceStatusDetailsResolution obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("restriction" Data.Aeson.Types.ToJSON..=)) (accountServiceResourceStatusDetailsRestriction obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON AccountServiceResourceStatusDetails
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountServiceResourceStatusDetails" (\obj -> ((GHC.Base.pure AccountServiceResourceStatusDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "resolution")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "restriction"))
-- | Create a new 'AccountServiceResourceStatusDetails' with all required fields.
mkAccountServiceResourceStatusDetails :: AccountServiceResourceStatusDetailsCode' -- ^ 'accountServiceResourceStatusDetailsCode'
  -> AccountServiceResourceStatusDetails
mkAccountServiceResourceStatusDetails accountServiceResourceStatusDetailsCode = AccountServiceResourceStatusDetails{accountServiceResourceStatusDetailsCode = accountServiceResourceStatusDetailsCode,
                                                                                                                    accountServiceResourceStatusDetailsResolution = GHC.Maybe.Nothing,
                                                                                                                    accountServiceResourceStatusDetailsRestriction = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.account_service_resource_status_details.properties.code@ in the specification.
-- 
-- Represents the reason why the status is \`pending\` or \`restricted\`.
data AccountServiceResourceStatusDetailsCode' =
   AccountServiceResourceStatusDetailsCode'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | AccountServiceResourceStatusDetailsCode'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | AccountServiceResourceStatusDetailsCode'EnumActivating -- ^ Represents the JSON value @"activating"@
  | AccountServiceResourceStatusDetailsCode'EnumCapabilityNotRequested -- ^ Represents the JSON value @"capability_not_requested"@
  | AccountServiceResourceStatusDetailsCode'EnumFinancialAccountClosed -- ^ Represents the JSON value @"financial_account_closed"@
  | AccountServiceResourceStatusDetailsCode'EnumRejectedOther -- ^ Represents the JSON value @"rejected_other"@
  | AccountServiceResourceStatusDetailsCode'EnumRejectedUnsupportedBusiness -- ^ Represents the JSON value @"rejected_unsupported_business"@
  | AccountServiceResourceStatusDetailsCode'EnumRequirementsPastDue -- ^ Represents the JSON value @"requirements_past_due"@
  | AccountServiceResourceStatusDetailsCode'EnumRequirementsPendingVerification -- ^ Represents the JSON value @"requirements_pending_verification"@
  | AccountServiceResourceStatusDetailsCode'EnumRestrictedByPlatform -- ^ Represents the JSON value @"restricted_by_platform"@
  | AccountServiceResourceStatusDetailsCode'EnumRestrictedOther -- ^ Represents the JSON value @"restricted_other"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountServiceResourceStatusDetailsCode'
    where toJSON (AccountServiceResourceStatusDetailsCode'Other val) = val
          toJSON (AccountServiceResourceStatusDetailsCode'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (AccountServiceResourceStatusDetailsCode'EnumActivating) = "activating"
          toJSON (AccountServiceResourceStatusDetailsCode'EnumCapabilityNotRequested) = "capability_not_requested"
          toJSON (AccountServiceResourceStatusDetailsCode'EnumFinancialAccountClosed) = "financial_account_closed"
          toJSON (AccountServiceResourceStatusDetailsCode'EnumRejectedOther) = "rejected_other"
          toJSON (AccountServiceResourceStatusDetailsCode'EnumRejectedUnsupportedBusiness) = "rejected_unsupported_business"
          toJSON (AccountServiceResourceStatusDetailsCode'EnumRequirementsPastDue) = "requirements_past_due"
          toJSON (AccountServiceResourceStatusDetailsCode'EnumRequirementsPendingVerification) = "requirements_pending_verification"
          toJSON (AccountServiceResourceStatusDetailsCode'EnumRestrictedByPlatform) = "restricted_by_platform"
          toJSON (AccountServiceResourceStatusDetailsCode'EnumRestrictedOther) = "restricted_other"
instance Data.Aeson.Types.FromJSON.FromJSON AccountServiceResourceStatusDetailsCode'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "activating" -> AccountServiceResourceStatusDetailsCode'EnumActivating
                                            | val GHC.Classes.== "capability_not_requested" -> AccountServiceResourceStatusDetailsCode'EnumCapabilityNotRequested
                                            | val GHC.Classes.== "financial_account_closed" -> AccountServiceResourceStatusDetailsCode'EnumFinancialAccountClosed
                                            | val GHC.Classes.== "rejected_other" -> AccountServiceResourceStatusDetailsCode'EnumRejectedOther
                                            | val GHC.Classes.== "rejected_unsupported_business" -> AccountServiceResourceStatusDetailsCode'EnumRejectedUnsupportedBusiness
                                            | val GHC.Classes.== "requirements_past_due" -> AccountServiceResourceStatusDetailsCode'EnumRequirementsPastDue
                                            | val GHC.Classes.== "requirements_pending_verification" -> AccountServiceResourceStatusDetailsCode'EnumRequirementsPendingVerification
                                            | val GHC.Classes.== "restricted_by_platform" -> AccountServiceResourceStatusDetailsCode'EnumRestrictedByPlatform
                                            | val GHC.Classes.== "restricted_other" -> AccountServiceResourceStatusDetailsCode'EnumRestrictedOther
                                            | GHC.Base.otherwise -> AccountServiceResourceStatusDetailsCode'Other val)
-- | Defines the enum schema located at @components.schemas.account_service_resource_status_details.properties.resolution@ in the specification.
-- 
-- Represents what the user should do, if anything, to activate the Feature.
data AccountServiceResourceStatusDetailsResolution'NonNullable =
   AccountServiceResourceStatusDetailsResolution'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | AccountServiceResourceStatusDetailsResolution'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | AccountServiceResourceStatusDetailsResolution'NonNullableEnumContactStripe -- ^ Represents the JSON value @"contact_stripe"@
  | AccountServiceResourceStatusDetailsResolution'NonNullableEnumProvideInformation -- ^ Represents the JSON value @"provide_information"@
  | AccountServiceResourceStatusDetailsResolution'NonNullableEnumRemoveRestriction -- ^ Represents the JSON value @"remove_restriction"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountServiceResourceStatusDetailsResolution'NonNullable
    where toJSON (AccountServiceResourceStatusDetailsResolution'NonNullableOther val) = val
          toJSON (AccountServiceResourceStatusDetailsResolution'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (AccountServiceResourceStatusDetailsResolution'NonNullableEnumContactStripe) = "contact_stripe"
          toJSON (AccountServiceResourceStatusDetailsResolution'NonNullableEnumProvideInformation) = "provide_information"
          toJSON (AccountServiceResourceStatusDetailsResolution'NonNullableEnumRemoveRestriction) = "remove_restriction"
instance Data.Aeson.Types.FromJSON.FromJSON AccountServiceResourceStatusDetailsResolution'NonNullable
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "contact_stripe" -> AccountServiceResourceStatusDetailsResolution'NonNullableEnumContactStripe
                                            | val GHC.Classes.== "provide_information" -> AccountServiceResourceStatusDetailsResolution'NonNullableEnumProvideInformation
                                            | val GHC.Classes.== "remove_restriction" -> AccountServiceResourceStatusDetailsResolution'NonNullableEnumRemoveRestriction
                                            | GHC.Base.otherwise -> AccountServiceResourceStatusDetailsResolution'NonNullableOther val)
-- | Defines the enum schema located at @components.schemas.account_service_resource_status_details.properties.restriction@ in the specification.
-- 
-- The \`platform_restrictions\` that are restricting this Feature.
data AccountServiceResourceStatusDetailsRestriction' =
   AccountServiceResourceStatusDetailsRestriction'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | AccountServiceResourceStatusDetailsRestriction'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | AccountServiceResourceStatusDetailsRestriction'EnumInboundFlows -- ^ Represents the JSON value @"inbound_flows"@
  | AccountServiceResourceStatusDetailsRestriction'EnumOutboundFlows -- ^ Represents the JSON value @"outbound_flows"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountServiceResourceStatusDetailsRestriction'
    where toJSON (AccountServiceResourceStatusDetailsRestriction'Other val) = val
          toJSON (AccountServiceResourceStatusDetailsRestriction'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (AccountServiceResourceStatusDetailsRestriction'EnumInboundFlows) = "inbound_flows"
          toJSON (AccountServiceResourceStatusDetailsRestriction'EnumOutboundFlows) = "outbound_flows"
instance Data.Aeson.Types.FromJSON.FromJSON AccountServiceResourceStatusDetailsRestriction'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "inbound_flows" -> AccountServiceResourceStatusDetailsRestriction'EnumInboundFlows
                                            | val GHC.Classes.== "outbound_flows" -> AccountServiceResourceStatusDetailsRestriction'EnumOutboundFlows
                                            | GHC.Base.otherwise -> AccountServiceResourceStatusDetailsRestriction'Other val)
