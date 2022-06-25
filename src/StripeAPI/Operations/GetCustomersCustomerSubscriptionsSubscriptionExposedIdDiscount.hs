-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscount
module StripeAPI.Operations.GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscount where

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

-- | > GET /v1/customers/{customer}/subscriptions/{subscription_exposed_id}/discount
-- 
-- 
getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscount :: forall m . StripeAPI.Common.MonadHTTP m => GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponse) -- ^ Monadic computation which returns the result of the operation
getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscount parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   Discount)
                                                                                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer parameters))) GHC.Base.++ ("/subscriptions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId parameters))) GHC.Base.++ "/discount"))))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/subscriptions\/{subscription_exposed_id}\/discount.GET.parameters@ in the specification.
-- 
-- 
data GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters = GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters {
  -- | pathCustomer: Represents the parameter named \'customer\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer :: Data.Text.Internal.Text
  -- | pathSubscription_exposed_id: Represents the parameter named \'subscription_exposed_id\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId :: Data.Text.Internal.Text
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer obj] : ["pathSubscription_exposed_id" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersQueryExpand obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCustomer" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer obj] : ["pathSubscription_exposed_id" Data.Aeson.Types.ToJSON..= getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersQueryExpand obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters" (\obj -> ((GHC.Base.pure GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathSubscription_exposed_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))
-- | Create a new 'GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters' with all required fields.
mkGetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters :: Data.Text.Internal.Text -- ^ 'getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer'
  -> Data.Text.Internal.Text -- ^ 'getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId'
  -> GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters
mkGetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId = GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParameters{getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer = getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathCustomer,
                                                                                                                                                                                                                                                                                                                                             getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId = getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersPathSubscriptionExposedId,
                                                                                                                                                                                                                                                                                                                                             getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountParametersQueryExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getCustomersCustomerSubscriptionsSubscriptionExposedIdDiscount'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponseError' is used.
data GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponse =
   GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponse200 Discount -- ^ Successful response.
  | GetCustomersCustomerSubscriptionsSubscriptionExposedIdDiscountResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
