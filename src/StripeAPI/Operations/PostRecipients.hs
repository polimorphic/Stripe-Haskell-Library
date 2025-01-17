{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postRecipients
module StripeAPI.Operations.PostRecipients where

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

-- | > POST /v1/recipients
--
-- \<p>Creates a new \<code>Recipient\<\/code> object and verifies the recipient’s identity.
-- Also verifies the recipient’s bank account information or debit card, if either is provided.\<\/p>
postRecipients ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | The request body to send
  PostRecipientsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostRecipientsResponse)
postRecipients body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostRecipientsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostRecipientsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Recipient
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostRecipientsResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/recipients") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/recipients.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostRecipientsRequestBody = PostRecipientsRequestBody
  { -- | bank_account: A bank account to attach to the recipient. You can provide either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe-js), or a dictionary containing a user\'s bank account details, with the options described below.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRecipientsRequestBodyBankAccount :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | card: A U.S. Visa or MasterCard debit card (_not_ prepaid) to attach to the recipient. If the debit card is not valid, recipient creation will fail. You can provide either a token, like the ones returned by [Stripe.js](https:\/\/stripe.com\/docs\/stripe-js), or a dictionary containing a user\'s debit card details, with the options described below. Although not all information is required, the extra info helps prevent fraud.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRecipientsRequestBodyCard :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | description: An arbitrary string which you can attach to a \`Recipient\` object. It is displayed alongside the recipient in the web interface.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRecipientsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | email: The recipient\'s email address. It is displayed alongside the recipient in the web interface, and can be useful for searching and tracking.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRecipientsRequestBodyEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postRecipientsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postRecipientsRequestBodyMetadata :: (GHC.Maybe.Maybe PostRecipientsRequestBodyMetadata'Variants),
    -- | name: The recipient\'s full, legal name. For type \`individual\`, should be in the format \`First Last\`, \`First Middle Last\`, or \`First M Last\` (no prefixes or suffixes). For \`corporation\`, the full, incorporated name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRecipientsRequestBodyName :: Data.Text.Internal.Text,
    -- | tax_id: The recipient\'s tax ID, as a string. For type \`individual\`, the full SSN; for type \`corporation\`, the full EIN.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRecipientsRequestBodyTaxId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | type: Type of the recipient: either \`individual\` or \`corporation\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postRecipientsRequestBodyType :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostRecipientsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank_account" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyBankAccount obj : "card" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyCard obj : "description" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyDescription obj : "email" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyEmail obj : "expand" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyExpand obj : "metadata" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyMetadata obj : "name" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyName obj : "tax_id" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyTaxId obj : "type" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyType obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("bank_account" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyBankAccount obj) GHC.Base.<> (("card" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyCard obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyDescription obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyEmail obj) GHC.Base.<> (("expand" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyExpand obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyMetadata obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyName obj) GHC.Base.<> (("tax_id" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyTaxId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postRecipientsRequestBodyType obj)))))))))

instance Data.Aeson.Types.FromJSON.FromJSON PostRecipientsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostRecipientsRequestBody" (\obj -> ((((((((GHC.Base.pure PostRecipientsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tax_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'PostRecipientsRequestBody' with all required fields.
mkPostRecipientsRequestBody ::
  -- | 'postRecipientsRequestBodyName'
  Data.Text.Internal.Text ->
  -- | 'postRecipientsRequestBodyType'
  Data.Text.Internal.Text ->
  PostRecipientsRequestBody
mkPostRecipientsRequestBody postRecipientsRequestBodyName postRecipientsRequestBodyType =
  PostRecipientsRequestBody
    { postRecipientsRequestBodyBankAccount = GHC.Maybe.Nothing,
      postRecipientsRequestBodyCard = GHC.Maybe.Nothing,
      postRecipientsRequestBodyDescription = GHC.Maybe.Nothing,
      postRecipientsRequestBodyEmail = GHC.Maybe.Nothing,
      postRecipientsRequestBodyExpand = GHC.Maybe.Nothing,
      postRecipientsRequestBodyMetadata = GHC.Maybe.Nothing,
      postRecipientsRequestBodyName = postRecipientsRequestBodyName,
      postRecipientsRequestBodyTaxId = GHC.Maybe.Nothing,
      postRecipientsRequestBodyType = postRecipientsRequestBodyType
    }

-- | Defines the oneOf schema located at @paths.\/v1\/recipients.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostRecipientsRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostRecipientsRequestBodyMetadata'EmptyString
  | PostRecipientsRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostRecipientsRequestBodyMetadata'Variants where
  toJSON (PostRecipientsRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostRecipientsRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostRecipientsRequestBodyMetadata'Variants where
  parseJSON val =
    if
        | val GHC.Classes.== "" -> GHC.Base.pure PostRecipientsRequestBodyMetadata'EmptyString
        | GHC.Base.otherwise -> case (PostRecipientsRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postRecipients'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostRecipientsResponseError' is used.
data PostRecipientsResponse
  = -- | Means either no matching case available or a parse error
    PostRecipientsResponseError GHC.Base.String
  | -- | Successful response.
    PostRecipientsResponse200 Recipient
  | -- | Error response.
    PostRecipientsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
