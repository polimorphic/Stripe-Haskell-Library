{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postCustomersCustomerSourcesId
module StripeAPI.Operations.PostCustomersCustomerSourcesId where

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

-- | > POST /v1/customers/{customer}/sources/{id}
-- 
-- \<p>Update a specified source for a given customer.\<\/p>
postCustomersCustomerSourcesId :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Base.String                                                                                                                            -- ^ customer | Constraints: Maximum length of 5000
  -> GHC.Base.String                                                                                                                            -- ^ id | Constraints: Maximum length of 5000
  -> PostCustomersCustomerSourcesIdRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostCustomersCustomerSourcesIdResponse)) -- ^ Monad containing the result of the operation
postCustomersCustomerSourcesId config
                               customer
                               id
                               body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSourcesIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            PostCustomersCustomerSourcesIdResponseBody200)
                                                                                                                                                                                                              | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/sources/{id}
-- 
-- The same as 'postCustomersCustomerSourcesId' but returns the raw 'Data.ByteString.Char8.ByteString'
postCustomersCustomerSourcesIdRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                   StripeAPI.Common.SecurityScheme s) =>
                                     StripeAPI.Common.Configuration s ->
                                     GHC.Base.String ->
                                     GHC.Base.String ->
                                     PostCustomersCustomerSourcesIdRequestBody ->
                                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSourcesIdRaw config
                                  customer
                                  id
                                  body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/sources/{id}
-- 
-- Monadic version of 'postCustomersCustomerSourcesId' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerSourcesIdM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                 StripeAPI.Common.SecurityScheme s) =>
                                   GHC.Base.String ->
                                   GHC.Base.String ->
                                   PostCustomersCustomerSourcesIdRequestBody ->
                                   Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                      m
                                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                          (Network.HTTP.Client.Types.Response PostCustomersCustomerSourcesIdResponse))
postCustomersCustomerSourcesIdM customer
                                id
                                body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCustomersCustomerSourcesIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                             PostCustomersCustomerSourcesIdResponseBody200)
                                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCustomersCustomerSourcesIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > POST /v1/customers/{customer}/sources/{id}
-- 
-- Monadic version of 'postCustomersCustomerSourcesIdRaw' (use with 'StripeAPI.Common.runWithConfiguration')
postCustomersCustomerSourcesIdRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                                    StripeAPI.Common.SecurityScheme s) =>
                                      GHC.Base.String ->
                                      GHC.Base.String ->
                                      PostCustomersCustomerSourcesIdRequestBody ->
                                      Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                         m
                                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postCustomersCustomerSourcesIdRawM customer
                                   id
                                   body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "POST")) (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))))) [] body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema postCustomersCustomerSourcesIdRequestBody
