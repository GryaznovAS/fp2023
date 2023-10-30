(** Copyright 2021-2022, GryaznovAS *)
(** SPDX-License-Identifier: CC0-1.0 *)

type id = string [@@deriving show { with_path = false }]

type record =
  | Rec
  | NotRec
[@@deriving show { with_path = false }]

type const =
  | Int of int
  | Bool of bool
[@@deriving show { with_path = false }]

type binop =
  | Eq
  | Add
  | Sub
  | Mul
  | Div
  | Neq
[@@deriving show { with_path = false }]

type expression =
  | Emptyness
  | Variable of id
  | Constant of const
  | List of expression list
  | Tuple of expression list
  | Function of id * expression
  | Application of expression * expression
  | Binop of binop * expression * expression
  | Let of record * id * expression * expression
  | Variative of expression * expression * expression
[@@deriving show { with_path = false }]