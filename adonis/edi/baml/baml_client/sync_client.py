###############################################################################
#
#  Welcome to Baml! To use this generated code, please run the following:
#
#  $ pip install baml
#
###############################################################################

# This file was generated by BAML: please do not edit it. Instead, edit the
# BAML files and re-generate this code.
#
# ruff: noqa: E501,F401
# flake8: noqa: E501,F401
# pylint: disable=unused-import,line-too-long
# fmt: off
from typing import Any, Dict, List, Optional, TypeVar, Union, TypedDict, Type, Literal, cast
from typing_extensions import NotRequired
import pprint

import baml_py
from pydantic import BaseModel, ValidationError, create_model

from . import partial_types, types
from .types import Checked, Check
from .type_builder import TypeBuilder
from .globals import DO_NOT_USE_DIRECTLY_UNLESS_YOU_KNOW_WHAT_YOURE_DOING_CTX, DO_NOT_USE_DIRECTLY_UNLESS_YOU_KNOW_WHAT_YOURE_DOING_RUNTIME

OutputType = TypeVar('OutputType')

# Define the TypedDict with optional parameters having default values
class BamlCallOptions(TypedDict, total=False):
    tb: NotRequired[TypeBuilder]
    client_registry: NotRequired[baml_py.baml_py.ClientRegistry]

class BamlSyncClient:
    __runtime: baml_py.BamlRuntime
    __ctx_manager: baml_py.BamlCtxManager
    __stream_client: "BamlStreamClient"

    def __init__(self, runtime: baml_py.BamlRuntime, ctx_manager: baml_py.BamlCtxManager):
      self.__runtime = runtime
      self.__ctx_manager = ctx_manager
      self.__stream_client = BamlStreamClient(self.__runtime, self.__ctx_manager)

    @property
    def stream(self):
      return self.__stream_client

    
    def X12_835_5010_X221A1_Extractor(
        self,
        params: types.X12_835_5010_X221A1_Extractor_Input_V0,
        baml_options: BamlCallOptions = {},
    ) -> types.X12_835_5010_X221A1_Extractor_Output_V0:
      __tb__ = baml_options.get("tb", None)
      if __tb__ is not None:
        tb = __tb__._tb # type: ignore (we know how to use this private attribute)
      else:
        tb = None
      __cr__ = baml_options.get("client_registry", None)

      raw = self.__runtime.call_function_sync(
        "X12_835_5010_X221A1_Extractor",
        {
          "params": params,
        },
        self.__ctx_manager.get(),
        tb,
        __cr__,
      )
      return cast(types.X12_835_5010_X221A1_Extractor_Output_V0, raw.cast_to(types, types))
    
    def X12_835_5010_X221A1_Judge(
        self,
        params: types.X12_835_5010_X221A1_Judge_Input_V0,
        baml_options: BamlCallOptions = {},
    ) -> types.X12_835_5010_X221A1_Judge_Output_V0:
      __tb__ = baml_options.get("tb", None)
      if __tb__ is not None:
        tb = __tb__._tb # type: ignore (we know how to use this private attribute)
      else:
        tb = None
      __cr__ = baml_options.get("client_registry", None)

      raw = self.__runtime.call_function_sync(
        "X12_835_5010_X221A1_Judge",
        {
          "params": params,
        },
        self.__ctx_manager.get(),
        tb,
        __cr__,
      )
      return cast(types.X12_835_5010_X221A1_Judge_Output_V0, raw.cast_to(types, types))
    
    def X12_835_5010_X221A1_Validator(
        self,
        params: types.X12_835_5010_X221A1_Validator_Input_V0,
        baml_options: BamlCallOptions = {},
    ) -> types.X12_835_5010_X221A1_Validator_Output_V0:
      __tb__ = baml_options.get("tb", None)
      if __tb__ is not None:
        tb = __tb__._tb # type: ignore (we know how to use this private attribute)
      else:
        tb = None
      __cr__ = baml_options.get("client_registry", None)

      raw = self.__runtime.call_function_sync(
        "X12_835_5010_X221A1_Validator",
        {
          "params": params,
        },
        self.__ctx_manager.get(),
        tb,
        __cr__,
      )
      return cast(types.X12_835_5010_X221A1_Validator_Output_V0, raw.cast_to(types, types))
    



