(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    email_address: string;
} [@@deriving yojson { strict = false }, show ];;

let create (email_address : string) : t = {
    email_address = email_address;
}

