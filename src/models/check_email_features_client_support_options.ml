(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    email_body: string;
} [@@deriving yojson { strict = false }, show ];;

let create (email_body : string) : t = {
    email_body = email_body;
}
