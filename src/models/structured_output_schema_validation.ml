(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    valid: bool;
    errors: string list;
    example_output: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (valid : bool) : t = {
    valid = valid;
    errors = [];
    example_output = None;
}

