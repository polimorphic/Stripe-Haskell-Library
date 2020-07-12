{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation getCustomersCustomerBankAccounts
module StripeAPI.Operations.GetCustomersCustomerBankAccounts where

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
import qualified Data.Functor
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > GET /v1/customers/{customer}/bank_accounts
--
-- \<p>You can see a list of the bank accounts belonging to a Customer. Note that the 10 most recent sources are always available by default on the Customer. If you need more than those 10, you can use this API method and the \<code>limit\<\/code> and \<code>starting_after\<\/code> parameters to page through additional bank accounts.\<\/p>
getCustomersCustomerBankAccounts ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetCustomersCustomerBankAccountsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetCustomersCustomerBankAccountsResponse)
getCustomersCustomerBankAccounts parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetCustomersCustomerBankAccountsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCustomersCustomerBankAccountsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
                                                            GetCustomersCustomerBankAccountsResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetCustomersCustomerBankAccountsResponseDefault
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
                                                            Error
                                                      )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                         )
                response_0
          )
          response_0
    )
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getCustomersCustomerBankAccountsParametersPathCustomer parameters))) GHC.Base.++ "/bank_accounts")))
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerBankAccountsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerBankAccountsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerBankAccountsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerBankAccountsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/bank_accounts.GET.parameters@ in the specification.
data GetCustomersCustomerBankAccountsParameters
  = GetCustomersCustomerBankAccountsParameters
      { -- | pathCustomer: Represents the parameter named \'customer\'
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getCustomersCustomerBankAccountsParametersPathCustomer :: Data.Text.Internal.Text,
        -- | queryEnding_before: Represents the parameter named \'ending_before\'
        --
        -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
        getCustomersCustomerBankAccountsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | queryExpand: Represents the parameter named \'expand\'
        --
        -- Specifies which fields in the response should be expanded.
        getCustomersCustomerBankAccountsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | queryLimit: Represents the parameter named \'limit\'
        --
        -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        getCustomersCustomerBankAccountsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | queryStarting_after: Represents the parameter named \'starting_after\'
        --
        -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
        getCustomersCustomerBankAccountsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerBankAccountsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsParametersPathCustomer obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsParametersQueryExpand obj : "queryLimit" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsParametersQueryLimit obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsParametersQueryStartingAfter obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsParametersPathCustomer obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsParametersQueryExpand obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsParametersQueryLimit obj) GHC.Base.<> ("queryStarting_after" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsParametersQueryStartingAfter obj)))))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerBankAccountsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerBankAccountsParameters" (\obj -> ((((GHC.Base.pure GetCustomersCustomerBankAccountsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after"))

-- | Create a new 'GetCustomersCustomerBankAccountsParameters' with all required fields.
mkGetCustomersCustomerBankAccountsParameters ::
  -- | 'getCustomersCustomerBankAccountsParametersPathCustomer'
  Data.Text.Internal.Text ->
  GetCustomersCustomerBankAccountsParameters
mkGetCustomersCustomerBankAccountsParameters getCustomersCustomerBankAccountsParametersPathCustomer =
  GetCustomersCustomerBankAccountsParameters
    { getCustomersCustomerBankAccountsParametersPathCustomer = getCustomersCustomerBankAccountsParametersPathCustomer,
      getCustomersCustomerBankAccountsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getCustomersCustomerBankAccountsParametersQueryExpand = GHC.Maybe.Nothing,
      getCustomersCustomerBankAccountsParametersQueryLimit = GHC.Maybe.Nothing,
      getCustomersCustomerBankAccountsParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getCustomersCustomerBankAccounts'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCustomersCustomerBankAccountsResponseError' is used.
data GetCustomersCustomerBankAccountsResponse
  = -- | Means either no matching case available or a parse error
    GetCustomersCustomerBankAccountsResponseError GHC.Base.String
  | -- | Successful response.
    GetCustomersCustomerBankAccountsResponse200 GetCustomersCustomerBankAccountsResponseBody200
  | -- | Error response.
    GetCustomersCustomerBankAccountsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/bank_accounts.GET.responses.200.content.application\/json.schema@ in the specification.
data GetCustomersCustomerBankAccountsResponseBody200
  = GetCustomersCustomerBankAccountsResponseBody200
      { -- | data: Details about each object.
        getCustomersCustomerBankAccountsResponseBody200Data :: ([BankAccount]),
        -- | has_more: True if this list has another page of items after this one that can be fetched.
        getCustomersCustomerBankAccountsResponseBody200HasMore :: GHC.Types.Bool,
        -- | url: The URL where this list can be accessed.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getCustomersCustomerBankAccountsResponseBody200Url :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerBankAccountsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getCustomersCustomerBankAccountsResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerBankAccountsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerBankAccountsResponseBody200" (\obj -> ((GHC.Base.pure GetCustomersCustomerBankAccountsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetCustomersCustomerBankAccountsResponseBody200' with all required fields.
mkGetCustomersCustomerBankAccountsResponseBody200 ::
  -- | 'getCustomersCustomerBankAccountsResponseBody200Data'
  [BankAccount] ->
  -- | 'getCustomersCustomerBankAccountsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getCustomersCustomerBankAccountsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetCustomersCustomerBankAccountsResponseBody200
mkGetCustomersCustomerBankAccountsResponseBody200 getCustomersCustomerBankAccountsResponseBody200Data getCustomersCustomerBankAccountsResponseBody200HasMore getCustomersCustomerBankAccountsResponseBody200Url =
  GetCustomersCustomerBankAccountsResponseBody200
    { getCustomersCustomerBankAccountsResponseBody200Data = getCustomersCustomerBankAccountsResponseBody200Data,
      getCustomersCustomerBankAccountsResponseBody200HasMore = getCustomersCustomerBankAccountsResponseBody200HasMore,
      getCustomersCustomerBankAccountsResponseBody200Url = getCustomersCustomerBankAccountsResponseBody200Url
    }
