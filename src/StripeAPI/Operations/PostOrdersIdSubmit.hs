-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postOrdersIdSubmit
module StripeAPI.Operations.PostOrdersIdSubmit where

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

-- | > POST /v1/orders/{id}/submit
-- 
-- \<p>Submitting an Order transitions the status to \<code>processing\<\/code> and creates a PaymentIntent object so the order can be paid. If the Order has an \<code>amount_total\<\/code> of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the \<a href=\"\#reopen_order\">reopen\<\/a> method is called.\<\/p>
postOrdersIdSubmit :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ id | Constraints: Maximum length of 5000
  -> PostOrdersIdSubmitRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostOrdersIdSubmitResponse) -- ^ Monadic computation which returns the result of the operation
postOrdersIdSubmit id
                   body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostOrdersIdSubmitResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdSubmitResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Order)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostOrdersIdSubmitResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/orders/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ "/submit"))) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/orders\/{id}\/submit.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostOrdersIdSubmitRequestBody = PostOrdersIdSubmitRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postOrdersIdSubmitRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | expected_total: \`expected_total\` should always be set to the order\'s \`amount_total\` field. If they don\'t match, submitting the order will fail. This helps detect race conditions where something else concurrently modifies the order.
  , postOrdersIdSubmitRequestBodyExpectedTotal :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostOrdersIdSubmitRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postOrdersIdSubmitRequestBodyExpand obj) : ["expected_total" Data.Aeson.Types.ToJSON..= postOrdersIdSubmitRequestBodyExpectedTotal obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postOrdersIdSubmitRequestBodyExpand obj) : ["expected_total" Data.Aeson.Types.ToJSON..= postOrdersIdSubmitRequestBodyExpectedTotal obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostOrdersIdSubmitRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostOrdersIdSubmitRequestBody" (\obj -> (GHC.Base.pure PostOrdersIdSubmitRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expected_total"))
-- | Create a new 'PostOrdersIdSubmitRequestBody' with all required fields.
mkPostOrdersIdSubmitRequestBody :: GHC.Types.Int -- ^ 'postOrdersIdSubmitRequestBodyExpectedTotal'
  -> PostOrdersIdSubmitRequestBody
mkPostOrdersIdSubmitRequestBody postOrdersIdSubmitRequestBodyExpectedTotal = PostOrdersIdSubmitRequestBody{postOrdersIdSubmitRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                           postOrdersIdSubmitRequestBodyExpectedTotal = postOrdersIdSubmitRequestBodyExpectedTotal}
-- | Represents a response of the operation 'postOrdersIdSubmit'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostOrdersIdSubmitResponseError' is used.
data PostOrdersIdSubmitResponse =
   PostOrdersIdSubmitResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostOrdersIdSubmitResponse200 Order -- ^ Successful response.
  | PostOrdersIdSubmitResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)