// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// TODO: Should work with compile-time evaluation.
// CHECK:STDERR: fail_not_in_function.carbon:[[@LINE+9]]:14: ERROR: Semantics TODO: `Control flow expressions are currently only supported inside functions.`.
// CHECK:STDERR: let x: i32 = if true then 1 else 0;
// CHECK:STDERR:              ^
// CHECK:STDERR: fail_not_in_function.carbon:[[@LINE+6]]:22: ERROR: Semantics TODO: `Control flow expressions are currently only supported inside functions.`.
// CHECK:STDERR: let x: i32 = if true then 1 else 0;
// CHECK:STDERR:                      ^
// CHECK:STDERR: fail_not_in_function.carbon:[[@LINE+3]]:29: ERROR: Semantics TODO: `Control flow expressions are currently only supported inside functions.`.
// CHECK:STDERR: let x: i32 = if true then 1 else 0;
// CHECK:STDERR:                             ^
let x: i32 = if true then 1 else 0;

class C {
  // TODO: Should work with compile-time evaluation.
  // CHECK:STDERR: fail_not_in_function.carbon:[[@LINE+12]]:10: ERROR: Semantics TODO: `Control flow expressions are currently only supported inside functions.`.
  // CHECK:STDERR:   var n: if true then i32 else f64;
  // CHECK:STDERR:          ^
  // CHECK:STDERR: fail_not_in_function.carbon:[[@LINE+9]]:18: ERROR: Semantics TODO: `Control flow expressions are currently only supported inside functions.`.
  // CHECK:STDERR:   var n: if true then i32 else f64;
  // CHECK:STDERR:                  ^
  // CHECK:STDERR: fail_not_in_function.carbon:[[@LINE+6]]:27: ERROR: Semantics TODO: `Control flow expressions are currently only supported inside functions.`.
  // CHECK:STDERR:   var n: if true then i32 else f64;
  // CHECK:STDERR:                           ^
  // CHECK:STDERR: fail_not_in_function.carbon:[[@LINE+3]]:27: ERROR: Cannot evaluate type expression.
  // CHECK:STDERR:   var n: if true then i32 else f64;
  // CHECK:STDERR:                           ^
  var n: if true then i32 else f64;
}

// CHECK:STDOUT: constants {
// CHECK:STDOUT:   %.loc34: type = struct_type {.n: <error>}
// CHECK:STDOUT: }
// CHECK:STDOUT:
// CHECK:STDOUT: file "fail_not_in_function.carbon" {
// CHECK:STDOUT:   %.loc17: i32 = block_arg <unexpected instblockref block4>
// CHECK:STDOUT:   %x: i32 = bind_name x, %.loc17
// CHECK:STDOUT:   class_decl @C, ()
// CHECK:STDOUT:   %C: type = class_type @C
// CHECK:STDOUT: }
// CHECK:STDOUT:
// CHECK:STDOUT: class @C {
// CHECK:STDOUT:   %.loc33: bool = bool_literal true
// CHECK:STDOUT:   if %.loc33 br !if.expr.then else br !if.expr.else
// CHECK:STDOUT:
// CHECK:STDOUT: !members:
// CHECK:STDOUT:   .n = <unexpected instref inst+20>
// CHECK:STDOUT: }
