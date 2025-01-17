{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation deleteAccount
module StripeAPI.Operations.DeleteAccount where

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

-- | > DELETE /v1/account
--
-- \<p>With \<a href=\"\/docs\/connect\">Connect\<\/a>, you can delete accounts you manage.\<\/p>
--
-- \<p>Accounts created using test-mode keys can be deleted at any time. Custom or Express accounts created using live-mode keys can only be deleted once all balances are zero.\<\/p>
--
-- \<p>If you want to delete your own account, use the \<a href=\"https:\/\/dashboard.stripe.com\/account\">account information tab in your account settings\<\/a> instead.\<\/p>
deleteAccount ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  GHC.Maybe.Maybe DeleteAccountRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response DeleteAccountResponse)
deleteAccount body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either DeleteAccountResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteAccountResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            DeletedAccount
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   DeleteAccountResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack "/v1/account") GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/account.DELETE.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data DeleteAccountRequestBody = DeleteAccountRequestBody
  { -- | account
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    deleteAccountRequestBodyAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON DeleteAccountRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("account" Data.Aeson.Types.ToJSON..= deleteAccountRequestBodyAccount obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("account" Data.Aeson.Types.ToJSON..= deleteAccountRequestBodyAccount obj)

instance Data.Aeson.Types.FromJSON.FromJSON DeleteAccountRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteAccountRequestBody" (\obj -> GHC.Base.pure DeleteAccountRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account"))

-- | Create a new 'DeleteAccountRequestBody' with all required fields.
mkDeleteAccountRequestBody :: DeleteAccountRequestBody
mkDeleteAccountRequestBody = DeleteAccountRequestBody {deleteAccountRequestBodyAccount = GHC.Maybe.Nothing}

-- | Represents a response of the operation 'deleteAccount'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteAccountResponseError' is used.
data DeleteAccountResponse
  = -- | Means either no matching case available or a parse error
    DeleteAccountResponseError GHC.Base.String
  | -- | Successful response.
    DeleteAccountResponse200 DeletedAccount
  | -- | Error response.
    DeleteAccountResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
