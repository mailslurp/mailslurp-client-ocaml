(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    issuer: string;
    name_id: string;
    name_id_format: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (issuer : string) (name_id : string) : t = {
    issuer = issuer;
    name_id = name_id;
    name_id_format = None;
}

