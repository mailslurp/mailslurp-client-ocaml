(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    phone_number: string;
} [@@deriving yojson { strict = false }, show ];;

let create (phone_number : string) : t = {
    phone_number = phone_number;
}

