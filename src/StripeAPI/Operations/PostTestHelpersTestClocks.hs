-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postTestHelpersTestClocks
module StripeAPI.Operations.PostTestHelpersTestClocks where

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

-- | > POST /v1/test_helpers/test_clocks
-- 
-- \<p>Creates a new test clock that can be attached to new customers and quotes.\<\/p>
postTestHelpersTestClocks :: forall m . StripeAPI.Common.MonadHTTP m => PostTestHelpersTestClocksRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTestHelpersTestClocksResponse) -- ^ Monadic computation which returns the result of the operation
postTestHelpersTestClocks body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTestHelpersTestClocksResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTestHelpersTestClocksResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              TestHelpers'testClock)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTestHelpersTestClocksResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/test_helpers/test_clocks") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/test_helpers\/test_clocks.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostTestHelpersTestClocksRequestBody = PostTestHelpersTestClocksRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postTestHelpersTestClocksRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | frozen_time: The initial frozen time for this test clock.
  , postTestHelpersTestClocksRequestBodyFrozenTime :: GHC.Types.Int
  -- | name: The name for this test clock.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 300
  , postTestHelpersTestClocksRequestBodyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTestHelpersTestClocksRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTestClocksRequestBodyExpand obj) : ["frozen_time" Data.Aeson.Types.ToJSON..= postTestHelpersTestClocksRequestBodyFrozenTime obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTestClocksRequestBodyName obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTestClocksRequestBodyExpand obj) : ["frozen_time" Data.Aeson.Types.ToJSON..= postTestHelpersTestClocksRequestBodyFrozenTime obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTestClocksRequestBodyName obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostTestHelpersTestClocksRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTestHelpersTestClocksRequestBody" (\obj -> ((GHC.Base.pure PostTestHelpersTestClocksRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "frozen_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name"))
-- | Create a new 'PostTestHelpersTestClocksRequestBody' with all required fields.
mkPostTestHelpersTestClocksRequestBody :: GHC.Types.Int -- ^ 'postTestHelpersTestClocksRequestBodyFrozenTime'
  -> PostTestHelpersTestClocksRequestBody
mkPostTestHelpersTestClocksRequestBody postTestHelpersTestClocksRequestBodyFrozenTime = PostTestHelpersTestClocksRequestBody{postTestHelpersTestClocksRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                                             postTestHelpersTestClocksRequestBodyFrozenTime = postTestHelpersTestClocksRequestBodyFrozenTime,
                                                                                                                             postTestHelpersTestClocksRequestBodyName = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postTestHelpersTestClocks'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTestHelpersTestClocksResponseError' is used.
data PostTestHelpersTestClocksResponse =
   PostTestHelpersTestClocksResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostTestHelpersTestClocksResponse200 TestHelpers'testClock -- ^ Successful response.
  | PostTestHelpersTestClocksResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)