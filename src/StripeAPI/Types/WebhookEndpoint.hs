{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema WebhookEndpoint
module StripeAPI.Types.WebhookEndpoint where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.webhook_endpoint@ in the specification.
--
-- You can configure [webhook endpoints](https:\/\/stripe.com\/docs\/webhooks\/) via the API to be
-- notified about events that happen in your Stripe account or connected
-- accounts.
--
-- Most users configure webhooks from [the dashboard](https:\/\/dashboard.stripe.com\/webhooks), which provides a user interface for registering and testing your webhook endpoints.
--
-- Related guide: [Setting up Webhooks](https:\/\/stripe.com\/docs\/webhooks\/configure).
data WebhookEndpoint
  = WebhookEndpoint
      { -- | api_version: The API version events are rendered as for this webhook endpoint.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        webhookEndpointApiVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | application: The ID of the associated Connect application.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        webhookEndpointApplication :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
        webhookEndpointCreated :: GHC.Types.Int,
        -- | enabled_events: The list of events to enable for this endpoint. \`[\'*\']\` indicates that all events are enabled, except those that require explicit selection.
        webhookEndpointEnabledEvents :: ([Data.Text.Internal.Text]),
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        webhookEndpointId :: Data.Text.Internal.Text,
        -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
        webhookEndpointLivemode :: GHC.Types.Bool,
        -- | secret: The endpoint\'s secret, used to generate [webhook signatures](https:\/\/stripe.com\/docs\/webhooks\/signatures). Only returned at creation.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        webhookEndpointSecret :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | status: The status of the webhook. It can be \`enabled\` or \`disabled\`.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        webhookEndpointStatus :: Data.Text.Internal.Text,
        -- | url: The URL of the webhook endpoint.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        webhookEndpointUrl :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON WebhookEndpoint where
  toJSON obj = Data.Aeson.Types.Internal.object ("api_version" Data.Aeson.Types.ToJSON..= webhookEndpointApiVersion obj : "application" Data.Aeson.Types.ToJSON..= webhookEndpointApplication obj : "created" Data.Aeson.Types.ToJSON..= webhookEndpointCreated obj : "enabled_events" Data.Aeson.Types.ToJSON..= webhookEndpointEnabledEvents obj : "id" Data.Aeson.Types.ToJSON..= webhookEndpointId obj : "livemode" Data.Aeson.Types.ToJSON..= webhookEndpointLivemode obj : "secret" Data.Aeson.Types.ToJSON..= webhookEndpointSecret obj : "status" Data.Aeson.Types.ToJSON..= webhookEndpointStatus obj : "url" Data.Aeson.Types.ToJSON..= webhookEndpointUrl obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "webhook_endpoint" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("api_version" Data.Aeson.Types.ToJSON..= webhookEndpointApiVersion obj) GHC.Base.<> (("application" Data.Aeson.Types.ToJSON..= webhookEndpointApplication obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= webhookEndpointCreated obj) GHC.Base.<> (("enabled_events" Data.Aeson.Types.ToJSON..= webhookEndpointEnabledEvents obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= webhookEndpointId obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= webhookEndpointLivemode obj) GHC.Base.<> (("secret" Data.Aeson.Types.ToJSON..= webhookEndpointSecret obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= webhookEndpointStatus obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= webhookEndpointUrl obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "webhook_endpoint"))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON WebhookEndpoint where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "WebhookEndpoint" (\obj -> ((((((((GHC.Base.pure WebhookEndpoint GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "api_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "application")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled_events")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'WebhookEndpoint' with all required fields.
mkWebhookEndpoint ::
  -- | 'webhookEndpointCreated'
  GHC.Types.Int ->
  -- | 'webhookEndpointEnabledEvents'
  [Data.Text.Internal.Text] ->
  -- | 'webhookEndpointId'
  Data.Text.Internal.Text ->
  -- | 'webhookEndpointLivemode'
  GHC.Types.Bool ->
  -- | 'webhookEndpointStatus'
  Data.Text.Internal.Text ->
  -- | 'webhookEndpointUrl'
  Data.Text.Internal.Text ->
  WebhookEndpoint
mkWebhookEndpoint webhookEndpointCreated webhookEndpointEnabledEvents webhookEndpointId webhookEndpointLivemode webhookEndpointStatus webhookEndpointUrl =
  WebhookEndpoint
    { webhookEndpointApiVersion = GHC.Maybe.Nothing,
      webhookEndpointApplication = GHC.Maybe.Nothing,
      webhookEndpointCreated = webhookEndpointCreated,
      webhookEndpointEnabledEvents = webhookEndpointEnabledEvents,
      webhookEndpointId = webhookEndpointId,
      webhookEndpointLivemode = webhookEndpointLivemode,
      webhookEndpointSecret = GHC.Maybe.Nothing,
      webhookEndpointStatus = webhookEndpointStatus,
      webhookEndpointUrl = webhookEndpointUrl
    }
