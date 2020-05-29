{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema SourceCodeVerificationFlow
module StripeAPI.Types.SourceCodeVerificationFlow where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
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
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common

-- | Defines the data type for the schema source_code_verification_flow
-- 
-- 
data SourceCodeVerificationFlow = SourceCodeVerificationFlow {
  -- | attempts_remaining: The number of attempts remaining to authenticate the source object with a verification code.
  sourceCodeVerificationFlowAttemptsRemaining :: GHC.Integer.Type.Integer
  -- | status: The status of the code verification, either \`pending\` (awaiting verification, \`attempts_remaining\` should be greater than 0), \`succeeded\` (successful verification) or \`failed\` (failed verification, cannot be verified anymore as \`attempts_remaining\` should be 0).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , sourceCodeVerificationFlowStatus :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON SourceCodeVerificationFlow
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "attempts_remaining" (sourceCodeVerificationFlowAttemptsRemaining obj) : (Data.Aeson..=) "status" (sourceCodeVerificationFlowStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "attempts_remaining" (sourceCodeVerificationFlowAttemptsRemaining obj) GHC.Base.<> (Data.Aeson..=) "status" (sourceCodeVerificationFlowStatus obj))
instance Data.Aeson.Types.FromJSON.FromJSON SourceCodeVerificationFlow
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceCodeVerificationFlow" (\obj -> (GHC.Base.pure SourceCodeVerificationFlow GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "attempts_remaining")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))