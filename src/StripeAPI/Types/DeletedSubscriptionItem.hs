{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedSubscriptionItem
module StripeAPI.Types.DeletedSubscriptionItem where

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

-- | Defines the data type for the schema deleted_subscription_item
-- 
-- 
data DeletedSubscriptionItem = DeletedSubscriptionItem {
  -- | deleted: Always true for a deleted object
  deletedSubscriptionItemDeleted :: DeletedSubscriptionItemDeleted'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedSubscriptionItemId :: Data.Text.Internal.Text
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedSubscriptionItemObject :: DeletedSubscriptionItemObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedSubscriptionItem
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedSubscriptionItemDeleted obj) : (Data.Aeson..=) "id" (deletedSubscriptionItemId obj) : (Data.Aeson..=) "object" (deletedSubscriptionItemObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedSubscriptionItemDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedSubscriptionItemId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedSubscriptionItemObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedSubscriptionItem
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedSubscriptionItem" (\obj -> ((GHC.Base.pure DeletedSubscriptionItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_subscription_itemDeleted\'
-- 
-- Always true for a deleted object
data DeletedSubscriptionItemDeleted'
    = DeletedSubscriptionItemDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedSubscriptionItemDeleted'EnumTyped GHC.Types.Bool
    | DeletedSubscriptionItemDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedSubscriptionItemDeleted'
    where toJSON (DeletedSubscriptionItemDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedSubscriptionItemDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedSubscriptionItemDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedSubscriptionItemDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedSubscriptionItemDeleted'EnumBoolTrue
                                          else DeletedSubscriptionItemDeleted'EnumOther val)
-- | Defines the enum schema deleted_subscription_itemObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedSubscriptionItemObject'
    = DeletedSubscriptionItemObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedSubscriptionItemObject'EnumTyped Data.Text.Internal.Text
    | DeletedSubscriptionItemObject'EnumStringSubscriptionItem
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedSubscriptionItemObject'
    where toJSON (DeletedSubscriptionItemObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedSubscriptionItemObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedSubscriptionItemObject'EnumStringSubscriptionItem) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "subscription_item"
instance Data.Aeson.FromJSON DeletedSubscriptionItemObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "subscription_item")
                                          then DeletedSubscriptionItemObject'EnumStringSubscriptionItem
                                          else DeletedSubscriptionItemObject'EnumOther val)