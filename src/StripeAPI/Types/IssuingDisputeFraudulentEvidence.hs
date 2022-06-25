-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IssuingDisputeFraudulentEvidence
module StripeAPI.Types.IssuingDisputeFraudulentEvidence where

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
import {-# SOURCE #-} StripeAPI.Types.File

-- | Defines the object schema located at @components.schemas.issuing_dispute_fraudulent_evidence@ in the specification.
-- 
-- 
data IssuingDisputeFraudulentEvidence = IssuingDisputeFraudulentEvidence {
  -- | additional_documentation: (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Additional documentation supporting the dispute.
  issuingDisputeFraudulentEvidenceAdditionalDocumentation :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingDisputeFraudulentEvidenceAdditionalDocumentation'NonNullableVariants))
  -- | explanation: Explanation of why the cardholder is disputing this transaction.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingDisputeFraudulentEvidenceExplanation :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingDisputeFraudulentEvidence
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_documentation" Data.Aeson.Types.ToJSON..=)) (issuingDisputeFraudulentEvidenceAdditionalDocumentation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("explanation" Data.Aeson.Types.ToJSON..=)) (issuingDisputeFraudulentEvidenceExplanation obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_documentation" Data.Aeson.Types.ToJSON..=)) (issuingDisputeFraudulentEvidenceAdditionalDocumentation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("explanation" Data.Aeson.Types.ToJSON..=)) (issuingDisputeFraudulentEvidenceExplanation obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingDisputeFraudulentEvidence
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingDisputeFraudulentEvidence" (\obj -> (GHC.Base.pure IssuingDisputeFraudulentEvidence GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "additional_documentation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "explanation"))
-- | Create a new 'IssuingDisputeFraudulentEvidence' with all required fields.
mkIssuingDisputeFraudulentEvidence :: IssuingDisputeFraudulentEvidence
mkIssuingDisputeFraudulentEvidence = IssuingDisputeFraudulentEvidence{issuingDisputeFraudulentEvidenceAdditionalDocumentation = GHC.Maybe.Nothing,
                                                                      issuingDisputeFraudulentEvidenceExplanation = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.issuing_dispute_fraudulent_evidence.properties.additional_documentation.anyOf@ in the specification.
-- 
-- (ID of a [file upload](https:\/\/stripe.com\/docs\/guides\/file-upload)) Additional documentation supporting the dispute.
data IssuingDisputeFraudulentEvidenceAdditionalDocumentation'NonNullableVariants =
   IssuingDisputeFraudulentEvidenceAdditionalDocumentation'NonNullableText Data.Text.Internal.Text
  | IssuingDisputeFraudulentEvidenceAdditionalDocumentation'NonNullableFile File
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingDisputeFraudulentEvidenceAdditionalDocumentation'NonNullableVariants
    where toJSON (IssuingDisputeFraudulentEvidenceAdditionalDocumentation'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (IssuingDisputeFraudulentEvidenceAdditionalDocumentation'NonNullableFile a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON IssuingDisputeFraudulentEvidenceAdditionalDocumentation'NonNullableVariants
    where parseJSON val = case (IssuingDisputeFraudulentEvidenceAdditionalDocumentation'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((IssuingDisputeFraudulentEvidenceAdditionalDocumentation'NonNullableFile Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
