(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Inbox_exists_dto.t : Result of email exists query
 *)

type t = {
    exists: bool;
} [@@deriving yojson { strict = false }, show ];;

(** Result of email exists query *)
let create (exists : bool) : t = {
    exists = exists;
}

