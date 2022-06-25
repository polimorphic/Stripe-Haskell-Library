-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TestHelpers_TestClock
module StripeAPI.Types.TestHelpers_TestClock where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias

-- | Defines the object schema located at @components.schemas.test_helpers.test_clock@ in the specification.
-- 
-- A test clock enables deterministic control over objects in testmode. With a test clock, you can create
-- objects at a frozen time in the past or future, and advance to a specific future time to observe webhooks and state changes. After the clock advances,
-- you can either validate the current state of your scenario (and test your assumptions), change the current state of your scenario (and test more complex scenarios), or keep advancing forward in time.
data TestHelpers'testClock = TestHelpers'testClock {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  testHelpers'testClockCreated :: GHC.Types.Int
  -- | deletes_after: Time at which this clock is scheduled to auto delete.
  , testHelpers'testClockDeletesAfter :: GHC.Types.Int
  -- | frozen_time: Time at which all objects belonging to this clock are frozen.
  , testHelpers'testClockFrozenTime :: GHC.Types.Int
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , testHelpers'testClockId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , testHelpers'testClockLivemode :: GHC.Types.Bool
  -- | name: The custom name supplied at creation.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , testHelpers'testClockName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | status: The status of the Test Clock.
  , testHelpers'testClockStatus :: TestHelpers'testClockStatus'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TestHelpers'testClock
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= testHelpers'testClockCreated obj] : ["deletes_after" Data.Aeson.Types.ToJSON..= testHelpers'testClockDeletesAfter obj] : ["frozen_time" Data.Aeson.Types.ToJSON..= testHelpers'testClockFrozenTime obj] : ["id" Data.Aeson.Types.ToJSON..= testHelpers'testClockId obj] : ["livemode" Data.Aeson.Types.ToJSON..= testHelpers'testClockLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (testHelpers'testClockName obj) : ["status" Data.Aeson.Types.ToJSON..= testHelpers'testClockStatus obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "test_helpers.test_clock"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= testHelpers'testClockCreated obj] : ["deletes_after" Data.Aeson.Types.ToJSON..= testHelpers'testClockDeletesAfter obj] : ["frozen_time" Data.Aeson.Types.ToJSON..= testHelpers'testClockFrozenTime obj] : ["id" Data.Aeson.Types.ToJSON..= testHelpers'testClockId obj] : ["livemode" Data.Aeson.Types.ToJSON..= testHelpers'testClockLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (testHelpers'testClockName obj) : ["status" Data.Aeson.Types.ToJSON..= testHelpers'testClockStatus obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "test_helpers.test_clock"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON TestHelpers'testClock
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TestHelpers'testClock" (\obj -> ((((((GHC.Base.pure TestHelpers'testClock GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deletes_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "frozen_time")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'TestHelpers'testClock' with all required fields.
mkTestHelpers'testClock :: GHC.Types.Int -- ^ 'testHelpers'testClockCreated'
  -> GHC.Types.Int -- ^ 'testHelpers'testClockDeletesAfter'
  -> GHC.Types.Int -- ^ 'testHelpers'testClockFrozenTime'
  -> Data.Text.Internal.Text -- ^ 'testHelpers'testClockId'
  -> GHC.Types.Bool -- ^ 'testHelpers'testClockLivemode'
  -> TestHelpers'testClockStatus' -- ^ 'testHelpers'testClockStatus'
  -> TestHelpers'testClock
mkTestHelpers'testClock testHelpers'testClockCreated testHelpers'testClockDeletesAfter testHelpers'testClockFrozenTime testHelpers'testClockId testHelpers'testClockLivemode testHelpers'testClockStatus = TestHelpers'testClock{testHelpers'testClockCreated = testHelpers'testClockCreated,
                                                                                                                                                                                                                                 testHelpers'testClockDeletesAfter = testHelpers'testClockDeletesAfter,
                                                                                                                                                                                                                                 testHelpers'testClockFrozenTime = testHelpers'testClockFrozenTime,
                                                                                                                                                                                                                                 testHelpers'testClockId = testHelpers'testClockId,
                                                                                                                                                                                                                                 testHelpers'testClockLivemode = testHelpers'testClockLivemode,
                                                                                                                                                                                                                                 testHelpers'testClockName = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                 testHelpers'testClockStatus = testHelpers'testClockStatus}
-- | Defines the enum schema located at @components.schemas.test_helpers.test_clock.properties.status@ in the specification.
-- 
-- The status of the Test Clock.
data TestHelpers'testClockStatus' =
   TestHelpers'testClockStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TestHelpers'testClockStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TestHelpers'testClockStatus'EnumAdvancing -- ^ Represents the JSON value @"advancing"@
  | TestHelpers'testClockStatus'EnumInternalFailure -- ^ Represents the JSON value @"internal_failure"@
  | TestHelpers'testClockStatus'EnumReady -- ^ Represents the JSON value @"ready"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TestHelpers'testClockStatus'
    where toJSON (TestHelpers'testClockStatus'Other val) = val
          toJSON (TestHelpers'testClockStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (TestHelpers'testClockStatus'EnumAdvancing) = "advancing"
          toJSON (TestHelpers'testClockStatus'EnumInternalFailure) = "internal_failure"
          toJSON (TestHelpers'testClockStatus'EnumReady) = "ready"
instance Data.Aeson.Types.FromJSON.FromJSON TestHelpers'testClockStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "advancing" -> TestHelpers'testClockStatus'EnumAdvancing
                                            | val GHC.Classes.== "internal_failure" -> TestHelpers'testClockStatus'EnumInternalFailure
                                            | val GHC.Classes.== "ready" -> TestHelpers'testClockStatus'EnumReady
                                            | GHC.Base.otherwise -> TestHelpers'testClockStatus'Other val)