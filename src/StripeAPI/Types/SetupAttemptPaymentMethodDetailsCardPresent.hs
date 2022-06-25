-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SetupAttemptPaymentMethodDetailsCardPresent
module StripeAPI.Types.SetupAttemptPaymentMethodDetailsCardPresent where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethod

-- | Defines the object schema located at @components.schemas.setup_attempt_payment_method_details_card_present@ in the specification.
-- 
-- 
data SetupAttemptPaymentMethodDetailsCardPresent = SetupAttemptPaymentMethodDetailsCardPresent {
  -- | generated_card: The ID of the Card PaymentMethod which was generated by this SetupAttempt.
  setupAttemptPaymentMethodDetailsCardPresentGeneratedCard :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard'NonNullableVariants))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsCardPresent
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("generated_card" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCardPresentGeneratedCard obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("generated_card" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCardPresentGeneratedCard obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsCardPresent
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupAttemptPaymentMethodDetailsCardPresent" (\obj -> GHC.Base.pure SetupAttemptPaymentMethodDetailsCardPresent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "generated_card"))
-- | Create a new 'SetupAttemptPaymentMethodDetailsCardPresent' with all required fields.
mkSetupAttemptPaymentMethodDetailsCardPresent :: SetupAttemptPaymentMethodDetailsCardPresent
mkSetupAttemptPaymentMethodDetailsCardPresent = SetupAttemptPaymentMethodDetailsCardPresent{setupAttemptPaymentMethodDetailsCardPresentGeneratedCard = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.setup_attempt_payment_method_details_card_present.properties.generated_card.anyOf@ in the specification.
-- 
-- The ID of the Card PaymentMethod which was generated by this SetupAttempt.
data SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard'NonNullableVariants =
   SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard'NonNullableText Data.Text.Internal.Text
  | SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard'NonNullablePaymentMethod PaymentMethod
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard'NonNullableVariants
    where toJSON (SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard'NonNullablePaymentMethod a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard'NonNullableVariants
    where parseJSON val = case (SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard'NonNullablePaymentMethod Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
