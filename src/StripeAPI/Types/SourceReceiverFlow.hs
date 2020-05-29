{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceReceiverFlow
module StripeAPI.Types.SourceReceiverFlow where

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

-- | Defines the data type for the schema source_receiver_flow
-- 
-- 
data SourceReceiverFlow = SourceReceiverFlow {
  -- | address: The address of the receiver source. This is the value that should be communicated to the customer to send their funds to.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  sourceReceiverFlowAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | amount_charged: The total amount that was charged by you. The amount charged is expressed in the source\'s currency.
  , sourceReceiverFlowAmountCharged :: GHC.Integer.Type.Integer
  -- | amount_received: The total amount received by the receiver source. \`amount_received = amount_returned + amount_charged\` is true at all time. The amount received is expressed in the source\'s currency.
  , sourceReceiverFlowAmountReceived :: GHC.Integer.Type.Integer
  -- | amount_returned: The total amount that was returned to the customer. The amount returned is expressed in the source\'s currency.
  , sourceReceiverFlowAmountReturned :: GHC.Integer.Type.Integer
  -- | refund_attributes_method: Type of refund attribute method, one of \`email\`, \`manual\`, or \`none\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceReceiverFlowRefundAttributesMethod :: Data.Text.Internal.Text
  -- | refund_attributes_status: Type of refund attribute status, one of \`missing\`, \`requested\`, or \`available\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceReceiverFlowRefundAttributesStatus :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceReceiverFlow
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (sourceReceiverFlowAddress obj) : (Data.Aeson..=) "amount_charged" (sourceReceiverFlowAmountCharged obj) : (Data.Aeson..=) "amount_received" (sourceReceiverFlowAmountReceived obj) : (Data.Aeson..=) "amount_returned" (sourceReceiverFlowAmountReturned obj) : (Data.Aeson..=) "refund_attributes_method" (sourceReceiverFlowRefundAttributesMethod obj) : (Data.Aeson..=) "refund_attributes_status" (sourceReceiverFlowRefundAttributesStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (sourceReceiverFlowAddress obj) GHC.Base.<> ((Data.Aeson..=) "amount_charged" (sourceReceiverFlowAmountCharged obj) GHC.Base.<> ((Data.Aeson..=) "amount_received" (sourceReceiverFlowAmountReceived obj) GHC.Base.<> ((Data.Aeson..=) "amount_returned" (sourceReceiverFlowAmountReturned obj) GHC.Base.<> ((Data.Aeson..=) "refund_attributes_method" (sourceReceiverFlowRefundAttributesMethod obj) GHC.Base.<> (Data.Aeson..=) "refund_attributes_status" (sourceReceiverFlowRefundAttributesStatus obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON SourceReceiverFlow
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceReceiverFlow" (\obj -> (((((GHC.Base.pure SourceReceiverFlow GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_charged")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_received")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_returned")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "refund_attributes_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "refund_attributes_status"))