// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn F() {
  not a and not b and not c;
}

// CHECK:STDOUT: - filename: precedence_not.carbon
// CHECK:STDOUT:   parse_tree: [
// CHECK:STDOUT:     {kind: 'FileStart', text: ''},
// CHECK:STDOUT:         {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:         {kind: 'Name', text: 'F'},
// CHECK:STDOUT:           {kind: 'ParamListStart', text: '('},
// CHECK:STDOUT:         {kind: 'ParamList', text: ')', subtree_size: 2},
// CHECK:STDOUT:       {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 5},
// CHECK:STDOUT:                   {kind: 'NameExpr', text: 'a'},
// CHECK:STDOUT:                 {kind: 'PrefixOperator', text: 'not', subtree_size: 2},
// CHECK:STDOUT:               {kind: 'ShortCircuitOperand', text: 'and', subtree_size: 3},
// CHECK:STDOUT:                 {kind: 'NameExpr', text: 'b'},
// CHECK:STDOUT:               {kind: 'PrefixOperator', text: 'not', subtree_size: 2},
// CHECK:STDOUT:             {kind: 'InfixOperator', text: 'and', subtree_size: 6},
// CHECK:STDOUT:           {kind: 'ShortCircuitOperand', text: 'and', subtree_size: 7},
// CHECK:STDOUT:             {kind: 'NameExpr', text: 'c'},
// CHECK:STDOUT:           {kind: 'PrefixOperator', text: 'not', subtree_size: 2},
// CHECK:STDOUT:         {kind: 'InfixOperator', text: 'and', subtree_size: 10},
// CHECK:STDOUT:       {kind: 'ExprStatement', text: ';', subtree_size: 11},
// CHECK:STDOUT:     {kind: 'FunctionDefinition', text: '}', subtree_size: 17},
// CHECK:STDOUT:     {kind: 'FileEnd', text: ''},
// CHECK:STDOUT:   ]
