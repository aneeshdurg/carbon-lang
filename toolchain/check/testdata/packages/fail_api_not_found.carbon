// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// --- no_api.carbon

// CHECK:STDERR: no_api.carbon:[[@LINE+3]]:1: ERROR: Corresponding API not found.
// CHECK:STDERR: package Foo impl;
// CHECK:STDERR: ^
package Foo impl;

// --- no_api_lib.carbon

// CHECK:STDERR: no_api_lib.carbon:[[@LINE+3]]:1: ERROR: Corresponding API not found.
// CHECK:STDERR: package Foo library "Bar" impl;
// CHECK:STDERR: ^
package Foo library "Bar" impl;

// --- no_api_main_lib.carbon

// CHECK:STDERR: no_api_main_lib.carbon:[[@LINE+3]]:1: ERROR: Corresponding API not found.
// CHECK:STDERR: library "Bar" impl;
// CHECK:STDERR: ^
library "Bar" impl;

// CHECK:STDOUT: file "no_api.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "no_api_lib.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "no_api_main_lib.carbon" {
// CHECK:STDOUT: }
