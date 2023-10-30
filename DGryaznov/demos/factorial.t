  $ dune exec factorial
  Let (Rec, "factorial",
    Function ("x",
      Variative (Binop (Eq, (Variable "x"), Constant (Int 1))), (Variable "x"),
        Binop (Mul, (Variable "x"),
          Application ((Variable "factorial"), Binop (Sub, (Variable "x"), Constant (Int 1))))),
    Emptyness)