-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getCouponsCoupon
module StripeAPI.Operations.GetCouponsCoupon where

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

-- | > GET /v1/coupons/{coupon}
-- 
-- \<p>Retrieves the coupon with the given ID.\<\/p>
getCouponsCoupon :: forall m . StripeAPI.Common.MonadHTTP m => GetCouponsCouponParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetCouponsCouponResponse) -- ^ Monadic computation which returns the result of the operation
getCouponsCoupon parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetCouponsCouponResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCouponsCouponResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         Coupon)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetCouponsCouponResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/coupons/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getCouponsCouponParametersPathCoupon parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getCouponsCouponParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/coupons\/{coupon}.GET.parameters@ in the specification.
-- 
-- 
data GetCouponsCouponParameters = GetCouponsCouponParameters {
  -- | pathCoupon: Represents the parameter named \'coupon\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getCouponsCouponParametersPathCoupon :: Data.Text.Internal.Text
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getCouponsCouponParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCouponsCouponParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathCoupon" Data.Aeson.Types.ToJSON..= getCouponsCouponParametersPathCoupon obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCouponsCouponParametersQueryExpand obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathCoupon" Data.Aeson.Types.ToJSON..= getCouponsCouponParametersPathCoupon obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getCouponsCouponParametersQueryExpand obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetCouponsCouponParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCouponsCouponParameters" (\obj -> (GHC.Base.pure GetCouponsCouponParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathCoupon")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))
-- | Create a new 'GetCouponsCouponParameters' with all required fields.
mkGetCouponsCouponParameters :: Data.Text.Internal.Text -- ^ 'getCouponsCouponParametersPathCoupon'
  -> GetCouponsCouponParameters
mkGetCouponsCouponParameters getCouponsCouponParametersPathCoupon = GetCouponsCouponParameters{getCouponsCouponParametersPathCoupon = getCouponsCouponParametersPathCoupon,
                                                                                               getCouponsCouponParametersQueryExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getCouponsCoupon'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCouponsCouponResponseError' is used.
data GetCouponsCouponResponse =
   GetCouponsCouponResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetCouponsCouponResponse200 Coupon -- ^ Successful response.
  | GetCouponsCouponResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
