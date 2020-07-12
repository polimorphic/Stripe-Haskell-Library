{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema AccountRequirements
module StripeAPI.Types.AccountRequirements where

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
import {-# SOURCE #-} StripeAPI.Types.AccountRequirementsError
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.account_requirements@ in the specification.
data AccountRequirements
  = AccountRequirements
      { -- | current_deadline: The date the fields in \`currently_due\` must be collected by to keep payouts enabled for the account. These fields might block payouts sooner if the next threshold is reached before these fields are collected.
        accountRequirementsCurrentDeadline :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | currently_due: The fields that need to be collected to keep the account enabled. If not collected by the \`current_deadline\`, these fields appear in \`past_due\` as well, and the account is disabled.
        accountRequirementsCurrentlyDue :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | disabled_reason: If the account is disabled, this string describes why the account can’t create charges or receive payouts. Can be \`requirements.past_due\`, \`requirements.pending_verification\`, \`rejected.fraud\`, \`rejected.terms_of_service\`, \`rejected.listed\`, \`rejected.other\`, \`listed\`, \`under_review\`, or \`other\`.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        accountRequirementsDisabledReason :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | errors: The fields that need to be collected again because validation or verification failed for some reason.
        accountRequirementsErrors :: (GHC.Maybe.Maybe ([AccountRequirementsError])),
        -- | eventually_due: The fields that need to be collected assuming all volume thresholds are reached. As they become required, these fields appear in \`currently_due\` as well, and the \`current_deadline\` is set.
        accountRequirementsEventuallyDue :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | past_due: The fields that weren\'t collected by the \`current_deadline\`. These fields need to be collected to re-enable the account.
        accountRequirementsPastDue :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | pending_verification: Fields that may become required depending on the results of verification or review. An empty array unless an asynchronous verification is pending. If verification fails, the fields in this array become required and move to \`currently_due\` or \`past_due\`.
        accountRequirementsPendingVerification :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountRequirements where
  toJSON obj = Data.Aeson.Types.Internal.object ("current_deadline" Data.Aeson.Types.ToJSON..= accountRequirementsCurrentDeadline obj : "currently_due" Data.Aeson.Types.ToJSON..= accountRequirementsCurrentlyDue obj : "disabled_reason" Data.Aeson.Types.ToJSON..= accountRequirementsDisabledReason obj : "errors" Data.Aeson.Types.ToJSON..= accountRequirementsErrors obj : "eventually_due" Data.Aeson.Types.ToJSON..= accountRequirementsEventuallyDue obj : "past_due" Data.Aeson.Types.ToJSON..= accountRequirementsPastDue obj : "pending_verification" Data.Aeson.Types.ToJSON..= accountRequirementsPendingVerification obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("current_deadline" Data.Aeson.Types.ToJSON..= accountRequirementsCurrentDeadline obj) GHC.Base.<> (("currently_due" Data.Aeson.Types.ToJSON..= accountRequirementsCurrentlyDue obj) GHC.Base.<> (("disabled_reason" Data.Aeson.Types.ToJSON..= accountRequirementsDisabledReason obj) GHC.Base.<> (("errors" Data.Aeson.Types.ToJSON..= accountRequirementsErrors obj) GHC.Base.<> (("eventually_due" Data.Aeson.Types.ToJSON..= accountRequirementsEventuallyDue obj) GHC.Base.<> (("past_due" Data.Aeson.Types.ToJSON..= accountRequirementsPastDue obj) GHC.Base.<> ("pending_verification" Data.Aeson.Types.ToJSON..= accountRequirementsPendingVerification obj)))))))

instance Data.Aeson.Types.FromJSON.FromJSON AccountRequirements where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountRequirements" (\obj -> ((((((GHC.Base.pure AccountRequirements GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "current_deadline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currently_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disabled_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "errors")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eventually_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pending_verification"))

-- | Create a new 'AccountRequirements' with all required fields.
mkAccountRequirements :: AccountRequirements
mkAccountRequirements =
  AccountRequirements
    { accountRequirementsCurrentDeadline = GHC.Maybe.Nothing,
      accountRequirementsCurrentlyDue = GHC.Maybe.Nothing,
      accountRequirementsDisabledReason = GHC.Maybe.Nothing,
      accountRequirementsErrors = GHC.Maybe.Nothing,
      accountRequirementsEventuallyDue = GHC.Maybe.Nothing,
      accountRequirementsPastDue = GHC.Maybe.Nothing,
      accountRequirementsPendingVerification = GHC.Maybe.Nothing
    }
