-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PersonRelationship
module StripeAPI.Types.PersonRelationship where

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

-- | Defines the object schema located at @components.schemas.person_relationship@ in the specification.
-- 
-- 
data PersonRelationship = PersonRelationship {
  -- | director: Whether the person is a director of the account\'s legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
  personRelationshipDirector :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool))
  -- | executive: Whether the person has significant responsibility to control, manage, or direct the organization.
  , personRelationshipExecutive :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool))
  -- | owner: Whether the person is an owner of the account’s legal entity.
  , personRelationshipOwner :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool))
  -- | percent_ownership: The percent owned by the person of the account\'s legal entity.
  , personRelationshipPercentOwnership :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Double))
  -- | representative: Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
  , personRelationshipRepresentative :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool))
  -- | title: The person\'s title (e.g., CEO, Support Engineer).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , personRelationshipTitle :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PersonRelationship
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("director" Data.Aeson.Types.ToJSON..=)) (personRelationshipDirector obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("executive" Data.Aeson.Types.ToJSON..=)) (personRelationshipExecutive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("owner" Data.Aeson.Types.ToJSON..=)) (personRelationshipOwner obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("percent_ownership" Data.Aeson.Types.ToJSON..=)) (personRelationshipPercentOwnership obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("representative" Data.Aeson.Types.ToJSON..=)) (personRelationshipRepresentative obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("title" Data.Aeson.Types.ToJSON..=)) (personRelationshipTitle obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("director" Data.Aeson.Types.ToJSON..=)) (personRelationshipDirector obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("executive" Data.Aeson.Types.ToJSON..=)) (personRelationshipExecutive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("owner" Data.Aeson.Types.ToJSON..=)) (personRelationshipOwner obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("percent_ownership" Data.Aeson.Types.ToJSON..=)) (personRelationshipPercentOwnership obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("representative" Data.Aeson.Types.ToJSON..=)) (personRelationshipRepresentative obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("title" Data.Aeson.Types.ToJSON..=)) (personRelationshipTitle obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON PersonRelationship
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PersonRelationship" (\obj -> (((((GHC.Base.pure PersonRelationship GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "director")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "executive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "percent_ownership")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "representative")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "title"))
-- | Create a new 'PersonRelationship' with all required fields.
mkPersonRelationship :: PersonRelationship
mkPersonRelationship = PersonRelationship{personRelationshipDirector = GHC.Maybe.Nothing,
                                          personRelationshipExecutive = GHC.Maybe.Nothing,
                                          personRelationshipOwner = GHC.Maybe.Nothing,
                                          personRelationshipPercentOwnership = GHC.Maybe.Nothing,
                                          personRelationshipRepresentative = GHC.Maybe.Nothing,
                                          personRelationshipTitle = GHC.Maybe.Nothing}
