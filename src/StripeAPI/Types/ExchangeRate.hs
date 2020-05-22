{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema ExchangeRate
module StripeAPI.Types.ExchangeRate where

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

-- | Defines the data type for the schema exchange_rate
-- 
-- \`Exchange Rate\` objects allow you to determine the rates that Stripe is
-- currently using to convert from one currency to another. Since this number is
-- variable throughout the day, there are various reasons why you might want to
-- know the current rate (for example, to dynamically price an item for a user
-- with a default payment in a foreign currency).
-- 
-- If you want a guarantee that the charge is made with a certain exchange rate
-- you expect is current, you can pass in \`exchange_rate\` to charges endpoints.
-- If the value is no longer up to date, the charge won\'t go through. Please
-- refer to our [Exchange Rates API](https:\/\/stripe.com\/docs\/exchange-rates) guide for more
-- details.
data ExchangeRate = ExchangeRate {
  -- | id: Unique identifier for the object. Represented as the three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html) in lowercase.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  exchangeRateId :: GHC.Base.String
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , exchangeRateObject :: ExchangeRateObject'
  -- | rates: Hash where the keys are supported currencies and the values are the exchange rate at which the base id currency converts to the key currency.
  , exchangeRateRates :: ExchangeRateRates'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ExchangeRate
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (exchangeRateId obj) : (Data.Aeson..=) "object" (exchangeRateObject obj) : (Data.Aeson..=) "rates" (exchangeRateRates obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (exchangeRateId obj) GHC.Base.<> ((Data.Aeson..=) "object" (exchangeRateObject obj) GHC.Base.<> (Data.Aeson..=) "rates" (exchangeRateRates obj)))
instance Data.Aeson.Types.FromJSON.FromJSON ExchangeRate
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ExchangeRate" (\obj -> ((GHC.Base.pure ExchangeRate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "rates"))
-- | Defines the enum schema exchange_rateObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data ExchangeRateObject'
    = ExchangeRateObject'EnumOther Data.Aeson.Types.Internal.Value
    | ExchangeRateObject'EnumTyped GHC.Base.String
    | ExchangeRateObject'EnumStringExchangeRate
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON ExchangeRateObject'
    where toJSON (ExchangeRateObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ExchangeRateObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (ExchangeRateObject'EnumStringExchangeRate) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exchange_rate"
instance Data.Aeson.FromJSON ExchangeRateObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "exchange_rate")
                                          then ExchangeRateObject'EnumStringExchangeRate
                                          else ExchangeRateObject'EnumOther val)
-- | Defines the data type for the schema exchange_rateRates\'
-- 
-- Hash where the keys are supported currencies and the values are the exchange rate at which the base id currency converts to the key currency.
data ExchangeRateRates' = ExchangeRateRates' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON ExchangeRateRates'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON ExchangeRateRates'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ExchangeRateRates'" (\obj -> GHC.Base.pure ExchangeRateRates')