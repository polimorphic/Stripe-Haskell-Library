{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getCustomersCustomerSources
module StripeAPI.Operations.GetCustomersCustomerSources where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
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
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > GET /v1/customers/{customer}/sources
-- 
-- \<p>List sources for a specified customer.\<\/p>
getCustomersCustomerSources :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                         -- ^ customer | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                         -- ^ ending_before: A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                         -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                                -- ^ limit: A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                         -- ^ object: Filter sources according to a particular object type. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                         -- ^ starting_after: A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -> GetCustomersCustomerSourcesRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetCustomersCustomerSourcesResponse)) -- ^ Monad containing the result of the operation
getCustomersCustomerSources config
                            customer
                            endingBefore
                            expand
                            limit
                            object
                            startingAfter
                            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetCustomersCustomerSourcesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCustomersCustomerSourcesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   GetCustomersCustomerSourcesResponseBody200)
                                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCustomersCustomerSourcesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/sources"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "object",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> object) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/customers/{customer}/sources
-- 
-- The same as 'getCustomersCustomerSources' but returns the raw 'Data.ByteString.Char8.ByteString'
getCustomersCustomerSourcesRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                StripeAPI.Common.SecurityScheme s) =>
                                  StripeAPI.Common.Configuration s ->
                                  GHC.Base.String ->
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GHC.Maybe.Maybe GHC.Base.String ->
                                  GetCustomersCustomerSourcesRequestBody ->
                                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getCustomersCustomerSourcesRaw config
                               customer
                               endingBefore
                               expand
                               limit
                               object
                               startingAfter
                               body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/sources"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "object",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> object) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/customers/{customer}/sources
-- 
-- Monadic version of 'getCustomersCustomerSources' (use with 'StripeAPI.Common.runWithConfiguration')
getCustomersCustomerSourcesM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                              StripeAPI.Common.SecurityScheme s) =>
                                GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GHC.Maybe.Maybe GHC.Base.String ->
                                GetCustomersCustomerSourcesRequestBody ->
                                Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                   m
                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                       (Network.HTTP.Client.Types.Response GetCustomersCustomerSourcesResponse))
getCustomersCustomerSourcesM customer
                             endingBefore
                             expand
                             limit
                             object
                             startingAfter
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetCustomersCustomerSourcesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCustomersCustomerSourcesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetCustomersCustomerSourcesResponseBody200)
                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCustomersCustomerSourcesResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/sources"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "object",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> object) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/customers/{customer}/sources
-- 
-- Monadic version of 'getCustomersCustomerSourcesRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getCustomersCustomerSourcesRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   GHC.Base.String ->
                                   GHC.Maybe.Maybe GHC.Base.String ->
                                   GHC.Maybe.Maybe GHC.Base.String ->
                                   GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                                   GHC.Maybe.Maybe GHC.Base.String ->
                                   GHC.Maybe.Maybe GHC.Base.String ->
                                   GetCustomersCustomerSourcesRequestBody ->
                                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                      m
                                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getCustomersCustomerSourcesRawM customer
                                endingBefore
                                expand
                                limit
                                object
                                startingAfter
                                body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/sources"))) ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "object",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> object) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : []))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getCustomersCustomerSourcesRequestBody
-- 
-- 
data GetCustomersCustomerSourcesRequestBody = GetCustomersCustomerSourcesRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSourcesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSourcesRequestBody" (\obj -> GHC.Base.pure GetCustomersCustomerSourcesRequestBody)
-- | Represents a response of the operation 'getCustomersCustomerSources'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCustomersCustomerSourcesResponseError' is used.
data GetCustomersCustomerSourcesResponse =                                             
   GetCustomersCustomerSourcesResponseError GHC.Base.String                            -- ^ Means either no matching case available or a parse error
  | GetCustomersCustomerSourcesResponse200 GetCustomersCustomerSourcesResponseBody200  -- ^ Successful response.
  | GetCustomersCustomerSourcesResponseDefault Error                                   -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetCustomersCustomerSourcesResponseBody200
