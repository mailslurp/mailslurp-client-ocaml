(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    name: string option [@default None];
    description: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    name = None;
    description = None;
}

