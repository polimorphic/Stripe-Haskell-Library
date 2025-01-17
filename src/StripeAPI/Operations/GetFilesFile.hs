{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getFilesFile
module StripeAPI.Operations.GetFilesFile where

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

-- | > GET /v1/files/{file}
--
-- \<p>Retrieves the details of an existing file object. Supply the unique file ID from a file, and Stripe will return the corresponding file object. To access file contents, see the \<a href=\"\/docs\/file-upload\#download-file-contents\">File Upload Guide\<\/a>.\<\/p>
getFilesFile ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetFilesFileParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetFilesFileResponse)
getFilesFile parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetFilesFileResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetFilesFileResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            File
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetFilesFileResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/files/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getFilesFileParametersPathFile parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFilesFileParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/files\/{file}.GET.parameters@ in the specification.
data GetFilesFileParameters = GetFilesFileParameters
  { -- | pathFile: Represents the parameter named \'file\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getFilesFileParametersPathFile :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getFilesFileParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetFilesFileParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathFile" Data.Aeson.Types.ToJSON..= getFilesFileParametersPathFile obj : "queryExpand" Data.Aeson.Types.ToJSON..= getFilesFileParametersQueryExpand obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathFile" Data.Aeson.Types.ToJSON..= getFilesFileParametersPathFile obj) GHC.Base.<> ("queryExpand" Data.Aeson.Types.ToJSON..= getFilesFileParametersQueryExpand obj))

instance Data.Aeson.Types.FromJSON.FromJSON GetFilesFileParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFilesFileParameters" (\obj -> (GHC.Base.pure GetFilesFileParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathFile")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand"))

-- | Create a new 'GetFilesFileParameters' with all required fields.
mkGetFilesFileParameters ::
  -- | 'getFilesFileParametersPathFile'
  Data.Text.Internal.Text ->
  GetFilesFileParameters
mkGetFilesFileParameters getFilesFileParametersPathFile =
  GetFilesFileParameters
    { getFilesFileParametersPathFile = getFilesFileParametersPathFile,
      getFilesFileParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getFilesFile'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetFilesFileResponseError' is used.
data GetFilesFileResponse
  = -- | Means either no matching case available or a parse error
    GetFilesFileResponseError GHC.Base.String
  | -- | Successful response.
    GetFilesFileResponse200 File
  | -- | Error response.
    GetFilesFileResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
