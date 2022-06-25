-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postTopupsTopup
module StripeAPI.Operations.PostTopupsTopup where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
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
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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

-- | > POST /v1/topups/{topup}
-- 
-- \<p>Updates the metadata of a top-up. Other top-up details are not editable by design.\<\/p>
postTopupsTopup :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ topup | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostTopupsTopupRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTopupsTopupResponse) -- ^ Monadic computation which returns the result of the operation
postTopupsTopup topup
                body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTopupsTopupResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsTopupResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                Topup)
                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsTopupResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/topups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel topup)) GHC.Base.++ ""))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/topups\/{topup}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostTopupsTopupRequestBody = PostTopupsTopupRequestBody {
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postTopupsTopupRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postTopupsTopupRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTopupsTopupRequestBodyMetadata :: (GHC.Maybe.Maybe PostTopupsTopupRequestBodyMetadata'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTopupsTopupRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postTopupsTopupRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTopupsTopupRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTopupsTopupRequestBodyMetadata obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postTopupsTopupRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTopupsTopupRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTopupsTopupRequestBodyMetadata obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostTopupsTopupRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTopupsTopupRequestBody" (\obj -> ((GHC.Base.pure PostTopupsTopupRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))
-- | Create a new 'PostTopupsTopupRequestBody' with all required fields.
mkPostTopupsTopupRequestBody :: PostTopupsTopupRequestBody
mkPostTopupsTopupRequestBody = PostTopupsTopupRequestBody{postTopupsTopupRequestBodyDescription = GHC.Maybe.Nothing,
                                                          postTopupsTopupRequestBodyExpand = GHC.Maybe.Nothing,
                                                          postTopupsTopupRequestBodyMetadata = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/topups\/{topup}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTopupsTopupRequestBodyMetadata'Variants =
   PostTopupsTopupRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostTopupsTopupRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTopupsTopupRequestBodyMetadata'Variants
    where toJSON (PostTopupsTopupRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostTopupsTopupRequestBodyMetadata'EmptyString) = ""
instance Data.Aeson.Types.FromJSON.FromJSON PostTopupsTopupRequestBodyMetadata'Variants
    where parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostTopupsTopupRequestBodyMetadata'EmptyString
                             | GHC.Base.otherwise -> case (PostTopupsTopupRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                         Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                                                         Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postTopupsTopup'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTopupsTopupResponseError' is used.
data PostTopupsTopupResponse =
   PostTopupsTopupResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostTopupsTopupResponse200 Topup -- ^ Successful response.
  | PostTopupsTopupResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
