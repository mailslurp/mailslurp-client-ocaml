(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Unseen_error_count_dto.t : Number of unseen errors
 *)

type t = {
    count: int64;
} [@@deriving yojson { strict = false }, show ];;

(** Number of unseen errors *)
let create (count : int64) : t = {
    count = count;
}

