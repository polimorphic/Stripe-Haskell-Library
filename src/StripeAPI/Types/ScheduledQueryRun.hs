-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ScheduledQueryRun
module StripeAPI.Types.ScheduledQueryRun where

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
import {-# SOURCE #-} StripeAPI.Types.FileLink
import {-# SOURCE #-} StripeAPI.Types.SigmaScheduledQueryRunError

-- | Defines the object schema located at @components.schemas.scheduled_query_run@ in the specification.
-- 
-- If you have [scheduled a Sigma query](https:\/\/stripe.com\/docs\/sigma\/scheduled-queries), you\'ll
-- receive a \`sigma.scheduled_query_run.created\` webhook each time the query
-- runs. The webhook contains a \`ScheduledQueryRun\` object, which you can use to
-- retrieve the query results.
data ScheduledQueryRun = ScheduledQueryRun {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  scheduledQueryRunCreated :: GHC.Types.Int
  -- | data_load_time: When the query was run, Sigma contained a snapshot of your Stripe data at this time.
  , scheduledQueryRunDataLoadTime :: GHC.Types.Int
  -- | error: 
  , scheduledQueryRunError :: (GHC.Maybe.Maybe SigmaScheduledQueryRunError)
  -- | file: The file object representing the results of the query.
  , scheduledQueryRunFile :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ScheduledQueryRunFile'NonNullable))
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , scheduledQueryRunId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , scheduledQueryRunLivemode :: GHC.Types.Bool
  -- | result_available_until: Time at which the result expires and is no longer available for download.
  , scheduledQueryRunResultAvailableUntil :: GHC.Types.Int
  -- | sql: SQL for the query.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 100000
  , scheduledQueryRunSql :: Data.Text.Internal.Text
  -- | status: The query\'s execution status, which will be \`completed\` for successful runs, and \`canceled\`, \`failed\`, or \`timed_out\` otherwise.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , scheduledQueryRunStatus :: Data.Text.Internal.Text
  -- | title: Title of the query.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , scheduledQueryRunTitle :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ScheduledQueryRun
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= scheduledQueryRunCreated obj] : ["data_load_time" Data.Aeson.Types.ToJSON..= scheduledQueryRunDataLoadTime obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunError obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("file" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile obj) : ["id" Data.Aeson.Types.ToJSON..= scheduledQueryRunId obj] : ["livemode" Data.Aeson.Types.ToJSON..= scheduledQueryRunLivemode obj] : ["result_available_until" Data.Aeson.Types.ToJSON..= scheduledQueryRunResultAvailableUntil obj] : ["sql" Data.Aeson.Types.ToJSON..= scheduledQueryRunSql obj] : ["status" Data.Aeson.Types.ToJSON..= scheduledQueryRunStatus obj] : ["title" Data.Aeson.Types.ToJSON..= scheduledQueryRunTitle obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "scheduled_query_run"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= scheduledQueryRunCreated obj] : ["data_load_time" Data.Aeson.Types.ToJSON..= scheduledQueryRunDataLoadTime obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunError obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("file" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile obj) : ["id" Data.Aeson.Types.ToJSON..= scheduledQueryRunId obj] : ["livemode" Data.Aeson.Types.ToJSON..= scheduledQueryRunLivemode obj] : ["result_available_until" Data.Aeson.Types.ToJSON..= scheduledQueryRunResultAvailableUntil obj] : ["sql" Data.Aeson.Types.ToJSON..= scheduledQueryRunSql obj] : ["status" Data.Aeson.Types.ToJSON..= scheduledQueryRunStatus obj] : ["title" Data.Aeson.Types.ToJSON..= scheduledQueryRunTitle obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "scheduled_query_run"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ScheduledQueryRun
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ScheduledQueryRun" (\obj -> (((((((((GHC.Base.pure ScheduledQueryRun GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data_load_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "file")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result_available_until")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "sql")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title"))
-- | Create a new 'ScheduledQueryRun' with all required fields.
mkScheduledQueryRun :: GHC.Types.Int -- ^ 'scheduledQueryRunCreated'
  -> GHC.Types.Int -- ^ 'scheduledQueryRunDataLoadTime'
  -> Data.Text.Internal.Text -- ^ 'scheduledQueryRunId'
  -> GHC.Types.Bool -- ^ 'scheduledQueryRunLivemode'
  -> GHC.Types.Int -- ^ 'scheduledQueryRunResultAvailableUntil'
  -> Data.Text.Internal.Text -- ^ 'scheduledQueryRunSql'
  -> Data.Text.Internal.Text -- ^ 'scheduledQueryRunStatus'
  -> Data.Text.Internal.Text -- ^ 'scheduledQueryRunTitle'
  -> ScheduledQueryRun
mkScheduledQueryRun scheduledQueryRunCreated scheduledQueryRunDataLoadTime scheduledQueryRunId scheduledQueryRunLivemode scheduledQueryRunResultAvailableUntil scheduledQueryRunSql scheduledQueryRunStatus scheduledQueryRunTitle = ScheduledQueryRun{scheduledQueryRunCreated = scheduledQueryRunCreated,
                                                                                                                                                                                                                                                       scheduledQueryRunDataLoadTime = scheduledQueryRunDataLoadTime,
                                                                                                                                                                                                                                                       scheduledQueryRunError = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                       scheduledQueryRunFile = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                       scheduledQueryRunId = scheduledQueryRunId,
                                                                                                                                                                                                                                                       scheduledQueryRunLivemode = scheduledQueryRunLivemode,
                                                                                                                                                                                                                                                       scheduledQueryRunResultAvailableUntil = scheduledQueryRunResultAvailableUntil,
                                                                                                                                                                                                                                                       scheduledQueryRunSql = scheduledQueryRunSql,
                                                                                                                                                                                                                                                       scheduledQueryRunStatus = scheduledQueryRunStatus,
                                                                                                                                                                                                                                                       scheduledQueryRunTitle = scheduledQueryRunTitle}
-- | Defines the object schema located at @components.schemas.scheduled_query_run.properties.file.anyOf@ in the specification.
-- 
-- The file object representing the results of the query.
data ScheduledQueryRunFile'NonNullable = ScheduledQueryRunFile'NonNullable {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  scheduledQueryRunFile'NonNullableCreated :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | expires_at: The time at which the file expires and is no longer available in epoch seconds.
  , scheduledQueryRunFile'NonNullableExpiresAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | filename: A filename for the file, suitable for saving to a filesystem.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , scheduledQueryRunFile'NonNullableFilename :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , scheduledQueryRunFile'NonNullableId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | links: A list of [file links](https:\/\/stripe.com\/docs\/api\#file_links) that point at this file.
  , scheduledQueryRunFile'NonNullableLinks :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ScheduledQueryRunFile'NonNullableLinks'NonNullable))
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , scheduledQueryRunFile'NonNullableObject :: (GHC.Maybe.Maybe ScheduledQueryRunFile'NonNullableObject')
  -- | purpose: The [purpose](https:\/\/stripe.com\/docs\/file-upload\#uploading-a-file) of the uploaded file.
  , scheduledQueryRunFile'NonNullablePurpose :: (GHC.Maybe.Maybe ScheduledQueryRunFile'NonNullablePurpose')
  -- | size: The size in bytes of the file object.
  , scheduledQueryRunFile'NonNullableSize :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | title: A user friendly title for the document.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , scheduledQueryRunFile'NonNullableTitle :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | type: The type of the file returned (e.g., \`csv\`, \`pdf\`, \`jpg\`, or \`png\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , scheduledQueryRunFile'NonNullableType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | url: The URL from which the file can be downloaded using your live secret API key.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , scheduledQueryRunFile'NonNullableUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ScheduledQueryRunFile'NonNullable
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableExpiresAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filename" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableFilename obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("links" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableLinks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("purpose" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullablePurpose obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("title" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableTitle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableUrl obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("created" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expires_at" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableExpiresAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("filename" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableFilename obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("links" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableLinks obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("purpose" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullablePurpose obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("size" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableSize obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("title" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableTitle obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("url" Data.Aeson.Types.ToJSON..=)) (scheduledQueryRunFile'NonNullableUrl obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ScheduledQueryRunFile'NonNullable
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ScheduledQueryRunFile'NonNullable" (\obj -> ((((((((((GHC.Base.pure ScheduledQueryRunFile'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "filename")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "links")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "purpose")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "url"))
-- | Create a new 'ScheduledQueryRunFile'NonNullable' with all required fields.
mkScheduledQueryRunFile'NonNullable :: ScheduledQueryRunFile'NonNullable
mkScheduledQueryRunFile'NonNullable = ScheduledQueryRunFile'NonNullable{scheduledQueryRunFile'NonNullableCreated = GHC.Maybe.Nothing,
                                                                        scheduledQueryRunFile'NonNullableExpiresAt = GHC.Maybe.Nothing,
                                                                        scheduledQueryRunFile'NonNullableFilename = GHC.Maybe.Nothing,
                                                                        scheduledQueryRunFile'NonNullableId = GHC.Maybe.Nothing,
                                                                        scheduledQueryRunFile'NonNullableLinks = GHC.Maybe.Nothing,
                                                                        scheduledQueryRunFile'NonNullableObject = GHC.Maybe.Nothing,
                                                                        scheduledQueryRunFile'NonNullablePurpose = GHC.Maybe.Nothing,
                                                                        scheduledQueryRunFile'NonNullableSize = GHC.Maybe.Nothing,
                                                                        scheduledQueryRunFile'NonNullableTitle = GHC.Maybe.Nothing,
                                                                        scheduledQueryRunFile'NonNullableType = GHC.Maybe.Nothing,
                                                                        scheduledQueryRunFile'NonNullableUrl = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.scheduled_query_run.properties.file.anyOf.properties.links@ in the specification.
-- 
-- A list of [file links](https:\/\/stripe.com\/docs\/api\#file_links) that point at this file.
data ScheduledQueryRunFile'NonNullableLinks'NonNullable = ScheduledQueryRunFile'NonNullableLinks'NonNullable {
  -- | data: Details about each object.
  scheduledQueryRunFile'NonNullableLinks'NonNullableData :: ([FileLink])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , scheduledQueryRunFile'NonNullableLinks'NonNullableHasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/file_links\'
  , scheduledQueryRunFile'NonNullableLinks'NonNullableUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ScheduledQueryRunFile'NonNullableLinks'NonNullable
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'NonNullableLinks'NonNullableData obj] : ["has_more" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'NonNullableLinks'NonNullableHasMore obj] : ["url" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'NonNullableLinks'NonNullableUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'NonNullableLinks'NonNullableData obj] : ["has_more" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'NonNullableLinks'NonNullableHasMore obj] : ["url" Data.Aeson.Types.ToJSON..= scheduledQueryRunFile'NonNullableLinks'NonNullableUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ScheduledQueryRunFile'NonNullableLinks'NonNullable
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ScheduledQueryRunFile'NonNullableLinks'NonNullable" (\obj -> ((GHC.Base.pure ScheduledQueryRunFile'NonNullableLinks'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'ScheduledQueryRunFile'NonNullableLinks'NonNullable' with all required fields.
mkScheduledQueryRunFile'NonNullableLinks'NonNullable :: [FileLink] -- ^ 'scheduledQueryRunFile'NonNullableLinks'NonNullableData'
  -> GHC.Types.Bool -- ^ 'scheduledQueryRunFile'NonNullableLinks'NonNullableHasMore'
  -> Data.Text.Internal.Text -- ^ 'scheduledQueryRunFile'NonNullableLinks'NonNullableUrl'
  -> ScheduledQueryRunFile'NonNullableLinks'NonNullable
mkScheduledQueryRunFile'NonNullableLinks'NonNullable scheduledQueryRunFile'NonNullableLinks'NonNullableData scheduledQueryRunFile'NonNullableLinks'NonNullableHasMore scheduledQueryRunFile'NonNullableLinks'NonNullableUrl = ScheduledQueryRunFile'NonNullableLinks'NonNullable{scheduledQueryRunFile'NonNullableLinks'NonNullableData = scheduledQueryRunFile'NonNullableLinks'NonNullableData,
                                                                                                                                                                                                                                                                                 scheduledQueryRunFile'NonNullableLinks'NonNullableHasMore = scheduledQueryRunFile'NonNullableLinks'NonNullableHasMore,
                                                                                                                                                                                                                                                                                 scheduledQueryRunFile'NonNullableLinks'NonNullableUrl = scheduledQueryRunFile'NonNullableLinks'NonNullableUrl}
-- | Defines the enum schema located at @components.schemas.scheduled_query_run.properties.file.anyOf.properties.object@ in the specification.
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data ScheduledQueryRunFile'NonNullableObject' =
   ScheduledQueryRunFile'NonNullableObject'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ScheduledQueryRunFile'NonNullableObject'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ScheduledQueryRunFile'NonNullableObject'EnumFile -- ^ Represents the JSON value @"file"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ScheduledQueryRunFile'NonNullableObject'
    where toJSON (ScheduledQueryRunFile'NonNullableObject'Other val) = val
          toJSON (ScheduledQueryRunFile'NonNullableObject'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ScheduledQueryRunFile'NonNullableObject'EnumFile) = "file"
instance Data.Aeson.Types.FromJSON.FromJSON ScheduledQueryRunFile'NonNullableObject'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "file" -> ScheduledQueryRunFile'NonNullableObject'EnumFile
                                            | GHC.Base.otherwise -> ScheduledQueryRunFile'NonNullableObject'Other val)
-- | Defines the enum schema located at @components.schemas.scheduled_query_run.properties.file.anyOf.properties.purpose@ in the specification.
-- 
-- The [purpose](https:\/\/stripe.com\/docs\/file-upload\#uploading-a-file) of the uploaded file.
data ScheduledQueryRunFile'NonNullablePurpose' =
   ScheduledQueryRunFile'NonNullablePurpose'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ScheduledQueryRunFile'NonNullablePurpose'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ScheduledQueryRunFile'NonNullablePurpose'EnumAccountRequirement -- ^ Represents the JSON value @"account_requirement"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumAdditionalVerification -- ^ Represents the JSON value @"additional_verification"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumBusinessIcon -- ^ Represents the JSON value @"business_icon"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumBusinessLogo -- ^ Represents the JSON value @"business_logo"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumCustomerSignature -- ^ Represents the JSON value @"customer_signature"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumDisputeEvidence -- ^ Represents the JSON value @"dispute_evidence"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumDocumentProviderIdentityDocument -- ^ Represents the JSON value @"document_provider_identity_document"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumFinanceReportRun -- ^ Represents the JSON value @"finance_report_run"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumIdentityDocument -- ^ Represents the JSON value @"identity_document"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumIdentityDocumentDownloadable -- ^ Represents the JSON value @"identity_document_downloadable"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumPciDocument -- ^ Represents the JSON value @"pci_document"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumSelfie -- ^ Represents the JSON value @"selfie"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumSigmaScheduledQuery -- ^ Represents the JSON value @"sigma_scheduled_query"@
  | ScheduledQueryRunFile'NonNullablePurpose'EnumTaxDocumentUserUpload -- ^ Represents the JSON value @"tax_document_user_upload"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ScheduledQueryRunFile'NonNullablePurpose'
    where toJSON (ScheduledQueryRunFile'NonNullablePurpose'Other val) = val
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumAccountRequirement) = "account_requirement"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumAdditionalVerification) = "additional_verification"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumBusinessIcon) = "business_icon"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumBusinessLogo) = "business_logo"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumCustomerSignature) = "customer_signature"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumDisputeEvidence) = "dispute_evidence"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumDocumentProviderIdentityDocument) = "document_provider_identity_document"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumFinanceReportRun) = "finance_report_run"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumIdentityDocument) = "identity_document"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumIdentityDocumentDownloadable) = "identity_document_downloadable"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumPciDocument) = "pci_document"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumSelfie) = "selfie"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumSigmaScheduledQuery) = "sigma_scheduled_query"
          toJSON (ScheduledQueryRunFile'NonNullablePurpose'EnumTaxDocumentUserUpload) = "tax_document_user_upload"
instance Data.Aeson.Types.FromJSON.FromJSON ScheduledQueryRunFile'NonNullablePurpose'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "account_requirement" -> ScheduledQueryRunFile'NonNullablePurpose'EnumAccountRequirement
                                            | val GHC.Classes.== "additional_verification" -> ScheduledQueryRunFile'NonNullablePurpose'EnumAdditionalVerification
                                            | val GHC.Classes.== "business_icon" -> ScheduledQueryRunFile'NonNullablePurpose'EnumBusinessIcon
                                            | val GHC.Classes.== "business_logo" -> ScheduledQueryRunFile'NonNullablePurpose'EnumBusinessLogo
                                            | val GHC.Classes.== "customer_signature" -> ScheduledQueryRunFile'NonNullablePurpose'EnumCustomerSignature
                                            | val GHC.Classes.== "dispute_evidence" -> ScheduledQueryRunFile'NonNullablePurpose'EnumDisputeEvidence
                                            | val GHC.Classes.== "document_provider_identity_document" -> ScheduledQueryRunFile'NonNullablePurpose'EnumDocumentProviderIdentityDocument
                                            | val GHC.Classes.== "finance_report_run" -> ScheduledQueryRunFile'NonNullablePurpose'EnumFinanceReportRun
                                            | val GHC.Classes.== "identity_document" -> ScheduledQueryRunFile'NonNullablePurpose'EnumIdentityDocument
                                            | val GHC.Classes.== "identity_document_downloadable" -> ScheduledQueryRunFile'NonNullablePurpose'EnumIdentityDocumentDownloadable
                                            | val GHC.Classes.== "pci_document" -> ScheduledQueryRunFile'NonNullablePurpose'EnumPciDocument
                                            | val GHC.Classes.== "selfie" -> ScheduledQueryRunFile'NonNullablePurpose'EnumSelfie
                                            | val GHC.Classes.== "sigma_scheduled_query" -> ScheduledQueryRunFile'NonNullablePurpose'EnumSigmaScheduledQuery
                                            | val GHC.Classes.== "tax_document_user_upload" -> ScheduledQueryRunFile'NonNullablePurpose'EnumTaxDocumentUserUpload
                                            | GHC.Base.otherwise -> ScheduledQueryRunFile'NonNullablePurpose'Other val)
