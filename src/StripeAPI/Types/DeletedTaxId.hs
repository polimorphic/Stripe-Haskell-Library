{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedTaxId
module StripeAPI.Types.DeletedTaxId where

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

-- | Defines the data type for the schema deleted_tax_id
-- 
-- 
data DeletedTaxId = DeletedTaxId {
  -- | deleted: Always true for a deleted object
  deletedTaxIdDeleted :: DeletedTaxIdDeleted'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedTaxIdId :: Data.Text.Internal.Text
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedTaxIdObject :: DeletedTaxIdObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedTaxId
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedTaxIdDeleted obj) : (Data.Aeson..=) "id" (deletedTaxIdId obj) : (Data.Aeson..=) "object" (deletedTaxIdObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedTaxIdDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedTaxIdId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedTaxIdObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedTaxId
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedTaxId" (\obj -> ((GHC.Base.pure DeletedTaxId GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_tax_idDeleted\'
-- 
-- Always true for a deleted object
data DeletedTaxIdDeleted'
    = DeletedTaxIdDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedTaxIdDeleted'EnumTyped GHC.Types.Bool
    | DeletedTaxIdDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedTaxIdDeleted'
    where toJSON (DeletedTaxIdDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTaxIdDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTaxIdDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedTaxIdDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedTaxIdDeleted'EnumBoolTrue
                                          else DeletedTaxIdDeleted'EnumOther val)
-- | Defines the enum schema deleted_tax_idObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedTaxIdObject'
    = DeletedTaxIdObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedTaxIdObject'EnumTyped Data.Text.Internal.Text
    | DeletedTaxIdObject'EnumStringTaxId
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedTaxIdObject'
    where toJSON (DeletedTaxIdObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTaxIdObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedTaxIdObject'EnumStringTaxId) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_id"
instance Data.Aeson.FromJSON DeletedTaxIdObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "tax_id")
                                          then DeletedTaxIdObject'EnumStringTaxId
                                          else DeletedTaxIdObject'EnumOther val)