{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema IssuingAuthorizationMerchantData
module StripeAPI.Types.IssuingAuthorizationMerchantData where

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

-- | Defines the object schema located at @components.schemas.issuing_authorization_merchant_data@ in the specification.
data IssuingAuthorizationMerchantData
  = IssuingAuthorizationMerchantData
      { -- | category: A categorization of the seller\'s type of business. See our [merchant categories guide](https:\/\/stripe.com\/docs\/issuing\/merchant-categories) for a list of possible values.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuingAuthorizationMerchantDataCategory :: Data.Text.Internal.Text,
        -- | city: City where the seller is located
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuingAuthorizationMerchantDataCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | country: Country where the seller is located
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuingAuthorizationMerchantDataCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | name: Name of the seller
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuingAuthorizationMerchantDataName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | network_id: Identifier assigned to the seller by the card brand
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuingAuthorizationMerchantDataNetworkId :: Data.Text.Internal.Text,
        -- | postal_code: Postal code where the seller is located
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuingAuthorizationMerchantDataPostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | state: State where the seller is located
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuingAuthorizationMerchantDataState :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | url: The url an online purchase was made from
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        issuingAuthorizationMerchantDataUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationMerchantData where
  toJSON obj = Data.Aeson.Types.Internal.object ("category" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataCategory obj : "city" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataCity obj : "country" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataCountry obj : "name" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataName obj : "network_id" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataNetworkId obj : "postal_code" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataPostalCode obj : "state" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataState obj : "url" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataUrl obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("category" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataCategory obj) GHC.Base.<> (("city" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataCity obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataCountry obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataName obj) GHC.Base.<> (("network_id" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataNetworkId obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataPostalCode obj) GHC.Base.<> (("state" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataState obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= issuingAuthorizationMerchantDataUrl obj))))))))

instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationMerchantData where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationMerchantData" (\obj -> (((((((GHC.Base.pure IssuingAuthorizationMerchantData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "category")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))

-- | Create a new 'IssuingAuthorizationMerchantData' with all required fields.
mkIssuingAuthorizationMerchantData ::
  -- | 'issuingAuthorizationMerchantDataCategory'
  Data.Text.Internal.Text ->
  -- | 'issuingAuthorizationMerchantDataNetworkId'
  Data.Text.Internal.Text ->
  IssuingAuthorizationMerchantData
mkIssuingAuthorizationMerchantData issuingAuthorizationMerchantDataCategory issuingAuthorizationMerchantDataNetworkId =
  IssuingAuthorizationMerchantData
    { issuingAuthorizationMerchantDataCategory = issuingAuthorizationMerchantDataCategory,
      issuingAuthorizationMerchantDataCity = GHC.Maybe.Nothing,
      issuingAuthorizationMerchantDataCountry = GHC.Maybe.Nothing,
      issuingAuthorizationMerchantDataName = GHC.Maybe.Nothing,
      issuingAuthorizationMerchantDataNetworkId = issuingAuthorizationMerchantDataNetworkId,
      issuingAuthorizationMerchantDataPostalCode = GHC.Maybe.Nothing,
      issuingAuthorizationMerchantDataState = GHC.Maybe.Nothing,
      issuingAuthorizationMerchantDataUrl = GHC.Maybe.Nothing
    }
