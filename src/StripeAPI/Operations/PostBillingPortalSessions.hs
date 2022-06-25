-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postBillingPortalSessions
module StripeAPI.Operations.PostBillingPortalSessions where

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

-- | > POST /v1/billing_portal/sessions
-- 
-- \<p>Creates a session of the customer portal.\<\/p>
postBillingPortalSessions :: forall m . StripeAPI.Common.MonadHTTP m => PostBillingPortalSessionsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostBillingPortalSessionsResponse) -- ^ Monadic computation which returns the result of the operation
postBillingPortalSessions body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostBillingPortalSessionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostBillingPortalSessionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              BillingPortal'session)
                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostBillingPortalSessionsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/billing_portal/sessions") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/billing_portal\/sessions.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostBillingPortalSessionsRequestBody = PostBillingPortalSessionsRequestBody {
  -- | configuration: The ID of an existing [configuration](https:\/\/stripe.com\/docs\/api\/customer_portal\/configuration) to use for this session, describing its functionality and features. If not specified, the session uses the default configuration.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postBillingPortalSessionsRequestBodyConfiguration :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | customer: The ID of an existing customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postBillingPortalSessionsRequestBodyCustomer :: Data.Text.Internal.Text
  -- | expand: Specifies which fields in the response should be expanded.
  , postBillingPortalSessionsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | locale: The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s \`preferred_locales\` or browser’s locale is used.
  , postBillingPortalSessionsRequestBodyLocale :: (GHC.Maybe.Maybe PostBillingPortalSessionsRequestBodyLocale')
  -- | on_behalf_of: The \`on_behalf_of\` account to use for this session. When specified, only subscriptions and invoices with this \`on_behalf_of\` account appear in the portal. For more information, see the [docs](https:\/\/stripe.com\/docs\/connect\/charges-transfers\#on-behalf-of). Use the [Accounts API](https:\/\/stripe.com\/docs\/api\/accounts\/object\#account_object-settings-branding) to modify the \`on_behalf_of\` account\'s branding settings, which the portal displays.
  , postBillingPortalSessionsRequestBodyOnBehalfOf :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | return_url: The default URL to redirect customers to when they click on the portal\'s link to return to your website.
  , postBillingPortalSessionsRequestBodyReturnUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostBillingPortalSessionsRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("configuration" Data.Aeson.Types.ToJSON..=)) (postBillingPortalSessionsRequestBodyConfiguration obj) : ["customer" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postBillingPortalSessionsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("locale" Data.Aeson.Types.ToJSON..=)) (postBillingPortalSessionsRequestBodyLocale obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("on_behalf_of" Data.Aeson.Types.ToJSON..=)) (postBillingPortalSessionsRequestBodyOnBehalfOf obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("return_url" Data.Aeson.Types.ToJSON..=)) (postBillingPortalSessionsRequestBodyReturnUrl obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("configuration" Data.Aeson.Types.ToJSON..=)) (postBillingPortalSessionsRequestBodyConfiguration obj) : ["customer" Data.Aeson.Types.ToJSON..= postBillingPortalSessionsRequestBodyCustomer obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postBillingPortalSessionsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("locale" Data.Aeson.Types.ToJSON..=)) (postBillingPortalSessionsRequestBodyLocale obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("on_behalf_of" Data.Aeson.Types.ToJSON..=)) (postBillingPortalSessionsRequestBodyOnBehalfOf obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("return_url" Data.Aeson.Types.ToJSON..=)) (postBillingPortalSessionsRequestBodyReturnUrl obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostBillingPortalSessionsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostBillingPortalSessionsRequestBody" (\obj -> (((((GHC.Base.pure PostBillingPortalSessionsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "configuration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "locale")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "on_behalf_of")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "return_url"))
-- | Create a new 'PostBillingPortalSessionsRequestBody' with all required fields.
mkPostBillingPortalSessionsRequestBody :: Data.Text.Internal.Text -- ^ 'postBillingPortalSessionsRequestBodyCustomer'
  -> PostBillingPortalSessionsRequestBody
mkPostBillingPortalSessionsRequestBody postBillingPortalSessionsRequestBodyCustomer = PostBillingPortalSessionsRequestBody{postBillingPortalSessionsRequestBodyConfiguration = GHC.Maybe.Nothing,
                                                                                                                           postBillingPortalSessionsRequestBodyCustomer = postBillingPortalSessionsRequestBodyCustomer,
                                                                                                                           postBillingPortalSessionsRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                                           postBillingPortalSessionsRequestBodyLocale = GHC.Maybe.Nothing,
                                                                                                                           postBillingPortalSessionsRequestBodyOnBehalfOf = GHC.Maybe.Nothing,
                                                                                                                           postBillingPortalSessionsRequestBodyReturnUrl = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/billing_portal\/sessions.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.locale@ in the specification.
-- 
-- The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s \`preferred_locales\` or browser’s locale is used.
data PostBillingPortalSessionsRequestBodyLocale' =
   PostBillingPortalSessionsRequestBodyLocale'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostBillingPortalSessionsRequestBodyLocale'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostBillingPortalSessionsRequestBodyLocale'EnumAuto -- ^ Represents the JSON value @"auto"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumBg -- ^ Represents the JSON value @"bg"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumCs -- ^ Represents the JSON value @"cs"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumDa -- ^ Represents the JSON value @"da"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumDe -- ^ Represents the JSON value @"de"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEl -- ^ Represents the JSON value @"el"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEn -- ^ Represents the JSON value @"en"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEnAU -- ^ Represents the JSON value @"en-AU"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEnCA -- ^ Represents the JSON value @"en-CA"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEnGB -- ^ Represents the JSON value @"en-GB"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEnIE -- ^ Represents the JSON value @"en-IE"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEnIN -- ^ Represents the JSON value @"en-IN"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEnNZ -- ^ Represents the JSON value @"en-NZ"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEnSG -- ^ Represents the JSON value @"en-SG"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEs -- ^ Represents the JSON value @"es"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEs_419 -- ^ Represents the JSON value @"es-419"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumEt -- ^ Represents the JSON value @"et"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumFi -- ^ Represents the JSON value @"fi"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumFil -- ^ Represents the JSON value @"fil"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumFr -- ^ Represents the JSON value @"fr"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumFrCA -- ^ Represents the JSON value @"fr-CA"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumHr -- ^ Represents the JSON value @"hr"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumHu -- ^ Represents the JSON value @"hu"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumId -- ^ Represents the JSON value @"id"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumIt -- ^ Represents the JSON value @"it"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumJa -- ^ Represents the JSON value @"ja"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumKo -- ^ Represents the JSON value @"ko"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumLt -- ^ Represents the JSON value @"lt"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumLv -- ^ Represents the JSON value @"lv"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumMs -- ^ Represents the JSON value @"ms"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumMt -- ^ Represents the JSON value @"mt"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumNb -- ^ Represents the JSON value @"nb"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumNl -- ^ Represents the JSON value @"nl"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumPl -- ^ Represents the JSON value @"pl"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumPt -- ^ Represents the JSON value @"pt"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumPtBR -- ^ Represents the JSON value @"pt-BR"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumRo -- ^ Represents the JSON value @"ro"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumRu -- ^ Represents the JSON value @"ru"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumSk -- ^ Represents the JSON value @"sk"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumSl -- ^ Represents the JSON value @"sl"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumSv -- ^ Represents the JSON value @"sv"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumTh -- ^ Represents the JSON value @"th"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumTr -- ^ Represents the JSON value @"tr"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumVi -- ^ Represents the JSON value @"vi"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumZh -- ^ Represents the JSON value @"zh"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumZhHK -- ^ Represents the JSON value @"zh-HK"@
  | PostBillingPortalSessionsRequestBodyLocale'EnumZhTW -- ^ Represents the JSON value @"zh-TW"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostBillingPortalSessionsRequestBodyLocale'
    where toJSON (PostBillingPortalSessionsRequestBodyLocale'Other val) = val
          toJSON (PostBillingPortalSessionsRequestBodyLocale'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumAuto) = "auto"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumBg) = "bg"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumCs) = "cs"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumDa) = "da"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumDe) = "de"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEl) = "el"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEn) = "en"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEnAU) = "en-AU"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEnCA) = "en-CA"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEnGB) = "en-GB"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEnIE) = "en-IE"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEnIN) = "en-IN"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEnNZ) = "en-NZ"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEnSG) = "en-SG"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEs) = "es"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEs_419) = "es-419"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumEt) = "et"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumFi) = "fi"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumFil) = "fil"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumFr) = "fr"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumFrCA) = "fr-CA"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumHr) = "hr"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumHu) = "hu"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumId) = "id"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumIt) = "it"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumJa) = "ja"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumKo) = "ko"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumLt) = "lt"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumLv) = "lv"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumMs) = "ms"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumMt) = "mt"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumNb) = "nb"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumNl) = "nl"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumPl) = "pl"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumPt) = "pt"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumPtBR) = "pt-BR"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumRo) = "ro"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumRu) = "ru"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumSk) = "sk"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumSl) = "sl"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumSv) = "sv"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumTh) = "th"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumTr) = "tr"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumVi) = "vi"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumZh) = "zh"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumZhHK) = "zh-HK"
          toJSON (PostBillingPortalSessionsRequestBodyLocale'EnumZhTW) = "zh-TW"
instance Data.Aeson.Types.FromJSON.FromJSON PostBillingPortalSessionsRequestBodyLocale'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "auto" -> PostBillingPortalSessionsRequestBodyLocale'EnumAuto
                                            | val GHC.Classes.== "bg" -> PostBillingPortalSessionsRequestBodyLocale'EnumBg
                                            | val GHC.Classes.== "cs" -> PostBillingPortalSessionsRequestBodyLocale'EnumCs
                                            | val GHC.Classes.== "da" -> PostBillingPortalSessionsRequestBodyLocale'EnumDa
                                            | val GHC.Classes.== "de" -> PostBillingPortalSessionsRequestBodyLocale'EnumDe
                                            | val GHC.Classes.== "el" -> PostBillingPortalSessionsRequestBodyLocale'EnumEl
                                            | val GHC.Classes.== "en" -> PostBillingPortalSessionsRequestBodyLocale'EnumEn
                                            | val GHC.Classes.== "en-AU" -> PostBillingPortalSessionsRequestBodyLocale'EnumEnAU
                                            | val GHC.Classes.== "en-CA" -> PostBillingPortalSessionsRequestBodyLocale'EnumEnCA
                                            | val GHC.Classes.== "en-GB" -> PostBillingPortalSessionsRequestBodyLocale'EnumEnGB
                                            | val GHC.Classes.== "en-IE" -> PostBillingPortalSessionsRequestBodyLocale'EnumEnIE
                                            | val GHC.Classes.== "en-IN" -> PostBillingPortalSessionsRequestBodyLocale'EnumEnIN
                                            | val GHC.Classes.== "en-NZ" -> PostBillingPortalSessionsRequestBodyLocale'EnumEnNZ
                                            | val GHC.Classes.== "en-SG" -> PostBillingPortalSessionsRequestBodyLocale'EnumEnSG
                                            | val GHC.Classes.== "es" -> PostBillingPortalSessionsRequestBodyLocale'EnumEs
                                            | val GHC.Classes.== "es-419" -> PostBillingPortalSessionsRequestBodyLocale'EnumEs_419
                                            | val GHC.Classes.== "et" -> PostBillingPortalSessionsRequestBodyLocale'EnumEt
                                            | val GHC.Classes.== "fi" -> PostBillingPortalSessionsRequestBodyLocale'EnumFi
                                            | val GHC.Classes.== "fil" -> PostBillingPortalSessionsRequestBodyLocale'EnumFil
                                            | val GHC.Classes.== "fr" -> PostBillingPortalSessionsRequestBodyLocale'EnumFr
                                            | val GHC.Classes.== "fr-CA" -> PostBillingPortalSessionsRequestBodyLocale'EnumFrCA
                                            | val GHC.Classes.== "hr" -> PostBillingPortalSessionsRequestBodyLocale'EnumHr
                                            | val GHC.Classes.== "hu" -> PostBillingPortalSessionsRequestBodyLocale'EnumHu
                                            | val GHC.Classes.== "id" -> PostBillingPortalSessionsRequestBodyLocale'EnumId
                                            | val GHC.Classes.== "it" -> PostBillingPortalSessionsRequestBodyLocale'EnumIt
                                            | val GHC.Classes.== "ja" -> PostBillingPortalSessionsRequestBodyLocale'EnumJa
                                            | val GHC.Classes.== "ko" -> PostBillingPortalSessionsRequestBodyLocale'EnumKo
                                            | val GHC.Classes.== "lt" -> PostBillingPortalSessionsRequestBodyLocale'EnumLt
                                            | val GHC.Classes.== "lv" -> PostBillingPortalSessionsRequestBodyLocale'EnumLv
                                            | val GHC.Classes.== "ms" -> PostBillingPortalSessionsRequestBodyLocale'EnumMs
                                            | val GHC.Classes.== "mt" -> PostBillingPortalSessionsRequestBodyLocale'EnumMt
                                            | val GHC.Classes.== "nb" -> PostBillingPortalSessionsRequestBodyLocale'EnumNb
                                            | val GHC.Classes.== "nl" -> PostBillingPortalSessionsRequestBodyLocale'EnumNl
                                            | val GHC.Classes.== "pl" -> PostBillingPortalSessionsRequestBodyLocale'EnumPl
                                            | val GHC.Classes.== "pt" -> PostBillingPortalSessionsRequestBodyLocale'EnumPt
                                            | val GHC.Classes.== "pt-BR" -> PostBillingPortalSessionsRequestBodyLocale'EnumPtBR
                                            | val GHC.Classes.== "ro" -> PostBillingPortalSessionsRequestBodyLocale'EnumRo
                                            | val GHC.Classes.== "ru" -> PostBillingPortalSessionsRequestBodyLocale'EnumRu
                                            | val GHC.Classes.== "sk" -> PostBillingPortalSessionsRequestBodyLocale'EnumSk
                                            | val GHC.Classes.== "sl" -> PostBillingPortalSessionsRequestBodyLocale'EnumSl
                                            | val GHC.Classes.== "sv" -> PostBillingPortalSessionsRequestBodyLocale'EnumSv
                                            | val GHC.Classes.== "th" -> PostBillingPortalSessionsRequestBodyLocale'EnumTh
                                            | val GHC.Classes.== "tr" -> PostBillingPortalSessionsRequestBodyLocale'EnumTr
                                            | val GHC.Classes.== "vi" -> PostBillingPortalSessionsRequestBodyLocale'EnumVi
                                            | val GHC.Classes.== "zh" -> PostBillingPortalSessionsRequestBodyLocale'EnumZh
                                            | val GHC.Classes.== "zh-HK" -> PostBillingPortalSessionsRequestBodyLocale'EnumZhHK
                                            | val GHC.Classes.== "zh-TW" -> PostBillingPortalSessionsRequestBodyLocale'EnumZhTW
                                            | GHC.Base.otherwise -> PostBillingPortalSessionsRequestBodyLocale'Other val)
-- | Represents a response of the operation 'postBillingPortalSessions'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostBillingPortalSessionsResponseError' is used.
data PostBillingPortalSessionsResponse =
   PostBillingPortalSessionsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostBillingPortalSessionsResponse200 BillingPortal'session -- ^ Successful response.
  | PostBillingPortalSessionsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
