{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation getIssuingAuthorizations
module StripeAPI.Operations.GetIssuingAuthorizations where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
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

-- | > GET /v1/issuing/authorizations
--
-- \<p>Returns a list of Issuing \<code>Authorization\<\/code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.\<\/p>
getIssuingAuthorizations ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetIssuingAuthorizationsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetIssuingAuthorizationsResponse)
getIssuingAuthorizations parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetIssuingAuthorizationsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetIssuingAuthorizationsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
                                                            GetIssuingAuthorizationsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetIssuingAuthorizationsResponseDefault
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
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
        (Data.Text.pack "/v1/issuing/authorizations")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "card") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingAuthorizationsParametersQueryCard parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "cardholder") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingAuthorizationsParametersQueryCardholder parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingAuthorizationsParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingAuthorizationsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingAuthorizationsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingAuthorizationsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingAuthorizationsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingAuthorizationsParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/issuing\/authorizations.GET.parameters@ in the specification.
data GetIssuingAuthorizationsParameters
  = GetIssuingAuthorizationsParameters
      { -- | queryCard: Represents the parameter named \'card\'
        --
        -- Only return issuing transactions that belong to the given card.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getIssuingAuthorizationsParametersQueryCard :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | queryCardholder: Represents the parameter named \'cardholder\'
        --
        -- Only return authorizations belonging to the given cardholder.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getIssuingAuthorizationsParametersQueryCardholder :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | queryCreated: Represents the parameter named \'created\'
        --
        -- Only return authorizations that were created during the given date interval.
        getIssuingAuthorizationsParametersQueryCreated :: (GHC.Maybe.Maybe GetIssuingAuthorizationsParametersQueryCreated'Variants),
        -- | queryEnding_before: Represents the parameter named \'ending_before\'
        --
        -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getIssuingAuthorizationsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | queryExpand: Represents the parameter named \'expand\'
        --
        -- Specifies which fields in the response should be expanded.
        getIssuingAuthorizationsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | queryLimit: Represents the parameter named \'limit\'
        --
        -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        getIssuingAuthorizationsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | queryStarting_after: Represents the parameter named \'starting_after\'
        --
        -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getIssuingAuthorizationsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | queryStatus: Represents the parameter named \'status\'
        --
        -- Only return authorizations with the given status. One of \`pending\`, \`closed\`, or \`reversed\`.
        getIssuingAuthorizationsParametersQueryStatus :: (GHC.Maybe.Maybe GetIssuingAuthorizationsParametersQueryStatus')
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingAuthorizationsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryCard" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCard obj : "queryCardholder" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCardholder obj : "queryCreated" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCreated obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryExpand obj : "queryLimit" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryLimit obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryStartingAfter obj : "queryStatus" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryStatus obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryCard" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCard obj) GHC.Base.<> (("queryCardholder" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCardholder obj) GHC.Base.<> (("queryCreated" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCreated obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryExpand obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryLimit obj) GHC.Base.<> (("queryStarting_after" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryStartingAfter obj) GHC.Base.<> ("queryStatus" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryStatus obj))))))))

instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingAuthorizationsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingAuthorizationsParameters" (\obj -> (((((((GHC.Base.pure GetIssuingAuthorizationsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCardholder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStatus"))

-- | Create a new 'GetIssuingAuthorizationsParameters' with all required fields.
mkGetIssuingAuthorizationsParameters :: GetIssuingAuthorizationsParameters
mkGetIssuingAuthorizationsParameters =
  GetIssuingAuthorizationsParameters
    { getIssuingAuthorizationsParametersQueryCard = GHC.Maybe.Nothing,
      getIssuingAuthorizationsParametersQueryCardholder = GHC.Maybe.Nothing,
      getIssuingAuthorizationsParametersQueryCreated = GHC.Maybe.Nothing,
      getIssuingAuthorizationsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getIssuingAuthorizationsParametersQueryExpand = GHC.Maybe.Nothing,
      getIssuingAuthorizationsParametersQueryLimit = GHC.Maybe.Nothing,
      getIssuingAuthorizationsParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getIssuingAuthorizationsParametersQueryStatus = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/issuing\/authorizations.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetIssuingAuthorizationsParametersQueryCreated'OneOf2
  = GetIssuingAuthorizationsParametersQueryCreated'OneOf2
      { -- | gt
        getIssuingAuthorizationsParametersQueryCreated'OneOf2Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | gte
        getIssuingAuthorizationsParametersQueryCreated'OneOf2Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | lt
        getIssuingAuthorizationsParametersQueryCreated'OneOf2Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | lte
        getIssuingAuthorizationsParametersQueryCreated'OneOf2Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingAuthorizationsParametersQueryCreated'OneOf2 where
  toJSON obj = Data.Aeson.Types.Internal.object ("gt" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCreated'OneOf2Gt obj : "gte" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCreated'OneOf2Gte obj : "lt" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCreated'OneOf2Lt obj : "lte" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCreated'OneOf2Lte obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("gt" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCreated'OneOf2Gt obj) GHC.Base.<> (("gte" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCreated'OneOf2Gte obj) GHC.Base.<> (("lt" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCreated'OneOf2Lt obj) GHC.Base.<> ("lte" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsParametersQueryCreated'OneOf2Lte obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingAuthorizationsParametersQueryCreated'OneOf2 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingAuthorizationsParametersQueryCreated'OneOf2" (\obj -> (((GHC.Base.pure GetIssuingAuthorizationsParametersQueryCreated'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lte"))

-- | Create a new 'GetIssuingAuthorizationsParametersQueryCreated'OneOf2' with all required fields.
mkGetIssuingAuthorizationsParametersQueryCreated'OneOf2 :: GetIssuingAuthorizationsParametersQueryCreated'OneOf2
mkGetIssuingAuthorizationsParametersQueryCreated'OneOf2 =
  GetIssuingAuthorizationsParametersQueryCreated'OneOf2
    { getIssuingAuthorizationsParametersQueryCreated'OneOf2Gt = GHC.Maybe.Nothing,
      getIssuingAuthorizationsParametersQueryCreated'OneOf2Gte = GHC.Maybe.Nothing,
      getIssuingAuthorizationsParametersQueryCreated'OneOf2Lt = GHC.Maybe.Nothing,
      getIssuingAuthorizationsParametersQueryCreated'OneOf2Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/issuing\/authorizations.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
--
-- Only return authorizations that were created during the given date interval.
data GetIssuingAuthorizationsParametersQueryCreated'Variants
  = GetIssuingAuthorizationsParametersQueryCreated'Int GHC.Types.Int
  | GetIssuingAuthorizationsParametersQueryCreated'GetIssuingAuthorizationsParametersQueryCreated'OneOf2 GetIssuingAuthorizationsParametersQueryCreated'OneOf2
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingAuthorizationsParametersQueryCreated'Variants where
  toJSON (GetIssuingAuthorizationsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetIssuingAuthorizationsParametersQueryCreated'GetIssuingAuthorizationsParametersQueryCreated'OneOf2 a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingAuthorizationsParametersQueryCreated'Variants where
  parseJSON val = case (GetIssuingAuthorizationsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetIssuingAuthorizationsParametersQueryCreated'GetIssuingAuthorizationsParametersQueryCreated'OneOf2 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @paths.\/v1\/issuing\/authorizations.GET.parameters.properties.queryStatus@ in the specification.
--
-- Represents the parameter named \'status\'
--
-- Only return authorizations with the given status. One of \`pending\`, \`closed\`, or \`reversed\`.
data GetIssuingAuthorizationsParametersQueryStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GetIssuingAuthorizationsParametersQueryStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GetIssuingAuthorizationsParametersQueryStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"closed"@
    GetIssuingAuthorizationsParametersQueryStatus'EnumClosed
  | -- | Represents the JSON value @"pending"@
    GetIssuingAuthorizationsParametersQueryStatus'EnumPending
  | -- | Represents the JSON value @"reversed"@
    GetIssuingAuthorizationsParametersQueryStatus'EnumReversed
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingAuthorizationsParametersQueryStatus' where
  toJSON (GetIssuingAuthorizationsParametersQueryStatus'Other val) = val
  toJSON (GetIssuingAuthorizationsParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GetIssuingAuthorizationsParametersQueryStatus'EnumClosed) = "closed"
  toJSON (GetIssuingAuthorizationsParametersQueryStatus'EnumPending) = "pending"
  toJSON (GetIssuingAuthorizationsParametersQueryStatus'EnumReversed) = "reversed"

instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingAuthorizationsParametersQueryStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if  | val GHC.Classes.== "closed" -> GetIssuingAuthorizationsParametersQueryStatus'EnumClosed
            | val GHC.Classes.== "pending" -> GetIssuingAuthorizationsParametersQueryStatus'EnumPending
            | val GHC.Classes.== "reversed" -> GetIssuingAuthorizationsParametersQueryStatus'EnumReversed
            | GHC.Base.otherwise -> GetIssuingAuthorizationsParametersQueryStatus'Other val
      )

-- | Represents a response of the operation 'getIssuingAuthorizations'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIssuingAuthorizationsResponseError' is used.
data GetIssuingAuthorizationsResponse
  = -- | Means either no matching case available or a parse error
    GetIssuingAuthorizationsResponseError GHC.Base.String
  | -- | Successful response.
    GetIssuingAuthorizationsResponse200 GetIssuingAuthorizationsResponseBody200
  | -- | Error response.
    GetIssuingAuthorizationsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/issuing\/authorizations.GET.responses.200.content.application\/json.schema@ in the specification.
data GetIssuingAuthorizationsResponseBody200
  = GetIssuingAuthorizationsResponseBody200
      { -- | data
        getIssuingAuthorizationsResponseBody200Data :: ([Issuing'authorization]),
        -- | has_more: True if this list has another page of items after this one that can be fetched.
        getIssuingAuthorizationsResponseBody200HasMore :: GHC.Types.Bool,
        -- | url: The URL where this list can be accessed.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        -- * Must match pattern \'^\/v1\/issuing\/authorizations\'
        getIssuingAuthorizationsResponseBody200Url :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingAuthorizationsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getIssuingAuthorizationsResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingAuthorizationsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingAuthorizationsResponseBody200" (\obj -> ((GHC.Base.pure GetIssuingAuthorizationsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetIssuingAuthorizationsResponseBody200' with all required fields.
mkGetIssuingAuthorizationsResponseBody200 ::
  -- | 'getIssuingAuthorizationsResponseBody200Data'
  [Issuing'authorization] ->
  -- | 'getIssuingAuthorizationsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getIssuingAuthorizationsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetIssuingAuthorizationsResponseBody200
mkGetIssuingAuthorizationsResponseBody200 getIssuingAuthorizationsResponseBody200Data getIssuingAuthorizationsResponseBody200HasMore getIssuingAuthorizationsResponseBody200Url =
  GetIssuingAuthorizationsResponseBody200
    { getIssuingAuthorizationsResponseBody200Data = getIssuingAuthorizationsResponseBody200Data,
      getIssuingAuthorizationsResponseBody200HasMore = getIssuingAuthorizationsResponseBody200HasMore,
      getIssuingAuthorizationsResponseBody200Url = getIssuingAuthorizationsResponseBody200Url
    }
