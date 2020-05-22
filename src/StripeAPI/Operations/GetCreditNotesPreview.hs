{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getCreditNotesPreview
module StripeAPI.Operations.GetCreditNotesPreview where

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

-- | > GET /v1/credit_notes/preview
-- 
-- \<p>Get a preview of a credit note without creating it.\<\/p>
getCreditNotesPreview :: forall m s . (StripeAPI.Common.MonadHTTP m, StripeAPI.Common.SecurityScheme s) => StripeAPI.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                          -- ^ amount: The integer amount in **%s** representing the total amount of the credit note.
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                          -- ^ credit_amount: The integer amount in **%s** representing the amount to credit the customer\'s balance, which will be automatically applied to their next invoice.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                   -- ^ expand: Specifies which fields in the response should be expanded.
  -> GHC.Base.String                                                                                                                   -- ^ invoice: ID of the invoice. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                   -- ^ lines: Line items that make up the credit note.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                   -- ^ memo: The credit note\'s memo appears on the credit note PDF. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                   -- ^ metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                          -- ^ out_of_band_amount: The integer amount in **%s** representing the amount that is credited outside of Stripe.
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                   -- ^ reason: Reason for issuing this credit note, one of \`duplicate\`, \`fraudulent\`, \`order_change\`, or \`product_unsatisfactory\`
  -> GHC.Maybe.Maybe GHC.Base.String                                                                                                   -- ^ refund: ID of an existing refund to link this credit note to.
  -> GHC.Maybe.Maybe GHC.Integer.Type.Integer                                                                                          -- ^ refund_amount: The integer amount in **%s** representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
  -> GetCreditNotesPreviewRequestBody                                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetCreditNotesPreviewResponse)) -- ^ Monad containing the result of the operation
getCreditNotesPreview config
                      amount
                      creditAmount
                      expand
                      invoice
                      lines
                      memo
                      metadata
                      outOfBandAmount
                      reason
                      refund
                      refundAmount
                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetCreditNotesPreviewResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCreditNotesPreviewResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 CreditNote)
                                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCreditNotesPreviewResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/credit_notes/preview") ((Data.Text.pack "amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> amount) : ((Data.Text.pack "credit_amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> creditAmount) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "invoice",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel invoice) : ((Data.Text.pack "lines",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> lines) : ((Data.Text.pack "memo",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> memo) : ((Data.Text.pack "metadata",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> metadata) : ((Data.Text.pack "out_of_band_amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> outOfBandAmount) : ((Data.Text.pack "reason",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> reason) : ((Data.Text.pack "refund",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> refund) : ((Data.Text.pack "refund_amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> refundAmount) : []))))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/credit_notes/preview
-- 
-- The same as 'getCreditNotesPreview' but returns the raw 'Data.ByteString.Char8.ByteString'
getCreditNotesPreviewRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                          StripeAPI.Common.SecurityScheme s) =>
                            StripeAPI.Common.Configuration s ->
                            GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                            GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                            GHC.Maybe.Maybe GHC.Base.String ->
                            GHC.Base.String ->
                            GHC.Maybe.Maybe GHC.Base.String ->
                            GHC.Maybe.Maybe GHC.Base.String ->
                            GHC.Maybe.Maybe GHC.Base.String ->
                            GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                            GHC.Maybe.Maybe GHC.Base.String ->
                            GHC.Maybe.Maybe GHC.Base.String ->
                            GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                            GetCreditNotesPreviewRequestBody ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getCreditNotesPreviewRaw config
                         amount
                         creditAmount
                         expand
                         invoice
                         lines
                         memo
                         metadata
                         outOfBandAmount
                         reason
                         refund
                         refundAmount
                         body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/credit_notes/preview") ((Data.Text.pack "amount",
                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> amount) : ((Data.Text.pack "credit_amount",
                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> creditAmount) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "invoice",
                                                                                                                                                                                                                                                                                                                                                                               GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel invoice) : ((Data.Text.pack "lines",
                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> lines) : ((Data.Text.pack "memo",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> memo) : ((Data.Text.pack "metadata",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> metadata) : ((Data.Text.pack "out_of_band_amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> outOfBandAmount) : ((Data.Text.pack "reason",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> reason) : ((Data.Text.pack "refund",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> refund) : ((Data.Text.pack "refund_amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> refundAmount) : []))))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/credit_notes/preview
-- 
-- Monadic version of 'getCreditNotesPreview' (use with 'StripeAPI.Common.runWithConfiguration')
getCreditNotesPreviewM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                        StripeAPI.Common.SecurityScheme s) =>
                          GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                          GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Base.String ->
                          GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                          GetCreditNotesPreviewRequestBody ->
                          Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response GetCreditNotesPreviewResponse))
getCreditNotesPreviewM amount
                       creditAmount
                       expand
                       invoice
                       lines
                       memo
                       metadata
                       outOfBandAmount
                       reason
                       refund
                       refundAmount
                       body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetCreditNotesPreviewResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCreditNotesPreviewResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                  CreditNote)
                                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCreditNotesPreviewResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/credit_notes/preview") ((Data.Text.pack "amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> amount) : ((Data.Text.pack "credit_amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> creditAmount) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "invoice",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel invoice) : ((Data.Text.pack "lines",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> lines) : ((Data.Text.pack "memo",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> memo) : ((Data.Text.pack "metadata",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> metadata) : ((Data.Text.pack "out_of_band_amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> outOfBandAmount) : ((Data.Text.pack "reason",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> reason) : ((Data.Text.pack "refund",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> refund) : ((Data.Text.pack "refund_amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> refundAmount) : []))))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | > GET /v1/credit_notes/preview
-- 
-- Monadic version of 'getCreditNotesPreviewRaw' (use with 'StripeAPI.Common.runWithConfiguration')
getCreditNotesPreviewRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                                           StripeAPI.Common.SecurityScheme s) =>
                             GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                             GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Base.String ->
                             GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                             GetCreditNotesPreviewRequestBody ->
                             Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getCreditNotesPreviewRawM amount
                          creditAmount
                          expand
                          invoice
                          lines
                          memo
                          metadata
                          outOfBandAmount
                          reason
                          refund
                          refundAmount
                          body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/credit_notes/preview") ((Data.Text.pack "amount",
                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> amount) : ((Data.Text.pack "credit_amount",
                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> creditAmount) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "invoice",
                                                                                                                                                                                                                                                                                                                                                                          GHC.Base.Just GHC.Base.$ StripeAPI.Common.stringifyModel invoice) : ((Data.Text.pack "lines",
                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> lines) : ((Data.Text.pack "memo",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> memo) : ((Data.Text.pack "metadata",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> metadata) : ((Data.Text.pack "out_of_band_amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> outOfBandAmount) : ((Data.Text.pack "reason",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> reason) : ((Data.Text.pack "refund",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> refund) : ((Data.Text.pack "refund_amount",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> refundAmount) : []))))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the data type for the schema getCreditNotesPreviewRequestBody
-- 
-- 
data GetCreditNotesPreviewRequestBody = GetCreditNotesPreviewRequestBody {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCreditNotesPreviewRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetCreditNotesPreviewRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCreditNotesPreviewRequestBody" (\obj -> GHC.Base.pure GetCreditNotesPreviewRequestBody)
-- | Represents a response of the operation 'getCreditNotesPreview'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCreditNotesPreviewResponseError' is used.
data GetCreditNotesPreviewResponse =                   
   GetCreditNotesPreviewResponseError GHC.Base.String  -- ^ Means either no matching case available or a parse error
  | GetCreditNotesPreviewResponse200 CreditNote        -- ^ Successful response.
  | GetCreditNotesPreviewResponseDefault Error         -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
