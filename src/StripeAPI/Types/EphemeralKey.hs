-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema EphemeralKey
module StripeAPI.Types.EphemeralKey where

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

-- | Defines the object schema located at @components.schemas.ephemeral_key@ in the specification.
-- 
-- 
data EphemeralKey = EphemeralKey {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  ephemeralKeyCreated :: GHC.Types.Int
  -- | expires: Time at which the key will expire. Measured in seconds since the Unix epoch.
  , ephemeralKeyExpires :: GHC.Types.Int
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , ephemeralKeyId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , ephemeralKeyLivemode :: GHC.Types.Bool
  -- | secret: The key\'s secret. You can use this value to make authorized requests to the Stripe API.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , ephemeralKeySecret :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON EphemeralKey
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= ephemeralKeyCreated obj] : ["expires" Data.Aeson.Types.ToJSON..= ephemeralKeyExpires obj] : ["id" Data.Aeson.Types.ToJSON..= ephemeralKeyId obj] : ["livemode" Data.Aeson.Types.ToJSON..= ephemeralKeyLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("secret" Data.Aeson.Types.ToJSON..=)) (ephemeralKeySecret obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "ephemeral_key"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= ephemeralKeyCreated obj] : ["expires" Data.Aeson.Types.ToJSON..= ephemeralKeyExpires obj] : ["id" Data.Aeson.Types.ToJSON..= ephemeralKeyId obj] : ["livemode" Data.Aeson.Types.ToJSON..= ephemeralKeyLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("secret" Data.Aeson.Types.ToJSON..=)) (ephemeralKeySecret obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "ephemeral_key"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON EphemeralKey
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "EphemeralKey" (\obj -> ((((GHC.Base.pure EphemeralKey GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "secret"))
-- | Create a new 'EphemeralKey' with all required fields.
mkEphemeralKey :: GHC.Types.Int -- ^ 'ephemeralKeyCreated'
  -> GHC.Types.Int -- ^ 'ephemeralKeyExpires'
  -> Data.Text.Internal.Text -- ^ 'ephemeralKeyId'
  -> GHC.Types.Bool -- ^ 'ephemeralKeyLivemode'
  -> EphemeralKey
mkEphemeralKey ephemeralKeyCreated ephemeralKeyExpires ephemeralKeyId ephemeralKeyLivemode = EphemeralKey{ephemeralKeyCreated = ephemeralKeyCreated,
                                                                                                          ephemeralKeyExpires = ephemeralKeyExpires,
                                                                                                          ephemeralKeyId = ephemeralKeyId,
                                                                                                          ephemeralKeyLivemode = ephemeralKeyLivemode,
                                                                                                          ephemeralKeySecret = GHC.Maybe.Nothing}
