-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postTopups
module StripeAPI.Operations.PostTopups where

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

-- | > POST /v1/topups
-- 
-- \<p>Top up the balance of an account\<\/p>
postTopups :: forall m . StripeAPI.Common.MonadHTTP m => PostTopupsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTopupsResponse) -- ^ Monadic computation which returns the result of the operation
postTopups body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTopupsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                 Topup)
                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTopupsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/topups") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/topups.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostTopupsRequestBody = PostTopupsRequestBody {
  -- | amount: A positive integer representing how much to transfer.
  postTopupsRequestBodyAmount :: GHC.Types.Int
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , postTopupsRequestBodyCurrency :: Data.Text.Internal.Text
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTopupsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | expand: Specifies which fields in the response should be expanded.
  , postTopupsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTopupsRequestBodyMetadata :: (GHC.Maybe.Maybe PostTopupsRequestBodyMetadata'Variants)
  -- | source: The ID of a source to transfer funds from. For most users, this should be left unspecified which will use the bank account that was set up in the dashboard for the specified currency. In test mode, this can be a test bank token (see [Testing Top-ups](https:\/\/stripe.com\/docs\/connect\/testing\#testing-top-ups)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTopupsRequestBodySource :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | statement_descriptor: Extra information about a top-up for the source\'s bank statement. Limited to 15 ASCII characters.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 15
  , postTopupsRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | transfer_group: A string that identifies this top-up as part of a group.
  , postTopupsRequestBodyTransferGroup :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTopupsRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postTopupsRequestBodyAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= postTopupsRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodySource obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodyStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_group" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodyTransferGroup obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postTopupsRequestBodyAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= postTopupsRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodySource obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodyStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_group" Data.Aeson.Types.ToJSON..=)) (postTopupsRequestBodyTransferGroup obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostTopupsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTopupsRequestBody" (\obj -> (((((((GHC.Base.pure PostTopupsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transfer_group"))
-- | Create a new 'PostTopupsRequestBody' with all required fields.
mkPostTopupsRequestBody :: GHC.Types.Int -- ^ 'postTopupsRequestBodyAmount'
  -> Data.Text.Internal.Text -- ^ 'postTopupsRequestBodyCurrency'
  -> PostTopupsRequestBody
mkPostTopupsRequestBody postTopupsRequestBodyAmount postTopupsRequestBodyCurrency = PostTopupsRequestBody{postTopupsRequestBodyAmount = postTopupsRequestBodyAmount,
                                                                                                          postTopupsRequestBodyCurrency = postTopupsRequestBodyCurrency,
                                                                                                          postTopupsRequestBodyDescription = GHC.Maybe.Nothing,
                                                                                                          postTopupsRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                          postTopupsRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                                                          postTopupsRequestBodySource = GHC.Maybe.Nothing,
                                                                                                          postTopupsRequestBodyStatementDescriptor = GHC.Maybe.Nothing,
                                                                                                          postTopupsRequestBodyTransferGroup = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/topups.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTopupsRequestBodyMetadata'Variants =
   PostTopupsRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostTopupsRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTopupsRequestBodyMetadata'Variants
    where toJSON (PostTopupsRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostTopupsRequestBodyMetadata'EmptyString) = ""
instance Data.Aeson.Types.FromJSON.FromJSON PostTopupsRequestBodyMetadata'Variants
    where parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostTopupsRequestBodyMetadata'EmptyString
                             | GHC.Base.otherwise -> case (PostTopupsRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                         Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                                                         Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postTopups'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTopupsResponseError' is used.
data PostTopupsResponse =
   PostTopupsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostTopupsResponse200 Topup -- ^ Successful response.
  | PostTopupsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
