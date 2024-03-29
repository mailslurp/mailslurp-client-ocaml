(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Validate_email_address_list_options.t : Options for validating a list of email addresses
 *)

type t = {
    email_address_list: string list;
    ignore_old_results: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Options for validating a list of email addresses *)
let create (email_address_list : string list) : t = {
    email_address_list = email_address_list;
    ignore_old_results = None;
}

