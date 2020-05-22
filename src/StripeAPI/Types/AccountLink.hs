{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema AccountLink
module StripeAPI.Types.AccountLink where

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

-- | Defines the data type for the schema account_link
-- 
-- Account Links are the means by which a Connect platform grants a connected account permission to access
-- Stripe-hosted applications, such as Connect Onboarding.
-- 
-- Related guide: [Connect Onboarding](https:\/\/stripe.com\/docs\/connect\/connect-onboarding).
data AccountLink = AccountLink {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  accountLinkCreated :: GHC.Integer.Type.Integer
  -- | expires_at: The timestamp at which this account link will expire.
  , accountLinkExpiresAt :: GHC.Integer.Type.Integer
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , accountLinkObject :: AccountLinkObject'
  -- | url: The URL for the account link.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountLinkUrl :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountLink
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (accountLinkCreated obj) : (Data.Aeson..=) "expires_at" (accountLinkExpiresAt obj) : (Data.Aeson..=) "object" (accountLinkObject obj) : (Data.Aeson..=) "url" (accountLinkUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (accountLinkCreated obj) GHC.Base.<> ((Data.Aeson..=) "expires_at" (accountLinkExpiresAt obj) GHC.Base.<> ((Data.Aeson..=) "object" (accountLinkObject obj) GHC.Base.<> (Data.Aeson..=) "url" (accountLinkUrl obj))))
instance Data.Aeson.Types.FromJSON.FromJSON AccountLink
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountLink" (\obj -> (((GHC.Base.pure AccountLink GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema account_linkObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data AccountLinkObject'
    = AccountLinkObject'EnumOther Data.Aeson.Types.Internal.Value
    | AccountLinkObject'EnumTyped GHC.Base.String
    | AccountLinkObject'EnumStringAccountLink
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON AccountLinkObject'
    where toJSON (AccountLinkObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountLinkObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (AccountLinkObject'EnumStringAccountLink) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account_link"
instance Data.Aeson.FromJSON AccountLinkObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account_link")
                                          then AccountLinkObject'EnumStringAccountLink
                                          else AccountLinkObject'EnumOther val)