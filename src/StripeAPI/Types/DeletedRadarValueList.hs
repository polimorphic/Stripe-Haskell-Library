{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedRadarValueList
module StripeAPI.Types.DeletedRadarValueList where

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

-- | Defines the data type for the schema deleted_radar.value_list
-- 
-- 
data DeletedRadar'valueList = DeletedRadar'valueList {
  -- | deleted: Always true for a deleted object
  deletedRadar'valueListDeleted :: DeletedRadar'valueListDeleted'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedRadar'valueListId :: GHC.Base.String
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedRadar'valueListObject :: DeletedRadar'valueListObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedRadar'valueList
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedRadar'valueListDeleted obj) : (Data.Aeson..=) "id" (deletedRadar'valueListId obj) : (Data.Aeson..=) "object" (deletedRadar'valueListObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedRadar'valueListDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedRadar'valueListId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedRadar'valueListObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedRadar'valueList
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedRadar'valueList" (\obj -> ((GHC.Base.pure DeletedRadar'valueList GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_radar.value_listDeleted\'
-- 
-- Always true for a deleted object
data DeletedRadar'valueListDeleted'
    = DeletedRadar'valueListDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedRadar'valueListDeleted'EnumTyped GHC.Types.Bool
    | DeletedRadar'valueListDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedRadar'valueListDeleted'
    where toJSON (DeletedRadar'valueListDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRadar'valueListDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRadar'valueListDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedRadar'valueListDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedRadar'valueListDeleted'EnumBoolTrue
                                          else DeletedRadar'valueListDeleted'EnumOther val)
-- | Defines the enum schema deleted_radar.value_listObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedRadar'valueListObject'
    = DeletedRadar'valueListObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedRadar'valueListObject'EnumTyped GHC.Base.String
    | DeletedRadar'valueListObject'EnumStringRadar'valueList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedRadar'valueListObject'
    where toJSON (DeletedRadar'valueListObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRadar'valueListObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedRadar'valueListObject'EnumStringRadar'valueList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "radar.value_list"
instance Data.Aeson.FromJSON DeletedRadar'valueListObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "radar.value_list")
                                          then DeletedRadar'valueListObject'EnumStringRadar'valueList
                                          else DeletedRadar'valueListObject'EnumOther val)