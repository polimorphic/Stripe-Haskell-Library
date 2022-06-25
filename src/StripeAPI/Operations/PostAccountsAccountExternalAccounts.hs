-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postAccountsAccountExternalAccounts
module StripeAPI.Operations.PostAccountsAccountExternalAccounts where

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

-- | > POST /v1/accounts/{account}/external_accounts
-- 
-- \<p>Create an external account for a given account.\<\/p>
postAccountsAccountExternalAccounts :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ account | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostAccountsAccountExternalAccountsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAccountsAccountExternalAccountsResponse) -- ^ Monadic computation which returns the result of the operation
postAccountsAccountExternalAccounts account
                                    body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostAccountsAccountExternalAccountsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountExternalAccountsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ExternalAccount)
                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostAccountsAccountExternalAccountsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel account)) GHC.Base.++ "/external_accounts"))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/external_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostAccountsAccountExternalAccountsRequestBody = PostAccountsAccountExternalAccountsRequestBody {
  -- | bank_account: Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/js), or a dictionary containing a user\'s bank account details.
  postAccountsAccountExternalAccountsRequestBodyBankAccount :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsRequestBodyBankAccount'Variants)
  -- | default_for_currency: When set to true, or if this is the first external account added in this currency, this account becomes the default external account for its currency.
  , postAccountsAccountExternalAccountsRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | expand: Specifies which fields in the response should be expanded.
  , postAccountsAccountExternalAccountsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | external_account: Please refer to full [documentation](https:\/\/stripe.com\/docs\/api) instead.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsRequestBodyExternalAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postAccountsAccountExternalAccountsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_account" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_account" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyExternalAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyMetadata obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_account" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("external_account" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyExternalAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyMetadata obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountExternalAccountsRequestBody" (\obj -> ((((GHC.Base.pure PostAccountsAccountExternalAccountsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "external_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))
-- | Create a new 'PostAccountsAccountExternalAccountsRequestBody' with all required fields.
mkPostAccountsAccountExternalAccountsRequestBody :: PostAccountsAccountExternalAccountsRequestBody
mkPostAccountsAccountExternalAccountsRequestBody = PostAccountsAccountExternalAccountsRequestBody{postAccountsAccountExternalAccountsRequestBodyBankAccount = GHC.Maybe.Nothing,
                                                                                                  postAccountsAccountExternalAccountsRequestBodyDefaultForCurrency = GHC.Maybe.Nothing,
                                                                                                  postAccountsAccountExternalAccountsRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                  postAccountsAccountExternalAccountsRequestBodyExternalAccount = GHC.Maybe.Nothing,
                                                                                                  postAccountsAccountExternalAccountsRequestBodyMetadata = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/external_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf@ in the specification.
-- 
-- 
data PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1 = PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1 {
  -- | account_holder_name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | account_holder_type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType')
  -- | account_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber :: Data.Text.Internal.Text
  -- | account_type
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType')
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Country :: Data.Text.Internal.Text
  -- | currency
  , postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Currency :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | object
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object :: (GHC.Maybe.Maybe PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object')
  -- | routing_number
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1RoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType obj) : ["account_number" Data.Aeson.Types.ToJSON..= postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType obj) : ["country" Data.Aeson.Types.ToJSON..= postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Country obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Currency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1RoutingNumber obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType obj) : ["account_number" Data.Aeson.Types.ToJSON..= postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType obj) : ["country" Data.Aeson.Types.ToJSON..= postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Country obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Currency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1RoutingNumber obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1" (\obj -> (((((((GHC.Base.pure PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "routing_number"))
-- | Create a new 'PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1' with all required fields.
mkPostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1 :: Data.Text.Internal.Text -- ^ 'postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber'
  -> Data.Text.Internal.Text -- ^ 'postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Country'
  -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1
mkPostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1 postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Country = PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1{postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderName = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                            postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                            postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber = postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountNumber,
                                                                                                                                                                                                                                                                                            postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                            postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Country = postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Country,
                                                                                                                                                                                                                                                                                            postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Currency = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                            postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                            postAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1RoutingNumber = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/accounts\/{account}\/external_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf.properties.account_holder_type@ in the specification.
-- 
-- 
data PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType' =
   PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany -- ^ Represents the JSON value @"company"@
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual -- ^ Represents the JSON value @"individual"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'
    where toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Other val) = val
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany) = "company"
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual) = "individual"
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "company" -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumCompany
                                            | val GHC.Classes.== "individual" -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'EnumIndividual
                                            | GHC.Base.otherwise -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountHolderType'Other val)
-- | Defines the enum schema located at @paths.\/v1\/accounts\/{account}\/external_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf.properties.account_type@ in the specification.
-- 
-- 
data PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType' =
   PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumChecking -- ^ Represents the JSON value @"checking"@
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumFutsu -- ^ Represents the JSON value @"futsu"@
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumSavings -- ^ Represents the JSON value @"savings"@
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumToza -- ^ Represents the JSON value @"toza"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'
    where toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'Other val) = val
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumChecking) = "checking"
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumFutsu) = "futsu"
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumSavings) = "savings"
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumToza) = "toza"
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "checking" -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumChecking
                                            | val GHC.Classes.== "futsu" -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumFutsu
                                            | val GHC.Classes.== "savings" -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumSavings
                                            | val GHC.Classes.== "toza" -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'EnumToza
                                            | GHC.Base.otherwise -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1AccountType'Other val)
-- | Defines the enum schema located at @paths.\/v1\/accounts\/{account}\/external_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf.properties.object@ in the specification.
-- 
-- 
data PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object' =
   PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object'EnumBankAccount -- ^ Represents the JSON value @"bank_account"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object'
    where toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object'Other val) = val
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object'EnumBankAccount) = "bank_account"
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "bank_account" -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object'EnumBankAccount
                                            | GHC.Base.otherwise -> PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1Object'Other val)
-- | Defines the oneOf schema located at @paths.\/v1\/accounts\/{account}\/external_accounts.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.bank_account.anyOf@ in the specification.
-- 
-- Either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/js), or a dictionary containing a user\'s bank account details.
data PostAccountsAccountExternalAccountsRequestBodyBankAccount'Variants =
   PostAccountsAccountExternalAccountsRequestBodyBankAccount'PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1 PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1
  | PostAccountsAccountExternalAccountsRequestBodyBankAccount'Text Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'Variants
    where toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostAccountsAccountExternalAccountsRequestBodyBankAccount'Text a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostAccountsAccountExternalAccountsRequestBodyBankAccount'Variants
    where parseJSON val = case (PostAccountsAccountExternalAccountsRequestBodyBankAccount'PostAccountsAccountExternalAccountsRequestBodyBankAccount'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostAccountsAccountExternalAccountsRequestBodyBankAccount'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postAccountsAccountExternalAccounts'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountsAccountExternalAccountsResponseError' is used.
data PostAccountsAccountExternalAccountsResponse =
   PostAccountsAccountExternalAccountsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostAccountsAccountExternalAccountsResponse200 ExternalAccount -- ^ Successful response.
  | PostAccountsAccountExternalAccountsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
