{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getTaxCodes
module StripeAPI.Operations.GetTaxCodes where

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

-- | > GET /v1/tax_codes
--
-- \<p>A list of \<a href=\"https:\/\/stripe.com\/docs\/tax\/tax-codes\">all tax codes available\<\/a> to add to Products in order to allow specific tax calculations.\<\/p>
getTaxCodes ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetTaxCodesParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTaxCodesResponse)
getTaxCodes parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetTaxCodesResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTaxCodesResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetTaxCodesResponseBody200
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetTaxCodesResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/v1/tax_codes")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxCodesParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxCodesParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxCodesParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTaxCodesParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/tax_codes.GET.parameters@ in the specification.
data GetTaxCodesParameters = GetTaxCodesParameters
  { -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    getTaxCodesParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getTaxCodesParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getTaxCodesParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    getTaxCodesParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTaxCodesParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("queryEnding_before" Data.Aeson.Types.ToJSON..= getTaxCodesParametersQueryEndingBefore obj : "queryExpand" Data.Aeson.Types.ToJSON..= getTaxCodesParametersQueryExpand obj : "queryLimit" Data.Aeson.Types.ToJSON..= getTaxCodesParametersQueryLimit obj : "queryStarting_after" Data.Aeson.Types.ToJSON..= getTaxCodesParametersQueryStartingAfter obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("queryEnding_before" Data.Aeson.Types.ToJSON..= getTaxCodesParametersQueryEndingBefore obj) GHC.Base.<> (("queryExpand" Data.Aeson.Types.ToJSON..= getTaxCodesParametersQueryExpand obj) GHC.Base.<> (("queryLimit" Data.Aeson.Types.ToJSON..= getTaxCodesParametersQueryLimit obj) GHC.Base.<> ("queryStarting_after" Data.Aeson.Types.ToJSON..= getTaxCodesParametersQueryStartingAfter obj))))

instance Data.Aeson.Types.FromJSON.FromJSON GetTaxCodesParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTaxCodesParameters" (\obj -> (((GHC.Base.pure GetTaxCodesParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryStarting_after"))

-- | Create a new 'GetTaxCodesParameters' with all required fields.
mkGetTaxCodesParameters :: GetTaxCodesParameters
mkGetTaxCodesParameters =
  GetTaxCodesParameters
    { getTaxCodesParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getTaxCodesParametersQueryExpand = GHC.Maybe.Nothing,
      getTaxCodesParametersQueryLimit = GHC.Maybe.Nothing,
      getTaxCodesParametersQueryStartingAfter = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getTaxCodes'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTaxCodesResponseError' is used.
data GetTaxCodesResponse
  = -- | Means either no matching case available or a parse error
    GetTaxCodesResponseError GHC.Base.String
  | -- | Successful response.
    GetTaxCodesResponse200 GetTaxCodesResponseBody200
  | -- | Error response.
    GetTaxCodesResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/tax_codes.GET.responses.200.content.application\/json.schema@ in the specification.
data GetTaxCodesResponseBody200 = GetTaxCodesResponseBody200
  { -- | data
    getTaxCodesResponseBody200Data :: ([TaxCode]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getTaxCodesResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getTaxCodesResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetTaxCodesResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object ("data" Data.Aeson.Types.ToJSON..= getTaxCodesResponseBody200Data obj : "has_more" Data.Aeson.Types.ToJSON..= getTaxCodesResponseBody200HasMore obj : "url" Data.Aeson.Types.ToJSON..= getTaxCodesResponseBody200Url obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data" Data.Aeson.Types.ToJSON..= getTaxCodesResponseBody200Data obj) GHC.Base.<> (("has_more" Data.Aeson.Types.ToJSON..= getTaxCodesResponseBody200HasMore obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= getTaxCodesResponseBody200Url obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"))))

instance Data.Aeson.Types.FromJSON.FromJSON GetTaxCodesResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTaxCodesResponseBody200" (\obj -> ((GHC.Base.pure GetTaxCodesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetTaxCodesResponseBody200' with all required fields.
mkGetTaxCodesResponseBody200 ::
  -- | 'getTaxCodesResponseBody200Data'
  [TaxCode] ->
  -- | 'getTaxCodesResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getTaxCodesResponseBody200Url'
  Data.Text.Internal.Text ->
  GetTaxCodesResponseBody200
mkGetTaxCodesResponseBody200 getTaxCodesResponseBody200Data getTaxCodesResponseBody200HasMore getTaxCodesResponseBody200Url =
  GetTaxCodesResponseBody200
    { getTaxCodesResponseBody200Data = getTaxCodesResponseBody200Data,
      getTaxCodesResponseBody200HasMore = getTaxCodesResponseBody200HasMore,
      getTaxCodesResponseBody200Url = getTaxCodesResponseBody200Url
    }