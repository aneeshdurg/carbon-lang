// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

class Foo(a: i32,);

interface Bar(a: i32,) {}

// CHECK:STDOUT: - filename: one_suffix_comma.carbon
// CHECK:STDOUT:   parse_tree: [
// CHECK:STDOUT:     {kind: 'FileStart', text: ''},
// CHECK:STDOUT:       {kind: 'ClassIntroducer', text: 'class'},
// CHECK:STDOUT:       {kind: 'Name', text: 'Foo'},
// CHECK:STDOUT:         {kind: 'ParamListStart', text: '('},
// CHECK:STDOUT:           {kind: 'Name', text: 'a'},
// CHECK:STDOUT:           {kind: 'Literal', text: 'i32'},
// CHECK:STDOUT:         {kind: 'PatternBinding', text: ':', subtree_size: 3},
// CHECK:STDOUT:         {kind: 'ParamListComma', text: ','},
// CHECK:STDOUT:       {kind: 'ParamList', text: ')', subtree_size: 6},
// CHECK:STDOUT:     {kind: 'ClassDecl', text: ';', subtree_size: 9},
// CHECK:STDOUT:         {kind: 'InterfaceIntroducer', text: 'interface'},
// CHECK:STDOUT:         {kind: 'Name', text: 'Bar'},
// CHECK:STDOUT:           {kind: 'ParamListStart', text: '('},
// CHECK:STDOUT:             {kind: 'Name', text: 'a'},
// CHECK:STDOUT:             {kind: 'Literal', text: 'i32'},
// CHECK:STDOUT:           {kind: 'PatternBinding', text: ':', subtree_size: 3},
// CHECK:STDOUT:           {kind: 'ParamListComma', text: ','},
// CHECK:STDOUT:         {kind: 'ParamList', text: ')', subtree_size: 6},
// CHECK:STDOUT:       {kind: 'InterfaceDefinitionStart', text: '{', subtree_size: 9},
// CHECK:STDOUT:     {kind: 'InterfaceDefinition', text: '}', subtree_size: 10},
// CHECK:STDOUT:     {kind: 'FileEnd', text: ''},
// CHECK:STDOUT:   ]
