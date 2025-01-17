{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deleteCustomersCustomerTaxIdsId
module StripeAPI.Operations.DeleteCustomersCustomerTaxIdsId where

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

-- | > DELETE /v1/customers/{customer}/tax_ids/{id}
--
-- \<p>Deletes an existing \<code>TaxID\<\/code> object.\<\/p>
deleteCustomersCustomerTaxIdsId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteCustomersCustomerTaxIdsIdParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteCustomersCustomerTaxIdsIdResponse)
deleteCustomersCustomerTaxIdsId parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either DeleteCustomersCustomerTaxIdsIdResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteCustomersCustomerTaxIdsIdResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            DeletedTaxId
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteCustomersCustomerTaxIdsIdResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (deleteCustomersCustomerTaxIdsIdParametersPathCustomer parameters))) GHC.Base.++ ("/tax_ids/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (deleteCustomersCustomerTaxIdsIdParametersPathId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/tax_ids\/{id}.DELETE.parameters@ in the specification.
data DeleteCustomersCustomerTaxIdsIdParameters = DeleteCustomersCustomerTaxIdsIdParameters
  { -- | pathCustomer: Represents the parameter named \'customer\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deleteCustomersCustomerTaxIdsIdParametersPathCustomer :: Data.Text.Internal.Text,
    -- | pathId: Represents the parameter named \'id\'
    deleteCustomersCustomerTaxIdsIdParametersPathId :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteCustomersCustomerTaxIdsIdParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathCustomer" Data.Aeson.Types.ToJSON..= deleteCustomersCustomerTaxIdsIdParametersPathCustomer obj : "pathId" Data.Aeson.Types.ToJSON..= deleteCustomersCustomerTaxIdsIdParametersPathId obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathCustomer" Data.Aeson.Types.ToJSON..= deleteCustomersCustomerTaxIdsIdParametersPathCustomer obj) GHC.Base.<> ("pathId" Data.Aeson.Types.ToJSON..= deleteCustomersCustomerTaxIdsIdParametersPathId obj))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteCustomersCustomerTaxIdsIdParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteCustomersCustomerTaxIdsIdParameters" (\obj -> (GHC.Base.pure DeleteCustomersCustomerTaxIdsIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId"))

-- | Create a new 'DeleteCustomersCustomerTaxIdsIdParameters' with all required fields.
mkDeleteCustomersCustomerTaxIdsIdParameters ::
  -- | 'deleteCustomersCustomerTaxIdsIdParametersPathCustomer'
  Data.Text.Internal.Text ->
  -- | 'deleteCustomersCustomerTaxIdsIdParametersPathId'
  Data.Text.Internal.Text ->
  DeleteCustomersCustomerTaxIdsIdParameters
mkDeleteCustomersCustomerTaxIdsIdParameters deleteCustomersCustomerTaxIdsIdParametersPathCustomer deleteCustomersCustomerTaxIdsIdParametersPathId =
  DeleteCustomersCustomerTaxIdsIdParameters
    { deleteCustomersCustomerTaxIdsIdParametersPathCustomer = deleteCustomersCustomerTaxIdsIdParametersPathCustomer,
      deleteCustomersCustomerTaxIdsIdParametersPathId = deleteCustomersCustomerTaxIdsIdParametersPathId
    }

-- | Represents a response of the operation 'deleteCustomersCustomerTaxIdsId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteCustomersCustomerTaxIdsIdResponseError' is used.
data DeleteCustomersCustomerTaxIdsIdResponse
  = -- | Means either no matching case available or a parse error
    DeleteCustomersCustomerTaxIdsIdResponseError GHC.Base.String
  | -- | Successful response.
    DeleteCustomersCustomerTaxIdsIdResponse200 DeletedTaxId
  | -- | Error response.
    DeleteCustomersCustomerTaxIdsIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
