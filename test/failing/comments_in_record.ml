(* - [b: float] gets misaligned in the first case.

   - comments and doc comments behave differently. *)

type t =
  { a: int
  ; (* some comment *)
    b: float
  ; c: string
  ; d: [`something_looooooooooooooooooooooooooooooooong] }

type t =
  { a: int
  ; (** some comment *)
    b: float
  ; c: string
  ; d: [`something_looooooooooooooooooooooooooooooooong] }

let { (* cmts *)
      pat
    ; loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong
    ; a
    ; (* b *) b
    ; (* c *) c
    ; d=
      (* d *)
      (D: loooooooooooooooooooooooooooooooooooooooooooooooooooooooong_int)
    ; (* d *)
      e : loooooooooooooooooooooooooooooooooooooooooooooooooooooooong_int } =
  exp
