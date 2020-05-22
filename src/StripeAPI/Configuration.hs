{-# LANGUAGE OverloadedStrings #-}

-- | Contains the default configuration
module StripeAPI.Configuration where

import qualified Data.Text
import qualified StripeAPI.Common

-- | The default url specified by the OpenAPI specification
-- 
-- @https://api.stripe.com/@
defaultURL = Data.Text.pack "https://api.stripe.com/"
-- | The default configuration containing the 'defaultURL' and no authorization
defaultConfiguration = StripeAPI.Common.Configuration defaultURL StripeAPI.Common.AnonymousSecurityScheme