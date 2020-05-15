{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetFiles where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
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
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
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

-- | No summary provided
--
-- GET /v1/files
getFiles :: forall m s . (StripeAPI.Common.MonadHTTP m,
                          StripeAPI.Common.SecurityScheme s) =>
            StripeAPI.Common.Configuration s ->
            GHC.Maybe.Maybe GHC.Base.String ->
            GHC.Maybe.Maybe GHC.Base.String ->
            GHC.Maybe.Maybe GHC.Base.String ->
            GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
            GHC.Maybe.Maybe GHC.Base.String ->
            GHC.Maybe.Maybe GHC.Base.String ->
            GetFilesRequestBody ->
            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                  (Network.HTTP.Client.Types.Response GetFilesResponse))
getFiles config
         created
         endingBefore
         expand
         limit
         purpose
         startingAfter
         body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetFilesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetFilesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                          GetFilesResponseBody200)
                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetFilesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/files") ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "purpose",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> purpose) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getFilesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                             StripeAPI.Common.SecurityScheme s) =>
               StripeAPI.Common.Configuration s ->
               GHC.Maybe.Maybe GHC.Base.String ->
               GHC.Maybe.Maybe GHC.Base.String ->
               GHC.Maybe.Maybe GHC.Base.String ->
               GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
               GHC.Maybe.Maybe GHC.Base.String ->
               GHC.Maybe.Maybe GHC.Base.String ->
               GetFilesRequestBody ->
               m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getFilesRaw config
            created
            endingBefore
            expand
            limit
            purpose
            startingAfter
            body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/files") ((Data.Text.pack "created",
                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "purpose",
                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> purpose) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getFilesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                           StripeAPI.Common.SecurityScheme s) =>
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GetFilesRequestBody ->
             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                m
                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                    (Network.HTTP.Client.Types.Response GetFilesResponse))
getFilesM created
          endingBefore
          expand
          limit
          purpose
          startingAfter
          body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetFilesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetFilesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                           GetFilesResponseBody200)
                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetFilesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                             Error)
                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/files") ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "purpose",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> purpose) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getFilesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GetFilesRequestBody ->
                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                   m
                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getFilesRawM created
             endingBefore
             expand
             limit
             purpose
             startingAfter
             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/files") ((Data.Text.pack "created",
                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "purpose",
                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> purpose) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : [])))))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetFilesRequestBody
    = GetFilesRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetFilesRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetFilesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFilesRequestBody" (\obj -> GHC.Base.pure GetFilesRequestBody)

data GetFilesResponse
    = GetFilesResponseError GHC.Base.String
    | GetFilesResponse200 GetFilesResponseBody200
    | GetFilesResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetFilesResponseBody200
    = GetFilesResponseBody200 {getFilesResponseBody200Data :: ([] File),
                               getFilesResponseBody200HasMore :: GHC.Types.Bool,
                               getFilesResponseBody200Object :: GetFilesResponseBody200Object',
                               getFilesResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetFilesResponseBody200Object'
    = GetFilesResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetFilesResponseBody200Object'EnumTyped GHC.Base.String
    | GetFilesResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetFilesResponseBody200Object'
    where toJSON (GetFilesResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetFilesResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetFilesResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetFilesResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetFilesResponseBody200Object'EnumStringList
                                          else GetFilesResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetFilesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getFilesResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getFilesResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getFilesResponseBody200Object obj) : (Data.Aeson..=) "url" (getFilesResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getFilesResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getFilesResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getFilesResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getFilesResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetFilesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFilesResponseBody200" (\obj -> (((GHC.Base.pure GetFilesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))