from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Mode(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = []
    UNKNOWN: _ClassVar[Mode]
    AUTO: _ClassVar[Mode]
    MANUAL: _ClassVar[Mode]
    CHARGING: _ClassVar[Mode]
UNKNOWN: Mode
AUTO: Mode
MANUAL: Mode
CHARGING: Mode

class StatusRequest(_message.Message):
    __slots__ = ["drone_id"]
    DRONE_ID_FIELD_NUMBER: _ClassVar[int]
    drone_id: int
    def __init__(self, drone_id: _Optional[int] = ...) -> None: ...

class StatusResponse(_message.Message):
    __slots__ = ["mode", "battery_level"]
    MODE_FIELD_NUMBER: _ClassVar[int]
    BATTERY_LEVEL_FIELD_NUMBER: _ClassVar[int]
    mode: Mode
    battery_level: float
    def __init__(self, mode: _Optional[_Union[Mode, str]] = ..., battery_level: _Optional[float] = ...) -> None: ...

class ChangeModeRequest(_message.Message):
    __slots__ = ["drone_id", "new_mode"]
    DRONE_ID_FIELD_NUMBER: _ClassVar[int]
    NEW_MODE_FIELD_NUMBER: _ClassVar[int]
    drone_id: str
    new_mode: Mode
    def __init__(self, drone_id: _Optional[str] = ..., new_mode: _Optional[_Union[Mode, str]] = ...) -> None: ...

class ChargeRequest(_message.Message):
    __slots__ = ["drone_id", "target_battery_level"]
    DRONE_ID_FIELD_NUMBER: _ClassVar[int]
    TARGET_BATTERY_LEVEL_FIELD_NUMBER: _ClassVar[int]
    drone_id: str
    target_battery_level: float
    def __init__(self, drone_id: _Optional[str] = ..., target_battery_level: _Optional[float] = ...) -> None: ...

class SimpleResponse(_message.Message):
    __slots__ = ["success", "message"]
    SUCCESS_FIELD_NUMBER: _ClassVar[int]
    MESSAGE_FIELD_NUMBER: _ClassVar[int]
    success: bool
    message: str
    def __init__(self, success: bool = ..., message: _Optional[str] = ...) -> None: ...

class ChargeResponse(_message.Message):
    __slots__ = ["battery_level", "charging_complete"]
    BATTERY_LEVEL_FIELD_NUMBER: _ClassVar[int]
    CHARGING_COMPLETE_FIELD_NUMBER: _ClassVar[int]
    battery_level: float
    charging_complete: bool
    def __init__(self, battery_level: _Optional[float] = ..., charging_complete: bool = ...) -> None: ...
