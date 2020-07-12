{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation deleteAccountsAccountBankAccountsId
module StripeAPI.Operations.DeleteAccountsAccountBankAccountsId where

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

-- | > DELETE /v1/accounts/{account}/bank_accounts/{id}
--
-- \<p>Delete a specified external account for a given account.\<\/p>
deleteAccountsAccountBankAccountsId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  DeleteAccountsAccountBankAccountsIdParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response DeleteAccountsAccountBankAccountsIdResponse)
deleteAccountsAccountBankAccountsId parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either DeleteAccountsAccountBankAccountsIdResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteAccountsAccountBankAccountsIdResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
                                                            DeletedExternalAccount
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteAccountsAccountBankAccountsIdResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/v1/accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (deleteAccountsAccountBankAccountsIdParametersPathAccount parameters))) GHC.Base.++ ("/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (deleteAccountsAccountBankAccountsIdParametersPathId parameters))) GHC.Base.++ ""))))) [])

-- | Defines the object schema located at @paths.\/v1\/accounts\/{account}\/bank_accounts\/{id}.DELETE.parameters@ in the specification.
data DeleteAccountsAccountBankAccountsIdParameters
  = DeleteAccountsAccountBankAccountsIdParameters
      { -- | pathAccount: Represents the parameter named \'account\'
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        deleteAccountsAccountBankAccountsIdParametersPathAccount :: Data.Text.Internal.Text,
        -- | pathId: Represents the parameter named \'id\'
        deleteAccountsAccountBankAccountsIdParametersPathId :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteAccountsAccountBankAccountsIdParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathAccount" Data.Aeson.Types.ToJSON..= deleteAccountsAccountBankAccountsIdParametersPathAccount obj : "pathId" Data.Aeson.Types.ToJSON..= deleteAccountsAccountBankAccountsIdParametersPathId obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathAccount" Data.Aeson.Types.ToJSON..= deleteAccountsAccountBankAccountsIdParametersPathAccount obj) GHC.Base.<> ("pathId" Data.Aeson.Types.ToJSON..= deleteAccountsAccountBankAccountsIdParametersPathId obj))

instance Data.Aeson.Types.FromJSON.FromJSON DeleteAccountsAccountBankAccountsIdParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteAccountsAccountBankAccountsIdParameters" (\obj -> (GHC.Base.pure DeleteAccountsAccountBankAccountsIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAccount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId"))

-- | Create a new 'DeleteAccountsAccountBankAccountsIdParameters' with all required fields.
mkDeleteAccountsAccountBankAccountsIdParameters ::
  -- | 'deleteAccountsAccountBankAccountsIdParametersPathAccount'
  Data.Text.Internal.Text ->
  -- | 'deleteAccountsAccountBankAccountsIdParametersPathId'
  Data.Text.Internal.Text ->
  DeleteAccountsAccountBankAccountsIdParameters
mkDeleteAccountsAccountBankAccountsIdParameters deleteAccountsAccountBankAccountsIdParametersPathAccount deleteAccountsAccountBankAccountsIdParametersPathId =
  DeleteAccountsAccountBankAccountsIdParameters
    { deleteAccountsAccountBankAccountsIdParametersPathAccount = deleteAccountsAccountBankAccountsIdParametersPathAccount,
      deleteAccountsAccountBankAccountsIdParametersPathId = deleteAccountsAccountBankAccountsIdParametersPathId
    }

-- | Represents a response of the operation 'deleteAccountsAccountBankAccountsId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteAccountsAccountBankAccountsIdResponseError' is used.
data DeleteAccountsAccountBankAccountsIdResponse
  = -- | Means either no matching case available or a parse error
    DeleteAccountsAccountBankAccountsIdResponseError GHC.Base.String
  | -- | Successful response.
    DeleteAccountsAccountBankAccountsIdResponse200 DeletedExternalAccount
  | -- | Error response.
    DeleteAccountsAccountBankAccountsIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
