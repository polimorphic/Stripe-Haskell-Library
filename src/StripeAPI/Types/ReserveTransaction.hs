-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ReserveTransaction
module StripeAPI.Types.ReserveTransaction where

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

-- | Defines the object schema located at @components.schemas.reserve_transaction@ in the specification.
-- 
-- 
data ReserveTransaction = ReserveTransaction {
  -- | amount
  reserveTransactionAmount :: GHC.Types.Int
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , reserveTransactionCurrency :: Data.Text.Internal.Text
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reserveTransactionDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , reserveTransactionId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ReserveTransaction
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= reserveTransactionAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= reserveTransactionCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (reserveTransactionDescription obj) : ["id" Data.Aeson.Types.ToJSON..= reserveTransactionId obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "reserve_transaction"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= reserveTransactionAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= reserveTransactionCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (reserveTransactionDescription obj) : ["id" Data.Aeson.Types.ToJSON..= reserveTransactionId obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "reserve_transaction"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ReserveTransaction
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ReserveTransaction" (\obj -> (((GHC.Base.pure ReserveTransaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id"))
-- | Create a new 'ReserveTransaction' with all required fields.
mkReserveTransaction :: GHC.Types.Int -- ^ 'reserveTransactionAmount'
  -> Data.Text.Internal.Text -- ^ 'reserveTransactionCurrency'
  -> Data.Text.Internal.Text -- ^ 'reserveTransactionId'
  -> ReserveTransaction
mkReserveTransaction reserveTransactionAmount reserveTransactionCurrency reserveTransactionId = ReserveTransaction{reserveTransactionAmount = reserveTransactionAmount,
                                                                                                                   reserveTransactionCurrency = reserveTransactionCurrency,
                                                                                                                   reserveTransactionDescription = GHC.Maybe.Nothing,
                                                                                                                   reserveTransactionId = reserveTransactionId}
