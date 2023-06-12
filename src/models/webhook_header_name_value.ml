(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_header_name_value.t : Name value pair for webhook header
 *)

type t = {
    (* Name of header *)
    name: string;
    (* Value of header *)
    value: string;
} [@@deriving yojson { strict = false }, show ];;

(** Name value pair for webhook header *)
let create (name : string) (value : string) : t = {
    name = name;
    value = value;
}

