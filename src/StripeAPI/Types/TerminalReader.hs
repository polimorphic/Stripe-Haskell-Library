{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the types generated from the schema TerminalReader
module StripeAPI.Types.TerminalReader where

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

-- | Defines the data type for the schema terminal.reader
-- 
-- A Reader represents a physical device for accepting payment details.
-- 
-- Related guide: [Connecting to a Reader](https:\/\/stripe.com\/docs\/terminal\/readers\/connecting).
data Terminal'reader = Terminal'reader {
  -- | device_sw_version: The current software version of the reader.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  terminal'readerDeviceSwVersion :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | device_type: Type of reader, one of \`bbpos_chipper2x\` or \`verifone_P400\`.
  , terminal'readerDeviceType :: Terminal'readerDeviceType'
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'readerId :: Data.Text.Internal.Text
  -- | ip_address: The local IP address of the reader.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'readerIpAddress :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | label: Custom label given to the reader for easier identification.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'readerLabel :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , terminal'readerLivemode :: GHC.Types.Bool
  -- | location: The location identifier of the reader.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'readerLocation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | metadata: Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , terminal'readerMetadata :: Terminal'readerMetadata'
  -- | object: String representing the object\'s type. Objects of the same type share the same value.
  , terminal'readerObject :: Terminal'readerObject'
  -- | serial_number: Serial number of the reader.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'readerSerialNumber :: Data.Text.Internal.Text
  -- | status: The networking status of the reader.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'readerStatus :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Terminal'reader
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "device_sw_version" (terminal'readerDeviceSwVersion obj) : (Data.Aeson..=) "device_type" (terminal'readerDeviceType obj) : (Data.Aeson..=) "id" (terminal'readerId obj) : (Data.Aeson..=) "ip_address" (terminal'readerIpAddress obj) : (Data.Aeson..=) "label" (terminal'readerLabel obj) : (Data.Aeson..=) "livemode" (terminal'readerLivemode obj) : (Data.Aeson..=) "location" (terminal'readerLocation obj) : (Data.Aeson..=) "metadata" (terminal'readerMetadata obj) : (Data.Aeson..=) "object" (terminal'readerObject obj) : (Data.Aeson..=) "serial_number" (terminal'readerSerialNumber obj) : (Data.Aeson..=) "status" (terminal'readerStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "device_sw_version" (terminal'readerDeviceSwVersion obj) GHC.Base.<> ((Data.Aeson..=) "device_type" (terminal'readerDeviceType obj) GHC.Base.<> ((Data.Aeson..=) "id" (terminal'readerId obj) GHC.Base.<> ((Data.Aeson..=) "ip_address" (terminal'readerIpAddress obj) GHC.Base.<> ((Data.Aeson..=) "label" (terminal'readerLabel obj) GHC.Base.<> ((Data.Aeson..=) "livemode" (terminal'readerLivemode obj) GHC.Base.<> ((Data.Aeson..=) "location" (terminal'readerLocation obj) GHC.Base.<> ((Data.Aeson..=) "metadata" (terminal'readerMetadata obj) GHC.Base.<> ((Data.Aeson..=) "object" (terminal'readerObject obj) GHC.Base.<> ((Data.Aeson..=) "serial_number" (terminal'readerSerialNumber obj) GHC.Base.<> (Data.Aeson..=) "status" (terminal'readerStatus obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Terminal'reader
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Terminal'reader" (\obj -> ((((((((((GHC.Base.pure Terminal'reader GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "device_sw_version")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "device_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "label")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "serial_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status"))
-- | Defines the enum schema terminal.readerDevice_type\'
-- 
-- Type of reader, one of \`bbpos_chipper2x\` or \`verifone_P400\`.
data Terminal'readerDeviceType'
    = Terminal'readerDeviceType'EnumOther Data.Aeson.Types.Internal.Value
    | Terminal'readerDeviceType'EnumTyped Data.Text.Internal.Text
    | Terminal'readerDeviceType'EnumStringBbposChipper2x
    | Terminal'readerDeviceType'EnumStringVerifoneP400
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Terminal'readerDeviceType'
    where toJSON (Terminal'readerDeviceType'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Terminal'readerDeviceType'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Terminal'readerDeviceType'EnumStringBbposChipper2x) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bbpos_chipper2x"
          toJSON (Terminal'readerDeviceType'EnumStringVerifoneP400) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verifone_P400"
instance Data.Aeson.FromJSON Terminal'readerDeviceType'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "bbpos_chipper2x")
                                          then Terminal'readerDeviceType'EnumStringBbposChipper2x
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "verifone_P400")
                                                then Terminal'readerDeviceType'EnumStringVerifoneP400
                                                else Terminal'readerDeviceType'EnumOther val)
-- | Defines the data type for the schema terminal.readerMetadata\'
-- 
-- Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
data Terminal'readerMetadata' = Terminal'readerMetadata' {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON Terminal'readerMetadata'
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON Terminal'readerMetadata'
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Terminal'readerMetadata'" (\obj -> GHC.Base.pure Terminal'readerMetadata')
-- | Defines the enum schema terminal.readerObject\'
-- 
-- String representing the object\'s type. Objects of the same type share the same value.
data Terminal'readerObject'
    = Terminal'readerObject'EnumOther Data.Aeson.Types.Internal.Value
    | Terminal'readerObject'EnumTyped Data.Text.Internal.Text
    | Terminal'readerObject'EnumStringTerminal'reader
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON Terminal'readerObject'
    where toJSON (Terminal'readerObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Terminal'readerObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (Terminal'readerObject'EnumStringTerminal'reader) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.reader"
instance Data.Aeson.FromJSON Terminal'readerObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "terminal.reader")
                                          then Terminal'readerObject'EnumStringTerminal'reader
                                          else Terminal'readerObject'EnumOther val)