{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema DeletedInvoice
module StripeAPI.Types.DeletedInvoice where

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

-- | Defines the data type for the schema deleted_invoice
-- 
-- 
data DeletedInvoice = DeletedInvoice {
  -- | deleted: Always true for a deleted object
  deletedInvoiceDeleted :: DeletedInvoiceDeleted'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedInvoiceId :: GHC.Base.String
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedInvoiceObject :: DeletedInvoiceObject'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedInvoice
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedInvoiceDeleted obj) : (Data.Aeson..=) "id" (deletedInvoiceId obj) : (Data.Aeson..=) "object" (deletedInvoiceObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedInvoiceDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedInvoiceId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedInvoiceObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedInvoice
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedInvoice" (\obj -> ((GHC.Base.pure DeletedInvoice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))
-- | Defines the enum schema deleted_invoiceDeleted\'
-- 
-- Always true for a deleted object
data DeletedInvoiceDeleted'
    = DeletedInvoiceDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedInvoiceDeleted'EnumTyped GHC.Types.Bool
    | DeletedInvoiceDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedInvoiceDeleted'
    where toJSON (DeletedInvoiceDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedInvoiceDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedInvoiceDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedInvoiceDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedInvoiceDeleted'EnumBoolTrue
                                          else DeletedInvoiceDeleted'EnumOther val)
-- | Defines the enum schema deleted_invoiceObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedInvoiceObject'
    = DeletedInvoiceObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedInvoiceObject'EnumTyped GHC.Base.String
    | DeletedInvoiceObject'EnumStringInvoice
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedInvoiceObject'
    where toJSON (DeletedInvoiceObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedInvoiceObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedInvoiceObject'EnumStringInvoice) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invoice"
instance Data.Aeson.FromJSON DeletedInvoiceObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "invoice")
                                          then DeletedInvoiceObject'EnumStringInvoice
                                          else DeletedInvoiceObject'EnumOther val)