(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Unread_count.t : Number of unread entities
 *)

type t = {
    count: int64;
} [@@deriving yojson { strict = false }, show ];;

(** Number of unread entities *)
let create (count : int64) : t = {
    count = count;
}

