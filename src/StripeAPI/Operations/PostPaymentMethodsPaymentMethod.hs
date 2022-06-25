-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postPaymentMethodsPaymentMethod
module StripeAPI.Operations.PostPaymentMethodsPaymentMethod where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > POST /v1/payment_methods/{payment_method}
-- 
-- \<p>Updates a PaymentMethod object. A PaymentMethod must be attached a customer to be updated.\<\/p>
postPaymentMethodsPaymentMethod :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ payment_method | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPaymentMethodsPaymentMethodResponse) -- ^ Monadic computation which returns the result of the operation
postPaymentMethodsPaymentMethod paymentMethod
                                body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodsPaymentMethodResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                PaymentMethod)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodsPaymentMethodResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/payment_methods/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethod)) GHC.Base.++ ""))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/payment_methods\/{payment_method}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostPaymentMethodsPaymentMethodRequestBody = PostPaymentMethodsPaymentMethodRequestBody {
  -- | billing_details: Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
  postPaymentMethodsPaymentMethodRequestBodyBillingDetails :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyBillingDetails')
  -- | card: If this is a \`card\` PaymentMethod, this hash contains the user\'s card details.
  , postPaymentMethodsPaymentMethodRequestBodyCard :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyCard')
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentMethodsPaymentMethodRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | link: If this is an \`Link\` PaymentMethod, this hash contains details about the Link payment method.
  , postPaymentMethodsPaymentMethodRequestBodyLink :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postPaymentMethodsPaymentMethodRequestBodyMetadata :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyMetadata'Variants)
  -- | us_bank_account: If this is an \`us_bank_account\` PaymentMethod, this hash contains details about the US bank account payment method.
  , postPaymentMethodsPaymentMethodRequestBodyUsBankAccount :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodsPaymentMethodRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_details" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyUsBankAccount obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("billing_details" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyUsBankAccount obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBody" (\obj -> (((((GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "billing_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "link")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account"))
-- | Create a new 'PostPaymentMethodsPaymentMethodRequestBody' with all required fields.
mkPostPaymentMethodsPaymentMethodRequestBody :: PostPaymentMethodsPaymentMethodRequestBody
mkPostPaymentMethodsPaymentMethodRequestBody = PostPaymentMethodsPaymentMethodRequestBody{postPaymentMethodsPaymentMethodRequestBodyBillingDetails = GHC.Maybe.Nothing,
                                                                                          postPaymentMethodsPaymentMethodRequestBodyCard = GHC.Maybe.Nothing,
                                                                                          postPaymentMethodsPaymentMethodRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                          postPaymentMethodsPaymentMethodRequestBodyLink = GHC.Maybe.Nothing,
                                                                                          postPaymentMethodsPaymentMethodRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                                          postPaymentMethodsPaymentMethodRequestBodyUsBankAccount = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/payment_methods\/{payment_method}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.billing_details@ in the specification.
-- 
-- Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
data PostPaymentMethodsPaymentMethodRequestBodyBillingDetails' = PostPaymentMethodsPaymentMethodRequestBodyBillingDetails' {
  -- | address
  postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Variants)
  -- | email
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email'Variants)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Name :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Phone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Phone obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Name obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("phone" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Phone obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'" (\obj -> (((GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyBillingDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "phone"))
-- | Create a new 'PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'' with all required fields.
mkPostPaymentMethodsPaymentMethodRequestBodyBillingDetails' :: PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'
mkPostPaymentMethodsPaymentMethodRequestBodyBillingDetails' = PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'{postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address = GHC.Maybe.Nothing,
                                                                                                                        postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email = GHC.Maybe.Nothing,
                                                                                                                        postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Name = GHC.Maybe.Nothing,
                                                                                                                        postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Phone = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/payment_methods\/{payment_method}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.billing_details.properties.address.anyOf@ in the specification.
-- 
-- 
data PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1 = PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1 {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1City obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Country obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Line1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Line2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1PostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1State obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1City obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Country obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Line1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Line2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1PostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1State obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1" (\obj -> (((((GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))
-- | Create a new 'PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1' with all required fields.
mkPostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1 :: PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1
mkPostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1 = PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1{postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1City = GHC.Maybe.Nothing,
                                                                                                                                                    postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Country = GHC.Maybe.Nothing,
                                                                                                                                                    postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Line1 = GHC.Maybe.Nothing,
                                                                                                                                                    postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1Line2 = GHC.Maybe.Nothing,
                                                                                                                                                    postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1PostalCode = GHC.Maybe.Nothing,
                                                                                                                                                    postPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1State = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/payment_methods\/{payment_method}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.billing_details.properties.address.anyOf@ in the specification.
-- 
-- 
data PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Variants =
   PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'EmptyString -- ^ Represents the JSON value @""@
  | PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1 PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Variants
    where toJSON (PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'EmptyString) = ""
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'Variants
    where parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'EmptyString
                             | GHC.Base.otherwise -> case (PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Address'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                         Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                                                         Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the oneOf schema located at @paths.\/v1\/payment_methods\/{payment_method}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.billing_details.properties.email.anyOf@ in the specification.
-- 
-- 
data PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email'Variants =
   PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email'EmptyString -- ^ Represents the JSON value @""@
  | PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email'Variants
    where toJSON (PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email'Text a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email'EmptyString) = ""
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email'Variants
    where parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email'EmptyString
                             | GHC.Base.otherwise -> case (PostPaymentMethodsPaymentMethodRequestBodyBillingDetails'Email'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                         Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                                                         Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the object schema located at @paths.\/v1\/payment_methods\/{payment_method}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.card@ in the specification.
-- 
-- If this is a \`card\` PaymentMethod, this hash contains the user\'s card details.
data PostPaymentMethodsPaymentMethodRequestBodyCard' = PostPaymentMethodsPaymentMethodRequestBodyCard' {
  -- | exp_month
  postPaymentMethodsPaymentMethodRequestBodyCard'ExpMonth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | exp_year
  , postPaymentMethodsPaymentMethodRequestBodyCard'ExpYear :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodsPaymentMethodRequestBodyCard'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyCard'ExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyCard'ExpYear obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyCard'ExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyCard'ExpYear obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyCard'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyCard'" (\obj -> (GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyCard' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_year"))
-- | Create a new 'PostPaymentMethodsPaymentMethodRequestBodyCard'' with all required fields.
mkPostPaymentMethodsPaymentMethodRequestBodyCard' :: PostPaymentMethodsPaymentMethodRequestBodyCard'
mkPostPaymentMethodsPaymentMethodRequestBodyCard' = PostPaymentMethodsPaymentMethodRequestBodyCard'{postPaymentMethodsPaymentMethodRequestBodyCard'ExpMonth = GHC.Maybe.Nothing,
                                                                                                    postPaymentMethodsPaymentMethodRequestBodyCard'ExpYear = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/payment_methods\/{payment_method}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostPaymentMethodsPaymentMethodRequestBodyMetadata'Variants =
   PostPaymentMethodsPaymentMethodRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostPaymentMethodsPaymentMethodRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodsPaymentMethodRequestBodyMetadata'Variants
    where toJSON (PostPaymentMethodsPaymentMethodRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostPaymentMethodsPaymentMethodRequestBodyMetadata'EmptyString) = ""
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyMetadata'Variants
    where parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyMetadata'EmptyString
                             | GHC.Base.otherwise -> case (PostPaymentMethodsPaymentMethodRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                         Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                                                         Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the object schema located at @paths.\/v1\/payment_methods\/{payment_method}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.us_bank_account@ in the specification.
-- 
-- If this is an \`us_bank_account\` PaymentMethod, this hash contains details about the US bank account payment method.
data PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount' = PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount' {
  -- | account_holder_type
  postPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType :: (GHC.Maybe.Maybe PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'" (\obj -> GHC.Base.pure PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_type"))
-- | Create a new 'PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'' with all required fields.
mkPostPaymentMethodsPaymentMethodRequestBodyUsBankAccount' :: PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'
mkPostPaymentMethodsPaymentMethodRequestBodyUsBankAccount' = PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'{postPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/payment_methods\/{payment_method}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.us_bank_account.properties.account_holder_type@ in the specification.
-- 
-- 
data PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType' =
   PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'EnumCompany -- ^ Represents the JSON value @"company"@
  | PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'EnumIndividual -- ^ Represents the JSON value @"individual"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'
    where toJSON (PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'Other val) = val
          toJSON (PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'EnumCompany) = "company"
          toJSON (PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'EnumIndividual) = "individual"
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "company" -> PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'EnumCompany
                                            | val GHC.Classes.== "individual" -> PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'EnumIndividual
                                            | GHC.Base.otherwise -> PostPaymentMethodsPaymentMethodRequestBodyUsBankAccount'AccountHolderType'Other val)
-- | Represents a response of the operation 'postPaymentMethodsPaymentMethod'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentMethodsPaymentMethodResponseError' is used.
data PostPaymentMethodsPaymentMethodResponse =
   PostPaymentMethodsPaymentMethodResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostPaymentMethodsPaymentMethodResponse200 PaymentMethod -- ^ Successful response.
  | PostPaymentMethodsPaymentMethodResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
