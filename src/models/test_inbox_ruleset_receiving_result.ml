(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    can_receive: bool;
} [@@deriving yojson { strict = false }, show ];;

let create (can_receive : bool) : t = {
    can_receive = can_receive;
}

