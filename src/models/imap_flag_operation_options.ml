(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    flag_operation: Enums.flagoperation;
    flags: string list;
} [@@deriving yojson { strict = false }, show ];;

let create (flag_operation : Enums.flagoperation) (flags : string list) : t = {
    flag_operation = flag_operation;
    flags = flags;
}
