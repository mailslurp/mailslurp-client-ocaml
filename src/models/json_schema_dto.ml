(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Json_schema_dto.t : JSONSchema for payload
 *)

type t = {
    value: string;
} [@@deriving yojson { strict = false }, show ];;

(** JSONSchema for payload *)
let create (value : string) : t = {
    value = value;
}

