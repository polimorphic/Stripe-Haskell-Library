{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation getRadarValueListItemsItem
module StripeAPI.Operations.GetRadarValueListItemsItem where

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

-- | > GET /v1/radar/value_list_items/{item}
--
-- \<p>Retrieves a \<code>ValueListItem\<\/code> object.\<\/p>
getRadarValueListItemsItem ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetRadarValueListItemsItemParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetRadarValueListItemsItemResponse)
getRadarValueListItemsItem parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetRadarValueListItemsItemResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetRadarValueListItemsItemResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
                                                            Radar'valueListItem
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetRadarValueListItemsItemResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/radar/value_list_items/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getRadarValueListItemsItemParametersPathItem parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarValueListItemsItemParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/radar\/value_list_items\/{item}.GET.parameters@ in the specification.
data GetRadarValueListItemsItemParameters
  = GetRadarValueListItemsItemParameters
      { -- | pathItem: Represents the parameter named \'item\'
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getRadarValueListItemsItemParametersPathItem :: Data.Text.Internal.Text,
        -- | queryExpand: Represents the parameter named \'expand\'
        --
        -- Specifies which fields in the response should be expanded.
        getRadarValueListItemsItemParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetRadarValueListItemsItemParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathItem" Data.Aeson.Types.ToJSON..= getRadarValueListItemsItemParametersPathItem obj : "queryExpand" Data.Aeson.Types.ToJSON..= getRadarValueListItemsItemParametersQueryExpand obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathItem" Data.Aeson.Types.ToJSON..= getRadarValueListItemsItemParametersPathItem obj) GHC.Base.<> ("queryExpand" Data.Aeson.Types.ToJSON..= getRadarValueListItemsItemParametersQueryExpand obj))

instance Data.Aeson.Types.FromJSON.FromJSON GetRadarValueListItemsItemParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRadarValueListItemsItemParameters" (\obj -> (GHC.Base.pure GetRadarValueListItemsItemParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathItem")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand"))

-- | Create a new 'GetRadarValueListItemsItemParameters' with all required fields.
mkGetRadarValueListItemsItemParameters ::
  -- | 'getRadarValueListItemsItemParametersPathItem'
  Data.Text.Internal.Text ->
  GetRadarValueListItemsItemParameters
mkGetRadarValueListItemsItemParameters getRadarValueListItemsItemParametersPathItem =
  GetRadarValueListItemsItemParameters
    { getRadarValueListItemsItemParametersPathItem = getRadarValueListItemsItemParametersPathItem,
      getRadarValueListItemsItemParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getRadarValueListItemsItem'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetRadarValueListItemsItemResponseError' is used.
data GetRadarValueListItemsItemResponse
  = -- | Means either no matching case available or a parse error
    GetRadarValueListItemsItemResponseError GHC.Base.String
  | -- | Successful response.
    GetRadarValueListItemsItemResponse200 Radar'valueListItem
  | -- | Error response.
    GetRadarValueListItemsItemResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
