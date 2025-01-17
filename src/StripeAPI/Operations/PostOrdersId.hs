{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postOrdersId
module StripeAPI.Operations.PostOrdersId where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/orders/{id}
--
-- \<p>Updates the specific order by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
postOrdersId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | id | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostOrdersIdRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostOrdersIdResponse)
postOrdersId
  id
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostOrdersIdResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostOrdersIdResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Order
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostOrdersIdResponseDefault
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_0
            )
            response_0
      )
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/orders\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostOrdersIdRequestBody = PostOrdersIdRequestBody
  { -- | coupon: A coupon code that represents a discount to be applied to this order. Must be one-time duration and in same currency as the order. An order can have multiple coupons.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postOrdersIdRequestBodyCoupon :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postOrdersIdRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postOrdersIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostOrdersIdRequestBodyMetadata'Variants),
    -- | selected_shipping_method: The shipping method to select for fulfilling this order. If specified, must be one of the \`id\`s of a shipping method in the \`shipping_methods\` array. If specified, will overwrite the existing selected shipping method, updating \`items\` as necessary.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postOrdersIdRequestBodySelectedShippingMethod :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | shipping: Tracking information once the order has been fulfilled.
    postOrdersIdRequestBodyShipping :: (GHC.Maybe.Maybe PostOrdersIdRequestBodyShipping'),
    -- | status: Current order status. One of \`created\`, \`paid\`, \`canceled\`, \`fulfilled\`, or \`returned\`. More detail in the [Orders Guide](https:\/\/stripe.com\/docs\/orders\/guide\#understanding-order-statuses).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postOrdersIdRequestBodyStatus :: (GHC.Maybe.Maybe PostOrdersIdRequestBodyStatus')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostOrdersIdRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("coupon" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyCoupon obj : "expand" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyExpand obj : "metadata" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyMetadata obj : "selected_shipping_method" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodySelectedShippingMethod obj : "shipping" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyShipping obj : "status" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyStatus obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("coupon" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyCoupon obj) GHC.Base.<> (("expand" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyExpand obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyMetadata obj) GHC.Base.<> (("selected_shipping_method" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodySelectedShippingMethod obj) GHC.Base.<> (("shipping" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyShipping obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyStatus obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdRequestBody" (\obj -> (((((GHC.Base.pure PostOrdersIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "coupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selected_shipping_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status"))

-- | Create a new 'PostOrdersIdRequestBody' with all required fields.
mkPostOrdersIdRequestBody :: PostOrdersIdRequestBody
mkPostOrdersIdRequestBody =
  PostOrdersIdRequestBody
    { postOrdersIdRequestBodyCoupon = GHC.Maybe.Nothing,
      postOrdersIdRequestBodyExpand = GHC.Maybe.Nothing,
      postOrdersIdRequestBodyMetadata = GHC.Maybe.Nothing,
      postOrdersIdRequestBodySelectedShippingMethod = GHC.Maybe.Nothing,
      postOrdersIdRequestBodyShipping = GHC.Maybe.Nothing,
      postOrdersIdRequestBodyStatus = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/orders\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostOrdersIdRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostOrdersIdRequestBodyMetadata'EmptyString
  | PostOrdersIdRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostOrdersIdRequestBodyMetadata'Variants where
  toJSON (PostOrdersIdRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostOrdersIdRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdRequestBodyMetadata'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostOrdersIdRequestBodyMetadata'EmptyString
        | GHC.Base.otherwise -> case (PostOrdersIdRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the object schema located at @paths.\/v1\/orders\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.shipping@ in the specification.
--
-- Tracking information once the order has been fulfilled.
data PostOrdersIdRequestBodyShipping' = PostOrdersIdRequestBodyShipping'
  { -- | carrier
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postOrdersIdRequestBodyShipping'Carrier :: Data.Text.Internal.Text,
    -- | tracking_number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postOrdersIdRequestBodyShipping'TrackingNumber :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostOrdersIdRequestBodyShipping' where
  toJSON obj = Data.Aeson.Types.Internal.object ("carrier" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyShipping'Carrier obj : "tracking_number" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyShipping'TrackingNumber obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("carrier" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyShipping'Carrier obj) GHC.Base.<> ("tracking_number" Data.Aeson.Types.ToJSON..= postOrdersIdRequestBodyShipping'TrackingNumber obj))

instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdRequestBodyShipping' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdRequestBodyShipping'" (\obj -> (GHC.Base.pure PostOrdersIdRequestBodyShipping' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "carrier")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tracking_number"))

-- | Create a new 'PostOrdersIdRequestBodyShipping'' with all required fields.
mkPostOrdersIdRequestBodyShipping' ::
  -- | 'postOrdersIdRequestBodyShipping'Carrier'
  Data.Text.Internal.Text ->
  -- | 'postOrdersIdRequestBodyShipping'TrackingNumber'
  Data.Text.Internal.Text ->
  PostOrdersIdRequestBodyShipping'
mkPostOrdersIdRequestBodyShipping' postOrdersIdRequestBodyShipping'Carrier postOrdersIdRequestBodyShipping'TrackingNumber =
  PostOrdersIdRequestBodyShipping'
    { postOrdersIdRequestBodyShipping'Carrier = postOrdersIdRequestBodyShipping'Carrier,
      postOrdersIdRequestBodyShipping'TrackingNumber = postOrdersIdRequestBodyShipping'TrackingNumber
    }

-- | Defines the enum schema located at @paths.\/v1\/orders\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.status@ in the specification.
--
-- Current order status. One of \`created\`, \`paid\`, \`canceled\`, \`fulfilled\`, or \`returned\`. More detail in the [Orders Guide](https:\/\/stripe.com\/docs\/orders\/guide\#understanding-order-statuses).
data PostOrdersIdRequestBodyStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostOrdersIdRequestBodyStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostOrdersIdRequestBodyStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"canceled"@
    PostOrdersIdRequestBodyStatus'EnumCanceled
  | -- | Represents the JSON value @"created"@
    PostOrdersIdRequestBodyStatus'EnumCreated
  | -- | Represents the JSON value @"fulfilled"@
    PostOrdersIdRequestBodyStatus'EnumFulfilled
  | -- | Represents the JSON value @"paid"@
    PostOrdersIdRequestBodyStatus'EnumPaid
  | -- | Represents the JSON value @"returned"@
    PostOrdersIdRequestBodyStatus'EnumReturned
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostOrdersIdRequestBodyStatus' where
  toJSON (PostOrdersIdRequestBodyStatus'Other val) = val
  toJSON (PostOrdersIdRequestBodyStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostOrdersIdRequestBodyStatus'EnumCanceled) = "canceled"
  toJSON (PostOrdersIdRequestBodyStatus'EnumCreated) = "created"
  toJSON (PostOrdersIdRequestBodyStatus'EnumFulfilled) = "fulfilled"
  toJSON (PostOrdersIdRequestBodyStatus'EnumPaid) = "paid"
  toJSON (PostOrdersIdRequestBodyStatus'EnumReturned) = "returned"

instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdRequestBodyStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "canceled" -> PostOrdersIdRequestBodyStatus'EnumCanceled
            | val GHC.Classes.== "created" -> PostOrdersIdRequestBodyStatus'EnumCreated
            | val GHC.Classes.== "fulfilled" -> PostOrdersIdRequestBodyStatus'EnumFulfilled
            | val GHC.Classes.== "paid" -> PostOrdersIdRequestBodyStatus'EnumPaid
            | val GHC.Classes.== "returned" -> PostOrdersIdRequestBodyStatus'EnumReturned
            | GHC.Base.otherwise -> PostOrdersIdRequestBodyStatus'Other val
      )

-- | Represents a response of the operation 'postOrdersId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostOrdersIdResponseError' is used.
data PostOrdersIdResponse
  = -- | Means either no matching case available or a parse error
    PostOrdersIdResponseError GHC.Base.String
  | -- | Successful response.
    PostOrdersIdResponse200 Order
  | -- | Error response.
    PostOrdersIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
