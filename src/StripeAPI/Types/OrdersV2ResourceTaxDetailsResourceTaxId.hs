-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema OrdersV2ResourceTaxDetailsResourceTaxId
module StripeAPI.Types.OrdersV2ResourceTaxDetailsResourceTaxId where

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

-- | Defines the object schema located at @components.schemas.orders_v2_resource_tax_details_resource_tax_id@ in the specification.
-- 
-- 
data OrdersV2ResourceTaxDetailsResourceTaxId = OrdersV2ResourceTaxDetailsResourceTaxId {
  -- | type: The type of the tax ID, one of \`eu_vat\`, \`br_cnpj\`, \`br_cpf\`, \`eu_oss_vat\`, \`gb_vat\`, \`nz_gst\`, \`au_abn\`, \`au_arn\`, \`in_gst\`, \`no_vat\`, \`za_vat\`, \`ch_vat\`, \`mx_rfc\`, \`sg_uen\`, \`ru_inn\`, \`ru_kpp\`, \`ca_bn\`, \`hk_br\`, \`es_cif\`, \`tw_vat\`, \`th_vat\`, \`jp_cn\`, \`jp_rn\`, \`li_uid\`, \`my_itn\`, \`us_ein\`, \`kr_brn\`, \`ca_qst\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`my_sst\`, \`sg_gst\`, \`ae_trn\`, \`cl_tin\`, \`sa_vat\`, \`id_npwp\`, \`my_frp\`, \`il_vat\`, \`ge_vat\`, \`ua_vat\`, \`is_vat\`, \`bg_uic\`, \`hu_tin\`, \`si_tin\`, or \`unknown\`
  ordersV2ResourceTaxDetailsResourceTaxIdType :: OrdersV2ResourceTaxDetailsResourceTaxIdType'
  -- | value: The value of the tax ID.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , ordersV2ResourceTaxDetailsResourceTaxIdValue :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourceTaxDetailsResourceTaxId
    where toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= ordersV2ResourceTaxDetailsResourceTaxIdType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourceTaxDetailsResourceTaxIdValue obj) : GHC.Base.mempty))
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["type" Data.Aeson.Types.ToJSON..= ordersV2ResourceTaxDetailsResourceTaxIdType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourceTaxDetailsResourceTaxIdValue obj) : GHC.Base.mempty)))
instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourceTaxDetailsResourceTaxId
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "OrdersV2ResourceTaxDetailsResourceTaxId" (\obj -> (GHC.Base.pure OrdersV2ResourceTaxDetailsResourceTaxId GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "value"))
-- | Create a new 'OrdersV2ResourceTaxDetailsResourceTaxId' with all required fields.
mkOrdersV2ResourceTaxDetailsResourceTaxId :: OrdersV2ResourceTaxDetailsResourceTaxIdType' -- ^ 'ordersV2ResourceTaxDetailsResourceTaxIdType'
  -> OrdersV2ResourceTaxDetailsResourceTaxId
mkOrdersV2ResourceTaxDetailsResourceTaxId ordersV2ResourceTaxDetailsResourceTaxIdType = OrdersV2ResourceTaxDetailsResourceTaxId{ordersV2ResourceTaxDetailsResourceTaxIdType = ordersV2ResourceTaxDetailsResourceTaxIdType,
                                                                                                                                ordersV2ResourceTaxDetailsResourceTaxIdValue = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.orders_v2_resource_tax_details_resource_tax_id.properties.type@ in the specification.
-- 
-- The type of the tax ID, one of \`eu_vat\`, \`br_cnpj\`, \`br_cpf\`, \`eu_oss_vat\`, \`gb_vat\`, \`nz_gst\`, \`au_abn\`, \`au_arn\`, \`in_gst\`, \`no_vat\`, \`za_vat\`, \`ch_vat\`, \`mx_rfc\`, \`sg_uen\`, \`ru_inn\`, \`ru_kpp\`, \`ca_bn\`, \`hk_br\`, \`es_cif\`, \`tw_vat\`, \`th_vat\`, \`jp_cn\`, \`jp_rn\`, \`li_uid\`, \`my_itn\`, \`us_ein\`, \`kr_brn\`, \`ca_qst\`, \`ca_gst_hst\`, \`ca_pst_bc\`, \`ca_pst_mb\`, \`ca_pst_sk\`, \`my_sst\`, \`sg_gst\`, \`ae_trn\`, \`cl_tin\`, \`sa_vat\`, \`id_npwp\`, \`my_frp\`, \`il_vat\`, \`ge_vat\`, \`ua_vat\`, \`is_vat\`, \`bg_uic\`, \`hu_tin\`, \`si_tin\`, or \`unknown\`
data OrdersV2ResourceTaxDetailsResourceTaxIdType' =
   OrdersV2ResourceTaxDetailsResourceTaxIdType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumAeTrn -- ^ Represents the JSON value @"ae_trn"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumAuAbn -- ^ Represents the JSON value @"au_abn"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumAuArn -- ^ Represents the JSON value @"au_arn"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumBgUic -- ^ Represents the JSON value @"bg_uic"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumBrCnpj -- ^ Represents the JSON value @"br_cnpj"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumBrCpf -- ^ Represents the JSON value @"br_cpf"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaBn -- ^ Represents the JSON value @"ca_bn"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaGstHst -- ^ Represents the JSON value @"ca_gst_hst"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaPstBc -- ^ Represents the JSON value @"ca_pst_bc"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaPstMb -- ^ Represents the JSON value @"ca_pst_mb"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaPstSk -- ^ Represents the JSON value @"ca_pst_sk"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaQst -- ^ Represents the JSON value @"ca_qst"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumChVat -- ^ Represents the JSON value @"ch_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumClTin -- ^ Represents the JSON value @"cl_tin"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumEsCif -- ^ Represents the JSON value @"es_cif"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumEuOssVat -- ^ Represents the JSON value @"eu_oss_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumEuVat -- ^ Represents the JSON value @"eu_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumGbVat -- ^ Represents the JSON value @"gb_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumGeVat -- ^ Represents the JSON value @"ge_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumHkBr -- ^ Represents the JSON value @"hk_br"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumHuTin -- ^ Represents the JSON value @"hu_tin"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumIdNpwp -- ^ Represents the JSON value @"id_npwp"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumIlVat -- ^ Represents the JSON value @"il_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumInGst -- ^ Represents the JSON value @"in_gst"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumIsVat -- ^ Represents the JSON value @"is_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumJpCn -- ^ Represents the JSON value @"jp_cn"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumJpRn -- ^ Represents the JSON value @"jp_rn"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumKrBrn -- ^ Represents the JSON value @"kr_brn"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumLiUid -- ^ Represents the JSON value @"li_uid"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMxRfc -- ^ Represents the JSON value @"mx_rfc"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMyFrp -- ^ Represents the JSON value @"my_frp"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMyItn -- ^ Represents the JSON value @"my_itn"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMySst -- ^ Represents the JSON value @"my_sst"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumNoVat -- ^ Represents the JSON value @"no_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumNzGst -- ^ Represents the JSON value @"nz_gst"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumRuInn -- ^ Represents the JSON value @"ru_inn"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumRuKpp -- ^ Represents the JSON value @"ru_kpp"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSaVat -- ^ Represents the JSON value @"sa_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSgGst -- ^ Represents the JSON value @"sg_gst"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSgUen -- ^ Represents the JSON value @"sg_uen"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSiTin -- ^ Represents the JSON value @"si_tin"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumThVat -- ^ Represents the JSON value @"th_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumTwVat -- ^ Represents the JSON value @"tw_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumUaVat -- ^ Represents the JSON value @"ua_vat"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumUnknown -- ^ Represents the JSON value @"unknown"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumUsEin -- ^ Represents the JSON value @"us_ein"@
  | OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumZaVat -- ^ Represents the JSON value @"za_vat"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourceTaxDetailsResourceTaxIdType'
    where toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'Other val) = val
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumAeTrn) = "ae_trn"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumAuAbn) = "au_abn"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumAuArn) = "au_arn"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumBgUic) = "bg_uic"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumBrCnpj) = "br_cnpj"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumBrCpf) = "br_cpf"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaBn) = "ca_bn"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaGstHst) = "ca_gst_hst"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaPstBc) = "ca_pst_bc"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaPstMb) = "ca_pst_mb"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaPstSk) = "ca_pst_sk"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaQst) = "ca_qst"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumChVat) = "ch_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumClTin) = "cl_tin"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumEsCif) = "es_cif"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumEuOssVat) = "eu_oss_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumEuVat) = "eu_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumGbVat) = "gb_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumGeVat) = "ge_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumHkBr) = "hk_br"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumHuTin) = "hu_tin"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumIdNpwp) = "id_npwp"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumIlVat) = "il_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumInGst) = "in_gst"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumIsVat) = "is_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumJpCn) = "jp_cn"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumJpRn) = "jp_rn"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumKrBrn) = "kr_brn"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumLiUid) = "li_uid"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMxRfc) = "mx_rfc"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMyFrp) = "my_frp"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMyItn) = "my_itn"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMySst) = "my_sst"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumNoVat) = "no_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumNzGst) = "nz_gst"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumRuInn) = "ru_inn"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumRuKpp) = "ru_kpp"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSaVat) = "sa_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSgGst) = "sg_gst"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSgUen) = "sg_uen"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSiTin) = "si_tin"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumThVat) = "th_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumTwVat) = "tw_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumUaVat) = "ua_vat"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumUnknown) = "unknown"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumUsEin) = "us_ein"
          toJSON (OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumZaVat) = "za_vat"
instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourceTaxDetailsResourceTaxIdType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "ae_trn" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumAeTrn
                                            | val GHC.Classes.== "au_abn" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumAuAbn
                                            | val GHC.Classes.== "au_arn" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumAuArn
                                            | val GHC.Classes.== "bg_uic" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumBgUic
                                            | val GHC.Classes.== "br_cnpj" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumBrCnpj
                                            | val GHC.Classes.== "br_cpf" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumBrCpf
                                            | val GHC.Classes.== "ca_bn" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaBn
                                            | val GHC.Classes.== "ca_gst_hst" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaGstHst
                                            | val GHC.Classes.== "ca_pst_bc" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaPstBc
                                            | val GHC.Classes.== "ca_pst_mb" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaPstMb
                                            | val GHC.Classes.== "ca_pst_sk" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaPstSk
                                            | val GHC.Classes.== "ca_qst" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumCaQst
                                            | val GHC.Classes.== "ch_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumChVat
                                            | val GHC.Classes.== "cl_tin" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumClTin
                                            | val GHC.Classes.== "es_cif" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumEsCif
                                            | val GHC.Classes.== "eu_oss_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumEuOssVat
                                            | val GHC.Classes.== "eu_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumEuVat
                                            | val GHC.Classes.== "gb_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumGbVat
                                            | val GHC.Classes.== "ge_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumGeVat
                                            | val GHC.Classes.== "hk_br" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumHkBr
                                            | val GHC.Classes.== "hu_tin" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumHuTin
                                            | val GHC.Classes.== "id_npwp" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumIdNpwp
                                            | val GHC.Classes.== "il_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumIlVat
                                            | val GHC.Classes.== "in_gst" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumInGst
                                            | val GHC.Classes.== "is_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumIsVat
                                            | val GHC.Classes.== "jp_cn" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumJpCn
                                            | val GHC.Classes.== "jp_rn" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumJpRn
                                            | val GHC.Classes.== "kr_brn" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumKrBrn
                                            | val GHC.Classes.== "li_uid" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumLiUid
                                            | val GHC.Classes.== "mx_rfc" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMxRfc
                                            | val GHC.Classes.== "my_frp" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMyFrp
                                            | val GHC.Classes.== "my_itn" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMyItn
                                            | val GHC.Classes.== "my_sst" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumMySst
                                            | val GHC.Classes.== "no_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumNoVat
                                            | val GHC.Classes.== "nz_gst" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumNzGst
                                            | val GHC.Classes.== "ru_inn" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumRuInn
                                            | val GHC.Classes.== "ru_kpp" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumRuKpp
                                            | val GHC.Classes.== "sa_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSaVat
                                            | val GHC.Classes.== "sg_gst" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSgGst
                                            | val GHC.Classes.== "sg_uen" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSgUen
                                            | val GHC.Classes.== "si_tin" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumSiTin
                                            | val GHC.Classes.== "th_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumThVat
                                            | val GHC.Classes.== "tw_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumTwVat
                                            | val GHC.Classes.== "ua_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumUaVat
                                            | val GHC.Classes.== "unknown" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumUnknown
                                            | val GHC.Classes.== "us_ein" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumUsEin
                                            | val GHC.Classes.== "za_vat" -> OrdersV2ResourceTaxDetailsResourceTaxIdType'EnumZaVat
                                            | GHC.Base.otherwise -> OrdersV2ResourceTaxDetailsResourceTaxIdType'Other val)
