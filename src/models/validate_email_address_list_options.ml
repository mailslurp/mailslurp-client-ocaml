(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    email_address_list: string list;
} [@@deriving yojson { strict = false }, show ];;

let create (email_address_list : string list) : t = {
    email_address_list = email_address_list;
}
