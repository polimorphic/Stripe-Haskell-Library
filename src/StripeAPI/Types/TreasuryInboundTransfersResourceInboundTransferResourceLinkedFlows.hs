-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows
module StripeAPI.Types.TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows where

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

-- | Defines the object schema located at @components.schemas.treasury_inbound_transfers_resource_inbound_transfer_resource_linked_flows@ in the specification.
-- 
-- 
data TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows = TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows {
  -- | received_debit: If funds for this flow were returned after the flow went to the \`succeeded\` state, this field contains a reference to the ReceivedDebit return.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  treasuryInboundTransfersResourceInboundTransferResourceLinkedFlowsReceivedDebit :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_debit" Data.Aeson.Types.ToJSON..=)) (treasuryInboundTransfersResourceInboundTransferResourceLinkedFlowsReceivedDebit obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_debit" Data.Aeson.Types.ToJSON..=)) (treasuryInboundTransfersResourceInboundTransferResourceLinkedFlowsReceivedDebit obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows" (\obj -> GHC.Base.pure TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "received_debit"))
-- | Create a new 'TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows' with all required fields.
mkTreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows :: TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows
mkTreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows = TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows{treasuryInboundTransfersResourceInboundTransferResourceLinkedFlowsReceivedDebit = GHC.Maybe.Nothing}
