{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema Event
module StripeAPI.Types.Event where

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
import {-# SOURCE #-} StripeAPI.Types.NotificationEventData
import {-# SOURCE #-} StripeAPI.Types.NotificationEventRequest
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.event@ in the specification.
--
-- Events are our way of letting you know when something interesting happens in
-- your account. When an interesting event occurs, we create a new \`Event\`
-- object. For example, when a charge succeeds, we create a \`charge.succeeded\`
-- event; and when an invoice payment attempt fails, we create an
-- \`invoice.payment_failed\` event. Note that many API requests may cause multiple
-- events to be created. For example, if you create a new subscription for a
-- customer, you will receive both a \`customer.subscription.created\` event and a
-- \`charge.succeeded\` event.
--
-- Events occur when the state of another API resource changes. The state of that
-- resource at the time of the change is embedded in the event\'s data field. For
-- example, a \`charge.succeeded\` event will contain a charge, and an
-- \`invoice.payment_failed\` event will contain an invoice.
--
-- As with other API resources, you can use endpoints to retrieve an
-- [individual event](https:\/\/stripe.com\/docs\/api\#retrieve_event) or a [list of events](https:\/\/stripe.com\/docs\/api\#list_events)
-- from the API. We also have a separate
-- [webhooks](http:\/\/en.wikipedia.org\/wiki\/Webhook) system for sending the
-- \`Event\` objects directly to an endpoint on your server. Webhooks are managed
-- in your
-- [account settings](https:\/\/dashboard.stripe.com\/account\/webhooks\'),
-- and our [Using Webhooks](https:\/\/stripe.com\/docs\/webhooks) guide will help you get set up.
--
-- When using [Connect](https:\/\/stripe.com\/docs\/connect), you can also receive notifications of
-- events that occur in connected accounts. For these events, there will be an
-- additional \`account\` attribute in the received \`Event\` object.
--
-- **NOTE:** Right now, access to events through the [Retrieve Event API](https:\/\/stripe.com\/docs\/api\#retrieve_event) is
-- guaranteed only for 30 days.
data Event
  = Event
      { -- | account: The connected account that originated the event.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        eventAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | api_version: The Stripe API version used to render \`data\`. *Note: This property is populated only for events on or after October 31, 2014*.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        eventApiVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
        eventCreated :: GHC.Types.Int,
        -- | data:
        eventData :: NotificationEventData,
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        eventId :: Data.Text.Internal.Text,
        -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
        eventLivemode :: GHC.Types.Bool,
        -- | pending_webhooks: Number of webhooks that have yet to be successfully delivered (i.e., to return a 20x response) to the URLs you\'ve specified.
        eventPendingWebhooks :: GHC.Types.Int,
        -- | request: Information on the API request that instigated the event.
        eventRequest :: (GHC.Maybe.Maybe EventRequest'),
        -- | type: Description of the event (e.g., \`invoice.created\` or \`charge.refunded\`).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        eventType :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Event where
  toJSON obj = Data.Aeson.Types.Internal.object ("account" Data.Aeson.Types.ToJSON..= eventAccount obj : "api_version" Data.Aeson.Types.ToJSON..= eventApiVersion obj : "created" Data.Aeson.Types.ToJSON..= eventCreated obj : "data" Data.Aeson.Types.ToJSON..= eventData obj : "id" Data.Aeson.Types.ToJSON..= eventId obj : "livemode" Data.Aeson.Types.ToJSON..= eventLivemode obj : "pending_webhooks" Data.Aeson.Types.ToJSON..= eventPendingWebhooks obj : "request" Data.Aeson.Types.ToJSON..= eventRequest obj : "type" Data.Aeson.Types.ToJSON..= eventType obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "event" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("account" Data.Aeson.Types.ToJSON..= eventAccount obj) GHC.Base.<> (("api_version" Data.Aeson.Types.ToJSON..= eventApiVersion obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= eventCreated obj) GHC.Base.<> (("data" Data.Aeson.Types.ToJSON..= eventData obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= eventId obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= eventLivemode obj) GHC.Base.<> (("pending_webhooks" Data.Aeson.Types.ToJSON..= eventPendingWebhooks obj) GHC.Base.<> (("request" Data.Aeson.Types.ToJSON..= eventRequest obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= eventType obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "event"))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON Event where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Event" (\obj -> ((((((((GHC.Base.pure Event GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "api_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pending_webhooks")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'Event' with all required fields.
mkEvent ::
  -- | 'eventCreated'
  GHC.Types.Int ->
  -- | 'eventData'
  NotificationEventData ->
  -- | 'eventId'
  Data.Text.Internal.Text ->
  -- | 'eventLivemode'
  GHC.Types.Bool ->
  -- | 'eventPendingWebhooks'
  GHC.Types.Int ->
  -- | 'eventType'
  Data.Text.Internal.Text ->
  Event
mkEvent eventCreated eventData eventId eventLivemode eventPendingWebhooks eventType =
  Event
    { eventAccount = GHC.Maybe.Nothing,
      eventApiVersion = GHC.Maybe.Nothing,
      eventCreated = eventCreated,
      eventData = eventData,
      eventId = eventId,
      eventLivemode = eventLivemode,
      eventPendingWebhooks = eventPendingWebhooks,
      eventRequest = GHC.Maybe.Nothing,
      eventType = eventType
    }

-- | Defines the object schema located at @components.schemas.event.properties.request.anyOf@ in the specification.
--
-- Information on the API request that instigated the event.
data EventRequest'
  = EventRequest'
      { -- | id: ID of the API request that caused the event. If null, the event was automatic (e.g., Stripe\'s automatic subscription handling). Request logs are available in the [dashboard](https:\/\/dashboard.stripe.com\/logs), but currently not in the API.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        eventRequest'Id :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | idempotency_key: The idempotency key transmitted during the request, if any. *Note: This property is populated only for events on or after May 23, 2017*.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        eventRequest'IdempotencyKey :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON EventRequest' where
  toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= eventRequest'Id obj : "idempotency_key" Data.Aeson.Types.ToJSON..= eventRequest'IdempotencyKey obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= eventRequest'Id obj) GHC.Base.<> ("idempotency_key" Data.Aeson.Types.ToJSON..= eventRequest'IdempotencyKey obj))

instance Data.Aeson.Types.FromJSON.FromJSON EventRequest' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "EventRequest'" (\obj -> (GHC.Base.pure EventRequest' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "idempotency_key"))

-- | Create a new 'EventRequest'' with all required fields.
mkEventRequest' :: EventRequest'
mkEventRequest' =
  EventRequest'
    { eventRequest'Id = GHC.Maybe.Nothing,
      eventRequest'IdempotencyKey = GHC.Maybe.Nothing
    }
