-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema BankConnectionsResourceLinkAccountSessionFilters
module StripeAPI.Types.BankConnectionsResourceLinkAccountSessionFilters where

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

-- | Defines the object schema located at @components.schemas.bank_connections_resource_link_account_session_filters@ in the specification.
-- 
-- 
data BankConnectionsResourceLinkAccountSessionFilters = BankConnectionsResourceLinkAccountSessionFilters {
  -- | countries: List of countries from which to filter accounts.
  bankConnectionsResourceLinkAccountSessionFiltersCountries :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([Data.Text.Internal.Text])))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON BankConnectionsResourceLinkAccountSessionFilters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("countries" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceLinkAccountSessionFiltersCountries obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("countries" Data.Aeson.Types.ToJSON..=)) (bankConnectionsResourceLinkAccountSessionFiltersCountries obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON BankConnectionsResourceLinkAccountSessionFilters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "BankConnectionsResourceLinkAccountSessionFilters" (\obj -> GHC.Base.pure BankConnectionsResourceLinkAccountSessionFilters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "countries"))
-- | Create a new 'BankConnectionsResourceLinkAccountSessionFilters' with all required fields.
mkBankConnectionsResourceLinkAccountSessionFilters :: BankConnectionsResourceLinkAccountSessionFilters
mkBankConnectionsResourceLinkAccountSessionFilters = BankConnectionsResourceLinkAccountSessionFilters{bankConnectionsResourceLinkAccountSessionFiltersCountries = GHC.Maybe.Nothing}
