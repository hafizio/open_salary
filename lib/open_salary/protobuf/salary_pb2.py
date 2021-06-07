# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: salary.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor.FileDescriptor(
  name='salary.proto',
  package='OpenSalary',
  syntax='proto3',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x0csalary.proto\x12\nOpenSalary\"h\n\x0cSalaryParams\x12\x1c\n\x14salary_converted_max\x18\x01 \x01(\x02\x12\x1c\n\x14salary_converted_min\x18\x02 \x01(\x02\x12\x1c\n\x14\x63ost_of_living_index\x18\x03 \x01(\x02\x62\x06proto3'
)




_SALARYPARAMS = _descriptor.Descriptor(
  name='SalaryParams',
  full_name='OpenSalary.SalaryParams',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='salary_converted_max', full_name='OpenSalary.SalaryParams.salary_converted_max', index=0,
      number=1, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='salary_converted_min', full_name='OpenSalary.SalaryParams.salary_converted_min', index=1,
      number=2, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='cost_of_living_index', full_name='OpenSalary.SalaryParams.cost_of_living_index', index=2,
      number=3, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=28,
  serialized_end=132,
)

DESCRIPTOR.message_types_by_name['SalaryParams'] = _SALARYPARAMS
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

SalaryParams = _reflection.GeneratedProtocolMessageType('SalaryParams', (_message.Message,), {
  'DESCRIPTOR' : _SALARYPARAMS,
  '__module__' : 'salary_pb2'
  # @@protoc_insertion_point(class_scope:OpenSalary.SalaryParams)
  })
_sym_db.RegisterMessage(SalaryParams)


# @@protoc_insertion_point(module_scope)