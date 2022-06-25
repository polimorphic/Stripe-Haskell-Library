-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postApplePayDomains
module StripeAPI.Operations.PostApplePayDomains where

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

-- | > POST /v1/apple_pay/domains
-- 
-- \<p>Create an apple pay domain.\<\/p>
postApplePayDomains :: forall m . StripeAPI.Common.MonadHTTP m => PostApplePayDomainsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostApplePayDomainsResponse) -- ^ Monadic computation which returns the result of the operation
postApplePayDomains body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostApplePayDomainsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostApplePayDomainsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            ApplePayDomain)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostApplePayDomainsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/apple_pay/domains") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/apple_pay\/domains.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostApplePayDomainsRequestBody = PostApplePayDomainsRequestBody {
  -- | domain_name
  postApplePayDomainsRequestBodyDomainName :: Data.Text.Internal.Text
  -- | expand: Specifies which fields in the response should be expanded.
  , postApplePayDomainsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostApplePayDomainsRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["domain_name" Data.Aeson.Types.ToJSON..= postApplePayDomainsRequestBodyDomainName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postApplePayDomainsRequestBodyExpand obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["domain_name" Data.Aeson.Types.ToJSON..= postApplePayDomainsRequestBodyDomainName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postApplePayDomainsRequestBodyExpand obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PostApplePayDomainsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostApplePayDomainsRequestBody" (\obj -> (GHC.Base.pure PostApplePayDomainsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "domain_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))
-- | Create a new 'PostApplePayDomainsRequestBody' with all required fields.
mkPostApplePayDomainsRequestBody :: Data.Text.Internal.Text -- ^ 'postApplePayDomainsRequestBodyDomainName'
  -> PostApplePayDomainsRequestBody
mkPostApplePayDomainsRequestBody postApplePayDomainsRequestBodyDomainName = PostApplePayDomainsRequestBody{postApplePayDomainsRequestBodyDomainName = postApplePayDomainsRequestBodyDomainName,
                                                                                                           postApplePayDomainsRequestBodyExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postApplePayDomains'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostApplePayDomainsResponseError' is used.
data PostApplePayDomainsResponse =
   PostApplePayDomainsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostApplePayDomainsResponse200 ApplePayDomain -- ^ Successful response.
  | PostApplePayDomainsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
