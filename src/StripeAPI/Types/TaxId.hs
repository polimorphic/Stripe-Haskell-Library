-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TaxId
module StripeAPI.Types.TaxId where

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
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.TaxIdVerification

-- | Defines the object schema located at @components.schemas.tax_id@ in the specification.
-- 
-- You can add one or multiple tax IDs to a [customer](https:\/\/stripe.com\/docs\/api\/customers).
-- A customer\'s tax IDs are displayed on invoices and credit notes issued for the customer.
-- 
-- Related guide: [Customer Tax Identification Numbers](https:\/\/stripe.com\/docs\/billing\/taxes\/tax-ids).
data TaxId = TaxId {
  -- | country: Two-letter ISO code representing the country of the tax ID.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  taxIdCountry :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , taxIdCreated :: GHC.Types.Int
  -- | customer: ID of the customer.
  , taxIdCustomer :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TaxIdCustomer'NonNullableVariants))
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxIdId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , taxIdLivemode :: GHC.Types.Bool
  -- | type: Type of the tax ID, one of \`ae_trn\`, \`au_abn\`, \`au_arn\`, \`bg_uic\`, \`br_cnpj\`, \`br_cpf\`, \`ca_bn\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`ca_qst\`, \`ch_vat\`, \`cl_tin\`, \`es_cif\`, \`eu_oss_vat\`, \`eu_vat\`, \`gb_vat\`, \`ge_vat\`, \`hk_br\`, \`hu_tin\`, \`id_npwp\`, \`il_vat\`, \`in_gst\`, \`is_vat\`, \`jp_cn\`, \`jp_rn\`, \`kr_brn\`, \`li_uid\`, \`mx_rfc\`, \`my_frp\`, \`my_itn\`, \`my_sst\`, \`no_vat\`, \`nz_gst\`, \`ru_inn\`, \`ru_kpp\`, \`sa_vat\`, \`sg_gst\`, \`sg_uen\`, \`si_tin\`, \`th_vat\`, \`tw_vat\`, \`ua_vat\`, \`us_ein\`, or \`za_vat\`. Note that some legacy tax IDs have type \`unknown\`
  , taxIdType :: TaxIdType'
  -- | value: Value of the tax ID.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxIdValue :: Data.Text.Internal.Text
  -- | verification: Tax ID verification information.
  , taxIdVerification :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TaxIdVerification'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxId
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (taxIdCountry obj) : ["created" Data.Aeson.Types.ToJSON..= taxIdCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (taxIdCustomer obj) : ["id" Data.Aeson.Types.ToJSON..= taxIdId obj] : ["livemode" Data.Aeson.Types.ToJSON..= taxIdLivemode obj] : ["type" Data.Aeson.Types.ToJSON..= taxIdType obj] : ["value" Data.Aeson.Types.ToJSON..= taxIdValue obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification" Data.Aeson.Types.ToJSON..=)) (taxIdVerification obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax_id"] : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (taxIdCountry obj) : ["created" Data.Aeson.Types.ToJSON..= taxIdCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (taxIdCustomer obj) : ["id" Data.Aeson.Types.ToJSON..= taxIdId obj] : ["livemode" Data.Aeson.Types.ToJSON..= taxIdLivemode obj] : ["type" Data.Aeson.Types.ToJSON..= taxIdType obj] : ["value" Data.Aeson.Types.ToJSON..= taxIdValue obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification" Data.Aeson.Types.ToJSON..=)) (taxIdVerification obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax_id"] : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON TaxId
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxId" (\obj -> (((((((GHC.Base.pure TaxId GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "value")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification"))
-- | Create a new 'TaxId' with all required fields.
mkTaxId :: GHC.Types.Int -- ^ 'taxIdCreated'
  -> Data.Text.Internal.Text -- ^ 'taxIdId'
  -> GHC.Types.Bool -- ^ 'taxIdLivemode'
  -> TaxIdType' -- ^ 'taxIdType'
  -> Data.Text.Internal.Text -- ^ 'taxIdValue'
  -> TaxId
mkTaxId taxIdCreated taxIdId taxIdLivemode taxIdType taxIdValue = TaxId{taxIdCountry = GHC.Maybe.Nothing,
                                                                        taxIdCreated = taxIdCreated,
                                                                        taxIdCustomer = GHC.Maybe.Nothing,
                                                                        taxIdId = taxIdId,
                                                                        taxIdLivemode = taxIdLivemode,
                                                                        taxIdType = taxIdType,
                                                                        taxIdValue = taxIdValue,
                                                                        taxIdVerification = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.tax_id.properties.customer.anyOf@ in the specification.
-- 
-- ID of the customer.
data TaxIdCustomer'NonNullableVariants =
   TaxIdCustomer'NonNullableText Data.Text.Internal.Text
  | TaxIdCustomer'NonNullableCustomer Customer
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxIdCustomer'NonNullableVariants
    where toJSON (TaxIdCustomer'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (TaxIdCustomer'NonNullableCustomer a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON TaxIdCustomer'NonNullableVariants
    where parseJSON val = case (TaxIdCustomer'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TaxIdCustomer'NonNullableCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the enum schema located at @components.schemas.tax_id.properties.type@ in the specification.
-- 
-- Type of the tax ID, one of \`ae_trn\`, \`au_abn\`, \`au_arn\`, \`bg_uic\`, \`br_cnpj\`, \`br_cpf\`, \`ca_bn\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`ca_qst\`, \`ch_vat\`, \`cl_tin\`, \`es_cif\`, \`eu_oss_vat\`, \`eu_vat\`, \`gb_vat\`, \`ge_vat\`, \`hk_br\`, \`hu_tin\`, \`id_npwp\`, \`il_vat\`, \`in_gst\`, \`is_vat\`, \`jp_cn\`, \`jp_rn\`, \`kr_brn\`, \`li_uid\`, \`mx_rfc\`, \`my_frp\`, \`my_itn\`, \`my_sst\`, \`no_vat\`, \`nz_gst\`, \`ru_inn\`, \`ru_kpp\`, \`sa_vat\`, \`sg_gst\`, \`sg_uen\`, \`si_tin\`, \`th_vat\`, \`tw_vat\`, \`ua_vat\`, \`us_ein\`, or \`za_vat\`. Note that some legacy tax IDs have type \`unknown\`
data TaxIdType' =
   TaxIdType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TaxIdType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TaxIdType'EnumAeTrn -- ^ Represents the JSON value @"ae_trn"@
  | TaxIdType'EnumAuAbn -- ^ Represents the JSON value @"au_abn"@
  | TaxIdType'EnumAuArn -- ^ Represents the JSON value @"au_arn"@
  | TaxIdType'EnumBgUic -- ^ Represents the JSON value @"bg_uic"@
  | TaxIdType'EnumBrCnpj -- ^ Represents the JSON value @"br_cnpj"@
  | TaxIdType'EnumBrCpf -- ^ Represents the JSON value @"br_cpf"@
  | TaxIdType'EnumCaBn -- ^ Represents the JSON value @"ca_bn"@
  | TaxIdType'EnumCaGstHst -- ^ Represents the JSON value @"ca_gst_hst"@
  | TaxIdType'EnumCaPstBc -- ^ Represents the JSON value @"ca_pst_bc"@
  | TaxIdType'EnumCaPstMb -- ^ Represents the JSON value @"ca_pst_mb"@
  | TaxIdType'EnumCaPstSk -- ^ Represents the JSON value @"ca_pst_sk"@
  | TaxIdType'EnumCaQst -- ^ Represents the JSON value @"ca_qst"@
  | TaxIdType'EnumChVat -- ^ Represents the JSON value @"ch_vat"@
  | TaxIdType'EnumClTin -- ^ Represents the JSON value @"cl_tin"@
  | TaxIdType'EnumEsCif -- ^ Represents the JSON value @"es_cif"@
  | TaxIdType'EnumEuOssVat -- ^ Represents the JSON value @"eu_oss_vat"@
  | TaxIdType'EnumEuVat -- ^ Represents the JSON value @"eu_vat"@
  | TaxIdType'EnumGbVat -- ^ Represents the JSON value @"gb_vat"@
  | TaxIdType'EnumGeVat -- ^ Represents the JSON value @"ge_vat"@
  | TaxIdType'EnumHkBr -- ^ Represents the JSON value @"hk_br"@
  | TaxIdType'EnumHuTin -- ^ Represents the JSON value @"hu_tin"@
  | TaxIdType'EnumIdNpwp -- ^ Represents the JSON value @"id_npwp"@
  | TaxIdType'EnumIlVat -- ^ Represents the JSON value @"il_vat"@
  | TaxIdType'EnumInGst -- ^ Represents the JSON value @"in_gst"@
  | TaxIdType'EnumIsVat -- ^ Represents the JSON value @"is_vat"@
  | TaxIdType'EnumJpCn -- ^ Represents the JSON value @"jp_cn"@
  | TaxIdType'EnumJpRn -- ^ Represents the JSON value @"jp_rn"@
  | TaxIdType'EnumKrBrn -- ^ Represents the JSON value @"kr_brn"@
  | TaxIdType'EnumLiUid -- ^ Represents the JSON value @"li_uid"@
  | TaxIdType'EnumMxRfc -- ^ Represents the JSON value @"mx_rfc"@
  | TaxIdType'EnumMyFrp -- ^ Represents the JSON value @"my_frp"@
  | TaxIdType'EnumMyItn -- ^ Represents the JSON value @"my_itn"@
  | TaxIdType'EnumMySst -- ^ Represents the JSON value @"my_sst"@
  | TaxIdType'EnumNoVat -- ^ Represents the JSON value @"no_vat"@
  | TaxIdType'EnumNzGst -- ^ Represents the JSON value @"nz_gst"@
  | TaxIdType'EnumRuInn -- ^ Represents the JSON value @"ru_inn"@
  | TaxIdType'EnumRuKpp -- ^ Represents the JSON value @"ru_kpp"@
  | TaxIdType'EnumSaVat -- ^ Represents the JSON value @"sa_vat"@
  | TaxIdType'EnumSgGst -- ^ Represents the JSON value @"sg_gst"@
  | TaxIdType'EnumSgUen -- ^ Represents the JSON value @"sg_uen"@
  | TaxIdType'EnumSiTin -- ^ Represents the JSON value @"si_tin"@
  | TaxIdType'EnumThVat -- ^ Represents the JSON value @"th_vat"@
  | TaxIdType'EnumTwVat -- ^ Represents the JSON value @"tw_vat"@
  | TaxIdType'EnumUaVat -- ^ Represents the JSON value @"ua_vat"@
  | TaxIdType'EnumUnknown -- ^ Represents the JSON value @"unknown"@
  | TaxIdType'EnumUsEin -- ^ Represents the JSON value @"us_ein"@
  | TaxIdType'EnumZaVat -- ^ Represents the JSON value @"za_vat"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxIdType'
    where toJSON (TaxIdType'Other val) = val
          toJSON (TaxIdType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (TaxIdType'EnumAeTrn) = "ae_trn"
          toJSON (TaxIdType'EnumAuAbn) = "au_abn"
          toJSON (TaxIdType'EnumAuArn) = "au_arn"
          toJSON (TaxIdType'EnumBgUic) = "bg_uic"
          toJSON (TaxIdType'EnumBrCnpj) = "br_cnpj"
          toJSON (TaxIdType'EnumBrCpf) = "br_cpf"
          toJSON (TaxIdType'EnumCaBn) = "ca_bn"
          toJSON (TaxIdType'EnumCaGstHst) = "ca_gst_hst"
          toJSON (TaxIdType'EnumCaPstBc) = "ca_pst_bc"
          toJSON (TaxIdType'EnumCaPstMb) = "ca_pst_mb"
          toJSON (TaxIdType'EnumCaPstSk) = "ca_pst_sk"
          toJSON (TaxIdType'EnumCaQst) = "ca_qst"
          toJSON (TaxIdType'EnumChVat) = "ch_vat"
          toJSON (TaxIdType'EnumClTin) = "cl_tin"
          toJSON (TaxIdType'EnumEsCif) = "es_cif"
          toJSON (TaxIdType'EnumEuOssVat) = "eu_oss_vat"
          toJSON (TaxIdType'EnumEuVat) = "eu_vat"
          toJSON (TaxIdType'EnumGbVat) = "gb_vat"
          toJSON (TaxIdType'EnumGeVat) = "ge_vat"
          toJSON (TaxIdType'EnumHkBr) = "hk_br"
          toJSON (TaxIdType'EnumHuTin) = "hu_tin"
          toJSON (TaxIdType'EnumIdNpwp) = "id_npwp"
          toJSON (TaxIdType'EnumIlVat) = "il_vat"
          toJSON (TaxIdType'EnumInGst) = "in_gst"
          toJSON (TaxIdType'EnumIsVat) = "is_vat"
          toJSON (TaxIdType'EnumJpCn) = "jp_cn"
          toJSON (TaxIdType'EnumJpRn) = "jp_rn"
          toJSON (TaxIdType'EnumKrBrn) = "kr_brn"
          toJSON (TaxIdType'EnumLiUid) = "li_uid"
          toJSON (TaxIdType'EnumMxRfc) = "mx_rfc"
          toJSON (TaxIdType'EnumMyFrp) = "my_frp"
          toJSON (TaxIdType'EnumMyItn) = "my_itn"
          toJSON (TaxIdType'EnumMySst) = "my_sst"
          toJSON (TaxIdType'EnumNoVat) = "no_vat"
          toJSON (TaxIdType'EnumNzGst) = "nz_gst"
          toJSON (TaxIdType'EnumRuInn) = "ru_inn"
          toJSON (TaxIdType'EnumRuKpp) = "ru_kpp"
          toJSON (TaxIdType'EnumSaVat) = "sa_vat"
          toJSON (TaxIdType'EnumSgGst) = "sg_gst"
          toJSON (TaxIdType'EnumSgUen) = "sg_uen"
          toJSON (TaxIdType'EnumSiTin) = "si_tin"
          toJSON (TaxIdType'EnumThVat) = "th_vat"
          toJSON (TaxIdType'EnumTwVat) = "tw_vat"
          toJSON (TaxIdType'EnumUaVat) = "ua_vat"
          toJSON (TaxIdType'EnumUnknown) = "unknown"
          toJSON (TaxIdType'EnumUsEin) = "us_ein"
          toJSON (TaxIdType'EnumZaVat) = "za_vat"
instance Data.Aeson.Types.FromJSON.FromJSON TaxIdType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "ae_trn" -> TaxIdType'EnumAeTrn
                                            | val GHC.Classes.== "au_abn" -> TaxIdType'EnumAuAbn
                                            | val GHC.Classes.== "au_arn" -> TaxIdType'EnumAuArn
                                            | val GHC.Classes.== "bg_uic" -> TaxIdType'EnumBgUic
                                            | val GHC.Classes.== "br_cnpj" -> TaxIdType'EnumBrCnpj
                                            | val GHC.Classes.== "br_cpf" -> TaxIdType'EnumBrCpf
                                            | val GHC.Classes.== "ca_bn" -> TaxIdType'EnumCaBn
                                            | val GHC.Classes.== "ca_gst_hst" -> TaxIdType'EnumCaGstHst
                                            | val GHC.Classes.== "ca_pst_bc" -> TaxIdType'EnumCaPstBc
                                            | val GHC.Classes.== "ca_pst_mb" -> TaxIdType'EnumCaPstMb
                                            | val GHC.Classes.== "ca_pst_sk" -> TaxIdType'EnumCaPstSk
                                            | val GHC.Classes.== "ca_qst" -> TaxIdType'EnumCaQst
                                            | val GHC.Classes.== "ch_vat" -> TaxIdType'EnumChVat
                                            | val GHC.Classes.== "cl_tin" -> TaxIdType'EnumClTin
                                            | val GHC.Classes.== "es_cif" -> TaxIdType'EnumEsCif
                                            | val GHC.Classes.== "eu_oss_vat" -> TaxIdType'EnumEuOssVat
                                            | val GHC.Classes.== "eu_vat" -> TaxIdType'EnumEuVat
                                            | val GHC.Classes.== "gb_vat" -> TaxIdType'EnumGbVat
                                            | val GHC.Classes.== "ge_vat" -> TaxIdType'EnumGeVat
                                            | val GHC.Classes.== "hk_br" -> TaxIdType'EnumHkBr
                                            | val GHC.Classes.== "hu_tin" -> TaxIdType'EnumHuTin
                                            | val GHC.Classes.== "id_npwp" -> TaxIdType'EnumIdNpwp
                                            | val GHC.Classes.== "il_vat" -> TaxIdType'EnumIlVat
                                            | val GHC.Classes.== "in_gst" -> TaxIdType'EnumInGst
                                            | val GHC.Classes.== "is_vat" -> TaxIdType'EnumIsVat
                                            | val GHC.Classes.== "jp_cn" -> TaxIdType'EnumJpCn
                                            | val GHC.Classes.== "jp_rn" -> TaxIdType'EnumJpRn
                                            | val GHC.Classes.== "kr_brn" -> TaxIdType'EnumKrBrn
                                            | val GHC.Classes.== "li_uid" -> TaxIdType'EnumLiUid
                                            | val GHC.Classes.== "mx_rfc" -> TaxIdType'EnumMxRfc
                                            | val GHC.Classes.== "my_frp" -> TaxIdType'EnumMyFrp
                                            | val GHC.Classes.== "my_itn" -> TaxIdType'EnumMyItn
                                            | val GHC.Classes.== "my_sst" -> TaxIdType'EnumMySst
                                            | val GHC.Classes.== "no_vat" -> TaxIdType'EnumNoVat
                                            | val GHC.Classes.== "nz_gst" -> TaxIdType'EnumNzGst
                                            | val GHC.Classes.== "ru_inn" -> TaxIdType'EnumRuInn
                                            | val GHC.Classes.== "ru_kpp" -> TaxIdType'EnumRuKpp
                                            | val GHC.Classes.== "sa_vat" -> TaxIdType'EnumSaVat
                                            | val GHC.Classes.== "sg_gst" -> TaxIdType'EnumSgGst
                                            | val GHC.Classes.== "sg_uen" -> TaxIdType'EnumSgUen
                                            | val GHC.Classes.== "si_tin" -> TaxIdType'EnumSiTin
                                            | val GHC.Classes.== "th_vat" -> TaxIdType'EnumThVat
                                            | val GHC.Classes.== "tw_vat" -> TaxIdType'EnumTwVat
                                            | val GHC.Classes.== "ua_vat" -> TaxIdType'EnumUaVat
                                            | val GHC.Classes.== "unknown" -> TaxIdType'EnumUnknown
                                            | val GHC.Classes.== "us_ein" -> TaxIdType'EnumUsEin
                                            | val GHC.Classes.== "za_vat" -> TaxIdType'EnumZaVat
                                            | GHC.Base.otherwise -> TaxIdType'Other val)
-- | Defines the object schema located at @components.schemas.tax_id.properties.verification.anyOf@ in the specification.
-- 
-- Tax ID verification information.
data TaxIdVerification'NonNullable = TaxIdVerification'NonNullable {
  -- | status: Verification status, one of \`pending\`, \`verified\`, \`unverified\`, or \`unavailable\`.
  taxIdVerification'NonNullableStatus :: (GHC.Maybe.Maybe TaxIdVerification'NonNullableStatus')
  -- | verified_address: Verified address.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxIdVerification'NonNullableVerifiedAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | verified_name: Verified name.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxIdVerification'NonNullableVerifiedName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxIdVerification'NonNullable
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (taxIdVerification'NonNullableStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_address" Data.Aeson.Types.ToJSON..=)) (taxIdVerification'NonNullableVerifiedAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_name" Data.Aeson.Types.ToJSON..=)) (taxIdVerification'NonNullableVerifiedName obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (taxIdVerification'NonNullableStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_address" Data.Aeson.Types.ToJSON..=)) (taxIdVerification'NonNullableVerifiedAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verified_name" Data.Aeson.Types.ToJSON..=)) (taxIdVerification'NonNullableVerifiedName obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON TaxIdVerification'NonNullable
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxIdVerification'NonNullable" (\obj -> ((GHC.Base.pure TaxIdVerification'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verified_name"))
-- | Create a new 'TaxIdVerification'NonNullable' with all required fields.
mkTaxIdVerification'NonNullable :: TaxIdVerification'NonNullable
mkTaxIdVerification'NonNullable = TaxIdVerification'NonNullable{taxIdVerification'NonNullableStatus = GHC.Maybe.Nothing,
                                                                taxIdVerification'NonNullableVerifiedAddress = GHC.Maybe.Nothing,
                                                                taxIdVerification'NonNullableVerifiedName = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.tax_id.properties.verification.anyOf.properties.status@ in the specification.
-- 
-- Verification status, one of \`pending\`, \`verified\`, \`unverified\`, or \`unavailable\`.
data TaxIdVerification'NonNullableStatus' =
   TaxIdVerification'NonNullableStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TaxIdVerification'NonNullableStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TaxIdVerification'NonNullableStatus'EnumPending -- ^ Represents the JSON value @"pending"@
  | TaxIdVerification'NonNullableStatus'EnumUnavailable -- ^ Represents the JSON value @"unavailable"@
  | TaxIdVerification'NonNullableStatus'EnumUnverified -- ^ Represents the JSON value @"unverified"@
  | TaxIdVerification'NonNullableStatus'EnumVerified -- ^ Represents the JSON value @"verified"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxIdVerification'NonNullableStatus'
    where toJSON (TaxIdVerification'NonNullableStatus'Other val) = val
          toJSON (TaxIdVerification'NonNullableStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (TaxIdVerification'NonNullableStatus'EnumPending) = "pending"
          toJSON (TaxIdVerification'NonNullableStatus'EnumUnavailable) = "unavailable"
          toJSON (TaxIdVerification'NonNullableStatus'EnumUnverified) = "unverified"
          toJSON (TaxIdVerification'NonNullableStatus'EnumVerified) = "verified"
instance Data.Aeson.Types.FromJSON.FromJSON TaxIdVerification'NonNullableStatus'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "pending" -> TaxIdVerification'NonNullableStatus'EnumPending
                                            | val GHC.Classes.== "unavailable" -> TaxIdVerification'NonNullableStatus'EnumUnavailable
                                            | val GHC.Classes.== "unverified" -> TaxIdVerification'NonNullableStatus'EnumUnverified
                                            | val GHC.Classes.== "verified" -> TaxIdVerification'NonNullableStatus'EnumVerified
                                            | GHC.Base.otherwise -> TaxIdVerification'NonNullableStatus'Other val)
