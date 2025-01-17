{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postCustomersCustomerSourcesIdVerify
module StripeAPI.Operations.PostCustomersCustomerSourcesIdVerify where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
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

-- | > POST /v1/customers/{customer}/sources/{id}/verify
--
-- \<p>Verify a specified bank account for a given customer.\<\/p>
postCustomersCustomerSourcesIdVerify ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  PostCustomersCustomerSourcesIdVerifyParameters ->
  -- | The request body to send
  GHC.Maybe.Maybe PostCustomersCustomerSourcesIdVerifyRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCustomersCustomerSourcesIdVerifyResponse)
postCustomersCustomerSourcesIdVerify
  parameters
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostCustomersCustomerSourcesIdVerifyResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerSourcesIdVerifyResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              BankAccount
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerSourcesIdVerifyResponseDefault
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_0
            )
            response_0
      )
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (postCustomersCustomerSourcesIdVerifyParametersPathCustomer parameters))) GHC.Base.++ ("/sources/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (postCustomersCustomerSourcesIdVerifyParametersPathId parameters))) GHC.Base.++ "/verify"))))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/sources\/{id}\/verify.POST.parameters@ in the specification.
data PostCustomersCustomerSourcesIdVerifyParameters = PostCustomersCustomerSourcesIdVerifyParameters
  { -- | pathCustomer: Represents the parameter named \'customer\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerSourcesIdVerifyParametersPathCustomer :: Data.Text.Internal.Text,
    -- | pathId: Represents the parameter named \'id\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postCustomersCustomerSourcesIdVerifyParametersPathId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerSourcesIdVerifyParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathCustomer" Data.Aeson.Types.ToJSON..= postCustomersCustomerSourcesIdVerifyParametersPathCustomer obj : "pathId" Data.Aeson.Types.ToJSON..= postCustomersCustomerSourcesIdVerifyParametersPathId obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathCustomer" Data.Aeson.Types.ToJSON..= postCustomersCustomerSourcesIdVerifyParametersPathCustomer obj) GHC.Base.<> ("pathId" Data.Aeson.Types.ToJSON..= postCustomersCustomerSourcesIdVerifyParametersPathId obj))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdVerifyParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdVerifyParameters" (\obj -> (GHC.Base.pure PostCustomersCustomerSourcesIdVerifyParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId"))

-- | Create a new 'PostCustomersCustomerSourcesIdVerifyParameters' with all required fields.
mkPostCustomersCustomerSourcesIdVerifyParameters ::
  -- | 'postCustomersCustomerSourcesIdVerifyParametersPathCustomer'
  Data.Text.Internal.Text ->
  -- | 'postCustomersCustomerSourcesIdVerifyParametersPathId'
  Data.Text.Internal.Text ->
  PostCustomersCustomerSourcesIdVerifyParameters
mkPostCustomersCustomerSourcesIdVerifyParameters postCustomersCustomerSourcesIdVerifyParametersPathCustomer postCustomersCustomerSourcesIdVerifyParametersPathId =
  PostCustomersCustomerSourcesIdVerifyParameters
    { postCustomersCustomerSourcesIdVerifyParametersPathCustomer = postCustomersCustomerSourcesIdVerifyParametersPathCustomer,
      postCustomersCustomerSourcesIdVerifyParametersPathId = postCustomersCustomerSourcesIdVerifyParametersPathId
    }

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/sources\/{id}\/verify.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostCustomersCustomerSourcesIdVerifyRequestBody = PostCustomersCustomerSourcesIdVerifyRequestBody
  { -- | amounts: Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
    postCustomersCustomerSourcesIdVerifyRequestBodyAmounts :: (GHC.Maybe.Maybe ([GHC.Types.Int])),
    -- | expand: Specifies which fields in the response should be expanded.
    postCustomersCustomerSourcesIdVerifyRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerSourcesIdVerifyRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("amounts" Data.Aeson.Types.ToJSON..= postCustomersCustomerSourcesIdVerifyRequestBodyAmounts obj : "expand" Data.Aeson.Types.ToJSON..= postCustomersCustomerSourcesIdVerifyRequestBodyExpand obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("amounts" Data.Aeson.Types.ToJSON..= postCustomersCustomerSourcesIdVerifyRequestBodyAmounts obj) GHC.Base.<> ("expand" Data.Aeson.Types.ToJSON..= postCustomersCustomerSourcesIdVerifyRequestBodyExpand obj))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerSourcesIdVerifyRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerSourcesIdVerifyRequestBody" (\obj -> (GHC.Base.pure PostCustomersCustomerSourcesIdVerifyRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amounts")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))

-- | Create a new 'PostCustomersCustomerSourcesIdVerifyRequestBody' with all required fields.
mkPostCustomersCustomerSourcesIdVerifyRequestBody :: PostCustomersCustomerSourcesIdVerifyRequestBody
mkPostCustomersCustomerSourcesIdVerifyRequestBody =
  PostCustomersCustomerSourcesIdVerifyRequestBody
    { postCustomersCustomerSourcesIdVerifyRequestBodyAmounts = GHC.Maybe.Nothing,
      postCustomersCustomerSourcesIdVerifyRequestBodyExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postCustomersCustomerSourcesIdVerify'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerSourcesIdVerifyResponseError' is used.
data PostCustomersCustomerSourcesIdVerifyResponse
  = -- | Means either no matching case available or a parse error
    PostCustomersCustomerSourcesIdVerifyResponseError GHC.Base.String
  | -- | Successful response.
    PostCustomersCustomerSourcesIdVerifyResponse200 BankAccount
  | -- | Error response.
    PostCustomersCustomerSourcesIdVerifyResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
