{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation getCreditNotesId
module StripeAPI.Operations.GetCreditNotesId where

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

-- | > GET /v1/credit_notes/{id}
--
-- \<p>Retrieves the credit note object with the given identifier.\<\/p>
getCreditNotesId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetCreditNotesIdParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetCreditNotesIdResponse)
getCreditNotesId parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetCreditNotesIdResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCreditNotesIdResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
                                                            CreditNote
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCreditNotesIdResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/credit_notes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getCreditNotesIdParametersPathId parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCreditNotesIdParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/credit_notes\/{id}.GET.parameters@ in the specification.
data GetCreditNotesIdParameters
  = GetCreditNotesIdParameters
      { -- | pathId: Represents the parameter named \'id\'
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getCreditNotesIdParametersPathId :: Data.Text.Internal.Text,
        -- | queryExpand: Represents the parameter named \'expand\'
        --
        -- Specifies which fields in the response should be expanded.
        getCreditNotesIdParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCreditNotesIdParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathId" Data.Aeson.Types.ToJSON..= getCreditNotesIdParametersPathId obj : "queryExpand" Data.Aeson.Types.ToJSON..= getCreditNotesIdParametersQueryExpand obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathId" Data.Aeson.Types.ToJSON..= getCreditNotesIdParametersPathId obj) GHC.Base.<> ("queryExpand" Data.Aeson.Types.ToJSON..= getCreditNotesIdParametersQueryExpand obj))

instance Data.Aeson.Types.FromJSON.FromJSON GetCreditNotesIdParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCreditNotesIdParameters" (\obj -> (GHC.Base.pure GetCreditNotesIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand"))

-- | Create a new 'GetCreditNotesIdParameters' with all required fields.
mkGetCreditNotesIdParameters ::
  -- | 'getCreditNotesIdParametersPathId'
  Data.Text.Internal.Text ->
  GetCreditNotesIdParameters
mkGetCreditNotesIdParameters getCreditNotesIdParametersPathId =
  GetCreditNotesIdParameters
    { getCreditNotesIdParametersPathId = getCreditNotesIdParametersPathId,
      getCreditNotesIdParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getCreditNotesId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCreditNotesIdResponseError' is used.
data GetCreditNotesIdResponse
  = -- | Means either no matching case available or a parse error
    GetCreditNotesIdResponseError GHC.Base.String
  | -- | Successful response.
    GetCreditNotesIdResponse200 CreditNote
  | -- | Error response.
    GetCreditNotesIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
