(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    sorted: bool option [@default None];
    unsorted: bool option [@default None];
    empty: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    sorted = None;
    unsorted = None;
    empty = None;
}
