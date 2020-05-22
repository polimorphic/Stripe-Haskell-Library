{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postTerminalLocations
module StripeAPI.Operations.PostTerminalLocations where

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

-- | > POST /v1/terminal/locations
-- 
-- \<p>Creates a new \<code>Location\<\/code> object.\<\/p>
postTerminalLocations :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> PostTerminalLocationsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostTerminalLocationsResponse)) -- ^ Monad containing the result of the operation
postTerminalLocations config
                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTerminalLocationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalLocationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 Terminal'location)
                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalLocationsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/locations") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/terminal/locations
-- 
-- The same as 'postTerminalLocations' but returns the raw 'Data.ByteString.Char8.ByteString'
postTerminalLocationsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            PostTerminalLocationsRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTerminalLocationsRaw config
                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/locations") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/terminal/locations
-- 
-- Monadic version of 'postTerminalLocations' (use with 'StripeAPI.Common.runWithConfiguration')
postTerminalLocationsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          PostTerminalLocationsRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response PostTerminalLocationsResponse))
postTerminalLocationsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostTerminalLocationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalLocationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                  Terminal'location)
                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalLocationsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/locations") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/terminal/locations
-- 
-- Monadic version of 'postTerminalLocationsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postTerminalLocationsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             PostTerminalLocationsRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postTerminalLocationsRawM body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack "/v1/terminal/locations") [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postTerminalLocationsRequestBody
-- 
-- 
data PostTerminalLocationsRequestBody = PostTerminalLocationsRequestBody {
  -- | address: The full address of the location.
  postTerminalLocationsRequestBodyAddress :: PostTerminalLocationsRequestBodyAddress'
  -- | display_name: A name for the location.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyDisplayName :: GHC.Base.String
  -- | expand: Specifies which fields in the response should be expanded.
  , postTerminalLocationsRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTerminalLocationsRequestBodyMetadata :: (GHC.Maybe.Maybe PostTerminalLocationsRequestBodyMetadata')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTerminalLocationsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postTerminalLocationsRequestBodyAddress obj) : (Data.Aeson..=) "display_name" (postTerminalLocationsRequestBodyDisplayName obj) : (Data.Aeson..=) "expand" (postTerminalLocationsRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postTerminalLocationsRequestBodyMetadata obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postTerminalLocationsRequestBodyAddress obj) GHC.Base.<> ((Data.Aeson..=) "display_name" (postTerminalLocationsRequestBodyDisplayName obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postTerminalLocationsRequestBodyExpand obj) GHC.Base.<> (Data.Aeson..=) "metadata" (postTerminalLocationsRequestBodyMetadata obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalLocationsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalLocationsRequestBody" (\obj -> (((GHC.Base.pure PostTerminalLocationsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata"))
-- | Defines the data type for the schema postTerminalLocationsRequestBodyAddress\'
-- 
-- The full address of the location.
data PostTerminalLocationsRequestBodyAddress' = PostTerminalLocationsRequestBodyAddress' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postTerminalLocationsRequestBodyAddress'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyAddress'Country :: GHC.Base.String
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTerminalLocationsRequestBodyAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postTerminalLocationsRequestBodyAddress'City obj) : (Data.Aeson..=) "country" (postTerminalLocationsRequestBodyAddress'Country obj) : (Data.Aeson..=) "line1" (postTerminalLocationsRequestBodyAddress'Line1 obj) : (Data.Aeson..=) "line2" (postTerminalLocationsRequestBodyAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postTerminalLocationsRequestBodyAddress'PostalCode obj) : (Data.Aeson..=) "state" (postTerminalLocationsRequestBodyAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postTerminalLocationsRequestBodyAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postTerminalLocationsRequestBodyAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postTerminalLocationsRequestBodyAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postTerminalLocationsRequestBodyAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postTerminalLocationsRequestBodyAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postTerminalLocationsRequestBodyAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalLocationsRequestBodyAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalLocationsRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostTerminalLocationsRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema postTerminalLocationsRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTerminalLocationsRequestBodyMetadata' = PostTerminalLocationsRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostTerminalLocationsRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalLocationsRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalLocationsRequestBodyMetadata'" (\obj -> GHC.Base.pure PostTerminalLocationsRequestBodyMetadata')
-- | Represents a response of the operation 'postTerminalLocations'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTerminalLocationsResponseError' is used.
data PostTerminalLocationsResponse =                    
   PostTerminalLocationsResponseError GHC.Base.String   -- ^ Means either no matching case available or a parse error
  | PostTerminalLocationsResponse200 Terminal'location  -- ^ Successful response.
  | PostTerminalLocationsResponseDefault Error          -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
