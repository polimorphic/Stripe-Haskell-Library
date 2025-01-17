{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getOrderReturns
module StripeAPI.Operations.GetOrderReturns where

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

-- | > GET /v1/order_returns
--
-- \<p>Returns a list of your order returns. The returns are returned sorted by creation date, with the most recently created return appearing first.\<\/p>
getOrderReturns ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetOrderReturnsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetOrderReturnsResponse)
getOrderReturns parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetOrderReturnsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetOrderReturnsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetOrderReturnsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetOrderReturnsResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/v1/order_returns")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrderReturnsParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrderReturnsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrderReturnsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrderReturnsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "order") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrderReturnsParametersQueryOrder parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getOrderReturnsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/order_returns.GET.parameters@ in the specification.
data GetOrderReturnsParameters = GetOrderReturnsParameters
  { -- | queryCreated: Represents the parameter named \'created\'
    --
    -- Date this return was created.
    getOrderReturnsParametersQueryCreated :: (GHC.Maybe.Maybe GetOrderReturnsParametersQueryCreated'Variants),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getOrderReturnsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getOrderReturnsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getOrderReturnsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryOrder: Represents the parameter named \'order\'
    --
    -- The order to retrieve returns for.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getOrderReturnsParametersQueryOrder :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getOrderReturnsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetOrderReturnsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryCreated" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryCreated obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryExpand obj : "queryLimit" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryLimit obj : "queryOrder" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryOrder obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryStartingAfter obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryCreated" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryCreated obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryExpand obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryLimit obj) GHC.Base.<> (("queryOrder" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryOrder obj) GHC.Base.<> ("queryStarting_after" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryStartingAfter obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON GetOrderReturnsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetOrderReturnsParameters" (\obj -> (((((GHC.Base.pure GetOrderReturnsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryOrder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after"))

-- | Create a new 'GetOrderReturnsParameters' with all required fields.
mkGetOrderReturnsParameters :: GetOrderReturnsParameters
mkGetOrderReturnsParameters =
  GetOrderReturnsParameters
    { getOrderReturnsParametersQueryCreated = GHC.Maybe.Nothing,
      getOrderReturnsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getOrderReturnsParametersQueryExpand = GHC.Maybe.Nothing,
      getOrderReturnsParametersQueryLimit = GHC.Maybe.Nothing,
      getOrderReturnsParametersQueryOrder = GHC.Maybe.Nothing,
      getOrderReturnsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/order_returns.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetOrderReturnsParametersQueryCreated'OneOf1 = GetOrderReturnsParametersQueryCreated'OneOf1
  { -- | gt
    getOrderReturnsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getOrderReturnsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getOrderReturnsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getOrderReturnsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetOrderReturnsParametersQueryCreated'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object ("gt" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryCreated'OneOf1Gt obj : "gte" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryCreated'OneOf1Gte obj : "lt" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryCreated'OneOf1Lt obj : "lte" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryCreated'OneOf1Lte obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("gt" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryCreated'OneOf1Gt obj) GHC.Base.<> (("gte" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryCreated'OneOf1Gte obj) GHC.Base.<> (("lt" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryCreated'OneOf1Lt obj) GHC.Base.<> ("lte" Data.Aeson.Types.ToJSON..= getOrderReturnsParametersQueryCreated'OneOf1Lte obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetOrderReturnsParametersQueryCreated'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetOrderReturnsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetOrderReturnsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lte"))

-- | Create a new 'GetOrderReturnsParametersQueryCreated'OneOf1' with all required fields.
mkGetOrderReturnsParametersQueryCreated'OneOf1 :: GetOrderReturnsParametersQueryCreated'OneOf1
mkGetOrderReturnsParametersQueryCreated'OneOf1 =
  GetOrderReturnsParametersQueryCreated'OneOf1
    { getOrderReturnsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
      getOrderReturnsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
      getOrderReturnsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
      getOrderReturnsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/order_returns.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
--
-- Date this return was created.
data GetOrderReturnsParametersQueryCreated'Variants
  = GetOrderReturnsParametersQueryCreated'GetOrderReturnsParametersQueryCreated'OneOf1 GetOrderReturnsParametersQueryCreated'OneOf1
  | GetOrderReturnsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetOrderReturnsParametersQueryCreated'Variants where
  toJSON (GetOrderReturnsParametersQueryCreated'GetOrderReturnsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetOrderReturnsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetOrderReturnsParametersQueryCreated'Variants where
  parseJSON val = case (GetOrderReturnsParametersQueryCreated'GetOrderReturnsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetOrderReturnsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'getOrderReturns'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetOrderReturnsResponseError' is used.
data GetOrderReturnsResponse
  = -- | Means either no matching case available or a parse error
    GetOrderReturnsResponseError GHC.Base.String
  | -- | Successful response.
    GetOrderReturnsResponse200 GetOrderReturnsResponseBody200
  | -- | Error response.
    GetOrderReturnsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/order_returns.GET.responses.200.content.application\/json.schema@ in the specification.
data GetOrderReturnsResponseBody200 = GetOrderReturnsResponseBody200
  { -- | data
    getOrderReturnsResponseBody200Data :: ([OrderReturn]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getOrderReturnsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/order_returns\'
    getOrderReturnsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetOrderReturnsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getOrderReturnsResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getOrderReturnsResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getOrderReturnsResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getOrderReturnsResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getOrderReturnsResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getOrderReturnsResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetOrderReturnsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetOrderReturnsResponseBody200" (\obj -> ((GHC.Base.pure GetOrderReturnsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetOrderReturnsResponseBody200' with all required fields.
mkGetOrderReturnsResponseBody200 ::
  -- | 'getOrderReturnsResponseBody200Data'
  [OrderReturn] ->
  -- | 'getOrderReturnsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getOrderReturnsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetOrderReturnsResponseBody200
mkGetOrderReturnsResponseBody200 getOrderReturnsResponseBody200Data getOrderReturnsResponseBody200HasMore getOrderReturnsResponseBody200Url =
  GetOrderReturnsResponseBody200
    { getOrderReturnsResponseBody200Data = getOrderReturnsResponseBody200Data,
      getOrderReturnsResponseBody200HasMore = getOrderReturnsResponseBody200HasMore,
      getOrderReturnsResponseBody200Url = getOrderReturnsResponseBody200Url
    }