-- 
-- 
data PostCustomersCustomerSourcesIdRequestBody = PostCustomersCustomerSourcesIdRequestBody {
  -- | account_holder_name: The name of the person or business that owns the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerSourcesIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdRequestBodyAccountHolderType')
  -- | address_city: City\/District\/Suburb\/Town\/Village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyAddressCity :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_country: Billing address country, if provided when creating card.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_state: State\/County\/Province\/Region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyAddressState :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyAddressZip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | exp_month: Two digit number representing the card’s expiration month.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyExpMonth :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | exp_year: Four digit number representing the card’s expiration year.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyExpYear :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | expand: Specifies which fields in the response should be expanded.
  , postCustomersCustomerSourcesIdRequestBodyExpand :: (GHC.Maybe.Maybe ([] GHC.Base.String))
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postCustomersCustomerSourcesIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdRequestBodyMetadata')
  -- | name: Cardholder name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | owner
  , postCustomersCustomerSourcesIdRequestBodyOwner :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdRequestBodyOwner')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerSourcesIdRequestBodyAccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerSourcesIdRequestBodyAccountHolderType obj) : (Data.Aeson..=) "address_city" (postCustomersCustomerSourcesIdRequestBodyAddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerSourcesIdRequestBodyAddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerSourcesIdRequestBodyAddressLine1 obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerSourcesIdRequestBodyAddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerSourcesIdRequestBodyAddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerSourcesIdRequestBodyAddressZip obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerSourcesIdRequestBodyExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerSourcesIdRequestBodyExpYear obj) : (Data.Aeson..=) "expand" (postCustomersCustomerSourcesIdRequestBodyExpand obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSourcesIdRequestBodyMetadata obj) : (Data.Aeson..=) "name" (postCustomersCustomerSourcesIdRequestBodyName obj) : (Data.Aeson..=) "owner" (postCustomersCustomerSourcesIdRequestBodyOwner obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerSourcesIdRequestBodyAccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerSourcesIdRequestBodyAccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postCustomersCustomerSourcesIdRequestBodyAddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerSourcesIdRequestBodyAddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerSourcesIdRequestBodyAddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerSourcesIdRequestBodyAddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerSourcesIdRequestBodyAddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerSourcesIdRequestBodyAddressZip obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerSourcesIdRequestBodyExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerSourcesIdRequestBodyExpYear obj) GHC.Base.<> ((Data.Aeson..=) "expand" (postCustomersCustomerSourcesIdRequestBodyExpand obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSourcesIdRequestBodyMetadata obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerSourcesIdRequestBodyName obj) GHC.Base.<> (Data.Aeson..=) "owner" (postCustomersCustomerSourcesIdRequestBodyOwner obj))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdRequestBody" (\obj -> (((((((((((((GHC.Base.pure PostCustomersCustomerSourcesIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner"))
-- | Defines the enum schema postCustomersCustomerSourcesIdRequestBodyAccount_holder_type\'
-- 
-- The type of entity that holds the account. This can be either \`individual\` or \`company\`.
data PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'
    = PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringCompany
    | PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringIndividual
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'
    where toJSON (PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringCompany) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company"
          toJSON (PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringIndividual) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "company")
                                          then PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringCompany
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "individual")
                                                then PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumStringIndividual
                                                else PostCustomersCustomerSourcesIdRequestBodyAccountHolderType'EnumOther val)
-- | Defines the data type for the schema postCustomersCustomerSourcesIdRequestBodyMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCustomersCustomerSourcesIdRequestBodyMetadata' = PostCustomersCustomerSourcesIdRequestBodyMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdRequestBodyMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdRequestBodyMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdRequestBodyMetadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSourcesIdRequestBodyMetadata')
-- | Defines the data type for the schema postCustomersCustomerSourcesIdRequestBodyOwner\'
-- 
-- 
data PostCustomersCustomerSourcesIdRequestBodyOwner' = PostCustomersCustomerSourcesIdRequestBodyOwner' {
  -- | address
  postCustomersCustomerSourcesIdRequestBodyOwner'Address :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdRequestBodyOwner'Address')
  -- | email
  , postCustomersCustomerSourcesIdRequestBodyOwner'Email :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyOwner'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyOwner'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdRequestBodyOwner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerSourcesIdRequestBodyOwner'Address obj) : (Data.Aeson..=) "email" (postCustomersCustomerSourcesIdRequestBodyOwner'Email obj) : (Data.Aeson..=) "name" (postCustomersCustomerSourcesIdRequestBodyOwner'Name obj) : (Data.Aeson..=) "phone" (postCustomersCustomerSourcesIdRequestBodyOwner'Phone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerSourcesIdRequestBodyOwner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersCustomerSourcesIdRequestBodyOwner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerSourcesIdRequestBodyOwner'Name obj) GHC.Base.<> (Data.Aeson..=) "phone" (postCustomersCustomerSourcesIdRequestBodyOwner'Phone obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdRequestBodyOwner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdRequestBodyOwner'" (\obj -> (((GHC.Base.pure PostCustomersCustomerSourcesIdRequestBodyOwner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone"))
-- | Defines the data type for the schema postCustomersCustomerSourcesIdRequestBodyOwner\'Address\'
-- 
-- 
data PostCustomersCustomerSourcesIdRequestBodyOwner'Address' = PostCustomersCustomerSourcesIdRequestBodyOwner'Address' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerSourcesIdRequestBodyOwner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyOwner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyOwner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdRequestBodyOwner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdRequestBodyOwner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdRequestBodyOwner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdRequestBodyOwner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdRequestBodyOwner'Address'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerSourcesIdRequestBodyOwner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Represents a response of the operation 'postCustomersCustomerSourcesId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerSourcesIdResponseError' is used.
data PostCustomersCustomerSourcesIdResponse =                                                
   PostCustomersCustomerSourcesIdResponseError GHC.Base.String                               -- ^ Means either no matching case available or a parse error
  | PostCustomersCustomerSourcesIdResponse200 PostCustomersCustomerSourcesIdResponseBody200  -- ^ Successful response.
  | PostCustomersCustomerSourcesIdResponseDefault Error                                      -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostCustomersCustomerSourcesIdResponseBody200
-- 
-- 
data PostCustomersCustomerSourcesIdResponseBody200 = PostCustomersCustomerSourcesIdResponseBody200 {
  -- | account: The ID of the account that the bank account is associated with.
  postCustomersCustomerSourcesIdResponseBody200Account :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Account'Variants)
  -- | account_holder_name: The name of the person or business that owns the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200AccountHolderName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200AccountHolderType :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | ach_credit_transfer
  , postCustomersCustomerSourcesIdResponseBody200AchCreditTransfer :: (GHC.Maybe.Maybe SourceTypeAchCreditTransfer)
  -- | ach_debit
  , postCustomersCustomerSourcesIdResponseBody200AchDebit :: (GHC.Maybe.Maybe SourceTypeAchDebit)
  -- | address_city: City\/District\/Suburb\/Town\/Village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200AddressCity :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_country: Billing address country, if provided when creating card.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200AddressCountry :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200AddressLine1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line1_check: If \`address_line1\` was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200AddressLine1Check :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200AddressLine2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_state: State\/County\/Province\/Region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200AddressState :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200AddressZip :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | address_zip_check: If \`address_zip\` was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200AddressZipCheck :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | alipay
  , postCustomersCustomerSourcesIdResponseBody200Alipay :: (GHC.Maybe.Maybe SourceTypeAlipay)
  -- | amount: A positive integer in the smallest currency unit (that is, 100 cents for \$1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for \`single_use\` sources.
  , postCustomersCustomerSourcesIdResponseBody200Amount :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | available_payout_methods: A set of available payout methods for this card. Will be either \`[\"standard\"]\` or \`[\"standard\", \"instant\"]\`. Only values from this set should be passed as the \`method\` when creating a transfer.
  , postCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods :: (GHC.Maybe.Maybe ([] PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'))
  -- | bancontact
  , postCustomersCustomerSourcesIdResponseBody200Bancontact :: (GHC.Maybe.Maybe SourceTypeBancontact)
  -- | bank_name: Name of the bank associated with the routing number (e.g., \`WELLS FARGO\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200BankName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | brand: Card brand. Can be \`American Express\`, \`Diners Club\`, \`Discover\`, \`JCB\`, \`MasterCard\`, \`UnionPay\`, \`Visa\`, or \`Unknown\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Brand :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | card
  , postCustomersCustomerSourcesIdResponseBody200Card :: (GHC.Maybe.Maybe SourceTypeCard)
  -- | card_present
  , postCustomersCustomerSourcesIdResponseBody200CardPresent :: (GHC.Maybe.Maybe SourceTypeCardPresent)
  -- | client_secret: The client secret of the source. Used for client-side retrieval using a publishable key.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200ClientSecret :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | code_verification: 
  , postCustomersCustomerSourcesIdResponseBody200CodeVerification :: (GHC.Maybe.Maybe SourceCodeVerificationFlow)
  -- | country: Two-letter ISO code representing the country the bank account is located in.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , postCustomersCustomerSourcesIdResponseBody200Created :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
  , postCustomersCustomerSourcesIdResponseBody200Currency :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | customer: The ID of the customer that the bank account is associated with.
  , postCustomersCustomerSourcesIdResponseBody200Customer :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Customer'Variants)
  -- | cvc_check: If a CVC was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200CvcCheck :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | default_for_currency: Whether this bank account is the default external account for its currency.
  , postCustomersCustomerSourcesIdResponseBody200DefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | dynamic_last4: (For tokenized numbers only.) The last four digits of the device account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200DynamicLast4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | eps
  , postCustomersCustomerSourcesIdResponseBody200Eps :: (GHC.Maybe.Maybe SourceTypeEps)
  -- | exp_month: Two-digit number representing the card\'s expiration month.
  , postCustomersCustomerSourcesIdResponseBody200ExpMonth :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | exp_year: Four-digit number representing the card\'s expiration year.
  , postCustomersCustomerSourcesIdResponseBody200ExpYear :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Fingerprint :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | flow: The authentication \`flow\` of the source. \`flow\` is one of \`redirect\`, \`receiver\`, \`code_verification\`, \`none\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Flow :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | funding: Card funding type. Can be \`credit\`, \`debit\`, \`prepaid\`, or \`unknown\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Funding :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | giropay
  , postCustomersCustomerSourcesIdResponseBody200Giropay :: (GHC.Maybe.Maybe SourceTypeGiropay)
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Id :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | ideal
  , postCustomersCustomerSourcesIdResponseBody200Ideal :: (GHC.Maybe.Maybe SourceTypeIdeal)
  -- | klarna
  , postCustomersCustomerSourcesIdResponseBody200Klarna :: (GHC.Maybe.Maybe SourceTypeKlarna)
  -- | last4: The last four digits of the bank account number.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Last4 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , postCustomersCustomerSourcesIdResponseBody200Livemode :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , postCustomersCustomerSourcesIdResponseBody200Metadata :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Metadata')
  -- | multibanco
  , postCustomersCustomerSourcesIdResponseBody200Multibanco :: (GHC.Maybe.Maybe SourceTypeMultibanco)
  -- | name: Cardholder name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , postCustomersCustomerSourcesIdResponseBody200Object :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Object')
  -- | owner: Information about the owner of the payment instrument that may be used or required by particular source types.
  , postCustomersCustomerSourcesIdResponseBody200Owner :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Owner')
  -- | p24
  , postCustomersCustomerSourcesIdResponseBody200P24 :: (GHC.Maybe.Maybe SourceTypeP24)
  -- | receiver: 
  , postCustomersCustomerSourcesIdResponseBody200Receiver :: (GHC.Maybe.Maybe SourceReceiverFlow)
  -- | recipient: The recipient that this card belongs to. This attribute will not be in the card object if the card belongs to a customer or account instead.
  , postCustomersCustomerSourcesIdResponseBody200Recipient :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Recipient'Variants)
  -- | redirect: 
  , postCustomersCustomerSourcesIdResponseBody200Redirect :: (GHC.Maybe.Maybe SourceRedirectFlow)
  -- | routing_number: The routing transit number for the bank account.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200RoutingNumber :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | sepa_debit
  , postCustomersCustomerSourcesIdResponseBody200SepaDebit :: (GHC.Maybe.Maybe SourceTypeSepaDebit)
  -- | sofort
  , postCustomersCustomerSourcesIdResponseBody200Sofort :: (GHC.Maybe.Maybe SourceTypeSofort)
  -- | source_order: 
  , postCustomersCustomerSourcesIdResponseBody200SourceOrder :: (GHC.Maybe.Maybe SourceOrder)
  -- | statement_descriptor: Extra information about a source. This will appear on your customer\'s statement every time you charge the source.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200StatementDescriptor :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | status: For bank accounts, possible values are \`new\`, \`validated\`, \`verified\`, \`verification_failed\`, or \`errored\`. A bank account that hasn\'t had any activity or validation performed is \`new\`. If Stripe can determine that the bank account exists, its status will be \`validated\`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be \`verified\`. If the verification failed for any reason, such as microdeposit failure, the status will be \`verification_failed\`. If a transfer sent to this bank account fails, we\'ll set the status to \`errored\` and will not continue to send transfers until the bank details are updated.
  -- 
  -- For external accounts, possible values are \`new\` and \`errored\`. Validations aren\'t run against external accounts because they\'re only used for payouts. This means the other statuses don\'t apply. If a transfer fails, the status is set to \`errored\` and transfers are stopped until account details are updated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Status :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | three_d_secure
  , postCustomersCustomerSourcesIdResponseBody200ThreeDSecure :: (GHC.Maybe.Maybe SourceTypeThreeDSecure)
  -- | tokenization_method: If the card number is tokenized, this is the method that was used. Can be \`amex_express_checkout\`, \`android_pay\` (includes Google Pay), \`apple_pay\`, \`masterpass\`, \`visa_checkout\`, or null.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200TokenizationMethod :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | type: The \`type\` of the source. The \`type\` is a payment method, one of \`ach_credit_transfer\`, \`ach_debit\`, \`alipay\`, \`bancontact\`, \`card\`, \`card_present\`, \`eps\`, \`giropay\`, \`ideal\`, \`multibanco\`, \`klarna\`, \`p24\`, \`sepa_debit\`, \`sofort\`, \`three_d_secure\`, or \`wechat\`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https:\/\/stripe.com\/docs\/sources) used.
  , postCustomersCustomerSourcesIdResponseBody200Type :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Type')
  -- | usage: Either \`reusable\` or \`single_use\`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Usage :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | wechat
  , postCustomersCustomerSourcesIdResponseBody200Wechat :: (GHC.Maybe.Maybe SourceTypeWechat)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "account" (postCustomersCustomerSourcesIdResponseBody200Account obj) : (Data.Aeson..=) "account_holder_name" (postCustomersCustomerSourcesIdResponseBody200AccountHolderName obj) : (Data.Aeson..=) "account_holder_type" (postCustomersCustomerSourcesIdResponseBody200AccountHolderType obj) : (Data.Aeson..=) "ach_credit_transfer" (postCustomersCustomerSourcesIdResponseBody200AchCreditTransfer obj) : (Data.Aeson..=) "ach_debit" (postCustomersCustomerSourcesIdResponseBody200AchDebit obj) : (Data.Aeson..=) "address_city" (postCustomersCustomerSourcesIdResponseBody200AddressCity obj) : (Data.Aeson..=) "address_country" (postCustomersCustomerSourcesIdResponseBody200AddressCountry obj) : (Data.Aeson..=) "address_line1" (postCustomersCustomerSourcesIdResponseBody200AddressLine1 obj) : (Data.Aeson..=) "address_line1_check" (postCustomersCustomerSourcesIdResponseBody200AddressLine1Check obj) : (Data.Aeson..=) "address_line2" (postCustomersCustomerSourcesIdResponseBody200AddressLine2 obj) : (Data.Aeson..=) "address_state" (postCustomersCustomerSourcesIdResponseBody200AddressState obj) : (Data.Aeson..=) "address_zip" (postCustomersCustomerSourcesIdResponseBody200AddressZip obj) : (Data.Aeson..=) "address_zip_check" (postCustomersCustomerSourcesIdResponseBody200AddressZipCheck obj) : (Data.Aeson..=) "alipay" (postCustomersCustomerSourcesIdResponseBody200Alipay obj) : (Data.Aeson..=) "amount" (postCustomersCustomerSourcesIdResponseBody200Amount obj) : (Data.Aeson..=) "available_payout_methods" (postCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods obj) : (Data.Aeson..=) "bancontact" (postCustomersCustomerSourcesIdResponseBody200Bancontact obj) : (Data.Aeson..=) "bank_name" (postCustomersCustomerSourcesIdResponseBody200BankName obj) : (Data.Aeson..=) "brand" (postCustomersCustomerSourcesIdResponseBody200Brand obj) : (Data.Aeson..=) "card" (postCustomersCustomerSourcesIdResponseBody200Card obj) : (Data.Aeson..=) "card_present" (postCustomersCustomerSourcesIdResponseBody200CardPresent obj) : (Data.Aeson..=) "client_secret" (postCustomersCustomerSourcesIdResponseBody200ClientSecret obj) : (Data.Aeson..=) "code_verification" (postCustomersCustomerSourcesIdResponseBody200CodeVerification obj) : (Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Country obj) : (Data.Aeson..=) "created" (postCustomersCustomerSourcesIdResponseBody200Created obj) : (Data.Aeson..=) "currency" (postCustomersCustomerSourcesIdResponseBody200Currency obj) : (Data.Aeson..=) "customer" (postCustomersCustomerSourcesIdResponseBody200Customer obj) : (Data.Aeson..=) "cvc_check" (postCustomersCustomerSourcesIdResponseBody200CvcCheck obj) : (Data.Aeson..=) "default_for_currency" (postCustomersCustomerSourcesIdResponseBody200DefaultForCurrency obj) : (Data.Aeson..=) "dynamic_last4" (postCustomersCustomerSourcesIdResponseBody200DynamicLast4 obj) : (Data.Aeson..=) "eps" (postCustomersCustomerSourcesIdResponseBody200Eps obj) : (Data.Aeson..=) "exp_month" (postCustomersCustomerSourcesIdResponseBody200ExpMonth obj) : (Data.Aeson..=) "exp_year" (postCustomersCustomerSourcesIdResponseBody200ExpYear obj) : (Data.Aeson..=) "fingerprint" (postCustomersCustomerSourcesIdResponseBody200Fingerprint obj) : (Data.Aeson..=) "flow" (postCustomersCustomerSourcesIdResponseBody200Flow obj) : (Data.Aeson..=) "funding" (postCustomersCustomerSourcesIdResponseBody200Funding obj) : (Data.Aeson..=) "giropay" (postCustomersCustomerSourcesIdResponseBody200Giropay obj) : (Data.Aeson..=) "id" (postCustomersCustomerSourcesIdResponseBody200Id obj) : (Data.Aeson..=) "ideal" (postCustomersCustomerSourcesIdResponseBody200Ideal obj) : (Data.Aeson..=) "klarna" (postCustomersCustomerSourcesIdResponseBody200Klarna obj) : (Data.Aeson..=) "last4" (postCustomersCustomerSourcesIdResponseBody200Last4 obj) : (Data.Aeson..=) "livemode" (postCustomersCustomerSourcesIdResponseBody200Livemode obj) : (Data.Aeson..=) "metadata" (postCustomersCustomerSourcesIdResponseBody200Metadata obj) : (Data.Aeson..=) "multibanco" (postCustomersCustomerSourcesIdResponseBody200Multibanco obj) : (Data.Aeson..=) "name" (postCustomersCustomerSourcesIdResponseBody200Name obj) : (Data.Aeson..=) "object" (postCustomersCustomerSourcesIdResponseBody200Object obj) : (Data.Aeson..=) "owner" (postCustomersCustomerSourcesIdResponseBody200Owner obj) : (Data.Aeson..=) "p24" (postCustomersCustomerSourcesIdResponseBody200P24 obj) : (Data.Aeson..=) "receiver" (postCustomersCustomerSourcesIdResponseBody200Receiver obj) : (Data.Aeson..=) "recipient" (postCustomersCustomerSourcesIdResponseBody200Recipient obj) : (Data.Aeson..=) "redirect" (postCustomersCustomerSourcesIdResponseBody200Redirect obj) : (Data.Aeson..=) "routing_number" (postCustomersCustomerSourcesIdResponseBody200RoutingNumber obj) : (Data.Aeson..=) "sepa_debit" (postCustomersCustomerSourcesIdResponseBody200SepaDebit obj) : (Data.Aeson..=) "sofort" (postCustomersCustomerSourcesIdResponseBody200Sofort obj) : (Data.Aeson..=) "source_order" (postCustomersCustomerSourcesIdResponseBody200SourceOrder obj) : (Data.Aeson..=) "statement_descriptor" (postCustomersCustomerSourcesIdResponseBody200StatementDescriptor obj) : (Data.Aeson..=) "status" (postCustomersCustomerSourcesIdResponseBody200Status obj) : (Data.Aeson..=) "three_d_secure" (postCustomersCustomerSourcesIdResponseBody200ThreeDSecure obj) : (Data.Aeson..=) "tokenization_method" (postCustomersCustomerSourcesIdResponseBody200TokenizationMethod obj) : (Data.Aeson..=) "type" (postCustomersCustomerSourcesIdResponseBody200Type obj) : (Data.Aeson..=) "usage" (postCustomersCustomerSourcesIdResponseBody200Usage obj) : (Data.Aeson..=) "wechat" (postCustomersCustomerSourcesIdResponseBody200Wechat obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "account" (postCustomersCustomerSourcesIdResponseBody200Account obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_name" (postCustomersCustomerSourcesIdResponseBody200AccountHolderName obj) GHC.Base.<> ((Data.Aeson..=) "account_holder_type" (postCustomersCustomerSourcesIdResponseBody200AccountHolderType obj) GHC.Base.<> ((Data.Aeson..=) "ach_credit_transfer" (postCustomersCustomerSourcesIdResponseBody200AchCreditTransfer obj) GHC.Base.<> ((Data.Aeson..=) "ach_debit" (postCustomersCustomerSourcesIdResponseBody200AchDebit obj) GHC.Base.<> ((Data.Aeson..=) "address_city" (postCustomersCustomerSourcesIdResponseBody200AddressCity obj) GHC.Base.<> ((Data.Aeson..=) "address_country" (postCustomersCustomerSourcesIdResponseBody200AddressCountry obj) GHC.Base.<> ((Data.Aeson..=) "address_line1" (postCustomersCustomerSourcesIdResponseBody200AddressLine1 obj) GHC.Base.<> ((Data.Aeson..=) "address_line1_check" (postCustomersCustomerSourcesIdResponseBody200AddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_line2" (postCustomersCustomerSourcesIdResponseBody200AddressLine2 obj) GHC.Base.<> ((Data.Aeson..=) "address_state" (postCustomersCustomerSourcesIdResponseBody200AddressState obj) GHC.Base.<> ((Data.Aeson..=) "address_zip" (postCustomersCustomerSourcesIdResponseBody200AddressZip obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (postCustomersCustomerSourcesIdResponseBody200AddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "alipay" (postCustomersCustomerSourcesIdResponseBody200Alipay obj) GHC.Base.<> ((Data.Aeson..=) "amount" (postCustomersCustomerSourcesIdResponseBody200Amount obj) GHC.Base.<> ((Data.Aeson..=) "available_payout_methods" (postCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods obj) GHC.Base.<> ((Data.Aeson..=) "bancontact" (postCustomersCustomerSourcesIdResponseBody200Bancontact obj) GHC.Base.<> ((Data.Aeson..=) "bank_name" (postCustomersCustomerSourcesIdResponseBody200BankName obj) GHC.Base.<> ((Data.Aeson..=) "brand" (postCustomersCustomerSourcesIdResponseBody200Brand obj) GHC.Base.<> ((Data.Aeson..=) "card" (postCustomersCustomerSourcesIdResponseBody200Card obj) GHC.Base.<> ((Data.Aeson..=) "card_present" (postCustomersCustomerSourcesIdResponseBody200CardPresent obj) GHC.Base.<> ((Data.Aeson..=) "client_secret" (postCustomersCustomerSourcesIdResponseBody200ClientSecret obj) GHC.Base.<> ((Data.Aeson..=) "code_verification" (postCustomersCustomerSourcesIdResponseBody200CodeVerification obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Country obj) GHC.Base.<> ((Data.Aeson..=) "created" (postCustomersCustomerSourcesIdResponseBody200Created obj) GHC.Base.<> ((Data.Aeson..=) "currency" (postCustomersCustomerSourcesIdResponseBody200Currency obj) GHC.Base.<> ((Data.Aeson..=) "customer" (postCustomersCustomerSourcesIdResponseBody200Customer obj) GHC.Base.<> ((Data.Aeson..=) "cvc_check" (postCustomersCustomerSourcesIdResponseBody200CvcCheck obj) GHC.Base.<> ((Data.Aeson..=) "default_for_currency" (postCustomersCustomerSourcesIdResponseBody200DefaultForCurrency obj) GHC.Base.<> ((Data.Aeson..=) "dynamic_last4" (postCustomersCustomerSourcesIdResponseBody200DynamicLast4 obj) GHC.Base.<> ((Data.Aeson..=) "eps" (postCustomersCustomerSourcesIdResponseBody200Eps obj) GHC.Base.<> ((Data.Aeson..=) "exp_month" (postCustomersCustomerSourcesIdResponseBody200ExpMonth obj) GHC.Base.<> ((Data.Aeson..=) "exp_year" (postCustomersCustomerSourcesIdResponseBody200ExpYear obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (postCustomersCustomerSourcesIdResponseBody200Fingerprint obj) GHC.Base.<> ((Data.Aeson..=) "flow" (postCustomersCustomerSourcesIdResponseBody200Flow obj) GHC.Base.<> ((Data.Aeson..=) "funding" (postCustomersCustomerSourcesIdResponseBody200Funding obj) GHC.Base.<> ((Data.Aeson..=) "giropay" (postCustomersCustomerSourcesIdResponseBody200Giropay obj) GHC.Base.<> ((Data.Aeson..=) "id" (postCustomersCustomerSourcesIdResponseBody200Id obj) GHC.Base.<> ((Data.Aeson..=) "ideal" (postCustomersCustomerSourcesIdResponseBody200Ideal obj) GHC.Base.<> ((Data.Aeson..=) "klarna" (postCustomersCustomerSourcesIdResponseBody200Klarna obj) GHC.Base.<> ((Data.Aeson..=) "last4" (postCustomersCustomerSourcesIdResponseBody200Last4 obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (postCustomersCustomerSourcesIdResponseBody200Livemode obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (postCustomersCustomerSourcesIdResponseBody200Metadata obj) GHC.Base.<> ((Data.Aeson..=) "multibanco" (postCustomersCustomerSourcesIdResponseBody200Multibanco obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerSourcesIdResponseBody200Name obj) GHC.Base.<> ((Data.Aeson..=) "object" (postCustomersCustomerSourcesIdResponseBody200Object obj) GHC.Base.<> ((Data.Aeson..=) "owner" (postCustomersCustomerSourcesIdResponseBody200Owner obj) GHC.Base.<> ((Data.Aeson..=) "p24" (postCustomersCustomerSourcesIdResponseBody200P24 obj) GHC.Base.<> ((Data.Aeson..=) "receiver" (postCustomersCustomerSourcesIdResponseBody200Receiver obj) GHC.Base.<> ((Data.Aeson..=) "recipient" (postCustomersCustomerSourcesIdResponseBody200Recipient obj) GHC.Base.<> ((Data.Aeson..=) "redirect" (postCustomersCustomerSourcesIdResponseBody200Redirect obj) GHC.Base.<> ((Data.Aeson..=) "routing_number" (postCustomersCustomerSourcesIdResponseBody200RoutingNumber obj) GHC.Base.<> ((Data.Aeson..=) "sepa_debit" (postCustomersCustomerSourcesIdResponseBody200SepaDebit obj) GHC.Base.<> ((Data.Aeson..=) "sofort" (postCustomersCustomerSourcesIdResponseBody200Sofort obj) GHC.Base.<> ((Data.Aeson..=) "source_order" (postCustomersCustomerSourcesIdResponseBody200SourceOrder obj) GHC.Base.<> ((Data.Aeson..=) "statement_descriptor" (postCustomersCustomerSourcesIdResponseBody200StatementDescriptor obj) GHC.Base.<> ((Data.Aeson..=) "status" (postCustomersCustomerSourcesIdResponseBody200Status obj) GHC.Base.<> ((Data.Aeson..=) "three_d_secure" (postCustomersCustomerSourcesIdResponseBody200ThreeDSecure obj) GHC.Base.<> ((Data.Aeson..=) "tokenization_method" (postCustomersCustomerSourcesIdResponseBody200TokenizationMethod obj) GHC.Base.<> ((Data.Aeson..=) "type" (postCustomersCustomerSourcesIdResponseBody200Type obj) GHC.Base.<> ((Data.Aeson..=) "usage" (postCustomersCustomerSourcesIdResponseBody200Usage obj) GHC.Base.<> (Data.Aeson..=) "wechat" (postCustomersCustomerSourcesIdResponseBody200Wechat obj))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdResponseBody200" (\obj -> (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure PostCustomersCustomerSourcesIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code_verification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eps")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "giropay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "multibanco")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "p24")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receiver")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "wechat"))
-- | Define the one-of schema PostCustomersCustomerSourcesIdResponseBody200Account\'
-- 
-- The ID of the account that the bank account is associated with.
data PostCustomersCustomerSourcesIdResponseBody200Account'Variants
    = PostCustomersCustomerSourcesIdResponseBody200Account'Account Account
    | PostCustomersCustomerSourcesIdResponseBody200Account'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Account'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200Account'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema PostCustomersCustomerSourcesIdResponseBody200Available_payout_methods\'
-- 
-- 
data PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'
    = PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringInstant
    | PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringStandard
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'
    where toJSON (PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringInstant) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringStandard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "instant")
                                          then PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringInstant
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "standard")
                                                then PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumStringStandard
                                                else PostCustomersCustomerSourcesIdResponseBody200AvailablePayoutMethods'EnumOther val)
-- | Define the one-of schema PostCustomersCustomerSourcesIdResponseBody200Customer\'
-- 
-- The ID of the customer that the bank account is associated with.
data PostCustomersCustomerSourcesIdResponseBody200Customer'Variants
    = PostCustomersCustomerSourcesIdResponseBody200Customer'Customer Customer
    | PostCustomersCustomerSourcesIdResponseBody200Customer'DeletedCustomer DeletedCustomer
    | PostCustomersCustomerSourcesIdResponseBody200Customer'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Customer'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200Customer'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the data type for the schema PostCustomersCustomerSourcesIdResponseBody200Metadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data PostCustomersCustomerSourcesIdResponseBody200Metadata' = PostCustomersCustomerSourcesIdResponseBody200Metadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Metadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdResponseBody200Metadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdResponseBody200Metadata'" (\obj -> GHC.Base.pure PostCustomersCustomerSourcesIdResponseBody200Metadata')
-- | Defines the enum schema PostCustomersCustomerSourcesIdResponseBody200Object\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data PostCustomersCustomerSourcesIdResponseBody200Object'
    = PostCustomersCustomerSourcesIdResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesIdResponseBody200Object'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesIdResponseBody200Object'EnumStringBankAccount
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Object'
    where toJSON (PostCustomersCustomerSourcesIdResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Object'EnumStringBankAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bank_account")
                                          then PostCustomersCustomerSourcesIdResponseBody200Object'EnumStringBankAccount
                                          else PostCustomersCustomerSourcesIdResponseBody200Object'EnumOther val)
-- | Defines the data type for the schema PostCustomersCustomerSourcesIdResponseBody200Owner\'
-- 
-- Information about the owner of the payment instrument that may be used or required by particular source types.
data PostCustomersCustomerSourcesIdResponseBody200Owner' = PostCustomersCustomerSourcesIdResponseBody200Owner' {
  -- | address: Owner\'s address.
  postCustomersCustomerSourcesIdResponseBody200Owner'Address :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Owner'Address')
  -- | email: Owner\'s email address.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'Email :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | name: Owner\'s full name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'Name :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | phone: Owner\'s phone number (including extension).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'Phone :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verified_address: Verified owner\'s address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  , postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress :: (GHC.Maybe.Maybe PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress')
  -- | verified_email: Verified owner\'s email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedEmail :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verified_name: Verified owner\'s full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedName :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | verified_phone: Verified owner\'s phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedPhone :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Owner'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address" (postCustomersCustomerSourcesIdResponseBody200Owner'Address obj) : (Data.Aeson..=) "email" (postCustomersCustomerSourcesIdResponseBody200Owner'Email obj) : (Data.Aeson..=) "name" (postCustomersCustomerSourcesIdResponseBody200Owner'Name obj) : (Data.Aeson..=) "phone" (postCustomersCustomerSourcesIdResponseBody200Owner'Phone obj) : (Data.Aeson..=) "verified_address" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress obj) : (Data.Aeson..=) "verified_email" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedEmail obj) : (Data.Aeson..=) "verified_name" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedName obj) : (Data.Aeson..=) "verified_phone" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedPhone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address" (postCustomersCustomerSourcesIdResponseBody200Owner'Address obj) GHC.Base.<> ((Data.Aeson..=) "email" (postCustomersCustomerSourcesIdResponseBody200Owner'Email obj) GHC.Base.<> ((Data.Aeson..=) "name" (postCustomersCustomerSourcesIdResponseBody200Owner'Name obj) GHC.Base.<> ((Data.Aeson..=) "phone" (postCustomersCustomerSourcesIdResponseBody200Owner'Phone obj) GHC.Base.<> ((Data.Aeson..=) "verified_address" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress obj) GHC.Base.<> ((Data.Aeson..=) "verified_email" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedEmail obj) GHC.Base.<> ((Data.Aeson..=) "verified_name" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedName obj) GHC.Base.<> (Data.Aeson..=) "verified_phone" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedPhone obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdResponseBody200Owner'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdResponseBody200Owner'" (\obj -> (((((((GHC.Base.pure PostCustomersCustomerSourcesIdResponseBody200Owner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_phone"))
-- | Defines the data type for the schema PostCustomersCustomerSourcesIdResponseBody200Owner\'Address\'
-- 
-- Owner\\\'s address.
data PostCustomersCustomerSourcesIdResponseBody200Owner'Address' = PostCustomersCustomerSourcesIdResponseBody200Owner'Address' {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerSourcesIdResponseBody200Owner'Address'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'Address'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'Address'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state: State, county, province, or region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'Address'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Owner'Address'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdResponseBody200Owner'Address'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdResponseBody200Owner'Address'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdResponseBody200Owner'Address'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerSourcesIdResponseBody200Owner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Defines the data type for the schema PostCustomersCustomerSourcesIdResponseBody200Owner\'Verified_address\'
-- 
-- Verified owner\\\'s address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress' = PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress' {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'City :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Country :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line1 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line2 :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'PostalCode :: (GHC.Maybe.Maybe GHC.Base.String)
  -- | state: State, county, province, or region.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'State :: (GHC.Maybe.Maybe GHC.Base.String)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'City obj) : (Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Country obj) : (Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line1 obj) : (Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line2 obj) : (Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'PostalCode obj) : (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'State obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'City obj) GHC.Base.<> ((Data.Aeson..=) "country" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Country obj) GHC.Base.<> ((Data.Aeson..=) "line1" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line1 obj) GHC.Base.<> ((Data.Aeson..=) "line2" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'Line2 obj) GHC.Base.<> ((Data.Aeson..=) "postal_code" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'PostalCode obj) GHC.Base.<> (Data.Aeson..=) "state" (postCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'State obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress'" (\obj -> (((((GHC.Base.pure PostCustomersCustomerSourcesIdResponseBody200Owner'VerifiedAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))
-- | Define the one-of schema PostCustomersCustomerSourcesIdResponseBody200Recipient\'
-- 
-- The recipient that this card belongs to. This attribute will not be in the card object if the card belongs to a customer or account instead.
data PostCustomersCustomerSourcesIdResponseBody200Recipient'Variants
    = PostCustomersCustomerSourcesIdResponseBody200Recipient'Recipient Recipient
    | PostCustomersCustomerSourcesIdResponseBody200Recipient'String GHC.Base.String
    deriving (GHC.Show.Show, GHC.Classes.Eq, GHC.Generics.Generic)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Recipient'Variants
    where toJSON = Data.Aeson.Types.ToJSON.genericToJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200Recipient'Variants
    where parseJSON = Data.Aeson.Types.FromJSON.genericParseJSON Data.Aeson.Types.Internal.defaultOptions{Data.Aeson.Types.Internal.sumEncoding = Data.Aeson.Types.Internal.UntaggedValue}
-- | Defines the enum schema PostCustomersCustomerSourcesIdResponseBody200Type\'
-- 
-- The \`type\` of the source. The \`type\` is a payment method, one of \`ach_credit_transfer\`, \`ach_debit\`, \`alipay\`, \`bancontact\`, \`card\`, \`card_present\`, \`eps\`, \`giropay\`, \`ideal\`, \`multibanco\`, \`klarna\`, \`p24\`, \`sepa_debit\`, \`sofort\`, \`three_d_secure\`, or \`wechat\`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https:\/\/stripe.com\/docs\/sources) used.
data PostCustomersCustomerSourcesIdResponseBody200Type'
    = PostCustomersCustomerSourcesIdResponseBody200Type'EnumOther Data.Aeson.Types.Internal.Value
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumTyped GHC.Base.String
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchCreditTransfer
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchDebit
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAlipay
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringBancontact
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCard
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCardPresent
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringEps
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringGiropay
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringIdeal
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringKlarna
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringMultibanco
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringP24
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSepaDebit
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSofort
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringThreeDSecure
    | PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringWechat
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostCustomersCustomerSourcesIdResponseBody200Type'
    where toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchCreditTransfer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAlipay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringBancontact) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCardPresent) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringEps) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringGiropay) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringIdeal) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringKlarna) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringMultibanco) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringP24) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSepaDebit) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSofort) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringThreeDSecure) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure"
          toJSON (PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringWechat) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat"
instance Data.Aeson.FromJSON PostCustomersCustomerSourcesIdResponseBody200Type'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_credit_transfer")
                                          then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchCreditTransfer
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ach_debit")
                                                then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAchDebit
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "alipay")
                                                      then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringAlipay
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bancontact")
                                                            then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringBancontact
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                                  then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCard
                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card_present")
                                                                        then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringCardPresent
                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "eps")
                                                                              then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringEps
                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "giropay")
                                                                                    then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringGiropay
                                                                                    else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ideal")
                                                                                          then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringIdeal
                                                                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "klarna")
                                                                                                then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringKlarna
                                                                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "multibanco")
                                                                                                      then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringMultibanco
                                                                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "p24")
                                                                                                            then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringP24
                                                                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sepa_debit")
                                                                                                                  then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSepaDebit
                                                                                                                  else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sofort")
                                                                                                                        then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringSofort
                                                                                                                        else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "three_d_secure")
                                                                                                                              then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringThreeDSecure
                                                                                                                              else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "wechat")
                                                                                                                                    then PostCustomersCustomerSourcesIdResponseBody200Type'EnumStringWechat
                                                                                                                                    else PostCustomersCustomerSourcesIdResponseBody200Type'EnumOther val)
