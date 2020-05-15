{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.IssuingAuthorizationViolatedAuthControl where

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

data IssuingAuthorizationViolatedAuthControl
    = IssuingAuthorizationViolatedAuthControl {issuingAuthorizationViolatedAuthControlEntity :: IssuingAuthorizationViolatedAuthControlEntity',
                                               issuingAuthorizationViolatedAuthControlName :: IssuingAuthorizationViolatedAuthControlName'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data IssuingAuthorizationViolatedAuthControlEntity'
    = IssuingAuthorizationViolatedAuthControlEntity'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingAuthorizationViolatedAuthControlEntity'EnumTyped GHC.Base.String
    | IssuingAuthorizationViolatedAuthControlEntity'EnumStringAccount
    | IssuingAuthorizationViolatedAuthControlEntity'EnumStringCard
    | IssuingAuthorizationViolatedAuthControlEntity'EnumStringCardholder
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingAuthorizationViolatedAuthControlEntity'
    where toJSON (IssuingAuthorizationViolatedAuthControlEntity'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationViolatedAuthControlEntity'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationViolatedAuthControlEntity'EnumStringAccount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account"
          toJSON (IssuingAuthorizationViolatedAuthControlEntity'EnumStringCard) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card"
          toJSON (IssuingAuthorizationViolatedAuthControlEntity'EnumStringCardholder) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cardholder"
instance Data.Aeson.FromJSON IssuingAuthorizationViolatedAuthControlEntity'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "account")
                                          then IssuingAuthorizationViolatedAuthControlEntity'EnumStringAccount
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "card")
                                                then IssuingAuthorizationViolatedAuthControlEntity'EnumStringCard
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cardholder")
                                                      then IssuingAuthorizationViolatedAuthControlEntity'EnumStringCardholder
                                                      else IssuingAuthorizationViolatedAuthControlEntity'EnumOther val)
data IssuingAuthorizationViolatedAuthControlName'
    = IssuingAuthorizationViolatedAuthControlName'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingAuthorizationViolatedAuthControlName'EnumTyped GHC.Base.String
    | IssuingAuthorizationViolatedAuthControlName'EnumStringAllowedCategories
    | IssuingAuthorizationViolatedAuthControlName'EnumStringBlockedCategories
    | IssuingAuthorizationViolatedAuthControlName'EnumStringMaxAmount
    | IssuingAuthorizationViolatedAuthControlName'EnumStringMaxApprovals
    | IssuingAuthorizationViolatedAuthControlName'EnumStringSpendingLimits
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingAuthorizationViolatedAuthControlName'
    where toJSON (IssuingAuthorizationViolatedAuthControlName'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationViolatedAuthControlName'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationViolatedAuthControlName'EnumStringAllowedCategories) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allowed_categories"
          toJSON (IssuingAuthorizationViolatedAuthControlName'EnumStringBlockedCategories) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "blocked_categories"
          toJSON (IssuingAuthorizationViolatedAuthControlName'EnumStringMaxAmount) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "max_amount"
          toJSON (IssuingAuthorizationViolatedAuthControlName'EnumStringMaxApprovals) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "max_approvals"
          toJSON (IssuingAuthorizationViolatedAuthControlName'EnumStringSpendingLimits) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "spending_limits"
instance Data.Aeson.FromJSON IssuingAuthorizationViolatedAuthControlName'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "allowed_categories")
                                          then IssuingAuthorizationViolatedAuthControlName'EnumStringAllowedCategories
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "blocked_categories")
                                                then IssuingAuthorizationViolatedAuthControlName'EnumStringBlockedCategories
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "max_amount")
                                                      then IssuingAuthorizationViolatedAuthControlName'EnumStringMaxAmount
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "max_approvals")
                                                            then IssuingAuthorizationViolatedAuthControlName'EnumStringMaxApprovals
                                                            else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "spending_limits")
                                                                  then IssuingAuthorizationViolatedAuthControlName'EnumStringSpendingLimits
                                                                  else IssuingAuthorizationViolatedAuthControlName'EnumOther val)
instance Data.Aeson.ToJSON IssuingAuthorizationViolatedAuthControl
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "entity" (issuingAuthorizationViolatedAuthControlEntity obj) : (Data.Aeson..=) "name" (issuingAuthorizationViolatedAuthControlName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "entity" (issuingAuthorizationViolatedAuthControlEntity obj) GHC.Base.<> (Data.Aeson..=) "name" (issuingAuthorizationViolatedAuthControlName obj))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationViolatedAuthControl
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationViolatedAuthControl" (\obj -> (GHC.Base.pure IssuingAuthorizationViolatedAuthControl GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "entity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name"))