// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn foo(template a:! i32);

// CHECK:STDOUT: - filename: template.carbon
// CHECK:STDOUT:   parse_tree: [
// CHECK:STDOUT:     {kind: 'FileStart', text: ''},
// CHECK:STDOUT:       {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:       {kind: 'Name', text: 'foo'},
// CHECK:STDOUT:         {kind: 'ParamListStart', text: '('},
// CHECK:STDOUT:             {kind: 'Name', text: 'a'},
// CHECK:STDOUT:             {kind: 'Literal', text: 'i32'},
// CHECK:STDOUT:           {kind: 'GenericPatternBinding', text: ':!', subtree_size: 3},
// CHECK:STDOUT:         {kind: 'Template', text: 'template', subtree_size: 4},
// CHECK:STDOUT:       {kind: 'ParamList', text: ')', subtree_size: 6},
// CHECK:STDOUT:     {kind: 'FunctionDecl', text: ';', subtree_size: 9},
// CHECK:STDOUT:     {kind: 'FileEnd', text: ''},
// CHECK:STDOUT:   ]
