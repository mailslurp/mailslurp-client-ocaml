(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    name: string;
    content: string;
} [@@deriving yojson { strict = false }, show ];;

let create (name : string) (content : string) : t = {
    name = name;
    content = content;
}

