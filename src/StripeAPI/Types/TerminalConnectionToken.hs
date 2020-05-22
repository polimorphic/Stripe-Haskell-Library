{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema TerminalConnectionToken
module StripeAPI.Types.TerminalConnectionToken where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified StripeAPI.Common

-- | Defines the data type for the schema terminal.connection_token
-- 
-- A Connection Token is used by the Stripe Terminal SDK to connect to a reader.
-- 
-- Related guide: [Fleet Management](https:\/\/stripe.com\/docs\/terminal\/readers\/fleet-management\#create).
data Terminal'connectionToken = Terminal'connectionToken {
  -- | location: The id of the location that this connection token is scoped to.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  terminal'connectionTokenLocation :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , terminal'connectionTokenObject :: Terminal'connectionTokenObject'
  -- | secret: Your application should pass this token to the Stripe Terminal SDK.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'connectionTokenSecret :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Terminal'connectionToken
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "location" (terminal'connectionTokenLocation obj) : (Data.Aeson..=) "object" (terminal'connectionTokenObject obj) : (Data.Aeson..=) "secret" (terminal'connectionTokenSecret obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "location" (terminal'connectionTokenLocation obj) GHC.Base.<> ((Data.Aeson..=) "object" (terminal'connectionTokenObject obj) GHC.Base.<> (Data.Aeson..=) "secret" (terminal'connectionTokenSecret obj)))
instance Data.Aeson.Types.FromJSON.FromJSON Terminal'connectionToken
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Terminal'connectionToken" (\obj -> ((GHC.Base.pure Terminal'connectionToken GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "secret"))
-- | Defines the enum schema terminal.connection_tokenObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data Terminal'connectionTokenObject'
    = Terminal'connectionTokenObject'EnumOther Data.Aeson.Types.Internal.Value
    | Terminal'connectionTokenObject'EnumTyped GHC.Base.String
    | Terminal'connectionTokenObject'EnumStringTerminal'connectionToken
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Terminal'connectionTokenObject'
    where toJSON (Terminal'connectionTokenObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Terminal'connectionTokenObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Terminal'connectionTokenObject'EnumStringTerminal'connectionToken) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.connection_token"
instance Data.Aeson.FromJSON Terminal'connectionTokenObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.connection_token")
                                          then Terminal'connectionTokenObject'EnumStringTerminal'connectionToken
                                          else Terminal'connectionTokenObject'EnumOther val)