{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getBalanceTransactions
module StripeAPI.Operations.GetBalanceTransactions where

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

-- | > GET /v1/balance_transactions
-- 
-- \<p>Returns a list of transactions that have contributed to the Stripe account balance (e.g., charges, transfers, and so forth). The transactions are returned in sorted order, with the most recent transactions appearing first.\<\/p>
-- 
-- \<p>Note that this endpoint was previously called “Balance history” and used the path \<code>\/v1\/balance\/history\<\/code>.\<\/p>
getBalanceTransactions :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                    -- ^ available_on
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                    -- ^ created
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                    -- ^ currency: Only return transactions in a certain currency. Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                    -- ^ ending_before: A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                    -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                           -- ^ limit: A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                    -- ^ payout: For automatic Stripe payouts only, only returns transactions that were paid out on the specified payout ID. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                    -- ^ source: Only returns the original transaction. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                    -- ^ starting_after: A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                    -- ^ type: Only returns transactions of the given type. One of: \`charge\`, \`refund\`, \`adjustment\`, \`application_fee\`, \`application_fee_refund\`, \`transfer\`, \`payment\`, \`payout\`, \`payout_failure\`, \`stripe_fee\`, or \`network_cost\`. | Constraints: Maximum length of 5000
  -> GetBalanceTransactionsRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetBalanceTransactionsResponse)) -- ^ Monad containing the result of the operation
getBalanceTransactions config
                       availableOn
                       created
                       currency
                       endingBefore
                       expand
                       limit
                       payout
                       source
                       startingAfter
                       type'
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetBalanceTransactionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetBalanceTransactionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetBalanceTransactionsResponseBody200)
                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetBalanceTransactionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/balance_transactions") ((Data.Text.pack "available_on",
                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> availableOn) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "currency",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> currency) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "payout",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> payout) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> type') : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/balance_transactions
-- 
-- The same as 'getBalanceTransactions' but returns the raw 'Data.ByteString.Char8.ByteString'
getBalanceTransactionsRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             StripeAPI.Common.Configuration s ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GetBalanceTransactionsRequestBody ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getBalanceTransactionsRaw config
                          availableOn
                          created
                          currency
                          endingBefore
                          expand
                          limit
                          payout
                          source
                          startingAfter
                          type'
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/balance_transactions") ((Data.Text.pack "available_on",
                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> availableOn) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "currency",
                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> currency) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "payout",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> payout) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> type') : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/balance_transactions
-- 
-- Monadic version of 'getBalanceTransactions' (use with 'StripeAPI.Common.runWithConfiguration')
getBalanceTransactionsM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                         StripeAPI.Common.SecurityScheme s) =>
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GHC.Maybe.Maybe GHC.Base.String ->
                           GetBalanceTransactionsRequestBody ->
                           Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response GetBalanceTransactionsResponse))
getBalanceTransactionsM availableOn
                        created
                        currency
                        endingBefore
                        expand
                        limit
                        payout
                        source
                        startingAfter
                        type'
                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetBalanceTransactionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetBalanceTransactionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                     GetBalanceTransactionsResponseBody200)
                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetBalanceTransactionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/balance_transactions") ((Data.Text.pack "available_on",
                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> availableOn) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "currency",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> currency) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "payout",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> payout) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> type') : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/balance_transactions
-- 
-- Monadic version of 'getBalanceTransactionsRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getBalanceTransactionsRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                            StripeAPI.Common.SecurityScheme s) =>
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GHC.Maybe.Maybe GHC.Base.String ->
                              GetBalanceTransactionsRequestBody ->
                              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getBalanceTransactionsRawM availableOn
                           created
                           currency
                           endingBefore
                           expand
                           limit
                           payout
                           source
                           startingAfter
                           type'
                           body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/balance_transactions") ((Data.Text.pack "available_on",
                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> availableOn) : ((Data.Text.pack "created",
                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "currency",
                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> currency) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "payout",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> payout) : ((Data.Text.pack "source",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> source) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "type",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> type') : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getBalanceTransactionsRequestBody
-- 
-- 
data GetBalanceTransactionsRequestBody = GetBalanceTransactionsRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetBalanceTransactionsRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetBalanceTransactionsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetBalanceTransactionsRequestBody" (\obj -> GHC.Base.pure GetBalanceTransactionsRequestBody)
-- | Represents a response of the operation 'getBalanceTransactions'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetBalanceTransactionsResponseError' is used.
data GetBalanceTransactionsResponse =                                        
   GetBalanceTransactionsResponseError GHC.Base.String                       -- ^ Means either no matching case available or a parse error
  | GetBalanceTransactionsResponse200 GetBalanceTransactionsResponseBody200  -- ^ Successful response.
  | GetBalanceTransactionsResponseDefault Error                              -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetBalanceTransactionsResponseBody200
-- 
-- 
data GetBalanceTransactionsResponseBody200 = GetBalanceTransactionsResponseBody200 {
  -- | data
  getBalanceTransactionsResponseBody200Data :: ([] BalanceTransaction)
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getBalanceTransactionsResponseBody200HasMore :: GHC.Types.Bool
  -- | object: String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
  , getBalanceTransactionsResponseBody200Object :: GetBalanceTransactionsResponseBody200Object'
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/balance_transactions\'
  , getBalanceTransactionsResponseBody200Url :: GHC.Base.String
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetBalanceTransactionsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getBalanceTransactionsResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getBalanceTransactionsResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getBalanceTransactionsResponseBody200Object obj) : (Data.Aeson..=) "url" (getBalanceTransactionsResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getBalanceTransactionsResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getBalanceTransactionsResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getBalanceTransactionsResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getBalanceTransactionsResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetBalanceTransactionsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetBalanceTransactionsResponseBody200" (\obj -> (((GHC.Base.pure GetBalanceTransactionsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Defines the enum schema GetBalanceTransactionsResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value. Always has the value \`list\`.
data GetBalanceTransactionsResponseBody200Object'
    = GetBalanceTransactionsResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetBalanceTransactionsResponseBody200Object'EnumTyped GHC.Base.String
    | GetBalanceTransactionsResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetBalanceTransactionsResponseBody200Object'
    where toJSON (GetBalanceTransactionsResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetBalanceTransactionsResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetBalanceTransactionsResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetBalanceTransactionsResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetBalanceTransactionsResponseBody200Object'EnumStringList
                                          else GetBalanceTransactionsResponseBody200Object'EnumOther val)
