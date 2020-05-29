{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedCoupon
module StripeAPI.Types.DeletedCoupon where

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

-- | Defines the data type for the schema deleted_coupon
-- 
-- 
data DeletedCoupon = DeletedCoupon {
  -- | deleted: Always true for a deleted object
  deletedCouponDeleted :: DeletedCouponDeleted'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedCouponId :: Data.Text.Internal.Text
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedCouponObject :: DeletedCouponObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedCoupon
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedCouponDeleted obj) : (Data.Aeson..=) "id" (deletedCouponId obj) : (Data.Aeson..=) "object" (deletedCouponObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedCouponDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedCouponId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedCouponObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedCoupon
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedCoupon" (\obj -> ((GHC.Base.pure DeletedCoupon GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_couponDeleted\'
-- 
-- Always true for a deleted object
data DeletedCouponDeleted'
    = DeletedCouponDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedCouponDeleted'EnumTyped GHC.Types.Bool
    | DeletedCouponDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedCouponDeleted'
    where toJSON (DeletedCouponDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCouponDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCouponDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedCouponDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedCouponDeleted'EnumBoolTrue
                                          else DeletedCouponDeleted'EnumOther val)
-- | Defines the enum schema deleted_couponObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedCouponObject'
    = DeletedCouponObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedCouponObject'EnumTyped Data.Text.Internal.Text
    | DeletedCouponObject'EnumStringCoupon
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedCouponObject'
    where toJSON (DeletedCouponObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCouponObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedCouponObject'EnumStringCoupon) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "coupon"
instance Data.Aeson.FromJSON DeletedCouponObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "coupon")
                                          then DeletedCouponObject'EnumStringCoupon
                                          else DeletedCouponObject'EnumOther val)