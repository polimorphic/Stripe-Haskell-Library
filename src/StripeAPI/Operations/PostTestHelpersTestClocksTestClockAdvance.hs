-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postTestHelpersTestClocksTestClockAdvance
module StripeAPI.Operations.PostTestHelpersTestClocksTestClockAdvance where

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

-- | > POST /v1/test_helpers/test_clocks/{test_clock}/advance
-- 
-- \<p>Starts advancing a test clock to a specified time in the future. Advancement is done when status changes to \<code>Ready\<\/code>.\<\/p>
postTestHelpersTestClocksTestClockAdvance :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ test_clock | Constraints: Maximum length of 5000
  -> PostTestHelpersTestClocksTestClockAdvanceRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTestHelpersTestClocksTestClockAdvanceResponse) -- ^ Monadic computation which returns the result of the operation
postTestHelpersTestClocksTestClockAdvance testClock
                                          body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTestHelpersTestClocksTestClockAdvanceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTestHelpersTestClocksTestClockAdvanceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              TestHelpers'testClock)
                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTestHelpersTestClocksTestClockAdvanceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/test_helpers/test_clocks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel testClock)) GHC.Base.++ "/advance"))) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/test_helpers\/test_clocks\/{test_clock}\/advance.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostTestHelpersTestClocksTestClockAdvanceRequestBody = PostTestHelpersTestClocksTestClockAdvanceRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postTestHelpersTestClocksTestClockAdvanceRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | frozen_time: The time to advance the test clock. Must be after the test clock\'s current frozen time. Cannot be more than two intervals in the future from the shortest subscription in this test clock. If there are no subscriptions in this test clock, it cannot be more than two years in the future.
  , postTestHelpersTestClocksTestClockAdvanceRequestBodyFrozenTime :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTestHelpersTestClocksTestClockAdvanceRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTestClocksTestClockAdvanceRequestBodyExpand obj) : ["frozen_time" Data.Aeson.Types.ToJSON..= postTestHelpersTestClocksTestClockAdvanceRequestBodyFrozenTime obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTestClocksTestClockAdvanceRequestBodyExpand obj) : ["frozen_time" Data.Aeson.Types.ToJSON..= postTestHelpersTestClocksTestClockAdvanceRequestBodyFrozenTime obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostTestHelpersTestClocksTestClockAdvanceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTestHelpersTestClocksTestClockAdvanceRequestBody" (\obj -> (GHC.Base.pure PostTestHelpersTestClocksTestClockAdvanceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "frozen_time"))
-- | Create a new 'PostTestHelpersTestClocksTestClockAdvanceRequestBody' with all required fields.
mkPostTestHelpersTestClocksTestClockAdvanceRequestBody :: GHC.Types.Int -- ^ 'postTestHelpersTestClocksTestClockAdvanceRequestBodyFrozenTime'
  -> PostTestHelpersTestClocksTestClockAdvanceRequestBody
mkPostTestHelpersTestClocksTestClockAdvanceRequestBody postTestHelpersTestClocksTestClockAdvanceRequestBodyFrozenTime = PostTestHelpersTestClocksTestClockAdvanceRequestBody{postTestHelpersTestClocksTestClockAdvanceRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                                                                                             postTestHelpersTestClocksTestClockAdvanceRequestBodyFrozenTime = postTestHelpersTestClocksTestClockAdvanceRequestBodyFrozenTime}
-- | Represents a response of the operation 'postTestHelpersTestClocksTestClockAdvance'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTestHelpersTestClocksTestClockAdvanceResponseError' is used.
data PostTestHelpersTestClocksTestClockAdvanceResponse =
   PostTestHelpersTestClocksTestClockAdvanceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostTestHelpersTestClocksTestClockAdvanceResponse200 TestHelpers'testClock -- ^ Successful response.
  | PostTestHelpersTestClocksTestClockAdvanceResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)