(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Set_phone_favourited_options.t : Options for setting phone favourite state
 *)

type t = {
    (* Phone favourite state *)
    state: bool;
} [@@deriving yojson { strict = false }, show ];;

(** Options for setting phone favourite state *)
let create (state : bool) : t = {
    state = state;
}

