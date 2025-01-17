{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getSigmaScheduledQueryRuns
module StripeAPI.Operations.GetSigmaScheduledQueryRuns where

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

-- | > GET /v1/sigma/scheduled_query_runs
--
-- \<p>Returns a list of scheduled query runs.\<\/p>
getSigmaScheduledQueryRuns ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetSigmaScheduledQueryRunsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetSigmaScheduledQueryRunsResponse)
getSigmaScheduledQueryRuns parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetSigmaScheduledQueryRunsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSigmaScheduledQueryRunsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetSigmaScheduledQueryRunsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetSigmaScheduledQueryRunsResponseDefault
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
        (Data.Text.pack "/v1/sigma/scheduled_query_runs")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSigmaScheduledQueryRunsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSigmaScheduledQueryRunsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSigmaScheduledQueryRunsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getSigmaScheduledQueryRunsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/sigma\/scheduled_query_runs.GET.parameters@ in the specification.
data GetSigmaScheduledQueryRunsParameters = GetSigmaScheduledQueryRunsParameters
  { -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getSigmaScheduledQueryRunsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getSigmaScheduledQueryRunsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getSigmaScheduledQueryRunsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getSigmaScheduledQueryRunsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSigmaScheduledQueryRunsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryEnding_before" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsParametersQueryExpand obj : "queryLimit" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsParametersQueryLimit obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsParametersQueryStartingAfter obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryEnding_before" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsParametersQueryExpand obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsParametersQueryLimit obj) GHC.Base.<> ("queryStarting_after" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsParametersQueryStartingAfter obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetSigmaScheduledQueryRunsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSigmaScheduledQueryRunsParameters" (\obj -> (((GHC.Base.pure GetSigmaScheduledQueryRunsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after"))

-- | Create a new 'GetSigmaScheduledQueryRunsParameters' with all required fields.
mkGetSigmaScheduledQueryRunsParameters :: GetSigmaScheduledQueryRunsParameters
mkGetSigmaScheduledQueryRunsParameters =
  GetSigmaScheduledQueryRunsParameters
    { getSigmaScheduledQueryRunsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getSigmaScheduledQueryRunsParametersQueryExpand = GHC.Maybe.Nothing,
      getSigmaScheduledQueryRunsParametersQueryLimit = GHC.Maybe.Nothing,
      getSigmaScheduledQueryRunsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getSigmaScheduledQueryRuns'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSigmaScheduledQueryRunsResponseError' is used.
data GetSigmaScheduledQueryRunsResponse
  = -- | Means either no matching case available or a parse error
    GetSigmaScheduledQueryRunsResponseError GHC.Base.String
  | -- | Successful response.
    GetSigmaScheduledQueryRunsResponse200 GetSigmaScheduledQueryRunsResponseBody200
  | -- | Error response.
    GetSigmaScheduledQueryRunsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/sigma\/scheduled_query_runs.GET.responses.200.content.application\/json.schema@ in the specification.
data GetSigmaScheduledQueryRunsResponseBody200 = GetSigmaScheduledQueryRunsResponseBody200
  { -- | data
    getSigmaScheduledQueryRunsResponseBody200Data :: ([ScheduledQueryRun]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getSigmaScheduledQueryRunsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/sigma\/scheduled_query_runs\'
    getSigmaScheduledQueryRunsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetSigmaScheduledQueryRunsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getSigmaScheduledQueryRunsResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetSigmaScheduledQueryRunsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSigmaScheduledQueryRunsResponseBody200" (\obj -> ((GHC.Base.pure GetSigmaScheduledQueryRunsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetSigmaScheduledQueryRunsResponseBody200' with all required fields.
mkGetSigmaScheduledQueryRunsResponseBody200 ::
  -- | 'getSigmaScheduledQueryRunsResponseBody200Data'
  [ScheduledQueryRun] ->
  -- | 'getSigmaScheduledQueryRunsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getSigmaScheduledQueryRunsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetSigmaScheduledQueryRunsResponseBody200
mkGetSigmaScheduledQueryRunsResponseBody200 getSigmaScheduledQueryRunsResponseBody200Data getSigmaScheduledQueryRunsResponseBody200HasMore getSigmaScheduledQueryRunsResponseBody200Url =
  GetSigmaScheduledQueryRunsResponseBody200
    { getSigmaScheduledQueryRunsResponseBody200Data = getSigmaScheduledQueryRunsResponseBody200Data,
      getSigmaScheduledQueryRunsResponseBody200HasMore = getSigmaScheduledQueryRunsResponseBody200HasMore,
      getSigmaScheduledQueryRunsResponseBody200Url = getSigmaScheduledQueryRunsResponseBody200Url
    }
