-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Treasury_FinancialAccountFeatures
module StripeAPI.Types.Treasury_FinancialAccountFeatures where

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
import {-# SOURCE #-} StripeAPI.Types.AccountServiceResourceFinancialAddressesFeatures
import {-# SOURCE #-} StripeAPI.Types.AccountServiceResourceInboundTransfers
import {-# SOURCE #-} StripeAPI.Types.AccountServiceResourceOutboundPayments
import {-# SOURCE #-} StripeAPI.Types.AccountServiceResourceOutboundTransfers
import {-# SOURCE #-} StripeAPI.Types.AccountServiceResourceToggleSettings

-- | Defines the object schema located at @components.schemas.treasury.financial_account_features@ in the specification.
-- 
-- Encodes whether a FinancialAccount has access to a particular Feature, with a \`status\` enum and associated \`status_details\`.
-- Stripe or the platform can control Features via the requested field.
data Treasury'financialAccountFeatures = Treasury'financialAccountFeatures {
  -- | card_issuing: Toggle settings for enabling\/disabling a feature
  treasury'financialAccountFeaturesCardIssuing :: (GHC.Maybe.Maybe AccountServiceResourceToggleSettings)
  -- | deposit_insurance: Toggle settings for enabling\/disabling a feature
  , treasury'financialAccountFeaturesDepositInsurance :: (GHC.Maybe.Maybe AccountServiceResourceToggleSettings)
  -- | financial_addresses: Settings related to Financial Addresses features on a Financial Account
  , treasury'financialAccountFeaturesFinancialAddresses :: (GHC.Maybe.Maybe AccountServiceResourceFinancialAddressesFeatures)
  -- | inbound_transfers: InboundTransfers contains inbound transfers features for a FinancialAccount.
  , treasury'financialAccountFeaturesInboundTransfers :: (GHC.Maybe.Maybe AccountServiceResourceInboundTransfers)
  -- | intra_stripe_flows: Toggle settings for enabling\/disabling a feature
  , treasury'financialAccountFeaturesIntraStripeFlows :: (GHC.Maybe.Maybe AccountServiceResourceToggleSettings)
  -- | outbound_payments: Settings related to Outbound Payments features on a Financial Account
  , treasury'financialAccountFeaturesOutboundPayments :: (GHC.Maybe.Maybe AccountServiceResourceOutboundPayments)
  -- | outbound_transfers: OutboundTransfers contains outbound transfers features for a FinancialAccount.
  , treasury'financialAccountFeaturesOutboundTransfers :: (GHC.Maybe.Maybe AccountServiceResourceOutboundTransfers)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Treasury'financialAccountFeatures
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_issuing" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesCardIssuing obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deposit_insurance" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesDepositInsurance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_addresses" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesFinancialAddresses obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("inbound_transfers" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesInboundTransfers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("intra_stripe_flows" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesIntraStripeFlows obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_payments" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesOutboundPayments obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_transfers" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesOutboundTransfers obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "treasury.financial_account_features"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_issuing" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesCardIssuing obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("deposit_insurance" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesDepositInsurance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("financial_addresses" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesFinancialAddresses obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("inbound_transfers" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesInboundTransfers obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("intra_stripe_flows" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesIntraStripeFlows obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_payments" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesOutboundPayments obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_transfers" Data.Aeson.Types.ToJSON..=)) (treasury'financialAccountFeaturesOutboundTransfers obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "treasury.financial_account_features"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON Treasury'financialAccountFeatures
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Treasury'financialAccountFeatures" (\obj -> ((((((GHC.Base.pure Treasury'financialAccountFeatures GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card_issuing")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "deposit_insurance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "financial_addresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "inbound_transfers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "intra_stripe_flows")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "outbound_payments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "outbound_transfers"))
-- | Create a new 'Treasury'financialAccountFeatures' with all required fields.
mkTreasury'financialAccountFeatures :: Treasury'financialAccountFeatures
mkTreasury'financialAccountFeatures = Treasury'financialAccountFeatures{treasury'financialAccountFeaturesCardIssuing = GHC.Maybe.Nothing,
                                                                        treasury'financialAccountFeaturesDepositInsurance = GHC.Maybe.Nothing,
                                                                        treasury'financialAccountFeaturesFinancialAddresses = GHC.Maybe.Nothing,
                                                                        treasury'financialAccountFeaturesInboundTransfers = GHC.Maybe.Nothing,
                                                                        treasury'financialAccountFeaturesIntraStripeFlows = GHC.Maybe.Nothing,
                                                                        treasury'financialAccountFeaturesOutboundPayments = GHC.Maybe.Nothing,
                                                                        treasury'financialAccountFeaturesOutboundTransfers = GHC.Maybe.Nothing}