-- 
-- 
data GetCustomersCustomerSourcesResponseBody200 = GetCustomersCustomerSourcesResponseBody200 {
  -- | data: Details about each object.
  getCustomersCustomerSourcesResponseBody200Data :: ([] GetCustomersCustomerSourcesResponseBody200Data')
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getCustomersCustomerSourcesResponseBody200HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , getCustomersCustomerSourcesResponseBody200Object :: GetCustomersCustomerSourcesResponseBody200Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Url :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getCustomersCustomerSourcesResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getCustomersCustomerSourcesResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getCustomersCustomerSourcesResponseBody200Object obj) : (Data.Aeson..=) "url" (getCustomersCustomerSourcesResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getCustomersCustomerSourcesResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getCustomersCustomerSourcesResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCustomersCustomerSourcesResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getCustomersCustomerSourcesResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSourcesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSourcesResponseBody200" (\obj -> (((GHC.Base.pure GetCustomersCustomerSourcesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the data type for the schema GetCustomersCustomerSourcesResponseBody200Data\'
-- 
-- 
data GetCustomersCustomerSourcesResponseBody200Data' = GetCustomersCustomerSourcesResponseBody200Data' {
  -- | account: The ID of the account that the bank account is associated with.
  getCustomersCustomerSourcesResponseBody200Data'Account :: (GHC.Maybe.Maybe GetCustomersCustomerSourcesResponseBody200Data'Account'Variants)
  -- | account_holder_name: The name of the person or business that owns the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'AccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | ach_credit_transfer
  , getCustomersCustomerSourcesResponseBody200Data'AchCreditTransfer :: (GHC.Maybe.Maybe SourceTypeAchCreditTransfer)
  -- | ach_debit
  , getCustomersCustomerSourcesResponseBody200Data'AchDebit :: (GHC.Maybe.Maybe SourceTypeAchDebit)
  -- | active: True when this bitcoin receiver has received a non-zero amount of bitcoin.
  , getCustomersCustomerSourcesResponseBody200Data'Active :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | address_city: City\/District\/Suburb\/Town\/Village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'AddressCity :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_country: Billing address country, if provided when creating card.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line1_check: If \`address_line1\` was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'AddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_state: State\/County\/Province\/Region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'AddressState :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'AddressZip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip_check: If \`address_zip\` was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'AddressZipCheck :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | alipay
  , getCustomersCustomerSourcesResponseBody200Data'Alipay :: (GHC.Maybe.Maybe SourceTypeAlipay)
  -- | amount: The amount of \`currency\` that you are collecting as payment.
  , getCustomersCustomerSourcesResponseBody200Data'Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | amount_received: The amount of \`currency\` to which \`bitcoin_amount_received\` has been converted.
  , getCustomersCustomerSourcesResponseBody200Data'AmountReceived :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | available_payout_methods: A set of available payout methods for this card. Will be either \`[\"standard\"]\` or \`[\"standard\", \"instant\"]\`. Only values from this set should be passed as the \`method\` when creating a transfer.
  , getCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods :: (GHC.Maybe.Maybe ([] GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'))
  -- | bancontact
  , getCustomersCustomerSourcesResponseBody200Data'Bancontact :: (GHC.Maybe.Maybe SourceTypeBancontact)
  -- | bank_name: Name of the bank associated with the routing number (e.g., \`WELLS FARGO\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'BankName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | bitcoin_amount: The amount of bitcoin that the customer should send to fill the receiver. The \`bitcoin_amount\` is denominated in Satoshi: there are 10^8 Satoshi in one bitcoin.
  , getCustomersCustomerSourcesResponseBody200Data'BitcoinAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | bitcoin_amount_received: The amount of bitcoin that has been sent by the customer to this receiver.
  , getCustomersCustomerSourcesResponseBody200Data'BitcoinAmountReceived :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | bitcoin_uri: This URI can be displayed to the customer as a clickable link (to activate their bitcoin client) or as a QR code (for mobile wallets).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'BitcoinUri :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | brand: Card brand. Can be \`American Express\`, \`Diners Club\`, \`Discover\`, \`JCB\`, \`MasterCard\`, \`UnionPay\`, \`Visa\`, or \`Unknown\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Brand :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | card
  , getCustomersCustomerSourcesResponseBody200Data'Card :: (GHC.Maybe.Maybe SourceTypeCard)
  -- | card_present
  , getCustomersCustomerSourcesResponseBody200Data'CardPresent :: (GHC.Maybe.Maybe SourceTypeCardPresent)
  -- | client_secret: The client secret of the source. Used for client-side retrieval using a publishable key.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'ClientSecret :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | code_verification: 
  , getCustomersCustomerSourcesResponseBody200Data'CodeVerification :: (GHC.Maybe.Maybe SourceCodeVerificationFlow)
  -- | country: Two-letter ISO code representing the country the bank account is located in.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , getCustomersCustomerSourcesResponseBody200Data'Created :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
  , getCustomersCustomerSourcesResponseBody200Data'Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer: The ID of the customer associated with this Alipay Account.
  , getCustomersCustomerSourcesResponseBody200Data'Customer :: (GHC.Maybe.Maybe GetCustomersCustomerSourcesResponseBody200Data'Customer'Variants)
  -- | cvc_check: If a CVC was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'CvcCheck :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_for_currency: Whether this bank account is the default external account for its currency.
  , getCustomersCustomerSourcesResponseBody200Data'DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Description :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | dynamic_last4: (For tokenized numbers only.) The last four digits of the device account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'DynamicLast4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | email: The customer\'s email address, set by the API call that creates the receiver.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Email :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | eps
  , getCustomersCustomerSourcesResponseBody200Data'Eps :: (GHC.Maybe.Maybe SourceTypeEps)
  -- | exp_month: Two-digit number representing the card\'s expiration month.
  , getCustomersCustomerSourcesResponseBody200Data'ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | exp_year: Four-digit number representing the card\'s expiration year.
  , getCustomersCustomerSourcesResponseBody200Data'ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | filled: This flag is initially false and updates to true when the customer sends the \`bitcoin_amount\` to this receiver.
  , getCustomersCustomerSourcesResponseBody200Data'Filled :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | fingerprint: Uniquely identifies the account and will be the same across all Alipay account objects that are linked to the same Alipay account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Fingerprint :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | flow: The authentication \`flow\` of the source. \`flow\` is one of \`redirect\`, \`receiver\`, \`code_verification\`, \`none\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Flow :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | funding: Card funding type. Can be \`credit\`, \`debit\`, \`prepaid\`, or \`unknown\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Funding :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | giropay
  , getCustomersCustomerSourcesResponseBody200Data'Giropay :: (GHC.Maybe.Maybe SourceTypeGiropay)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Id :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | ideal
  , getCustomersCustomerSourcesResponseBody200Data'Ideal :: (GHC.Maybe.Maybe SourceTypeIdeal)
  -- | inbound_address: A bitcoin address that is specific to this receiver. The customer can send bitcoin to this address to fill the receiver.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'InboundAddress :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | klarna
  , getCustomersCustomerSourcesResponseBody200Data'Klarna :: (GHC.Maybe.Maybe SourceTypeKlarna)
  -- | last4: The last four digits of the bank account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Last4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , getCustomersCustomerSourcesResponseBody200Data'Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , getCustomersCustomerSourcesResponseBody200Data'Metadata :: (GHC.Maybe.Maybe GetCustomersCustomerSourcesResponseBody200Data'Metadata')
  -- | multibanco
  , getCustomersCustomerSourcesResponseBody200Data'Multibanco :: (GHC.Maybe.Maybe SourceTypeMultibanco)
  -- | name: Cardholder name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , getCustomersCustomerSourcesResponseBody200Data'Object :: (GHC.Maybe.Maybe GetCustomersCustomerSourcesResponseBody200Data'Object')
  -- | owner: Information about the owner of the payment instrument that may be used or required by particular source types.
  , getCustomersCustomerSourcesResponseBody200Data'Owner :: (GHC.Maybe.Maybe GetCustomersCustomerSourcesResponseBody200Data'Owner')
  -- | p24
  , getCustomersCustomerSourcesResponseBody200Data'P24 :: (GHC.Maybe.Maybe SourceTypeP24)
  -- | payment: The ID of the payment created from the receiver, if any. Hidden when viewing the receiver with a publishable key.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Payment :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | payment_amount: If the Alipay account object is not reusable, the exact amount that you can create a charge for.
  , getCustomersCustomerSourcesResponseBody200Data'PaymentAmount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | payment_currency: If the Alipay account object is not reusable, the exact currency that you can create a charge for.
  , getCustomersCustomerSourcesResponseBody200Data'PaymentCurrency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | receiver: 
  , getCustomersCustomerSourcesResponseBody200Data'Receiver :: (GHC.Maybe.Maybe SourceReceiverFlow)
  -- | recipient: The recipient that this card belongs to. This attribute will not be in the card object if the card belongs to a customer or account instead.
  , getCustomersCustomerSourcesResponseBody200Data'Recipient :: (GHC.Maybe.Maybe GetCustomersCustomerSourcesResponseBody200Data'Recipient'Variants)
  -- | redirect: 
  , getCustomersCustomerSourcesResponseBody200Data'Redirect :: (GHC.Maybe.Maybe SourceRedirectFlow)
  -- | refund_address: The refund address of this bitcoin receiver.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'RefundAddress :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | reusable: True if you can create multiple payments using this account. If the account is reusable, then you can freely choose the amount of each payment.
  , getCustomersCustomerSourcesResponseBody200Data'Reusable :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | routing_number: The routing transit number for the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | sepa_debit
  , getCustomersCustomerSourcesResponseBody200Data'SepaDebit :: (GHC.Maybe.Maybe SourceTypeSepaDebit)
  -- | sofort
  , getCustomersCustomerSourcesResponseBody200Data'Sofort :: (GHC.Maybe.Maybe SourceTypeSofort)
  -- | source_order: 
  , getCustomersCustomerSourcesResponseBody200Data'SourceOrder :: (GHC.Maybe.Maybe SourceOrder)
  -- | statement_descriptor: Extra information about a source. This will appear on your customer\'s statement every time you charge the source.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | status: For bank accounts, possible values are \`new\`, \`validated\`, \`verified\`, \`verification_failed\`, or \`errored\`. A bank account that hasn\'t had any activity or validation performed is \`new\`. If Stripe can determine that the bank account exists, its status will be \`validated\`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be \`verified\`. If the verification failed for any reason, such as microdeposit failure, the status will be \`verification_failed\`. If a transfer sent to this bank account fails, we\'ll set the status to \`errored\` and will not continue to send transfers until the bank details are updated.
  -- 
  -- For external accounts, possible values are \`new\` and \`errored\`. Validations aren\'t run against external accounts because they\'re only used for payouts. This means the other statuses don\'t apply. If a transfer fails, the status is set to \`errored\` and transfers are stopped until account details are updated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Status :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | three_d_secure
  , getCustomersCustomerSourcesResponseBody200Data'ThreeDSecure :: (GHC.Maybe.Maybe SourceTypeThreeDSecure)
  -- | tokenization_method: If the card number is tokenized, this is the method that was used. Can be \`amex_express_checkout\`, \`android_pay\` (includes Google Pay), \`apple_pay\`, \`masterpass\`, \`visa_checkout\`, or null.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'TokenizationMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | transactions: A list with one entry for each time that the customer sent bitcoin to the receiver. Hidden when viewing the receiver with a publishable key.
  , getCustomersCustomerSourcesResponseBody200Data'Transactions :: (GHC.Maybe.Maybe GetCustomersCustomerSourcesResponseBody200Data'Transactions')
  -- | type: The \`type\` of the source. The \`type\` is a payment method, one of \`ach_credit_transfer\`, \`ach_debit\`, \`alipay\`, \`bancontact\`, \`card\`, \`card_present\`, \`eps\`, \`giropay\`, \`ideal\`, \`multibanco\`, \`klarna\`, \`p24\`, \`sepa_debit\`, \`sofort\`, \`three_d_secure\`, or \`wechat\`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https:\/\/stripe.com\/docs\/sources) used.
  , getCustomersCustomerSourcesResponseBody200Data'Type :: (GHC.Maybe.Maybe GetCustomersCustomerSourcesResponseBody200Data'Type')
  -- | uncaptured_funds: This receiver contains uncaptured funds that can be used for a payment or refunded.
  , getCustomersCustomerSourcesResponseBody200Data'UncapturedFunds :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | usage: Either \`reusable\` or \`single_use\`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Usage :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | used: Whether this Alipay account object has ever been used for a payment.
  , getCustomersCustomerSourcesResponseBody200Data'Used :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | used_for_payment: Indicate if this source is used for payment.
  , getCustomersCustomerSourcesResponseBody200Data'UsedForPayment :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | username: The username for the Alipay account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Username :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | wechat
  , getCustomersCustomerSourcesResponseBody200Data'Wechat :: (GHC.Maybe.Maybe SourceTypeWechat)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (getCustomersCustomerSourcesResponseBody200Data'Account obj) : (Data.Aeson..=) "account_holder_name" (getCustomersCustomerSourcesResponseBody200Data'AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (getCustomersCustomerSourcesResponseBody200Data'AccountHolderType obj) : (Data.Aeson..=) "ach_credit_transfer" (getCustomersCustomerSourcesResponseBody200Data'AchCreditTransfer obj) : (Data.Aeson..=) "ach_debit" (getCustomersCustomerSourcesResponseBody200Data'AchDebit obj) : (Data.Aeson..=) "active" (getCustomersCustomerSourcesResponseBody200Data'Active obj) : (Data.Aeson..=) "address_city" (getCustomersCustomerSourcesResponseBody200Data'AddressCity obj) : (Data.Aeson..=) "address_country" (getCustomersCustomerSourcesResponseBody200Data'AddressCountry obj) : (Data.Aeson..=) "address_line1" (getCustomersCustomerSourcesResponseBody200Data'AddressLine1 obj) : (Data.Aeson..=) "address_line1_check" (getCustomersCustomerSourcesResponseBody200Data'AddressLine1Check obj) : (Data.Aeson..=) "address_line2" (getCustomersCustomerSourcesResponseBody200Data'AddressLine2 obj) : (Data.Aeson..=) "address_state" (getCustomersCustomerSourcesResponseBody200Data'AddressState obj) : (Data.Aeson..=) "address_zip" (getCustomersCustomerSourcesResponseBody200Data'AddressZip obj) : (Data.Aeson..=) "address_zip_check" (getCustomersCustomerSourcesResponseBody200Data'AddressZipCheck obj) : (Data.Aeson..=) "alipay" (getCustomersCustomerSourcesResponseBody200Data'Alipay obj) : (Data.Aeson..=) "amount" (getCustomersCustomerSourcesResponseBody200Data'Amount obj) : (Data.Aeson..=) "amount_received" (getCustomersCustomerSourcesResponseBody200Data'AmountReceived obj) : (Data.Aeson..=) "available_payout_methods" (getCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods obj) : (Data.Aeson..=) "bancontact" (getCustomersCustomerSourcesResponseBody200Data'Bancontact obj) : (Data.Aeson..=) "bank_name" (getCustomersCustomerSourcesResponseBody200Data'BankName obj) : (Data.Aeson..=) "bitcoin_amount" (getCustomersCustomerSourcesResponseBody200Data'BitcoinAmount obj) : (Data.Aeson..=) "bitcoin_amount_received" (getCustomersCustomerSourcesResponseBody200Data'BitcoinAmountReceived obj) : (Data.Aeson..=) "bitcoin_uri" (getCustomersCustomerSourcesResponseBody200Data'BitcoinUri obj) : (Data.Aeson..=) "brand" (getCustomersCustomerSourcesResponseBody200Data'Brand obj) : (Data.Aeson..=) "card" (getCustomersCustomerSourcesResponseBody200Data'Card obj) : (Data.Aeson..=) "card_present" (getCustomersCustomerSourcesResponseBody200Data'CardPresent obj) : (Data.Aeson..=) "client_secret" (getCustomersCustomerSourcesResponseBody200Data'ClientSecret obj) : (Data.Aeson..=) "code_verification" (getCustomersCustomerSourcesResponseBody200Data'CodeVerification obj) : (Data.Aeson..=) "country" (getCustomersCustomerSourcesResponseBody200Data'Country obj) : (Data.Aeson..=) "created" (getCustomersCustomerSourcesResponseBody200Data'Created obj) : (Data.Aeson..=) "currency" (getCustomersCustomerSourcesResponseBody200Data'Currency obj) : (Data.Aeson..=) "customer" (getCustomersCustomerSourcesResponseBody200Data'Customer obj) : (Data.Aeson..=) "cvc_check" (getCustomersCustomerSourcesResponseBody200Data'CvcCheck obj) : (Data.Aeson..=) "default_for_currency" (getCustomersCustomerSourcesResponseBody200Data'DefaultForCurrency obj) : (Data.Aeson..=) "description" (getCustomersCustomerSourcesResponseBody200Data'Description obj) : (Data.Aeson..=) "dynamic_last4" (getCustomersCustomerSourcesResponseBody200Data'DynamicLast4 obj) : (Data.Aeson..=) "email" (getCustomersCustomerSourcesResponseBody200Data'Email obj) : (Data.Aeson..=) "eps" (getCustomersCustomerSourcesResponseBody200Data'Eps obj) : (Data.Aeson..=) "exp_month" (getCustomersCustomerSourcesResponseBody200Data'ExpMonth obj) : (Data.Aeson..=) "exp_year" (getCustomersCustomerSourcesResponseBody200Data'ExpYear obj) : (Data.Aeson..=) "filled" (getCustomersCustomerSourcesResponseBody200Data'Filled obj) : (Data.Aeson..=) "fingerprint" (getCustomersCustomerSourcesResponseBody200Data'Fingerprint obj) : (Data.Aeson..=) "flow" (getCustomersCustomerSourcesResponseBody200Data'Flow obj) : (Data.Aeson..=) "funding" (getCustomersCustomerSourcesResponseBody200Data'Funding obj) : (Data.Aeson..=) "giropay" (getCustomersCustomerSourcesResponseBody200Data'Giropay obj) : (Data.Aeson..=) "id" (getCustomersCustomerSourcesResponseBody200Data'Id obj) : (Data.Aeson..=) "ideal" (getCustomersCustomerSourcesResponseBody200Data'Ideal obj) : (Data.Aeson..=) "inbound_address" (getCustomersCustomerSourcesResponseBody200Data'InboundAddress obj) : (Data.Aeson..=) "klarna" (getCustomersCustomerSourcesResponseBody200Data'Klarna obj) : (Data.Aeson..=) "last4" (getCustomersCustomerSourcesResponseBody200Data'Last4 obj) : (Data.Aeson..=) "livemode" (getCustomersCustomerSourcesResponseBody200Data'Livemode obj) : (Data.Aeson..=) "metadata" (getCustomersCustomerSourcesResponseBody200Data'Metadata obj) : (Data.Aeson..=) "multibanco" (getCustomersCustomerSourcesResponseBody200Data'Multibanco obj) : (Data.Aeson..=) "name" (getCustomersCustomerSourcesResponseBody200Data'Name obj) : (Data.Aeson..=) "object" (getCustomersCustomerSourcesResponseBody200Data'Object obj) : (Data.Aeson..=) "owner" (getCustomersCustomerSourcesResponseBody200Data'Owner obj) : (Data.Aeson..=) "p24" (getCustomersCustomerSourcesResponseBody200Data'P24 obj) : (Data.Aeson..=) "payment" (getCustomersCustomerSourcesResponseBody200Data'Payment obj) : (Data.Aeson..=) "payment_amount" (getCustomersCustomerSourcesResponseBody200Data'PaymentAmount obj) : (Data.Aeson..=) "payment_currency" (getCustomersCustomerSourcesResponseBody200Data'PaymentCurrency obj) : (Data.Aeson..=) "receiver" (getCustomersCustomerSourcesResponseBody200Data'Receiver obj) : (Data.Aeson..=) "recipient" (getCustomersCustomerSourcesResponseBody200Data'Recipient obj) : (Data.Aeson..=) "redirect" (getCustomersCustomerSourcesResponseBody200Data'Redirect obj) : (Data.Aeson..=) "refund_address" (getCustomersCustomerSourcesResponseBody200Data'RefundAddress obj) : (Data.Aeson..=) "reusable" (getCustomersCustomerSourcesResponseBody200Data'Reusable obj) : (Data.Aeson..=) "routing_number" (getCustomersCustomerSourcesResponseBody200Data'RoutingNumber obj) : (Data.Aeson..=) "sepa_debit" (getCustomersCustomerSourcesResponseBody200Data'SepaDebit obj) : (Data.Aeson..=) "sofort" (getCustomersCustomerSourcesResponseBody200Data'Sofort obj) : (Data.Aeson..=) "source_order" (getCustomersCustomerSourcesResponseBody200Data'SourceOrder obj) : (Data.Aeson..=) "statement_descriptor" (getCustomersCustomerSourcesResponseBody200Data'StatementDescriptor obj) : (Data.Aeson..=) "status" (getCustomersCustomerSourcesResponseBody200Data'Status obj) : (Data.Aeson..=) "three_d_secure" (getCustomersCustomerSourcesResponseBody200Data'ThreeDSecure obj) : (Data.Aeson..=) "tokenization_method" (getCustomersCustomerSourcesResponseBody200Data'TokenizationMethod obj) : (Data.Aeson..=) "transactions" (getCustomersCustomerSourcesResponseBody200Data'Transactions obj) : (Data.Aeson..=) "type" (getCustomersCustomerSourcesResponseBody200Data'Type obj) : (Data.Aeson..=) "uncaptured_funds" (getCustomersCustomerSourcesResponseBody200Data'UncapturedFunds obj) : (Data.Aeson..=) "usage" (getCustomersCustomerSourcesResponseBody200Data'Usage obj) : (Data.Aeson..=) "used" (getCustomersCustomerSourcesResponseBody200Data'Used obj) : (Data.Aeson..=) "used_for_payment" (getCustomersCustomerSourcesResponseBody200Data'UsedForPayment obj) : (Data.Aeson..=) "username" (getCustomersCustomerSourcesResponseBody200Data'Username obj) : (Data.Aeson..=) "wechat" (getCustomersCustomerSourcesResponseBody200Data'Wechat obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (getCustomersCustomerSourcesResponseBody200Data'Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (getCustomersCustomerSourcesResponseBody200Data'AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (getCustomersCustomerSourcesResponseBody200Data'AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "ach_credit_transfer" (getCustomersCustomerSourcesResponseBody200Data'AchCreditTransfer obj) GHC.Base.<> ((Data.Aeson..=) "ach_debit" (getCustomersCustomerSourcesResponseBody200Data'AchDebit obj) GHC.Base.<> ((Data.Aeson..=) "active" (getCustomersCustomerSourcesResponseBody200Data'Active obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (getCustomersCustomerSourcesResponseBody200Data'AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (getCustomersCustomerSourcesResponseBody200Data'AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (getCustomersCustomerSourcesResponseBody200Data'AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line1_check" (getCustomersCustomerSourcesResponseBody200Data'AddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (getCustomersCustomerSourcesResponseBody200Data'AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (getCustomersCustomerSourcesResponseBody200Data'AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (getCustomersCustomerSourcesResponseBody200Data'AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (getCustomersCustomerSourcesResponseBody200Data'AddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "alipay" (getCustomersCustomerSourcesResponseBody200Data'Alipay obj) GHC.Base.<> ((Data.Aeson..=) "amount" (getCustomersCustomerSourcesResponseBody200Data'Amount obj) GHC.Base.<> ((Data.Aeson..=) "amount_received" (getCustomersCustomerSourcesResponseBody200Data'AmountReceived obj) GHC.Base.<> ((Data.Aeson..=) "available_payout_methods" (getCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods obj) GHC.Base.<> ((Data.Aeson..=) "bancontact" (getCustomersCustomerSourcesResponseBody200Data'Bancontact obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (getCustomersCustomerSourcesResponseBody200Data'BankName obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_amount" (getCustomersCustomerSourcesResponseBody200Data'BitcoinAmount obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_amount_received" (getCustomersCustomerSourcesResponseBody200Data'BitcoinAmountReceived obj) GHC.Base.<> ((Data.Aeson..=) "bitcoin_uri" (getCustomersCustomerSourcesResponseBody200Data'BitcoinUri obj) GHC.Base.<> ((Data.Aeson..=) "brand" (getCustomersCustomerSourcesResponseBody200Data'Brand obj) GHC.Base.<> ((Data.Aeson..=) "card" (getCustomersCustomerSourcesResponseBody200Data'Card obj) GHC.Base.<> ((Data.Aeson..=) "card_present" (getCustomersCustomerSourcesResponseBody200Data'CardPresent obj) GHC.Base.<> ((Data.Aeson..=) "client_secret" (getCustomersCustomerSourcesResponseBody200Data'ClientSecret obj) GHC.Base.<> ((Data.Aeson..=) "code_verification" (getCustomersCustomerSourcesResponseBody200Data'CodeVerification obj) GHC.Base.<> ((Data.Aeson..=) "country" (getCustomersCustomerSourcesResponseBody200Data'Country obj) GHC.Base.<> ((Data.Aeson..=) "created" (getCustomersCustomerSourcesResponseBody200Data'Created obj) GHC.Base.<> ((Data.Aeson..=) "currency" (getCustomersCustomerSourcesResponseBody200Data'Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (getCustomersCustomerSourcesResponseBody200Data'Customer obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (getCustomersCustomerSourcesResponseBody200Data'CvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (getCustomersCustomerSourcesResponseBody200Data'DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "description" (getCustomersCustomerSourcesResponseBody200Data'Description obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (getCustomersCustomerSourcesResponseBody200Data'DynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "email" (getCustomersCustomerSourcesResponseBody200Data'Email obj) GHC.Base.<> ((Data.Aeson..=) "eps" (getCustomersCustomerSourcesResponseBody200Data'Eps obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (getCustomersCustomerSourcesResponseBody200Data'ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (getCustomersCustomerSourcesResponseBody200Data'ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "filled" (getCustomersCustomerSourcesResponseBody200Data'Filled obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (getCustomersCustomerSourcesResponseBody200Data'Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "flow" (getCustomersCustomerSourcesResponseBody200Data'Flow obj) GHC.Base.<> ((Data.Aeson..=) "funding" (getCustomersCustomerSourcesResponseBody200Data'Funding obj) GHC.Base.<> ((Data.Aeson..=) "giropay" (getCustomersCustomerSourcesResponseBody200Data'Giropay obj) GHC.Base.<> ((Data.Aeson..=) "id" (getCustomersCustomerSourcesResponseBody200Data'Id obj) GHC.Base.<> ((Data.Aeson..=) "ideal" (getCustomersCustomerSourcesResponseBody200Data'Ideal obj) GHC.Base.<> ((Data.Aeson..=) "inbound_address" (getCustomersCustomerSourcesResponseBody200Data'InboundAddress obj) GHC.Base.<> ((Data.Aeson..=) "klarna" (getCustomersCustomerSourcesResponseBody200Data'Klarna obj) GHC.Base.<> ((Data.Aeson..=) "last4" (getCustomersCustomerSourcesResponseBody200Data'Last4 obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (getCustomersCustomerSourcesResponseBody200Data'Livemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (getCustomersCustomerSourcesResponseBody200Data'Metadata obj) GHC.Base.<> ((Data.Aeson..=) "multibanco" (getCustomersCustomerSourcesResponseBody200Data'Multibanco obj) GHC.Base.<> ((Data.Aeson..=) "name" (getCustomersCustomerSourcesResponseBody200Data'Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCustomersCustomerSourcesResponseBody200Data'Object obj) GHC.Base.<> ((Data.Aeson..=) "owner" (getCustomersCustomerSourcesResponseBody200Data'Owner obj) GHC.Base.<> ((Data.Aeson..=) "p24" (getCustomersCustomerSourcesResponseBody200Data'P24 obj) GHC.Base.<> ((Data.Aeson..=) "payment" (getCustomersCustomerSourcesResponseBody200Data'Payment obj) GHC.Base.<> ((Data.Aeson..=) "payment_amount" (getCustomersCustomerSourcesResponseBody200Data'PaymentAmount obj) GHC.Base.<> ((Data.Aeson..=) "payment_currency" (getCustomersCustomerSourcesResponseBody200Data'PaymentCurrency obj) GHC.Base.<> ((Data.Aeson..=) "receiver" (getCustomersCustomerSourcesResponseBody200Data'Receiver obj) GHC.Base.<> ((Data.Aeson..=) "recipient" (getCustomersCustomerSourcesResponseBody200Data'Recipient obj) GHC.Base.<> ((Data.Aeson..=) "redirect" (getCustomersCustomerSourcesResponseBody200Data'Redirect obj) GHC.Base.<> ((Data.Aeson..=) "refund_address" (getCustomersCustomerSourcesResponseBody200Data'RefundAddress obj) GHC.Base.<> ((Data.Aeson..=) "reusable" (getCustomersCustomerSourcesResponseBody200Data'Reusable obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (getCustomersCustomerSourcesResponseBody200Data'RoutingNumber obj) GHC.Base.<> ((Data.Aeson..=) "sepa_debit" (getCustomersCustomerSourcesResponseBody200Data'SepaDebit obj) GHC.Base.<> ((Data.Aeson..=) "sofort" (getCustomersCustomerSourcesResponseBody200Data'Sofort obj) GHC.Base.<> ((Data.Aeson..=) "source_order" (getCustomersCustomerSourcesResponseBody200Data'SourceOrder obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (getCustomersCustomerSourcesResponseBody200Data'StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "status" (getCustomersCustomerSourcesResponseBody200Data'Status obj) GHC.Base.<> ((Data.Aeson..=) "three_d_secure" (getCustomersCustomerSourcesResponseBody200Data'ThreeDSecure obj) GHC.Base.<> ((Data.Aeson..=) "tokenization_method" (getCustomersCustomerSourcesResponseBody200Data'TokenizationMethod obj) GHC.Base.<> ((Data.Aeson..=) "transactions" (getCustomersCustomerSourcesResponseBody200Data'Transactions obj) GHC.Base.<> ((Data.Aeson..=) "type" (getCustomersCustomerSourcesResponseBody200Data'Type obj) GHC.Base.<> ((Data.Aeson..=) "uncaptured_funds" (getCustomersCustomerSourcesResponseBody200Data'UncapturedFunds obj) GHC.Base.<> ((Data.Aeson..=) "usage" (getCustomersCustomerSourcesResponseBody200Data'Usage obj) GHC.Base.<> ((Data.Aeson..=) "used" (getCustomersCustomerSourcesResponseBody200Data'Used obj) GHC.Base.<> ((Data.Aeson..=) "used_for_payment" (getCustomersCustomerSourcesResponseBody200Data'UsedForPayment obj) GHC.Base.<> ((Data.Aeson..=) "username" (getCustomersCustomerSourcesResponseBody200Data'Username obj) GHC.Base.<> (Data.Aeson..=) "wechat" (getCustomersCustomerSourcesResponseBody200Data'Wechat obj)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSourcesResponseBody200Data'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSourcesResponseBody200Data'" (\obj -> ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure GetCustomersCustomerSourcesResponseBody200Data' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount_received")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bitcoin_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bitcoin_amount_received")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bitcoin_uri")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code_verification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eps")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "filled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "giropay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inbound_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "multibanco")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "p24")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "payment_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receiver")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "refund_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reusable")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "transactions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "uncaptured_funds")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "used")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "used_for_payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "username")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "wechat"))
-- | Define the one-of schema GetCustomersCustomerSourcesResponseBody200Data\'Account\'
-- 
-- The ID of the account that the bank account is associated with.
data GetCustomersCustomerSourcesResponseBody200Data'Account'Variants
    = GetCustomersCustomerSourcesResponseBody200Data'Account'Account Account
    | GetCustomersCustomerSourcesResponseBody200Data'Account'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema GetCustomersCustomerSourcesResponseBody200Data\'Available_payout_methods\'
-- 
-- 
data GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'
    = GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumTyped GHC.Base.String
    | GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumStringInstant
    | GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'
    where toJSON (GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumStringStandard
                                                else GetCustomersCustomerSourcesResponseBody200Data'AvailablePayoutMethods'EnumOther val)
-- | Define the one-of schema GetCustomersCustomerSourcesResponseBody200Data\'Customer\'
-- 
-- The ID of the customer associated with this Alipay Account.
data GetCustomersCustomerSourcesResponseBody200Data'Customer'Variants
    = GetCustomersCustomerSourcesResponseBody200Data'Customer'Customer Customer
    | GetCustomersCustomerSourcesResponseBody200Data'Customer'DeletedCustomer DeletedCustomer
    | GetCustomersCustomerSourcesResponseBody200Data'Customer'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema GetCustomersCustomerSourcesResponseBody200Data\'Metadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data GetCustomersCustomerSourcesResponseBody200Data'Metadata' = GetCustomersCustomerSourcesResponseBody200Data'Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSourcesResponseBody200Data'Metadata'" (\obj -> GHC.Base.pure GetCustomersCustomerSourcesResponseBody200Data'Metadata')
-- | Defines the enum schema GetCustomersCustomerSourcesResponseBody200Data\'Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data GetCustomersCustomerSourcesResponseBody200Data'Object'
    = GetCustomersCustomerSourcesResponseBody200Data'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerSourcesResponseBody200Data'Object'EnumTyped GHC.Base.String
    | GetCustomersCustomerSourcesResponseBody200Data'Object'EnumStringAlipayAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Object'
    where toJSON (GetCustomersCustomerSourcesResponseBody200Data'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Object'EnumStringAlipayAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay_account"
instance Data.Aeson.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay_account")
                                          then GetCustomersCustomerSourcesResponseBody200Data'Object'EnumStringAlipayAccount
                                          else GetCustomersCustomerSourcesResponseBody200Data'Object'EnumOther val)
-- | Defines the data type for the schema GetCustomersCustomerSourcesResponseBody200Data\'Owner\'
-- 
-- Information about the owner of the payment instrument that may be used or required by particular source types.
data GetCustomersCustomerSourcesResponseBody200Data'Owner' = GetCustomersCustomerSourcesResponseBody200Data'Owner' {
  -- | address: Owner\'s address.
  getCustomersCustomerSourcesResponseBody200Data'Owner'Address :: (GHC.Maybe.Maybe GetCustomersCustomerSourcesResponseBody200Data'Owner'Address')
  -- | email: Owner\'s email address.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'Email :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name: Owner\'s full name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone: Owner\'s phone number (including extension).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verified_address: Verified owner\'s address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  , getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress :: (GHC.Maybe.Maybe GetCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress')
  -- | verified_email: Verified owner\'s email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verified_name: Verified owner\'s full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verified_phone: Verified owner\'s phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedPhone :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Owner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address obj) : (Data.Aeson..=) "email" (getCustomersCustomerSourcesResponseBody200Data'Owner'Email obj) : (Data.Aeson..=) "name" (getCustomersCustomerSourcesResponseBody200Data'Owner'Name obj) : (Data.Aeson..=) "phone" (getCustomersCustomerSourcesResponseBody200Data'Owner'Phone obj) : (Data.Aeson..=) "verified_address" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress obj) : (Data.Aeson..=) "verified_email" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedEmail obj) : (Data.Aeson..=) "verified_name" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedName obj) : (Data.Aeson..=) "verified_phone" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedPhone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (getCustomersCustomerSourcesResponseBody200Data'Owner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (getCustomersCustomerSourcesResponseBody200Data'Owner'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (getCustomersCustomerSourcesResponseBody200Data'Owner'Phone obj) GHC.Base.<> ((Data.Aeson..=) "verified_address" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress obj) GHC.Base.<> ((Data.Aeson..=) "verified_email" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedEmail obj) GHC.Base.<> ((Data.Aeson..=) "verified_name" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedName obj) GHC.Base.<> (Data.Aeson..=) "verified_phone" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedPhone obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Owner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSourcesResponseBody200Data'Owner'" (\obj -> (((((((GHC.Base.pure GetCustomersCustomerSourcesResponseBody200Data'Owner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_phone"))
-- | Defines the data type for the schema GetCustomersCustomerSourcesResponseBody200Data\'Owner\'Address\'
-- 
-- Owner\\\'s address.
data GetCustomersCustomerSourcesResponseBody200Data'Owner'Address' = GetCustomersCustomerSourcesResponseBody200Data'Owner'Address' {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getCustomersCustomerSourcesResponseBody200Data'Owner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state: State, county, province, or region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Owner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'City obj) : (Data.Aeson..=) "country" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'Country obj) : (Data.Aeson..=) "line1" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'Line1 obj) : (Data.Aeson..=) "line2" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'PostalCode obj) : (Data.Aeson..=) "state" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (getCustomersCustomerSourcesResponseBody200Data'Owner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Owner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSourcesResponseBody200Data'Owner'Address'" (\obj -> (((((GHC.Base.pure GetCustomersCustomerSourcesResponseBody200Data'Owner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema GetCustomersCustomerSourcesResponseBody200Data\'Owner\'Verified_address\'
-- 
-- Verified owner\\\'s address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
data GetCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress' = GetCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress' {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state: State, county, province, or region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'City obj) : (Data.Aeson..=) "country" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'Country obj) : (Data.Aeson..=) "line1" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'Line1 obj) : (Data.Aeson..=) "line2" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'PostalCode obj) : (Data.Aeson..=) "state" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (getCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress'" (\obj -> (((((GHC.Base.pure GetCustomersCustomerSourcesResponseBody200Data'Owner'VerifiedAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Define the one-of schema GetCustomersCustomerSourcesResponseBody200Data\'Recipient\'
-- 
-- The recipient that this card belongs to. This attribute will not be in the card object if the card belongs to a customer or account instead.
data GetCustomersCustomerSourcesResponseBody200Data'Recipient'Variants
    = GetCustomersCustomerSourcesResponseBody200Data'Recipient'Recipient Recipient
    | GetCustomersCustomerSourcesResponseBody200Data'Recipient'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Recipient'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Recipient'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema GetCustomersCustomerSourcesResponseBody200Data\'Transactions\'
-- 
-- A list with one entry for each time that the customer sent bitcoin to the receiver. Hidden when viewing the receiver with a publishable key.
data GetCustomersCustomerSourcesResponseBody200Data'Transactions' = GetCustomersCustomerSourcesResponseBody200Data'Transactions' {
  -- | data: Details about each object.
  getCustomersCustomerSourcesResponseBody200Data'Transactions'Data :: ([] BitcoinTransaction)
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getCustomersCustomerSourcesResponseBody200Data'Transactions'HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , getCustomersCustomerSourcesResponseBody200Data'Transactions'Object :: GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSourcesResponseBody200Data'Transactions'Url :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Transactions'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getCustomersCustomerSourcesResponseBody200Data'Transactions'Data obj) : (Data.Aeson..=) "has_more" (getCustomersCustomerSourcesResponseBody200Data'Transactions'HasMore obj) : (Data.Aeson..=) "object" (getCustomersCustomerSourcesResponseBody200Data'Transactions'Object obj) : (Data.Aeson..=) "url" (getCustomersCustomerSourcesResponseBody200Data'Transactions'Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getCustomersCustomerSourcesResponseBody200Data'Transactions'Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getCustomersCustomerSourcesResponseBody200Data'Transactions'HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getCustomersCustomerSourcesResponseBody200Data'Transactions'Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getCustomersCustomerSourcesResponseBody200Data'Transactions'Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Transactions'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSourcesResponseBody200Data'Transactions'" (\obj -> (((GHC.Base.pure GetCustomersCustomerSourcesResponseBody200Data'Transactions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema GetCustomersCustomerSourcesResponseBody200Data\'Transactions\'Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'
    = GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'EnumTyped GHC.Base.String
    | GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'
    where toJSON (GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'EnumStringList
                                          else GetCustomersCustomerSourcesResponseBody200Data'Transactions'Object'EnumOther val)
-- | Defines the enum schema GetCustomersCustomerSourcesResponseBody200Data\'Type\'
-- 
-- The \`type\` of the source. The \`type\` is a payment method, one of \`ach_credit_transfer\`, \`ach_debit\`, \`alipay\`, \`bancontact\`, \`card\`, \`card_present\`, \`eps\`, \`giropay\`, \`ideal\`, \`multibanco\`, \`klarna\`, \`p24\`, \`sepa_debit\`, \`sofort\`, \`three_d_secure\`, or \`wechat\`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https:\/\/stripe.com\/docs\/sources) used.
data GetCustomersCustomerSourcesResponseBody200Data'Type'
    = GetCustomersCustomerSourcesResponseBody200Data'Type'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumTyped GHC.Base.String
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringAchCreditTransfer
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringAchDebit
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringAlipay
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringBancontact
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringCard
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringCardPresent
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringEps
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringGiropay
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringIdeal
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringKlarna
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringMultibanco
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringP24
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringSepaDebit
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringSofort
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringThreeDSecure
    | GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringWechat
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Data'Type'
    where toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringAchCreditTransfer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringAchDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringAlipay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringBancontact) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringCardPresent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringEps) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringGiropay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringIdeal) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringKlarna) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringMultibanco) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringP24) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringSepaDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringSofort) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringThreeDSecure) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure"
          toJSON (GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringWechat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat"
instance Data.Aeson.FromJSON GetCustomersCustomerSourcesResponseBody200Data'Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer")
                                          then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringAchCreditTransfer
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit")
                                                then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringAchDebit
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay")
                                                      then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringAlipay
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact")
                                                            then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringBancontact
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                                  then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringCard
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present")
                                                                        then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringCardPresent
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps")
                                                                              then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringEps
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay")
                                                                                    then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringGiropay
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal")
                                                                                          then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringIdeal
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna")
                                                                                                then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringKlarna
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco")
                                                                                                      then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringMultibanco
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24")
                                                                                                            then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringP24
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit")
                                                                                                                  then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringSepaDebit
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort")
                                                                                                                        then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringSofort
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure")
                                                                                                                              then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringThreeDSecure
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat")
                                                                                                                                    then GetCustomersCustomerSourcesResponseBody200Data'Type'EnumStringWechat
                                                                                                                                    else GetCustomersCustomerSourcesResponseBody200Data'Type'EnumOther val)
-- | Defines the enum schema GetCustomersCustomerSourcesResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetCustomersCustomerSourcesResponseBody200Object'
    = GetCustomersCustomerSourcesResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetCustomersCustomerSourcesResponseBody200Object'EnumTyped GHC.Base.String
    | GetCustomersCustomerSourcesResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCustomersCustomerSourcesResponseBody200Object'
    where toJSON (GetCustomersCustomerSourcesResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerSourcesResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCustomersCustomerSourcesResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetCustomersCustomerSourcesResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetCustomersCustomerSourcesResponseBody200Object'EnumStringList
                                          else GetCustomersCustomerSourcesResponseBody200Object'EnumOther val)
