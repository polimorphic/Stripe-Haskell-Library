{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GelatoDataIdNumberReportDate
module StripeAPI.Types.GelatoDataIdNumberReportDate where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.gelato_data_id_number_report_date@ in the specification.
--
-- Point in Time
data GelatoDataIdNumberReportDate = GelatoDataIdNumberReportDate
  { -- | day: Numerical day between 1 and 31.
    gelatoDataIdNumberReportDateDay :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | month: Numerical month between 1 and 12.
    gelatoDataIdNumberReportDateMonth :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | year: The four-digit year.
    gelatoDataIdNumberReportDateYear :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GelatoDataIdNumberReportDate where
  toJSON obj = Data.Aeson.Types.Internal.object ("day" Data.Aeson.Types.ToJSON..= gelatoDataIdNumberReportDateDay obj : "month" Data.Aeson.Types.ToJSON..= gelatoDataIdNumberReportDateMonth obj : "year" Data.Aeson.Types.ToJSON..= gelatoDataIdNumberReportDateYear obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("day" Data.Aeson.Types.ToJSON..= gelatoDataIdNumberReportDateDay obj) GHC.Base.<> (("month" Data.Aeson.Types.ToJSON..= gelatoDataIdNumberReportDateMonth obj) GHC.Base.<> ("year" Data.Aeson.Types.ToJSON..= gelatoDataIdNumberReportDateYear obj)))

instance Data.Aeson.Types.FromJSON.FromJSON GelatoDataIdNumberReportDate where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoDataIdNumberReportDate" (\obj -> ((GHC.Base.pure GelatoDataIdNumberReportDate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "year"))

-- | Create a new 'GelatoDataIdNumberReportDate' with all required fields.
mkGelatoDataIdNumberReportDate :: GelatoDataIdNumberReportDate
mkGelatoDataIdNumberReportDate =
  GelatoDataIdNumberReportDate
    { gelatoDataIdNumberReportDateDay = GHC.Maybe.Nothing,
      gelatoDataIdNumberReportDateMonth = GHC.Maybe.Nothing,
      gelatoDataIdNumberReportDateYear = GHC.Maybe.Nothing
    }