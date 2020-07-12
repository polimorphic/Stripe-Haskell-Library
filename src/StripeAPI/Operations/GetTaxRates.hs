{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the different functions to run the operation getTaxRates
module StripeAPI.Operations.GetTaxRates where

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

-- | > GET /v1/tax_rates
--
-- \<p>Returns a list of your tax rates. Tax rates are returned sorted by creation date, with the most recently created tax rates appearing first.\<\/p>
getTaxRates ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetTaxRatesParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.StripeT m (Network.HTTP.Client.Types.Response GetTaxRatesResponse)
getTaxRates parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetTaxRatesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if  | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTaxRatesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either GHC.Base.String
                                                            GetTaxRatesResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTaxRatesResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/v1/tax_rates")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "active") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxRatesParametersQueryActive parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxRatesParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxRatesParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxRatesParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "inclusive") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxRatesParametersQueryInclusive parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxRatesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxRatesParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/tax_rates.GET.parameters@ in the specification.
data GetTaxRatesParameters
  = GetTaxRatesParameters
      { -- | queryActive: Represents the parameter named \'active\'
        --
        -- Optional flag to filter by tax rates that are either active or not active (archived)
        getTaxRatesParametersQueryActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
        -- | queryCreated: Represents the parameter named \'created\'
        --
        -- Optional range for filtering created date
        getTaxRatesParametersQueryCreated :: (GHC.Maybe.Maybe GetTaxRatesParametersQueryCreated'Variants),
        -- | queryEnding_before: Represents the parameter named \'ending_before\'
        --
        -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getTaxRatesParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | queryExpand: Represents the parameter named \'expand\'
        --
        -- Specifies which fields in the response should be expanded.
        getTaxRatesParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
        -- | queryInclusive: Represents the parameter named \'inclusive\'
        --
        -- Optional flag to filter by tax rates that are inclusive (or those that are not inclusive)
        getTaxRatesParametersQueryInclusive :: (GHC.Maybe.Maybe GHC.Types.Bool),
        -- | queryLimit: Represents the parameter named \'limit\'
        --
        -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        getTaxRatesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | queryStarting_after: Represents the parameter named \'starting_after\'
        --
        -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        getTaxRatesParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTaxRatesParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryActive" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryActive obj : "queryCreated" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryCreated obj : "queryEnding_before" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryExpand obj : "queryInclusive" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryInclusive obj : "queryLimit" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryLimit obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryStartingAfter obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryActive" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryActive obj) GHC.Base.<> (("queryCreated" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryCreated obj) GHC.Base.<> (("queryEnding_before" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryExpand obj) GHC.Base.<> (("queryInclusive" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryInclusive obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryLimit obj) GHC.Base.<> ("queryStarting_after" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryStartingAfter obj)))))))

instance Data.Aeson.Types.FromJSON.FromJSON GetTaxRatesParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTaxRatesParameters" (\obj -> ((((((GHC.Base.pure GetTaxRatesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryActive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryInclusive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after"))

