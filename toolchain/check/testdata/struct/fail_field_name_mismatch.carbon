// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: fail_field_name_mismatch.carbon:[[@LINE+3]]:27: ERROR: Missing value for field `a` in struct initialization.
// CHECK:STDERR: var x: {.a: i32} = {.b = 1};
// CHECK:STDERR:                           ^
var x: {.a: i32} = {.b = 1};

// CHECK:STDERR: fail_field_name_mismatch.carbon:[[@LINE+3]]:20: ERROR: Cannot convert from struct type `{.a: i32}` to `{.b: i32}`: missing field `b` in source type.
// CHECK:STDERR: var y: {.b: i32} = x;
// CHECK:STDERR:                    ^
var y: {.b: i32} = x;

// CHECK:STDOUT: constants {
// CHECK:STDOUT:   %.loc10: type = struct_type {.b: i32}
// CHECK:STDOUT: }
// CHECK:STDOUT:
// CHECK:STDOUT: file "fail_field_name_mismatch.carbon" {
// CHECK:STDOUT:   %.loc10_16: type = struct_type {.a: i32}
// CHECK:STDOUT:   %x.var: ref {.a: i32} = var x
// CHECK:STDOUT:   %x: ref {.a: i32} = bind_name x, %x.var
// CHECK:STDOUT:   %.loc10_26: i32 = int_literal 1
// CHECK:STDOUT:   %.loc10_27: {.b: i32} = struct_literal (%.loc10_26)
// CHECK:STDOUT:   assign %x.var, <error>
// CHECK:STDOUT:   %.loc15: type = struct_type {.b: i32}
// CHECK:STDOUT:   %y.var: ref {.b: i32} = var y
// CHECK:STDOUT:   %y: ref {.b: i32} = bind_name y, %y.var
// CHECK:STDOUT:   %x.ref: ref {.a: i32} = name_reference x, %x
// CHECK:STDOUT:   assign %y.var, <error>
// CHECK:STDOUT: }
