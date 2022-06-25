-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema OnlineAcceptance
module StripeAPI.Types.OnlineAcceptance where

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

-- | Defines the object schema located at @components.schemas.online_acceptance@ in the specification.
-- 
-- 
data OnlineAcceptance = OnlineAcceptance {
  -- | ip_address: The IP address from which the Mandate was accepted by the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  onlineAcceptanceIpAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | user_agent: The user agent of the browser from which the Mandate was accepted by the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , onlineAcceptanceUserAgent :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OnlineAcceptance
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip_address" Data.Aeson.Types.ToJSON..=)) (onlineAcceptanceIpAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_agent" Data.Aeson.Types.ToJSON..=)) (onlineAcceptanceUserAgent obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip_address" Data.Aeson.Types.ToJSON..=)) (onlineAcceptanceIpAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("user_agent" Data.Aeson.Types.ToJSON..=)) (onlineAcceptanceUserAgent obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON OnlineAcceptance
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "OnlineAcceptance" (\obj -> (GHC.Base.pure OnlineAcceptance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "user_agent"))
-- | Create a new 'OnlineAcceptance' with all required fields.
mkOnlineAcceptance :: OnlineAcceptance
mkOnlineAcceptance = OnlineAcceptance{onlineAcceptanceIpAddress = GHC.Maybe.Nothing,
                                      onlineAcceptanceUserAgent = GHC.Maybe.Nothing}
