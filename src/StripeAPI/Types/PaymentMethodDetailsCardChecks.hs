{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema PaymentMethodDetailsCardChecks
module StripeAPI.Types.PaymentMethodDetailsCardChecks where

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

-- | Defines the data type for the schema payment_method_details_card_checks
-- 
-- 
data PaymentMethodDetailsCardChecks = PaymentMethodDetailsCardChecks {
  -- | address_line1_check: If a address line1 was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodDetailsCardChecksAddressLine1Check :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | address_postal_code_check: If a address postal code was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsCardChecksAddressPostalCodeCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | cvc_check: If a CVC was provided, results of the check, one of \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsCardChecksCvcCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PaymentMethodDetailsCardChecks
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_line1_check" (paymentMethodDetailsCardChecksAddressLine1Check obj) : (Data.Aeson..=) "address_postal_code_check" (paymentMethodDetailsCardChecksAddressPostalCodeCheck obj) : (Data.Aeson..=) "cvc_check" (paymentMethodDetailsCardChecksCvcCheck obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_line1_check" (paymentMethodDetailsCardChecksAddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_postal_code_check" (paymentMethodDetailsCardChecksAddressPostalCodeCheck obj) GHC.Base.<> (Data.Aeson..=) "cvc_check" (paymentMethodDetailsCardChecksCvcCheck obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardChecks
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardChecks" (\obj -> ((GHC.Base.pure PaymentMethodDetailsCardChecks GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_postal_code_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check"))