{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema AlipayAccount
module StripeAPI.Types.AlipayAccount where

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
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.DeletedCustomer
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.alipay_account@ in the specification.
data AlipayAccount
  = AlipayAccount
      { -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
        alipayAccountCreated :: GHC.Types.Int,
        -- | customer: The ID of the customer associated with this Alipay Account.
        alipayAccountCustomer :: (GHC.Maybe.Maybe AlipayAccountCustomer'Variants),
        -- | fingerprint: Uniquely identifies the account and will be the same across all Alipay account objects that are linked to the same Alipay account.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        alipayAccountFingerprint :: Data.Text.Internal.Text,
        -- | id: Unique identifier for the object.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        alipayAccountId :: Data.Text.Internal.Text,
        -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
        alipayAccountLivemode :: GHC.Types.Bool,
        -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        alipayAccountMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
        -- | payment_amount: If the Alipay account object is not reusable, the exact amount that you can create a charge for.
        alipayAccountPaymentAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | payment_currency: If the Alipay account object is not reusable, the exact currency that you can create a charge for.
        alipayAccountPaymentCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | reusable: True if you can create multiple payments using this account. If the account is reusable, then you can freely choose the amount of each payment.
        alipayAccountReusable :: GHC.Types.Bool,
        -- | used: Whether this Alipay account object has ever been used for a payment.
        alipayAccountUsed :: GHC.Types.Bool,
        -- | username: The username for the Alipay account.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        alipayAccountUsername :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AlipayAccount where
  toJSON obj = Data.Aeson.Types.Internal.object ("created" Data.Aeson.Types.ToJSON..= alipayAccountCreated obj : "customer" Data.Aeson.Types.ToJSON..= alipayAccountCustomer obj : "fingerprint" Data.Aeson.Types.ToJSON..= alipayAccountFingerprint obj : "id" Data.Aeson.Types.ToJSON..= alipayAccountId obj : "livemode" Data.Aeson.Types.ToJSON..= alipayAccountLivemode obj : "metadata" Data.Aeson.Types.ToJSON..= alipayAccountMetadata obj : "payment_amount" Data.Aeson.Types.ToJSON..= alipayAccountPaymentAmount obj : "payment_currency" Data.Aeson.Types.ToJSON..= alipayAccountPaymentCurrency obj : "reusable" Data.Aeson.Types.ToJSON..= alipayAccountReusable obj : "used" Data.Aeson.Types.ToJSON..= alipayAccountUsed obj : "username" Data.Aeson.Types.ToJSON..= alipayAccountUsername obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "alipay_account" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("created" Data.Aeson.Types.ToJSON..= alipayAccountCreated obj) GHC.Base.<> (("customer" Data.Aeson.Types.ToJSON..= alipayAccountCustomer obj) GHC.Base.<> (("fingerprint" Data.Aeson.Types.ToJSON..= alipayAccountFingerprint obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= alipayAccountId obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= alipayAccountLivemode obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= alipayAccountMetadata obj) GHC.Base.<> (("payment_amount" Data.Aeson.Types.ToJSON..= alipayAccountPaymentAmount obj) GHC.Base.<> (("payment_currency" Data.Aeson.Types.ToJSON..= alipayAccountPaymentCurrency obj) GHC.Base.<> (("reusable" Data.Aeson.Types.ToJSON..= alipayAccountReusable obj) GHC.Base.<> (("used" Data.Aeson.Types.ToJSON..= alipayAccountUsed obj) GHC.Base.<> (("username" Data.Aeson.Types.ToJSON..= alipayAccountUsername obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "alipay_account"))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON AlipayAccount where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AlipayAccount" (\obj -> ((((((((((GHC.Base.pure AlipayAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reusable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "used")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "username"))

-- | Create a new 'AlipayAccount' with all required fields.
mkAlipayAccount ::
  -- | 'alipayAccountCreated'
  GHC.Types.Int ->
  -- | 'alipayAccountFingerprint'
  Data.Text.Internal.Text ->
  -- | 'alipayAccountId'
  Data.Text.Internal.Text ->
  -- | 'alipayAccountLivemode'
  GHC.Types.Bool ->
  -- | 'alipayAccountReusable'
  GHC.Types.Bool ->
  -- | 'alipayAccountUsed'
  GHC.Types.Bool ->
  -- | 'alipayAccountUsername'
  Data.Text.Internal.Text ->
  AlipayAccount
mkAlipayAccount alipayAccountCreated alipayAccountFingerprint alipayAccountId alipayAccountLivemode alipayAccountReusable alipayAccountUsed alipayAccountUsername =
  AlipayAccount
    { alipayAccountCreated = alipayAccountCreated,
      alipayAccountCustomer = GHC.Maybe.Nothing,
      alipayAccountFingerprint = alipayAccountFingerprint,
      alipayAccountId = alipayAccountId,
      alipayAccountLivemode = alipayAccountLivemode,
      alipayAccountMetadata = GHC.Maybe.Nothing,
      alipayAccountPaymentAmount = GHC.Maybe.Nothing,
      alipayAccountPaymentCurrency = GHC.Maybe.Nothing,
      alipayAccountReusable = alipayAccountReusable,
      alipayAccountUsed = alipayAccountUsed,
      alipayAccountUsername = alipayAccountUsername
    }

-- | Defines the oneOf schema located at @components.schemas.alipay_account.properties.customer.anyOf@ in the specification.
--
-- The ID of the customer associated with this Alipay Account.
data AlipayAccountCustomer'Variants
  = AlipayAccountCustomer'Customer Customer
  | AlipayAccountCustomer'DeletedCustomer DeletedCustomer
  | AlipayAccountCustomer'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AlipayAccountCustomer'Variants where
  toJSON (AlipayAccountCustomer'Customer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (AlipayAccountCustomer'DeletedCustomer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (AlipayAccountCustomer'Text a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON AlipayAccountCustomer'Variants where
  parseJSON val = case (AlipayAccountCustomer'Customer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((AlipayAccountCustomer'DeletedCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((AlipayAccountCustomer'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a