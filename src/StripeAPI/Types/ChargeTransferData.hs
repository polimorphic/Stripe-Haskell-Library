-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChargeTransferData
module StripeAPI.Types.ChargeTransferData where

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
import {-# SOURCE #-} StripeAPI.Types.Account

-- | Defines the object schema located at @components.schemas.charge_transfer_data@ in the specification.
-- 
-- 
data ChargeTransferData = ChargeTransferData {
  -- | amount: The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
  chargeTransferDataAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | destination: ID of an existing, connected Stripe account to transfer funds to if \`transfer_data\` was specified in the charge request.
  , chargeTransferDataDestination :: ChargeTransferDataDestination'Variants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChargeTransferData
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (chargeTransferDataAmount obj) : ["destination" Data.Aeson.Types.ToJSON..= chargeTransferDataDestination obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (chargeTransferDataAmount obj) : ["destination" Data.Aeson.Types.ToJSON..= chargeTransferDataDestination obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON ChargeTransferData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChargeTransferData" (\obj -> (GHC.Base.pure ChargeTransferData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination"))
-- | Create a new 'ChargeTransferData' with all required fields.
mkChargeTransferData :: ChargeTransferDataDestination'Variants -- ^ 'chargeTransferDataDestination'
  -> ChargeTransferData
mkChargeTransferData chargeTransferDataDestination = ChargeTransferData{chargeTransferDataAmount = GHC.Maybe.Nothing,
                                                                        chargeTransferDataDestination = chargeTransferDataDestination}
-- | Defines the oneOf schema located at @components.schemas.charge_transfer_data.properties.destination.anyOf@ in the specification.
-- 
-- ID of an existing, connected Stripe account to transfer funds to if \`transfer_data\` was specified in the charge request.
data ChargeTransferDataDestination'Variants =
   ChargeTransferDataDestination'Text Data.Text.Internal.Text
  | ChargeTransferDataDestination'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChargeTransferDataDestination'Variants
    where toJSON (ChargeTransferDataDestination'Text a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (ChargeTransferDataDestination'Account a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON ChargeTransferDataDestination'Variants
    where parseJSON val = case (ChargeTransferDataDestination'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ChargeTransferDataDestination'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
