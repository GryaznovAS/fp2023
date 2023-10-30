(** Copyright 2021-2022, GryaznovAS *)
(** SPDX-License-Identifier: CC0-1.0 *)

open Ast
open Base
open Angstrom

let space_check = function
  | ' ' | '\t' | '\n' | '\r' -> true
  | _ -> false
;;

let upper_letter_check = function
  | 'A' .. 'Z' | '_' -> true
  | _ -> false
;;

let lower_letter_check = function
  | 'a' .. 'z' | '_' -> true
  | _ -> false
;;

let digit_check = function
  | '0' .. '9' -> true
  | _ -> false
;;

let operators_check = function
  | "let"
  | "rec"
  | "match"
  | "with"
  | "true"
  | "false"
  | "if"
  | "then"
  | "else"
  | "open"
  | "fun"
  | "function"
  | "object"
  | "end" -> true
  | _ -> false
;;