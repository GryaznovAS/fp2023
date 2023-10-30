(** Copyright 2021-2022, GryaznovAS *)
(** SPDX-License-Identifier: CC0-1.0 *)

open DGLib.Ast
open DGLib.Parser

let () =
  let factorial = "let rec factorial x = if x = 1 then x else x * factorial (x - 1)" in
  match parser factorial with
  | Result.Ok res -> Format.printf "%a\n" pp_expression res
  | _ -> Format.printf "Error occured while running factorial test."
;;