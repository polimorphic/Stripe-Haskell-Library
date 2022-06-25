-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema DeletedInvoice
module StripeAPI.Types.DeletedInvoice where

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

-- | Defines the object schema located at @components.schemas.deleted_invoice@ in the specification.
-- 
-- 
data DeletedInvoice = DeletedInvoice {
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  deletedInvoiceId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeletedInvoice
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= deletedInvoiceId obj] : ["deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "invoice"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= deletedInvoiceId obj] : ["deleted" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.Bool GHC.Types.True] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "invoice"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedInvoice
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedInvoice" (\obj -> GHC.Base.pure DeletedInvoice GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id"))
-- | Create a new 'DeletedInvoice' with all required fields.
mkDeletedInvoice :: Data.Text.Internal.Text -- ^ 'deletedInvoiceId'
  -> DeletedInvoice
mkDeletedInvoice deletedInvoiceId = DeletedInvoice{deletedInvoiceId = deletedInvoiceId}
