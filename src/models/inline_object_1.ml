(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Inline_object_1.t : Byte array request body
 *)

type t = {
    short: int32 option [@default None];
    char: string option [@default None];
    int: int32 option [@default None];
    long: int64 option [@default None];
    float: float option [@default None];
    double: float option [@default None];
    direct: bool option [@default None];
    read_only: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Byte array request body *)
let create () : t = {
    short = None;
    char = None;
    int = None;
    long = None;
    float = None;
    double = None;
    direct = None;
    read_only = None;
}

