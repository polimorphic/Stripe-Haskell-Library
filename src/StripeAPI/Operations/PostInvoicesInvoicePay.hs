-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postInvoicesInvoicePay
module StripeAPI.Operations.PostInvoicesInvoicePay where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
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
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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

-- | > POST /v1/invoices/{invoice}/pay
-- 
-- \<p>Stripe automatically creates and then attempts to collect payment on invoices for customers on subscriptions according to your \<a href=\"https:\/\/dashboard.stripe.com\/account\/billing\/automatic\">subscriptions settings\<\/a>. However, if you’d like to attempt payment on an invoice out of the normal collection schedule or for some other reason, you can do so.\<\/p>
postInvoicesInvoicePay :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ invoice | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostInvoicesInvoicePayRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostInvoicesInvoicePayResponse) -- ^ Monadic computation which returns the result of the operation
postInvoicesInvoicePay invoice
                       body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostInvoicesInvoicePayResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoicePayResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     Invoice)
                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostInvoicesInvoicePayResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/invoices/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel invoice)) GHC.Base.++ "/pay"))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/invoices\/{invoice}\/pay.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostInvoicesInvoicePayRequestBody = PostInvoicesInvoicePayRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postInvoicesInvoicePayRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | forgive: In cases where the source used to pay the invoice has insufficient funds, passing \`forgive=true\` controls whether a charge should be attempted for the full amount available on the source, up to the amount to fully pay the invoice. This effectively forgives the difference between the amount available on the source and the amount due. 
  -- 
  -- Passing \`forgive=false\` will fail the charge if the source hasn\'t been pre-funded with the right amount. An example for this case is with ACH Credit Transfers and wires: if the amount wired is less than the amount due by a small amount, you might want to forgive the difference. Defaults to \`false\`.
  , postInvoicesInvoicePayRequestBodyForgive :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | off_session: Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to \`true\` (off-session).
  , postInvoicesInvoicePayRequestBodyOffSession :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | paid_out_of_band: Boolean representing whether an invoice is paid outside of Stripe. This will result in no charge being made. Defaults to \`false\`.
  , postInvoicesInvoicePayRequestBodyPaidOutOfBand :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | payment_method: A PaymentMethod to be charged. The PaymentMethod must be the ID of a PaymentMethod belonging to the customer associated with the invoice being paid.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesInvoicePayRequestBodyPaymentMethod :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | source: A payment source to be charged. The source must be the ID of a source belonging to the customer associated with the invoice being paid.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postInvoicesInvoicePayRequestBodySource :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostInvoicesInvoicePayRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("forgive" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodyForgive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("off_session" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodyOffSession obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paid_out_of_band" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodyPaidOutOfBand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodyPaymentMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodySource obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("forgive" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodyForgive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("off_session" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodyOffSession obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paid_out_of_band" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodyPaidOutOfBand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodyPaymentMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source" Data.Aeson.Types.ToJSON..=)) (postInvoicesInvoicePayRequestBodySource obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostInvoicesInvoicePayRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostInvoicesInvoicePayRequestBody" (\obj -> (((((GHC.Base.pure PostInvoicesInvoicePayRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "forgive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "off_session")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "paid_out_of_band")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "source"))
-- | Create a new 'PostInvoicesInvoicePayRequestBody' with all required fields.
mkPostInvoicesInvoicePayRequestBody :: PostInvoicesInvoicePayRequestBody
mkPostInvoicesInvoicePayRequestBody = PostInvoicesInvoicePayRequestBody{postInvoicesInvoicePayRequestBodyExpand = GHC.Maybe.Nothing,
                                                                        postInvoicesInvoicePayRequestBodyForgive = GHC.Maybe.Nothing,
                                                                        postInvoicesInvoicePayRequestBodyOffSession = GHC.Maybe.Nothing,
                                                                        postInvoicesInvoicePayRequestBodyPaidOutOfBand = GHC.Maybe.Nothing,
                                                                        postInvoicesInvoicePayRequestBodyPaymentMethod = GHC.Maybe.Nothing,
                                                                        postInvoicesInvoicePayRequestBodySource = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postInvoicesInvoicePay'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostInvoicesInvoicePayResponseError' is used.
data PostInvoicesInvoicePayResponse =
   PostInvoicesInvoicePayResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostInvoicesInvoicePayResponse200 Invoice -- ^ Successful response.
  | PostInvoicesInvoicePayResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
