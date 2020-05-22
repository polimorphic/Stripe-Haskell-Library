{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedBankAccount
module StripeAPI.Types.DeletedBankAccount where

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

-- | Defines the data type for the schema deleted_bank_account
-- 
-- 
data DeletedBankAccount = DeletedBankAccount {
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  deletedBankAccountCurrency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | deleted: Always true for a deleted object
  , deletedBankAccountDeleted :: DeletedBankAccountDeleted'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedBankAccountId :: GHC.Base.String
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedBankAccountObject :: DeletedBankAccountObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedBankAccount
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "currency" (deletedBankAccountCurrency obj) : (Data.Aeson..=) "deleted" (deletedBankAccountDeleted obj) : (Data.Aeson..=) "id" (deletedBankAccountId obj) : (Data.Aeson..=) "object" (deletedBankAccountObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "currency" (deletedBankAccountCurrency obj) GHC.Base.<> ((Data.Aeson..=) "deleted" (deletedBankAccountDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedBankAccountId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedBankAccountObject obj))))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedBankAccount
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedBankAccount" (\obj -> (((GHC.Base.pure DeletedBankAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_bank_accountDeleted\'
-- 
-- Always true for a deleted object
data DeletedBankAccountDeleted'
    = DeletedBankAccountDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedBankAccountDeleted'EnumTyped GHC.Types.Bool
    | DeletedBankAccountDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedBankAccountDeleted'
    where toJSON (DeletedBankAccountDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedBankAccountDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedBankAccountDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedBankAccountDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedBankAccountDeleted'EnumBoolTrue
                                          else DeletedBankAccountDeleted'EnumOther val)
-- | Defines the enum schema deleted_bank_accountObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedBankAccountObject'
    = DeletedBankAccountObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedBankAccountObject'EnumTyped GHC.Base.String
    | DeletedBankAccountObject'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedBankAccountObject'
    where toJSON (DeletedBankAccountObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedBankAccountObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedBankAccountObject'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON DeletedBankAccountObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then DeletedBankAccountObject'EnumStringBankAccount
                                          else DeletedBankAccountObject'EnumOther val)