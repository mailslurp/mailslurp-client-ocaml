(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    operation: Enums.operation;
    flags: string list;
    uid_set: string option [@default None];
    seq_set: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (operation : Enums.operation) : t = {
    operation = operation;
    flags = [];
    uid_set = None;
    seq_set = None;
}