-- | Create a new 'GetTaxRatesParameters' with all required fields.
mkGetTaxRatesParameters :: GetTaxRatesParameters
mkGetTaxRatesParameters =
  GetTaxRatesParameters
    { getTaxRatesParametersQueryActive = GHC.Maybe.Nothing,
      getTaxRatesParametersQueryCreated = GHC.Maybe.Nothing,
      getTaxRatesParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getTaxRatesParametersQueryExpand = GHC.Maybe.Nothing,
      getTaxRatesParametersQueryInclusive = GHC.Maybe.Nothing,
      getTaxRatesParametersQueryLimit = GHC.Maybe.Nothing,
      getTaxRatesParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/tax_rates.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetTaxRatesParametersQueryCreated'OneOf2
  = GetTaxRatesParametersQueryCreated'OneOf2
      { -- | gt
        getTaxRatesParametersQueryCreated'OneOf2Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | gte
        getTaxRatesParametersQueryCreated'OneOf2Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | lt
        getTaxRatesParametersQueryCreated'OneOf2Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
        -- | lte
        getTaxRatesParametersQueryCreated'OneOf2Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTaxRatesParametersQueryCreated'OneOf2 where
  toJSON obj = Data.Aeson.Types.Internal.object ("gt" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryCreated'OneOf2Gt obj : "gte" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryCreated'OneOf2Gte obj : "lt" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryCreated'OneOf2Lt obj : "lte" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryCreated'OneOf2Lte obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("gt" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryCreated'OneOf2Gt obj) GHC.Base.<> (("gte" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryCreated'OneOf2Gte obj) GHC.Base.<> (("lt" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryCreated'OneOf2Lt obj) GHC.Base.<> ("lte" Data.Aeson.Types.ToJSON..= getTaxRatesParametersQueryCreated'OneOf2Lte obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetTaxRatesParametersQueryCreated'OneOf2 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTaxRatesParametersQueryCreated'OneOf2" (\obj -> (((GHC.Base.pure GetTaxRatesParametersQueryCreated'OneOf2 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "lte"))

-- | Create a new 'GetTaxRatesParametersQueryCreated'OneOf2' with all required fields.
mkGetTaxRatesParametersQueryCreated'OneOf2 :: GetTaxRatesParametersQueryCreated'OneOf2
mkGetTaxRatesParametersQueryCreated'OneOf2 =
  GetTaxRatesParametersQueryCreated'OneOf2
    { getTaxRatesParametersQueryCreated'OneOf2Gt = GHC.Maybe.Nothing,
      getTaxRatesParametersQueryCreated'OneOf2Gte = GHC.Maybe.Nothing,
      getTaxRatesParametersQueryCreated'OneOf2Lt = GHC.Maybe.Nothing,
      getTaxRatesParametersQueryCreated'OneOf2Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/tax_rates.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
--
-- Optional range for filtering created date
data GetTaxRatesParametersQueryCreated'Variants
  = GetTaxRatesParametersQueryCreated'Int GHC.Types.Int
  | GetTaxRatesParametersQueryCreated'GetTaxRatesParametersQueryCreated'OneOf2 GetTaxRatesParametersQueryCreated'OneOf2
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetTaxRatesParametersQueryCreated'Variants where
  toJSON (GetTaxRatesParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetTaxRatesParametersQueryCreated'GetTaxRatesParametersQueryCreated'OneOf2 a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetTaxRatesParametersQueryCreated'Variants where
  parseJSON val = case (GetTaxRatesParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetTaxRatesParametersQueryCreated'GetTaxRatesParametersQueryCreated'OneOf2 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'getTaxRates'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTaxRatesResponseError' is used.
data GetTaxRatesResponse
  = -- | Means either no matching case available or a parse error
    GetTaxRatesResponseError GHC.Base.String
  | -- | Successful response.
    GetTaxRatesResponse200 GetTaxRatesResponseBody200
  | -- | Error response.
    GetTaxRatesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/tax_rates.GET.responses.200.content.application\/json.schema@ in the specification.
data GetTaxRatesResponseBody200
  = GetTaxRatesResponseBody200
      { -- | data
        getTaxRatesResponseBody200Data :: ([TaxRate]),
        -- | has_more: True if this list has another page of items after this one that can be fetched.
        getTaxRatesResponseBody200HasMore :: GHC.Types.Bool,
        -- | url: The URL where this list can be accessed.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        -- * Must match pattern \'^\/v1\/tax_rates\'
        getTaxRatesResponseBody200Url :: Data.Text.Internal.Text
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTaxRatesResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getTaxRatesResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getTaxRatesResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getTaxRatesResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getTaxRatesResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getTaxRatesResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getTaxRatesResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetTaxRatesResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTaxRatesResponseBody200" (\obj -> ((GHC.Base.pure GetTaxRatesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetTaxRatesResponseBody200' with all required fields.
mkGetTaxRatesResponseBody200 ::
  -- | 'getTaxRatesResponseBody200Data'
  [TaxRate] ->
  -- | 'getTaxRatesResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getTaxRatesResponseBody200Url'
  Data.Text.Internal.Text ->
  GetTaxRatesResponseBody200
mkGetTaxRatesResponseBody200 getTaxRatesResponseBody200Data getTaxRatesResponseBody200HasMore getTaxRatesResponseBody200Url =
  GetTaxRatesResponseBody200
    { getTaxRatesResponseBody200Data = getTaxRatesResponseBody200Data,
      getTaxRatesResponseBody200HasMore = getTaxRatesResponseBody200HasMore,
      getTaxRatesResponseBody200Url = getTaxRatesResponseBody200Url
    }
