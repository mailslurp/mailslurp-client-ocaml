(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    page_number: int32 option [@default None];
    page_size: int32 option [@default None];
    unpaged: bool option [@default None];
    paged: bool option [@default None];
    offset: int64 option [@default None];
    sort: Sort_object.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    page_number = None;
    page_size = None;
    unpaged = None;
    paged = None;
    offset = None;
    sort = None;
}

