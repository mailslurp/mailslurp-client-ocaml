(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    offset: int64 option [@default None];
    sort: Sort.t option [@default None];
    paged: bool option [@default None];
    unpaged: bool option [@default None];
    page_number: int32 option [@default None];
    page_size: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    offset = None;
    sort = None;
    paged = None;
    unpaged = None;
    page_number = None;
    page_size = None;
}

