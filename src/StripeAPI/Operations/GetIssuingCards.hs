-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getIssuingCards
module StripeAPI.Operations.GetIssuingCards where

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

-- | > GET /v1/issuing/cards
-- 
-- \<p>Returns a list of Issuing \<code>Card\<\/code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.\<\/p>
getIssuingCards :: forall m . StripeAPI.Common.MonadHTTP m => GetIssuingCardsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetIssuingCardsResponse) -- ^ Monadic computation which returns the result of the operation
getIssuingCards parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetIssuingCardsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingCardsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetIssuingCardsResponseBody200)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetIssuingCardsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/v1/issuing/cards") [StripeAPI.Common.QueryParameter (Data.Text.pack "cardholder") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryCardholder parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "exp_month") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryExpMonth parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "exp_year") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryExpYear parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "last4") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryLast4 parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryStatus parameters) (Data.Text.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.QueryParameter (Data.Text.pack "type") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getIssuingCardsParametersQueryType parameters) (Data.Text.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/issuing\/cards.GET.parameters@ in the specification.
-- 
-- 
data GetIssuingCardsParameters = GetIssuingCardsParameters {
  -- | queryCardholder: Represents the parameter named \'cardholder\'
  -- 
  -- Only return cards belonging to the Cardholder with the provided ID.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getIssuingCardsParametersQueryCardholder :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryCreated: Represents the parameter named \'created\'
  -- 
  -- Only return cards that were issued during the given date interval.
  , getIssuingCardsParametersQueryCreated :: (GHC.Maybe.Maybe GetIssuingCardsParametersQueryCreated'Variants)
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getIssuingCardsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExp_month: Represents the parameter named \'exp_month\'
  -- 
  -- Only return cards that have the given expiration month.
  , getIssuingCardsParametersQueryExpMonth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryExp_year: Represents the parameter named \'exp_year\'
  -- 
  -- Only return cards that have the given expiration year.
  , getIssuingCardsParametersQueryExpYear :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getIssuingCardsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryLast4: Represents the parameter named \'last4\'
  -- 
  -- Only return cards that have the given last four digits.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getIssuingCardsParametersQueryLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getIssuingCardsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getIssuingCardsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryStatus: Represents the parameter named \'status\'
  -- 
  -- Only return cards that have the given status. One of \`active\`, \`inactive\`, or \`canceled\`.
  , getIssuingCardsParametersQueryStatus :: (GHC.Maybe.Maybe GetIssuingCardsParametersQueryStatus')
  -- | queryType: Represents the parameter named \'type\'
  -- 
  -- Only return cards that have the given type. One of \`virtual\` or \`physical\`.
  , getIssuingCardsParametersQueryType :: (GHC.Maybe.Maybe GetIssuingCardsParametersQueryType')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingCardsParameters
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCardholder" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCardholder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExp_month" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExp_year" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLast4" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryType" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryType obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCardholder" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCardholder obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExp_month" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExp_year" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLast4" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryType" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryType obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingCardsParameters" (\obj -> ((((((((((GHC.Base.pure GetIssuingCardsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCardholder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLast4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryType"))
-- | Create a new 'GetIssuingCardsParameters' with all required fields.
mkGetIssuingCardsParameters :: GetIssuingCardsParameters
mkGetIssuingCardsParameters = GetIssuingCardsParameters{getIssuingCardsParametersQueryCardholder = GHC.Maybe.Nothing,
                                                        getIssuingCardsParametersQueryCreated = GHC.Maybe.Nothing,
                                                        getIssuingCardsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                        getIssuingCardsParametersQueryExpMonth = GHC.Maybe.Nothing,
                                                        getIssuingCardsParametersQueryExpYear = GHC.Maybe.Nothing,
                                                        getIssuingCardsParametersQueryExpand = GHC.Maybe.Nothing,
                                                        getIssuingCardsParametersQueryLast4 = GHC.Maybe.Nothing,
                                                        getIssuingCardsParametersQueryLimit = GHC.Maybe.Nothing,
                                                        getIssuingCardsParametersQueryStartingAfter = GHC.Maybe.Nothing,
                                                        getIssuingCardsParametersQueryStatus = GHC.Maybe.Nothing,
                                                        getIssuingCardsParametersQueryType = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/issuing\/cards.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- 
data GetIssuingCardsParametersQueryCreated'OneOf1 = GetIssuingCardsParametersQueryCreated'OneOf1 {
  -- | gt
  getIssuingCardsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | gte
  , getIssuingCardsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lt
  , getIssuingCardsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | lte
  , getIssuingCardsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingCardsParametersQueryCreated'OneOf1
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getIssuingCardsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsParametersQueryCreated'OneOf1
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingCardsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetIssuingCardsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))
-- | Create a new 'GetIssuingCardsParametersQueryCreated'OneOf1' with all required fields.
mkGetIssuingCardsParametersQueryCreated'OneOf1 :: GetIssuingCardsParametersQueryCreated'OneOf1
mkGetIssuingCardsParametersQueryCreated'OneOf1 = GetIssuingCardsParametersQueryCreated'OneOf1{getIssuingCardsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
                                                                                              getIssuingCardsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
                                                                                              getIssuingCardsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
                                                                                              getIssuingCardsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/issuing\/cards.GET.parameters.properties.queryCreated.anyOf@ in the specification.
-- 
-- Represents the parameter named \'created\'
-- 
-- Only return cards that were issued during the given date interval.
data GetIssuingCardsParametersQueryCreated'Variants =
   GetIssuingCardsParametersQueryCreated'GetIssuingCardsParametersQueryCreated'OneOf1 GetIssuingCardsParametersQueryCreated'OneOf1
  | GetIssuingCardsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingCardsParametersQueryCreated'Variants
    where toJSON (GetIssuingCardsParametersQueryCreated'GetIssuingCardsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (GetIssuingCardsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsParametersQueryCreated'Variants
    where parseJSON val = case (GetIssuingCardsParametersQueryCreated'GetIssuingCardsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetIssuingCardsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the enum schema located at @paths.\/v1\/issuing\/cards.GET.parameters.properties.queryStatus@ in the specification.
-- 
-- Represents the parameter named \'status\'
-- 
-- Only return cards that have the given status. One of \`active\`, \`inactive\`, or \`canceled\`.
data GetIssuingCardsParametersQueryStatus' =
   GetIssuingCardsParametersQueryStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetIssuingCardsParametersQueryStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetIssuingCardsParametersQueryStatus'EnumActive -- ^ Represents the JSON value @"active"@
  | GetIssuingCardsParametersQueryStatus'EnumCanceled -- ^ Represents the JSON value @"canceled"@
  | GetIssuingCardsParametersQueryStatus'EnumInactive -- ^ Represents the JSON value @"inactive"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingCardsParametersQueryStatus'
    where toJSON (GetIssuingCardsParametersQueryStatus'Other val) = val
          toJSON (GetIssuingCardsParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GetIssuingCardsParametersQueryStatus'EnumActive) = "active"
          toJSON (GetIssuingCardsParametersQueryStatus'EnumCanceled) = "canceled"
          toJSON (GetIssuingCardsParametersQueryStatus'EnumInactive) = "inactive"
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsParametersQueryStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "active" -> GetIssuingCardsParametersQueryStatus'EnumActive
                                            | val GHC.Classes.== "canceled" -> GetIssuingCardsParametersQueryStatus'EnumCanceled
                                            | val GHC.Classes.== "inactive" -> GetIssuingCardsParametersQueryStatus'EnumInactive
                                            | GHC.Base.otherwise -> GetIssuingCardsParametersQueryStatus'Other val)
-- | Defines the enum schema located at @paths.\/v1\/issuing\/cards.GET.parameters.properties.queryType@ in the specification.
-- 
-- Represents the parameter named \'type\'
-- 
-- Only return cards that have the given type. One of \`virtual\` or \`physical\`.
data GetIssuingCardsParametersQueryType' =
   GetIssuingCardsParametersQueryType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetIssuingCardsParametersQueryType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetIssuingCardsParametersQueryType'EnumPhysical -- ^ Represents the JSON value @"physical"@
  | GetIssuingCardsParametersQueryType'EnumVirtual -- ^ Represents the JSON value @"virtual"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingCardsParametersQueryType'
    where toJSON (GetIssuingCardsParametersQueryType'Other val) = val
          toJSON (GetIssuingCardsParametersQueryType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GetIssuingCardsParametersQueryType'EnumPhysical) = "physical"
          toJSON (GetIssuingCardsParametersQueryType'EnumVirtual) = "virtual"
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsParametersQueryType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "physical" -> GetIssuingCardsParametersQueryType'EnumPhysical
                                            | val GHC.Classes.== "virtual" -> GetIssuingCardsParametersQueryType'EnumVirtual
                                            | GHC.Base.otherwise -> GetIssuingCardsParametersQueryType'Other val)
-- | Represents a response of the operation 'getIssuingCards'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetIssuingCardsResponseError' is used.
data GetIssuingCardsResponse =
   GetIssuingCardsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetIssuingCardsResponse200 GetIssuingCardsResponseBody200 -- ^ Successful response.
  | GetIssuingCardsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/issuing\/cards.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetIssuingCardsResponseBody200 = GetIssuingCardsResponseBody200 {
  -- | data
  getIssuingCardsResponseBody200Data :: ([Issuing'card])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getIssuingCardsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/issuing\/cards\'
  , getIssuingCardsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetIssuingCardsResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getIssuingCardsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getIssuingCardsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getIssuingCardsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getIssuingCardsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getIssuingCardsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getIssuingCardsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON GetIssuingCardsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetIssuingCardsResponseBody200" (\obj -> ((GHC.Base.pure GetIssuingCardsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))
-- | Create a new 'GetIssuingCardsResponseBody200' with all required fields.
mkGetIssuingCardsResponseBody200 :: [Issuing'card] -- ^ 'getIssuingCardsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getIssuingCardsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getIssuingCardsResponseBody200Url'
  -> GetIssuingCardsResponseBody200
mkGetIssuingCardsResponseBody200 getIssuingCardsResponseBody200Data getIssuingCardsResponseBody200HasMore getIssuingCardsResponseBody200Url = GetIssuingCardsResponseBody200{getIssuingCardsResponseBody200Data = getIssuingCardsResponseBody200Data,
                                                                                                                                                                             getIssuingCardsResponseBody200HasMore = getIssuingCardsResponseBody200HasMore,
                                                                                                                                                                             getIssuingCardsResponseBody200Url = getIssuingCardsResponseBody200Url}
