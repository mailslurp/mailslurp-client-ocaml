(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    email_address: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (email_address : string) : t = {
    id = id;
    email_address = email_address;
}
