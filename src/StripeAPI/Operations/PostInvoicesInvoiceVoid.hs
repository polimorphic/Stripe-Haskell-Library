{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation postInvoicesInvoiceVoid
module StripeAPI.Operations.PostInvoicesInvoiceVoid where

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

-- | > POST /v1/invoices/{invoice}/void
--
-- \<p>Mark a finalized invoice as void. This cannot be undone. Voiding an invoice is similar to \<a href=\"\#delete_invoice\">deletion\<\/a>, however it only applies to finalized invoices and maintains a papertrail where the invoice can still be found.\<\/p>
postInvoicesInvoiceVoid ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | invoice | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostInvoicesInvoiceVoidRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostInvoicesInvoiceVoidResponse)
postInvoicesInvoiceVoid
  invoice
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostInvoicesInvoiceVoidResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostInvoicesInvoiceVoidResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either GHC.Base.String
                                                              Invoice
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostInvoicesInvoiceVoidResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/void"))) [] body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/invoices\/{invoice}\/void.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostInvoicesInvoiceVoidRequestBody
  = PostInvoicesInvoiceVoidRequestBody
      { -- | expand: Specifies which fields in the response should be expanded.
        postInvoicesInvoiceVoidRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostInvoicesInvoiceVoidRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("expand" Data.Aeson.Types.ToJSON..= postInvoicesInvoiceVoidRequestBodyExpand obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("expand" Data.Aeson.Types.ToJSON..= postInvoicesInvoiceVoidRequestBodyExpand obj)

instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoiceVoidRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoiceVoidRequestBody" (\obj -> GHC.Base.pure PostInvoicesInvoiceVoidRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand"))

-- | Create a new 'PostInvoicesInvoiceVoidRequestBody' with all required fields.
mkPostInvoicesInvoiceVoidRequestBody :: PostInvoicesInvoiceVoidRequestBody
mkPostInvoicesInvoiceVoidRequestBody = PostInvoicesInvoiceVoidRequestBody {postInvoicesInvoiceVoidRequestBodyExpand = GHC.Maybe.Nothing}

-- | Represents a response of the operation 'postInvoicesInvoiceVoid'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostInvoicesInvoiceVoidResponseError' is used.
data PostInvoicesInvoiceVoidResponse
  = -- | Means either no matching case available or a parse error
    PostInvoicesInvoiceVoidResponseError GHC.Base.String
  | -- | Successful response.
    PostInvoicesInvoiceVoidResponse200 Invoice
  | -- | Error response.
    PostInvoicesInvoiceVoidResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
