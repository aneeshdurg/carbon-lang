// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// --- api_only.carbon

package ApiOnly api;

// --- api_only_lib.carbon

package ApiOnly library "lib" api;

// --- with_impl_api.carbon

package WithImpl api;

// --- with_impl_impl.carbon

package WithImpl impl;

// --- with_impl_impl_extra.carbon

// Multiple impls are allowed.
package WithImpl impl;

// --- with_impl_lib_api.carbon

package WithImpl library "lib" api;

// --- with_impl_lib_impl.carbon

package WithImpl library "lib" impl;

// --- main.carbon

// --- main_lib.carbon

library "lib" api;

// --- main_lib_impl.carbon

library "lib" impl;

// CHECK:STDOUT: file "api_only.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "api_only_lib.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "with_impl_api.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "with_impl_impl.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "with_impl_impl_extra.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "with_impl_lib_api.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "with_impl_lib_impl.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "main.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "main_lib.carbon" {
// CHECK:STDOUT: }
// CHECK:STDOUT: file "main_lib_impl.carbon" {
// CHECK:STDOUT: }
