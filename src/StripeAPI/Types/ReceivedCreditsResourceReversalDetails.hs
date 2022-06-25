-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ReceivedCreditsResourceReversalDetails
module StripeAPI.Types.ReceivedCreditsResourceReversalDetails where

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

-- | Defines the object schema located at @components.schemas.received_credits_resource_reversal_details@ in the specification.
-- 
-- 
data ReceivedCreditsResourceReversalDetails = ReceivedCreditsResourceReversalDetails {
  -- | deadline: Time before which a ReceivedCredit can be reversed.
  receivedCreditsResourceReversalDetailsDeadline :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | restricted_reason: Set if a ReceivedCredit cannot be reversed.
  , receivedCreditsResourceReversalDetailsRestrictedReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ReceivedCreditsResourceReversalDetails
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deadline" Data.Aeson.Types.ToJSON..=)) (receivedCreditsResourceReversalDetailsDeadline obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("restricted_reason" Data.Aeson.Types.ToJSON..=)) (receivedCreditsResourceReversalDetailsRestrictedReason obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deadline" Data.Aeson.Types.ToJSON..=)) (receivedCreditsResourceReversalDetailsDeadline obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("restricted_reason" Data.Aeson.Types.ToJSON..=)) (receivedCreditsResourceReversalDetailsRestrictedReason obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ReceivedCreditsResourceReversalDetails
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ReceivedCreditsResourceReversalDetails" (\obj -> (GHC.Base.pure ReceivedCreditsResourceReversalDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "deadline")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "restricted_reason"))
-- | Create a new 'ReceivedCreditsResourceReversalDetails' with all required fields.
mkReceivedCreditsResourceReversalDetails :: ReceivedCreditsResourceReversalDetails
mkReceivedCreditsResourceReversalDetails = ReceivedCreditsResourceReversalDetails{receivedCreditsResourceReversalDetailsDeadline = GHC.Maybe.Nothing,
                                                                                  receivedCreditsResourceReversalDetailsRestrictedReason = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.received_credits_resource_reversal_details.properties.restricted_reason@ in the specification.
-- 
-- Set if a ReceivedCredit cannot be reversed.
data ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullable =
   ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumAlreadyReversed -- ^ Represents the JSON value @"already_reversed"@
  | ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumDeadlinePassed -- ^ Represents the JSON value @"deadline_passed"@
  | ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumNetworkRestricted -- ^ Represents the JSON value @"network_restricted"@
  | ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumOther -- ^ Represents the JSON value @"other"@
  | ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumSourceFlowRestricted -- ^ Represents the JSON value @"source_flow_restricted"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullable
    where toJSON (ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableOther val) = val
          toJSON (ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumAlreadyReversed) = "already_reversed"
          toJSON (ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumDeadlinePassed) = "deadline_passed"
          toJSON (ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumNetworkRestricted) = "network_restricted"
          toJSON (ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumOther) = "other"
          toJSON (ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumSourceFlowRestricted) = "source_flow_restricted"
instance Data.Aeson.Types.FromJSON.FromJSON ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullable
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "already_reversed" -> ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumAlreadyReversed
                                            | val GHC.Classes.== "deadline_passed" -> ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumDeadlinePassed
                                            | val GHC.Classes.== "network_restricted" -> ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumNetworkRestricted
                                            | val GHC.Classes.== "other" -> ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumOther
                                            | val GHC.Classes.== "source_flow_restricted" -> ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableEnumSourceFlowRestricted
                                            | GHC.Base.otherwise -> ReceivedCreditsResourceReversalDetailsRestrictedReason'NonNullableOther val)
