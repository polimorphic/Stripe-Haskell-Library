{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema IssuingAuthorizationRequest
module StripeAPI.Types.IssuingAuthorizationRequest where

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
import {-# SOURCE #-} StripeAPI.Types.IssuingAuthorizationViolatedAuthControl
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.issuing_authorization_request@ in the specification.
data IssuingAuthorizationRequest
  = IssuingAuthorizationRequest
      { -- | approved: Whether this request was approved.
        issuingAuthorizationRequestApproved :: GHC.Types.Bool,
        -- | authorized_amount: The amount that was authorized at the time of this request
        issuingAuthorizationRequestAuthorizedAmount :: GHC.Types.Int,
        -- | authorized_currency: The currency that was presented to the cardholder for the authorization. Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuingAuthorizationRequestAuthorizedCurrency :: Data.Text.Internal.Text,
        -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
        issuingAuthorizationRequestCreated :: GHC.Types.Int,
        -- | held_amount: The amount Stripe held from your account to fund the authorization, if the request was approved
        issuingAuthorizationRequestHeldAmount :: GHC.Types.Int,
        -- | held_currency: The currency of the [held amount](https:\/\/stripe.com\/docs\/api\#issuing_authorization_object-held_amount)
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuingAuthorizationRequestHeldCurrency :: Data.Text.Internal.Text,
        -- | reason: The reason for the approval or decline.
        issuingAuthorizationRequestReason :: IssuingAuthorizationRequestReason',
        -- | violated_authorization_controls: When an authorization is declined due to \`authorization_controls\`, this array contains details about the authorization controls that were violated. Otherwise, it is empty.
        issuingAuthorizationRequestViolatedAuthorizationControls :: ([IssuingAuthorizationViolatedAuthControl])
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationRequest where
  toJSON obj = Data.Aeson.Types.Internal.object ("approved" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestApproved obj : "authorized_amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAuthorizedAmount obj : "authorized_currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAuthorizedCurrency obj : "created" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestCreated obj : "held_amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestHeldAmount obj : "held_currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestHeldCurrency obj : "reason" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestReason obj : "violated_authorization_controls" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestViolatedAuthorizationControls obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("approved" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestApproved obj) GHC.Base.<> (("authorized_amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAuthorizedAmount obj) GHC.Base.<> (("authorized_currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAuthorizedCurrency obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestCreated obj) GHC.Base.<> (("held_amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestHeldAmount obj) GHC.Base.<> (("held_currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestHeldCurrency obj) GHC.Base.<> (("reason" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestReason obj) GHC.Base.<> ("violated_authorization_controls" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestViolatedAuthorizationControls obj))))))))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationRequest" (\obj -> (((((((GHC.Base.pure IssuingAuthorizationRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "approved")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "authorized_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "authorized_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "held_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "held_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "violated_authorization_controls"))

-- | Create a new 'IssuingAuthorizationRequest' with all required fields.
mkIssuingAuthorizationRequest ::
  -- | 'issuingAuthorizationRequestApproved'
  GHC.Types.Bool ->
  -- | 'issuingAuthorizationRequestAuthorizedAmount'
  GHC.Types.Int ->
  -- | 'issuingAuthorizationRequestAuthorizedCurrency'
  Data.Text.Internal.Text ->
  -- | 'issuingAuthorizationRequestCreated'
  GHC.Types.Int ->
  -- | 'issuingAuthorizationRequestHeldAmount'
  GHC.Types.Int ->
  -- | 'issuingAuthorizationRequestHeldCurrency'
  Data.Text.Internal.Text ->
  -- | 'issuingAuthorizationRequestReason'
  IssuingAuthorizationRequestReason' ->
  -- | 'issuingAuthorizationRequestViolatedAuthorizationControls'
  [IssuingAuthorizationViolatedAuthControl] ->
  IssuingAuthorizationRequest
mkIssuingAuthorizationRequest issuingAuthorizationRequestApproved issuingAuthorizationRequestAuthorizedAmount issuingAuthorizationRequestAuthorizedCurrency issuingAuthorizationRequestCreated issuingAuthorizationRequestHeldAmount issuingAuthorizationRequestHeldCurrency issuingAuthorizationRequestReason issuingAuthorizationRequestViolatedAuthorizationControls =
  IssuingAuthorizationRequest
    { issuingAuthorizationRequestApproved = issuingAuthorizationRequestApproved,
      issuingAuthorizationRequestAuthorizedAmount = issuingAuthorizationRequestAuthorizedAmount,
      issuingAuthorizationRequestAuthorizedCurrency = issuingAuthorizationRequestAuthorizedCurrency,
      issuingAuthorizationRequestCreated = issuingAuthorizationRequestCreated,
      issuingAuthorizationRequestHeldAmount = issuingAuthorizationRequestHeldAmount,
      issuingAuthorizationRequestHeldCurrency = issuingAuthorizationRequestHeldCurrency,
      issuingAuthorizationRequestReason = issuingAuthorizationRequestReason,
      issuingAuthorizationRequestViolatedAuthorizationControls = issuingAuthorizationRequestViolatedAuthorizationControls
    }

-- | Defines the enum schema located at @components.schemas.issuing_authorization_request.properties.reason@ in the specification.
--
-- The reason for the approval or decline.
data IssuingAuthorizationRequestReason'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    IssuingAuthorizationRequestReason'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    IssuingAuthorizationRequestReason'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"account_compliance_disabled"@
    IssuingAuthorizationRequestReason'EnumAccountComplianceDisabled
  | -- | Represents the JSON value @"account_inactive"@
    IssuingAuthorizationRequestReason'EnumAccountInactive
  | -- | Represents the JSON value @"authentication_failed"@
    IssuingAuthorizationRequestReason'EnumAuthenticationFailed
  | -- | Represents the JSON value @"authorization_controls"@
    IssuingAuthorizationRequestReason'EnumAuthorizationControls
  | -- | Represents the JSON value @"card_active"@
    IssuingAuthorizationRequestReason'EnumCardActive
  | -- | Represents the JSON value @"card_inactive"@
    IssuingAuthorizationRequestReason'EnumCardInactive
  | -- | Represents the JSON value @"cardholder_inactive"@
    IssuingAuthorizationRequestReason'EnumCardholderInactive
  | -- | Represents the JSON value @"cardholder_verification_required"@
    IssuingAuthorizationRequestReason'EnumCardholderVerificationRequired
  | -- | Represents the JSON value @"insufficient_funds"@
    IssuingAuthorizationRequestReason'EnumInsufficientFunds
  | -- | Represents the JSON value @"not_allowed"@
    IssuingAuthorizationRequestReason'EnumNotAllowed
  | -- | Represents the JSON value @"suspected_fraud"@
    IssuingAuthorizationRequestReason'EnumSuspectedFraud
  | -- | Represents the JSON value @"webhook_approved"@
    IssuingAuthorizationRequestReason'EnumWebhookApproved
  | -- | Represents the JSON value @"webhook_declined"@
    IssuingAuthorizationRequestReason'EnumWebhookDeclined
  | -- | Represents the JSON value @"webhook_timeout"@
    IssuingAuthorizationRequestReason'EnumWebhookTimeout
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationRequestReason' where
  toJSON (IssuingAuthorizationRequestReason'Other val) = val
  toJSON (IssuingAuthorizationRequestReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (IssuingAuthorizationRequestReason'EnumAccountComplianceDisabled) = "account_compliance_disabled"
  toJSON (IssuingAuthorizationRequestReason'EnumAccountInactive) = "account_inactive"
  toJSON (IssuingAuthorizationRequestReason'EnumAuthenticationFailed) = "authentication_failed"
  toJSON (IssuingAuthorizationRequestReason'EnumAuthorizationControls) = "authorization_controls"
  toJSON (IssuingAuthorizationRequestReason'EnumCardActive) = "card_active"
  toJSON (IssuingAuthorizationRequestReason'EnumCardInactive) = "card_inactive"
  toJSON (IssuingAuthorizationRequestReason'EnumCardholderInactive) = "cardholder_inactive"
  toJSON (IssuingAuthorizationRequestReason'EnumCardholderVerificationRequired) = "cardholder_verification_required"
  toJSON (IssuingAuthorizationRequestReason'EnumInsufficientFunds) = "insufficient_funds"
  toJSON (IssuingAuthorizationRequestReason'EnumNotAllowed) = "not_allowed"
  toJSON (IssuingAuthorizationRequestReason'EnumSuspectedFraud) = "suspected_fraud"
  toJSON (IssuingAuthorizationRequestReason'EnumWebhookApproved) = "webhook_approved"
  toJSON (IssuingAuthorizationRequestReason'EnumWebhookDeclined) = "webhook_declined"
  toJSON (IssuingAuthorizationRequestReason'EnumWebhookTimeout) = "webhook_timeout"

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationRequestReason' where
  parseJSON val =
    GHC.Base.pure
      ( if  | val GHC.Classes.== "account_compliance_disabled" -> IssuingAuthorizationRequestReason'EnumAccountComplianceDisabled
            | val GHC.Classes.== "account_inactive" -> IssuingAuthorizationRequestReason'EnumAccountInactive
            | val GHC.Classes.== "authentication_failed" -> IssuingAuthorizationRequestReason'EnumAuthenticationFailed
            | val GHC.Classes.== "authorization_controls" -> IssuingAuthorizationRequestReason'EnumAuthorizationControls
            | val GHC.Classes.== "card_active" -> IssuingAuthorizationRequestReason'EnumCardActive
            | val GHC.Classes.== "card_inactive" -> IssuingAuthorizationRequestReason'EnumCardInactive
            | val GHC.Classes.== "cardholder_inactive" -> IssuingAuthorizationRequestReason'EnumCardholderInactive
            | val GHC.Classes.== "cardholder_verification_required" -> IssuingAuthorizationRequestReason'EnumCardholderVerificationRequired
            | val GHC.Classes.== "insufficient_funds" -> IssuingAuthorizationRequestReason'EnumInsufficientFunds
            | val GHC.Classes.== "not_allowed" -> IssuingAuthorizationRequestReason'EnumNotAllowed
            | val GHC.Classes.== "suspected_fraud" -> IssuingAuthorizationRequestReason'EnumSuspectedFraud
            | val GHC.Classes.== "webhook_approved" -> IssuingAuthorizationRequestReason'EnumWebhookApproved
            | val GHC.Classes.== "webhook_declined" -> IssuingAuthorizationRequestReason'EnumWebhookDeclined
            | val GHC.Classes.== "webhook_timeout" -> IssuingAuthorizationRequestReason'EnumWebhookTimeout
            | GHC.Base.otherwise -> IssuingAuthorizationRequestReason'Other val
      )
