{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getAccountsAccountPersons
module StripeAPI.Operations.GetAccountsAccountPersons where

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

-- | > GET /v1/accounts/{account}/persons
-- 
-- \<p>Returns a list of people associated with the account’s legal entity. The people are returned sorted by creation date, with the most recent people appearing first.\<\/p>
getAccountsAccountPersons :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                       -- ^ account | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                       -- ^ ending_before: A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                       -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                              -- ^ limit: A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                       -- ^ relationship: Filters on the list of people returned based on the person\'s relationship to the account\'s company.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                       -- ^ starting_after: A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list. | Constraints: Maximum length of 5000
  -> GetAccountsAccountPersonsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetAccountsAccountPersonsResponse)) -- ^ Monad containing the result of the operation
getAccountsAccountPersons config
                          account
                          endingBefore
                          expand
                          limit
                          relationship
                          startingAfter
                          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetAccountsAccountPersonsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountPersonsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             GetAccountsAccountPersonsResponseBody200)
                                                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountPersonsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "relationship",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> relationship) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/accounts/{account}/persons
-- 
-- The same as 'getAccountsAccountPersons' but returns the raw 'Data.ByteString.Char8.ByteString'
getAccountsAccountPersonsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                StripeAPI.Common.Configuration s ->
                                GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GetAccountsAccountPersonsRequestBody ->
                                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountsAccountPersonsRaw config
                             account
                             endingBefore
                             expand
                             limit
                             relationship
                             startingAfter
                             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "relationship",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> relationship) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/accounts/{account}/persons
-- 
-- Monadic version of 'getAccountsAccountPersons' (use with 'StripeAPI.Common.runWithConfiguration')
getAccountsAccountPersonsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GetAccountsAccountPersonsRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response GetAccountsAccountPersonsResponse))
getAccountsAccountPersonsM account
                           endingBefore
                           expand
                           limit
                           relationship
                           startingAfter
                           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetAccountsAccountPersonsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountPersonsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                              GetAccountsAccountPersonsResponseBody200)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetAccountsAccountPersonsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "relationship",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> relationship) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/accounts/{account}/persons
-- 
-- Monadic version of 'getAccountsAccountPersonsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getAccountsAccountPersonsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                               StripeAPI.Common.SecurityScheme s) =>
                                 GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GHC.Maybe.Maybe GHC.Base.String ->
                                 GetAccountsAccountPersonsRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getAccountsAccountPersonsRawM account
                              endingBefore
                              expand
                              limit
                              relationship
                              startingAfter
                              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/persons"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "relationship",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> relationship) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getAccountsAccountPersonsRequestBody
-- 
-- 
data GetAccountsAccountPersonsRequestBody = GetAccountsAccountPersonsRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountPersonsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountPersonsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountPersonsRequestBody" (\obj -> GHC.Base.pure GetAccountsAccountPersonsRequestBody)
-- | Represents a response of the operation 'getAccountsAccountPersons'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetAccountsAccountPersonsResponseError' is used.
data GetAccountsAccountPersonsResponse =                                           
   GetAccountsAccountPersonsResponseError GHC.Base.String                          -- ^ Means either no matching case available or a parse error
  | GetAccountsAccountPersonsResponse200 GetAccountsAccountPersonsResponseBody200  -- ^ Successful response.
  | GetAccountsAccountPersonsResponseDefault Error                                 -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetAccountsAccountPersonsResponseBody200
-- 
-- 
data GetAccountsAccountPersonsResponseBody200 = GetAccountsAccountPersonsResponseBody200 {
  -- | data
  getAccountsAccountPersonsResponseBody200Data :: ([] Person)
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getAccountsAccountPersonsResponseBody200HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , getAccountsAccountPersonsResponseBody200Object :: GetAccountsAccountPersonsResponseBody200Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getAccountsAccountPersonsResponseBody200Url :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountPersonsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getAccountsAccountPersonsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getAccountsAccountPersonsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getAccountsAccountPersonsResponseBody200Object obj) : (Data.Aeson..=) "url" (getAccountsAccountPersonsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getAccountsAccountPersonsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getAccountsAccountPersonsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getAccountsAccountPersonsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getAccountsAccountPersonsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetAccountsAccountPersonsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetAccountsAccountPersonsResponseBody200" (\obj -> (((GHC.Base.pure GetAccountsAccountPersonsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema GetAccountsAccountPersonsResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetAccountsAccountPersonsResponseBody200Object'
    = GetAccountsAccountPersonsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetAccountsAccountPersonsResponseBody200Object'EnumTyped GHC.Base.String
    | GetAccountsAccountPersonsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetAccountsAccountPersonsResponseBody200Object'
    where toJSON (GetAccountsAccountPersonsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountsAccountPersonsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetAccountsAccountPersonsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetAccountsAccountPersonsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetAccountsAccountPersonsResponseBody200Object'EnumStringList
                                          else GetAccountsAccountPersonsResponseBody200Object'EnumOther val)