class BamlStreamClient:
    __runtime: baml_py.BamlRuntime
    __ctx_manager: baml_py.BamlCtxManager

    def __init__(self, runtime: baml_py.BamlRuntime, ctx_manager: baml_py.BamlCtxManager):
      self.__runtime = runtime
      self.__ctx_manager = ctx_manager

    
    def X12_835_5010_X221A1_Extractor(
        self,
        params: types.X12_835_5010_X221A1_Extractor_Input_V0,
        baml_options: BamlCallOptions = {},
    ) -> baml_py.BamlSyncStream[partial_types.X12_835_5010_X221A1_Extractor_Output_V0, types.X12_835_5010_X221A1_Extractor_Output_V0]:
      __tb__ = baml_options.get("tb", None)
      if __tb__ is not None:
        tb = __tb__._tb # type: ignore (we know how to use this private attribute)
      else:
        tb = None
      __cr__ = baml_options.get("client_registry", None)

      raw = self.__runtime.stream_function_sync(
        "X12_835_5010_X221A1_Extractor",
        {
          "params": params,
        },
        None,
        self.__ctx_manager.get(),
        tb,
        __cr__,
      )

      return baml_py.BamlSyncStream[partial_types.X12_835_5010_X221A1_Extractor_Output_V0, types.X12_835_5010_X221A1_Extractor_Output_V0](
        raw,
        lambda x: cast(partial_types.X12_835_5010_X221A1_Extractor_Output_V0, x.cast_to(types, partial_types)),
        lambda x: cast(types.X12_835_5010_X221A1_Extractor_Output_V0, x.cast_to(types, types)),
        self.__ctx_manager.get(),
      )
    
    def X12_835_5010_X221A1_Judge(
        self,
        params: types.X12_835_5010_X221A1_Judge_Input_V0,
        baml_options: BamlCallOptions = {},
    ) -> baml_py.BamlSyncStream[partial_types.X12_835_5010_X221A1_Judge_Output_V0, types.X12_835_5010_X221A1_Judge_Output_V0]:
      __tb__ = baml_options.get("tb", None)
      if __tb__ is not None:
        tb = __tb__._tb # type: ignore (we know how to use this private attribute)
      else:
        tb = None
      __cr__ = baml_options.get("client_registry", None)

      raw = self.__runtime.stream_function_sync(
        "X12_835_5010_X221A1_Judge",
        {
          "params": params,
        },
        None,
        self.__ctx_manager.get(),
        tb,
        __cr__,
      )

      return baml_py.BamlSyncStream[partial_types.X12_835_5010_X221A1_Judge_Output_V0, types.X12_835_5010_X221A1_Judge_Output_V0](
        raw,
        lambda x: cast(partial_types.X12_835_5010_X221A1_Judge_Output_V0, x.cast_to(types, partial_types)),
        lambda x: cast(types.X12_835_5010_X221A1_Judge_Output_V0, x.cast_to(types, types)),
        self.__ctx_manager.get(),
      )
    
    def X12_835_5010_X221A1_Validator(
        self,
        params: types.X12_835_5010_X221A1_Validator_Input_V0,
        baml_options: BamlCallOptions = {},
    ) -> baml_py.BamlSyncStream[partial_types.X12_835_5010_X221A1_Validator_Output_V0, types.X12_835_5010_X221A1_Validator_Output_V0]:
      __tb__ = baml_options.get("tb", None)
      if __tb__ is not None:
        tb = __tb__._tb # type: ignore (we know how to use this private attribute)
      else:
        tb = None
      __cr__ = baml_options.get("client_registry", None)

      raw = self.__runtime.stream_function_sync(
        "X12_835_5010_X221A1_Validator",
        {
          "params": params,
        },
        None,
        self.__ctx_manager.get(),
        tb,
        __cr__,
      )

      return baml_py.BamlSyncStream[partial_types.X12_835_5010_X221A1_Validator_Output_V0, types.X12_835_5010_X221A1_Validator_Output_V0](
        raw,
        lambda x: cast(partial_types.X12_835_5010_X221A1_Validator_Output_V0, x.cast_to(types, partial_types)),
        lambda x: cast(types.X12_835_5010_X221A1_Validator_Output_V0, x.cast_to(types, types)),
        self.__ctx_manager.get(),
      )
    

b = BamlSyncClient(DO_NOT_USE_DIRECTLY_UNLESS_YOU_KNOW_WHAT_YOURE_DOING_RUNTIME, DO_NOT_USE_DIRECTLY_UNLESS_YOU_KNOW_WHAT_YOURE_DOING_CTX)

__all__ = ["b"]