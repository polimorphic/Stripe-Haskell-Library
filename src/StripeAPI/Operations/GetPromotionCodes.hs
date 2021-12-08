{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getPromotionCodes
module StripeAPI.Operations.GetPromotionCodes where

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

-- | > GET /v1/promotion_codes
--
-- \<p>Returns a list of your promotion codes.\<\/p>
getPromotionCodes ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetPromotionCodesParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetPromotionCodesResponse)
getPromotionCodes parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetPromotionCodesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetPromotionCodesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetPromotionCodesResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetPromotionCodesResponseDefault
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
        (Data.Text.pack "/v1/promotion_codes")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "active") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPromotionCodesParametersQueryActive parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "code") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPromotionCodesParametersQueryCode parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "coupon") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPromotionCodesParametersQueryCoupon parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPromotionCodesParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "customer") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPromotionCodesParametersQueryCustomer parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPromotionCodesParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPromotionCodesParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPromotionCodesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPromotionCodesParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/promotion_codes.GET.parameters@ in the specification.
data GetPromotionCodesParameters = GetPromotionCodesParameters
  { -- | queryActive: Represents the parameter named \'active\'
    --
    -- Filter promotion codes by whether they are active.
    getPromotionCodesParametersQueryActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryCode: Represents the parameter named \'code\'
    --
    -- Only return promotion codes that have this case-insensitive code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPromotionCodesParametersQueryCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryCoupon: Represents the parameter named \'coupon\'
    --
    -- Only return promotion codes for this coupon.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPromotionCodesParametersQueryCoupon :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryCreated: Represents the parameter named \'created\'
    --
    -- A filter on the list, based on the object \`created\` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
    getPromotionCodesParametersQueryCreated :: (GHC.Maybe.Maybe GetPromotionCodesParametersQueryCreated'Variants),
    -- | queryCustomer: Represents the parameter named \'customer\'
    --
    -- Only return promotion codes that are restricted to this customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPromotionCodesParametersQueryCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPromotionCodesParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getPromotionCodesParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getPromotionCodesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getPromotionCodesParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPromotionCodesParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryActive" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryActive obj : "queryCode" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCode obj : "queryCoupon" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCoupon obj : "queryCreated" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCreated obj : "queryCustomer" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCustomer obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryExpand obj : "queryLimit" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryLimit obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryStartingAfter obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryActive" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryActive obj) GHC.Base.<> (("queryCode" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCode obj) GHC.Base.<> (("queryCoupon" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCoupon obj) GHC.Base.<> (("queryCreated" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCreated obj) GHC.Base.<> (("queryCustomer" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCustomer obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryExpand obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryLimit obj) GHC.Base.<> ("queryStarting_after" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryStartingAfter obj)))))))))

instance Data.Aeson.Types.FromJSON.FromJSON GetPromotionCodesParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPromotionCodesParameters" (\obj -> ((((((((GHC.Base.pure GetPromotionCodesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryActive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCoupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after"))

-- | Create a new 'GetPromotionCodesParameters' with all required fields.
mkGetPromotionCodesParameters :: GetPromotionCodesParameters
mkGetPromotionCodesParameters =
  GetPromotionCodesParameters
    { getPromotionCodesParametersQueryActive = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryCode = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryCoupon = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryCreated = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryCustomer = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryExpand = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryLimit = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/promotion_codes.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetPromotionCodesParametersQueryCreated'OneOf1 = GetPromotionCodesParametersQueryCreated'OneOf1
  { -- | gt
    getPromotionCodesParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getPromotionCodesParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getPromotionCodesParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getPromotionCodesParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPromotionCodesParametersQueryCreated'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object ("gt" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCreated'OneOf1Gt obj : "gte" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCreated'OneOf1Gte obj : "lt" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCreated'OneOf1Lt obj : "lte" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCreated'OneOf1Lte obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("gt" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCreated'OneOf1Gt obj) GHC.Base.<> (("gte" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCreated'OneOf1Gte obj) GHC.Base.<> (("lt" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCreated'OneOf1Lt obj) GHC.Base.<> ("lte" Data.Aeson.Types.ToJSON..= getPromotionCodesParametersQueryCreated'OneOf1Lte obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetPromotionCodesParametersQueryCreated'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPromotionCodesParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetPromotionCodesParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lte"))

-- | Create a new 'GetPromotionCodesParametersQueryCreated'OneOf1' with all required fields.
mkGetPromotionCodesParametersQueryCreated'OneOf1 :: GetPromotionCodesParametersQueryCreated'OneOf1
mkGetPromotionCodesParametersQueryCreated'OneOf1 =
  GetPromotionCodesParametersQueryCreated'OneOf1
    { getPromotionCodesParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
      getPromotionCodesParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/promotion_codes.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
--
-- A filter on the list, based on the object \`created\` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
data GetPromotionCodesParametersQueryCreated'Variants
  = GetPromotionCodesParametersQueryCreated'GetPromotionCodesParametersQueryCreated'OneOf1 GetPromotionCodesParametersQueryCreated'OneOf1
  | GetPromotionCodesParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetPromotionCodesParametersQueryCreated'Variants where
  toJSON (GetPromotionCodesParametersQueryCreated'GetPromotionCodesParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetPromotionCodesParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetPromotionCodesParametersQueryCreated'Variants where
  parseJSON val = case (GetPromotionCodesParametersQueryCreated'GetPromotionCodesParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetPromotionCodesParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'getPromotionCodes'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetPromotionCodesResponseError' is used.
data GetPromotionCodesResponse
  = -- | Means either no matching case available or a parse error
    GetPromotionCodesResponseError GHC.Base.String
  | -- | Successful response.
    GetPromotionCodesResponse200 GetPromotionCodesResponseBody200
  | -- | Error response.
    GetPromotionCodesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/promotion_codes.GET.responses.200.content.application\/json.schema@ in the specification.
data GetPromotionCodesResponseBody200 = GetPromotionCodesResponseBody200
  { -- | data
    getPromotionCodesResponseBody200Data :: ([PromotionCode]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getPromotionCodesResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/promotion_codes\'
    getPromotionCodesResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetPromotionCodesResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getPromotionCodesResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getPromotionCodesResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getPromotionCodesResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getPromotionCodesResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getPromotionCodesResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getPromotionCodesResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetPromotionCodesResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPromotionCodesResponseBody200" (\obj -> ((GHC.Base.pure GetPromotionCodesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetPromotionCodesResponseBody200' with all required fields.
mkGetPromotionCodesResponseBody200 ::
  -- | 'getPromotionCodesResponseBody200Data'
  [PromotionCode] ->
  -- | 'getPromotionCodesResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getPromotionCodesResponseBody200Url'
  Data.Text.Internal.Text ->
  GetPromotionCodesResponseBody200
mkGetPromotionCodesResponseBody200 getPromotionCodesResponseBody200Data getPromotionCodesResponseBody200HasMore getPromotionCodesResponseBody200Url =
  GetPromotionCodesResponseBody200
    { getPromotionCodesResponseBody200Data = getPromotionCodesResponseBody200Data,
      getPromotionCodesResponseBody200HasMore = getPromotionCodesResponseBody200HasMore,
      getPromotionCodesResponseBody200Url = getPromotionCodesResponseBody200Url
    }