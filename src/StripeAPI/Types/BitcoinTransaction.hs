{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema BitcoinTransaction
module StripeAPI.Types.BitcoinTransaction where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
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
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.bitcoin_transaction@ in the specification.
data BitcoinTransaction
  = BitcoinTransaction
      { -- | amount: The amount of \`currency\` that the transaction was converted to in real-time.
        bitcoinTransactionAmount :: GHC.Types.Int,
        -- | bitcoin_amount: The amount of bitcoin contained in the transaction.
        bitcoinTransactionBitcoinAmount :: GHC.Types.Int,
        -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
        bitcoinTransactionCreated :: GHC.Types.Int,
        -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/currencies) to which this transaction was converted.
        bitcoinTransactionCurrency :: Data.Text.Internal.Text,
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        bitcoinTransactionId :: Data.Text.Internal.Text,
        -- | receiver: The receiver to which this transaction was sent.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        bitcoinTransactionReceiver :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON BitcoinTransaction where
  toJSON obj = Data.Aeson.Types.Internal.object ("amount" Data.Aeson.Types.ToJSON..= bitcoinTransactionAmount obj : "bitcoin_amount" Data.Aeson.Types.ToJSON..= bitcoinTransactionBitcoinAmount obj : "created" Data.Aeson.Types.ToJSON..= bitcoinTransactionCreated obj : "currency" Data.Aeson.Types.ToJSON..= bitcoinTransactionCurrency obj : "id" Data.Aeson.Types.ToJSON..= bitcoinTransactionId obj : "receiver" Data.Aeson.Types.ToJSON..= bitcoinTransactionReceiver obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "bitcoin_transaction" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amount" Data.Aeson.Types.ToJSON..= bitcoinTransactionAmount obj) GHC.Base.<> (("bitcoin_amount" Data.Aeson.Types.ToJSON..= bitcoinTransactionBitcoinAmount obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= bitcoinTransactionCreated obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= bitcoinTransactionCurrency obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= bitcoinTransactionId obj) GHC.Base.<> (("receiver" Data.Aeson.Types.ToJSON..= bitcoinTransactionReceiver obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "bitcoin_transaction")))))))

instance Data.Aeson.Types.FromJSON.FromJSON BitcoinTransaction where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "BitcoinTransaction" (\obj -> (((((GHC.Base.pure BitcoinTransaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "bitcoin_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "receiver"))

-- | Create a new 'BitcoinTransaction' with all required fields.
mkBitcoinTransaction ::
  -- | 'bitcoinTransactionAmount'
  GHC.Types.Int ->
  -- | 'bitcoinTransactionBitcoinAmount'
  GHC.Types.Int ->
  -- | 'bitcoinTransactionCreated'
  GHC.Types.Int ->
  -- | 'bitcoinTransactionCurrency'
  Data.Text.Internal.Text ->
  -- | 'bitcoinTransactionId'
  Data.Text.Internal.Text ->
  -- | 'bitcoinTransactionReceiver'
  Data.Text.Internal.Text ->
  BitcoinTransaction
mkBitcoinTransaction bitcoinTransactionAmount bitcoinTransactionBitcoinAmount bitcoinTransactionCreated bitcoinTransactionCurrency bitcoinTransactionId bitcoinTransactionReceiver =
  BitcoinTransaction
    { bitcoinTransactionAmount = bitcoinTransactionAmount,
      bitcoinTransactionBitcoinAmount = bitcoinTransactionBitcoinAmount,
      bitcoinTransactionCreated = bitcoinTransactionCreated,
      bitcoinTransactionCurrency = bitcoinTransactionCurrency,
      bitcoinTransactionId = bitcoinTransactionId,
      bitcoinTransactionReceiver = bitcoinTransactionReceiver
    }
