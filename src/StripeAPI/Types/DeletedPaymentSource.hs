-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema DeletedPaymentSource
module StripeAPI.Types.DeletedPaymentSource where

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
import {-# SOURCE #-} StripeAPI.Types.DeletedAlipayAccount
import {-# SOURCE #-} StripeAPI.Types.DeletedBankAccount
import {-# SOURCE #-} StripeAPI.Types.DeletedBitcoinReceiver
import {-# SOURCE #-} StripeAPI.Types.DeletedCard

-- | Defines the object schema located at @components.schemas.deleted_payment_source.anyOf@ in the specification.
-- 
-- 
data DeletedPaymentSource = DeletedPaymentSource {
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  deletedPaymentSourceCurrency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | deleted: Always true for a deleted object
  , deletedPaymentSourceDeleted :: (GHC.Maybe.Maybe DeletedPaymentSourceDeleted')
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , deletedPaymentSourceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , deletedPaymentSourceObject :: (GHC.Maybe.Maybe DeletedPaymentSourceObject')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeletedPaymentSource
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (deletedPaymentSourceCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deleted" Data.Aeson.Types.ToJSON..=)) (deletedPaymentSourceDeleted obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (deletedPaymentSourceId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (deletedPaymentSourceObject obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (deletedPaymentSourceCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deleted" Data.Aeson.Types.ToJSON..=)) (deletedPaymentSourceDeleted obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (deletedPaymentSourceId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (deletedPaymentSourceObject obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedPaymentSource
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedPaymentSource" (\obj -> (((GHC.Base.pure DeletedPaymentSource GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "object"))
-- | Create a new 'DeletedPaymentSource' with all required fields.
mkDeletedPaymentSource :: DeletedPaymentSource
mkDeletedPaymentSource = DeletedPaymentSource{deletedPaymentSourceCurrency = GHC.Maybe.Nothing,
                                              deletedPaymentSourceDeleted = GHC.Maybe.Nothing,
                                              deletedPaymentSourceId = GHC.Maybe.Nothing,
                                              deletedPaymentSourceObject = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.deleted_payment_source.anyOf.properties.deleted@ in the specification.
-- 
-- Always true for a deleted object
data DeletedPaymentSourceDeleted' =
   DeletedPaymentSourceDeleted'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | DeletedPaymentSourceDeleted'Typed GHC.Types.Bool -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | DeletedPaymentSourceDeleted'EnumTrue -- ^ Represents the JSON value @true@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeletedPaymentSourceDeleted'
    where toJSON (DeletedPaymentSourceDeleted'Other val) = val
          toJSON (DeletedPaymentSourceDeleted'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (DeletedPaymentSourceDeleted'EnumTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.Types.FromJSON.FromJSON DeletedPaymentSourceDeleted'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True -> DeletedPaymentSourceDeleted'EnumTrue
                                            | GHC.Base.otherwise -> DeletedPaymentSourceDeleted'Other val)
-- | Defines the enum schema located at @components.schemas.deleted_payment_source.anyOf.properties.object@ in the specification.
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data DeletedPaymentSourceObject' =
   DeletedPaymentSourceObject'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | DeletedPaymentSourceObject'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | DeletedPaymentSourceObject'EnumAlipayAccount -- ^ Represents the JSON value @"alipay_account"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeletedPaymentSourceObject'
    where toJSON (DeletedPaymentSourceObject'Other val) = val
          toJSON (DeletedPaymentSourceObject'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (DeletedPaymentSourceObject'EnumAlipayAccount) = "alipay_account"
instance Data.Aeson.Types.FromJSON.FromJSON DeletedPaymentSourceObject'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "alipay_account" -> DeletedPaymentSourceObject'EnumAlipayAccount
                                            | GHC.Base.otherwise -> DeletedPaymentSourceObject'Other val)
