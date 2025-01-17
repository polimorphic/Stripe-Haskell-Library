{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getFileLinks
module StripeAPI.Operations.GetFileLinks where

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

-- | > GET /v1/file_links
--
-- \<p>Returns a list of file links.\<\/p>
getFileLinks ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetFileLinksParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetFileLinksResponse)
getFileLinks parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetFileLinksResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetFileLinksResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetFileLinksResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetFileLinksResponseDefault
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
        (Data.Text.pack "/v1/file_links")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFileLinksParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFileLinksParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFileLinksParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expired") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFileLinksParametersQueryExpired parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "file") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFileLinksParametersQueryFile parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFileLinksParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFileLinksParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/file_links.GET.parameters@ in the specification.
data GetFileLinksParameters = GetFileLinksParameters
  { -- | queryCreated: Represents the parameter named \'created\'
    getFileLinksParametersQueryCreated :: (GHC.Maybe.Maybe GetFileLinksParametersQueryCreated'Variants),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    getFileLinksParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getFileLinksParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryExpired: Represents the parameter named \'expired\'
    --
    -- Filter links by their expiration status. By default, all links are returned.
    getFileLinksParametersQueryExpired :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | queryFile: Represents the parameter named \'file\'
    --
    -- Only return links for the given file.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getFileLinksParametersQueryFile :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getFileLinksParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    getFileLinksParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetFileLinksParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryCreated" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryCreated obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryExpand obj : "queryExpired" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryExpired obj : "queryFile" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryFile obj : "queryLimit" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryLimit obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryStartingAfter obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryCreated" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryCreated obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryExpand obj) GHC.Base.<> (("queryExpired" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryExpired obj) GHC.Base.<> (("queryFile" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryFile obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryLimit obj) GHC.Base.<> ("queryStarting_after" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryStartingAfter obj)))))))

instance Data.Aeson.Types.FromJSON.FromJSON GetFileLinksParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFileLinksParameters" (\obj -> ((((((GHC.Base.pure GetFileLinksParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpired")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryFile")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after"))

-- | Create a new 'GetFileLinksParameters' with all required fields.
mkGetFileLinksParameters :: GetFileLinksParameters
mkGetFileLinksParameters =
  GetFileLinksParameters
    { getFileLinksParametersQueryCreated = GHC.Maybe.Nothing,
      getFileLinksParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getFileLinksParametersQueryExpand = GHC.Maybe.Nothing,
      getFileLinksParametersQueryExpired = GHC.Maybe.Nothing,
      getFileLinksParametersQueryFile = GHC.Maybe.Nothing,
      getFileLinksParametersQueryLimit = GHC.Maybe.Nothing,
      getFileLinksParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/file_links.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetFileLinksParametersQueryCreated'OneOf1 = GetFileLinksParametersQueryCreated'OneOf1
  { -- | gt
    getFileLinksParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getFileLinksParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getFileLinksParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getFileLinksParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetFileLinksParametersQueryCreated'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object ("gt" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryCreated'OneOf1Gt obj : "gte" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryCreated'OneOf1Gte obj : "lt" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryCreated'OneOf1Lt obj : "lte" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryCreated'OneOf1Lte obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("gt" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryCreated'OneOf1Gt obj) GHC.Base.<> (("gte" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryCreated'OneOf1Gte obj) GHC.Base.<> (("lt" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryCreated'OneOf1Lt obj) GHC.Base.<> ("lte" Data.Aeson.Types.ToJSON..= getFileLinksParametersQueryCreated'OneOf1Lte obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetFileLinksParametersQueryCreated'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFileLinksParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetFileLinksParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lte"))

-- | Create a new 'GetFileLinksParametersQueryCreated'OneOf1' with all required fields.
mkGetFileLinksParametersQueryCreated'OneOf1 :: GetFileLinksParametersQueryCreated'OneOf1
mkGetFileLinksParametersQueryCreated'OneOf1 =
  GetFileLinksParametersQueryCreated'OneOf1
    { getFileLinksParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
      getFileLinksParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
      getFileLinksParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
      getFileLinksParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/file_links.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
data GetFileLinksParametersQueryCreated'Variants
  = GetFileLinksParametersQueryCreated'GetFileLinksParametersQueryCreated'OneOf1 GetFileLinksParametersQueryCreated'OneOf1
  | GetFileLinksParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetFileLinksParametersQueryCreated'Variants where
  toJSON (GetFileLinksParametersQueryCreated'GetFileLinksParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetFileLinksParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetFileLinksParametersQueryCreated'Variants where
  parseJSON val = case (GetFileLinksParametersQueryCreated'GetFileLinksParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetFileLinksParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'getFileLinks'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetFileLinksResponseError' is used.
data GetFileLinksResponse
  = -- | Means either no matching case available or a parse error
    GetFileLinksResponseError GHC.Base.String
  | -- | Successful response.
    GetFileLinksResponse200 GetFileLinksResponseBody200
  | -- | Error response.
    GetFileLinksResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/file_links.GET.responses.200.content.application\/json.schema@ in the specification.
data GetFileLinksResponseBody200 = GetFileLinksResponseBody200
  { -- | data
    getFileLinksResponseBody200Data :: ([FileLink]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getFileLinksResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/file_links\'
    getFileLinksResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetFileLinksResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getFileLinksResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getFileLinksResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getFileLinksResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getFileLinksResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getFileLinksResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getFileLinksResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetFileLinksResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFileLinksResponseBody200" (\obj -> ((GHC.Base.pure GetFileLinksResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetFileLinksResponseBody200' with all required fields.
mkGetFileLinksResponseBody200 ::
  -- | 'getFileLinksResponseBody200Data'
  [FileLink] ->
  -- | 'getFileLinksResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getFileLinksResponseBody200Url'
  Data.Text.Internal.Text ->
  GetFileLinksResponseBody200
mkGetFileLinksResponseBody200 getFileLinksResponseBody200Data getFileLinksResponseBody200HasMore getFileLinksResponseBody200Url =
  GetFileLinksResponseBody200
    { getFileLinksResponseBody200Data = getFileLinksResponseBody200Data,
      getFileLinksResponseBody200HasMore = getFileLinksResponseBody200HasMore,
      getFileLinksResponseBody200Url = getFileLinksResponseBody200Url
    }
