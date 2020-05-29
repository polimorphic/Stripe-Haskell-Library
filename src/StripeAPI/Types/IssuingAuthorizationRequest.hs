{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema IssuingAuthorizationRequest
module StripeAPI.Types.IssuingAuthorizationRequest where

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
import StripeAPI.Types.IssuingAuthorizationViolatedAuthControl

-- | Defines the data type for the schema issuing_authorization_request
-- 
-- 
data IssuingAuthorizationRequest = IssuingAuthorizationRequest {
  -- | approved: Whether this request was approved.
  issuingAuthorizationRequestApproved :: GHC.Types.Bool
  -- | authorized_amount: The amount that was authorized at the time of this request
  , issuingAuthorizationRequestAuthorizedAmount :: GHC.Integer.Type.Integer
  -- | authorized_currency: The currency that was presented to the cardholder for the authorization. Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationRequestAuthorizedCurrency :: Data.Text.Internal.Text
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , issuingAuthorizationRequestCreated :: GHC.Integer.Type.Integer
  -- | held_amount: The amount Stripe held from your account to fund the authorization, if the request was approved
  , issuingAuthorizationRequestHeldAmount :: GHC.Integer.Type.Integer
  -- | held_currency: The currency of the [held amount](https:\/\/stripe.com\/docs\/api\#issuing_authorization_object-held_amount)
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationRequestHeldCurrency :: Data.Text.Internal.Text
  -- | reason: The reason for the approval or decline.
  , issuingAuthorizationRequestReason :: IssuingAuthorizationRequestReason'
  -- | violated_authorization_controls: When an authorization is declined due to \`authorization_controls\`, this array contains details about the authorization controls that were violated. Otherwise, it is empty.
  , issuingAuthorizationRequestViolatedAuthorizationControls :: ([] IssuingAuthorizationViolatedAuthControl)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingAuthorizationRequest
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "approved" (issuingAuthorizationRequestApproved obj) : (Data.Aeson..=) "authorized_amount" (issuingAuthorizationRequestAuthorizedAmount obj) : (Data.Aeson..=) "authorized_currency" (issuingAuthorizationRequestAuthorizedCurrency obj) : (Data.Aeson..=) "created" (issuingAuthorizationRequestCreated obj) : (Data.Aeson..=) "held_amount" (issuingAuthorizationRequestHeldAmount obj) : (Data.Aeson..=) "held_currency" (issuingAuthorizationRequestHeldCurrency obj) : (Data.Aeson..=) "reason" (issuingAuthorizationRequestReason obj) : (Data.Aeson..=) "violated_authorization_controls" (issuingAuthorizationRequestViolatedAuthorizationControls obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "approved" (issuingAuthorizationRequestApproved obj) GHC.Base.<> ((Data.Aeson..=) "authorized_amount" (issuingAuthorizationRequestAuthorizedAmount obj) GHC.Base.<> ((Data.Aeson..=) "authorized_currency" (issuingAuthorizationRequestAuthorizedCurrency obj) GHC.Base.<> ((Data.Aeson..=) "created" (issuingAuthorizationRequestCreated obj) GHC.Base.<> ((Data.Aeson..=) "held_amount" (issuingAuthorizationRequestHeldAmount obj) GHC.Base.<> ((Data.Aeson..=) "held_currency" (issuingAuthorizationRequestHeldCurrency obj) GHC.Base.<> ((Data.Aeson..=) "reason" (issuingAuthorizationRequestReason obj) GHC.Base.<> (Data.Aeson..=) "violated_authorization_controls" (issuingAuthorizationRequestViolatedAuthorizationControls obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationRequest
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationRequest" (\obj -> (((((((GHC.Base.pure IssuingAuthorizationRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "approved")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "authorized_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "authorized_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "held_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "held_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "violated_authorization_controls"))
-- | Defines the enum schema issuing_authorization_requestReason\'
-- 
-- The reason for the approval or decline.
data IssuingAuthorizationRequestReason'
    = IssuingAuthorizationRequestReason'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingAuthorizationRequestReason'EnumTyped Data.Text.Internal.Text
    | IssuingAuthorizationRequestReason'EnumStringAccountComplianceDisabled
    | IssuingAuthorizationRequestReason'EnumStringAccountInactive
    | IssuingAuthorizationRequestReason'EnumStringAuthenticationFailed
    | IssuingAuthorizationRequestReason'EnumStringAuthorizationControls
    | IssuingAuthorizationRequestReason'EnumStringCardActive
    | IssuingAuthorizationRequestReason'EnumStringCardInactive
    | IssuingAuthorizationRequestReason'EnumStringCardholderInactive
    | IssuingAuthorizationRequestReason'EnumStringCardholderVerificationRequired
    | IssuingAuthorizationRequestReason'EnumStringInsufficientFunds
    | IssuingAuthorizationRequestReason'EnumStringNotAllowed
    | IssuingAuthorizationRequestReason'EnumStringSuspectedFraud
    | IssuingAuthorizationRequestReason'EnumStringWebhookApproved
    | IssuingAuthorizationRequestReason'EnumStringWebhookDeclined
    | IssuingAuthorizationRequestReason'EnumStringWebhookTimeout
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingAuthorizationRequestReason'
    where toJSON (IssuingAuthorizationRequestReason'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationRequestReason'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationRequestReason'EnumStringAccountComplianceDisabled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account_compliance_disabled"
          toJSON (IssuingAuthorizationRequestReason'EnumStringAccountInactive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account_inactive"
          toJSON (IssuingAuthorizationRequestReason'EnumStringAuthenticationFailed) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "authentication_failed"
          toJSON (IssuingAuthorizationRequestReason'EnumStringAuthorizationControls) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "authorization_controls"
          toJSON (IssuingAuthorizationRequestReason'EnumStringCardActive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_active"
          toJSON (IssuingAuthorizationRequestReason'EnumStringCardInactive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_inactive"
          toJSON (IssuingAuthorizationRequestReason'EnumStringCardholderInactive) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cardholder_inactive"
          toJSON (IssuingAuthorizationRequestReason'EnumStringCardholderVerificationRequired) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cardholder_verification_required"
          toJSON (IssuingAuthorizationRequestReason'EnumStringInsufficientFunds) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "insufficient_funds"
          toJSON (IssuingAuthorizationRequestReason'EnumStringNotAllowed) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "not_allowed"
          toJSON (IssuingAuthorizationRequestReason'EnumStringSuspectedFraud) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "suspected_fraud"
          toJSON (IssuingAuthorizationRequestReason'EnumStringWebhookApproved) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "webhook_approved"
          toJSON (IssuingAuthorizationRequestReason'EnumStringWebhookDeclined) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "webhook_declined"
          toJSON (IssuingAuthorizationRequestReason'EnumStringWebhookTimeout) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "webhook_timeout"
instance Data.Aeson.FromJSON IssuingAuthorizationRequestReason'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account_compliance_disabled")
                                          then IssuingAuthorizationRequestReason'EnumStringAccountComplianceDisabled
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account_inactive")
                                                then IssuingAuthorizationRequestReason'EnumStringAccountInactive
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "authentication_failed")
                                                      then IssuingAuthorizationRequestReason'EnumStringAuthenticationFailed
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "authorization_controls")
                                                            then IssuingAuthorizationRequestReason'EnumStringAuthorizationControls
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_active")
                                                                  then IssuingAuthorizationRequestReason'EnumStringCardActive
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_inactive")
                                                                        then IssuingAuthorizationRequestReason'EnumStringCardInactive
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cardholder_inactive")
                                                                              then IssuingAuthorizationRequestReason'EnumStringCardholderInactive
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cardholder_verification_required")
                                                                                    then IssuingAuthorizationRequestReason'EnumStringCardholderVerificationRequired
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "insufficient_funds")
                                                                                          then IssuingAuthorizationRequestReason'EnumStringInsufficientFunds
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "not_allowed")
                                                                                                then IssuingAuthorizationRequestReason'EnumStringNotAllowed
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "suspected_fraud")
                                                                                                      then IssuingAuthorizationRequestReason'EnumStringSuspectedFraud
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "webhook_approved")
                                                                                                            then IssuingAuthorizationRequestReason'EnumStringWebhookApproved
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "webhook_declined")
                                                                                                                  then IssuingAuthorizationRequestReason'EnumStringWebhookDeclined
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "webhook_timeout")
                                                                                                                        then IssuingAuthorizationRequestReason'EnumStringWebhookTimeout
                                                                                                                        else IssuingAuthorizationRequestReason'EnumOther val)