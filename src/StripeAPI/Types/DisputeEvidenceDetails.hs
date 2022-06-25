-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema DisputeEvidenceDetails
module StripeAPI.Types.DisputeEvidenceDetails where

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

-- | Defines the object schema located at @components.schemas.dispute_evidence_details@ in the specification.
-- 
-- 
data DisputeEvidenceDetails = DisputeEvidenceDetails {
  -- | due_by: Date by which evidence must be submitted in order to successfully challenge dispute. Will be null if the customer\'s bank or credit card company doesn\'t allow a response for this particular dispute.
  disputeEvidenceDetailsDueBy :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | has_evidence: Whether evidence has been staged for this dispute.
  , disputeEvidenceDetailsHasEvidence :: GHC.Types.Bool
  -- | past_due: Whether the last evidence submission was submitted past the due date. Defaults to \`false\` if no evidence submissions have occurred. If \`true\`, then delivery of the latest evidence is *not* guaranteed.
  , disputeEvidenceDetailsPastDue :: GHC.Types.Bool
  -- | submission_count: The number of times evidence has been submitted. Typically, you may only submit evidence once.
  , disputeEvidenceDetailsSubmissionCount :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DisputeEvidenceDetails
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("due_by" Data.Aeson.Types.ToJSON..=)) (disputeEvidenceDetailsDueBy obj) : ["has_evidence" Data.Aeson.Types.ToJSON..= disputeEvidenceDetailsHasEvidence obj] : ["past_due" Data.Aeson.Types.ToJSON..= disputeEvidenceDetailsPastDue obj] : ["submission_count" Data.Aeson.Types.ToJSON..= disputeEvidenceDetailsSubmissionCount obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("due_by" Data.Aeson.Types.ToJSON..=)) (disputeEvidenceDetailsDueBy obj) : ["has_evidence" Data.Aeson.Types.ToJSON..= disputeEvidenceDetailsHasEvidence obj] : ["past_due" Data.Aeson.Types.ToJSON..= disputeEvidenceDetailsPastDue obj] : ["submission_count" Data.Aeson.Types.ToJSON..= disputeEvidenceDetailsSubmissionCount obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON DisputeEvidenceDetails
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DisputeEvidenceDetails" (\obj -> (((GHC.Base.pure DisputeEvidenceDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "due_by")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_evidence")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "past_due")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "submission_count"))
-- | Create a new 'DisputeEvidenceDetails' with all required fields.
mkDisputeEvidenceDetails :: GHC.Types.Bool -- ^ 'disputeEvidenceDetailsHasEvidence'
  -> GHC.Types.Bool -- ^ 'disputeEvidenceDetailsPastDue'
  -> GHC.Types.Int -- ^ 'disputeEvidenceDetailsSubmissionCount'
  -> DisputeEvidenceDetails
mkDisputeEvidenceDetails disputeEvidenceDetailsHasEvidence disputeEvidenceDetailsPastDue disputeEvidenceDetailsSubmissionCount = DisputeEvidenceDetails{disputeEvidenceDetailsDueBy = GHC.Maybe.Nothing,
                                                                                                                                                        disputeEvidenceDetailsHasEvidence = disputeEvidenceDetailsHasEvidence,
                                                                                                                                                        disputeEvidenceDetailsPastDue = disputeEvidenceDetailsPastDue,
                                                                                                                                                        disputeEvidenceDetailsSubmissionCount = disputeEvidenceDetailsSubmissionCount}
