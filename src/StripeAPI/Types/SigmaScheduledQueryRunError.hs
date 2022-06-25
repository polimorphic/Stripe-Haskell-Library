-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SigmaScheduledQueryRunError
module StripeAPI.Types.SigmaScheduledQueryRunError where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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

-- | Defines the object schema located at @components.schemas.sigma_scheduled_query_run_error@ in the specification.
-- 
-- 
data SigmaScheduledQueryRunError = SigmaScheduledQueryRunError {
  -- | message: Information about the run failure.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  sigmaScheduledQueryRunErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SigmaScheduledQueryRunError
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["message" Data.Aeson.Types.ToJSON..= sigmaScheduledQueryRunErrorMessage obj] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["message" Data.Aeson.Types.ToJSON..= sigmaScheduledQueryRunErrorMessage obj] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON SigmaScheduledQueryRunError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SigmaScheduledQueryRunError" (\obj -> GHC.Base.pure SigmaScheduledQueryRunError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'SigmaScheduledQueryRunError' with all required fields.
mkSigmaScheduledQueryRunError :: Data.Text.Internal.Text -- ^ 'sigmaScheduledQueryRunErrorMessage'
  -> SigmaScheduledQueryRunError
mkSigmaScheduledQueryRunError sigmaScheduledQueryRunErrorMessage = SigmaScheduledQueryRunError{sigmaScheduledQueryRunErrorMessage = sigmaScheduledQueryRunErrorMessage}
