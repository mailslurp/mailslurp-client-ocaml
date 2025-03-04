(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Page_guest_portal_users.t : Paginated guest portal users
 *)

type t = {
    content: Guest_portal_user_projection.t list;
    pageable: Pageable_object.t option [@default None];
    total_elements: int64;
    total_pages: int32;
    last: bool option [@default None];
    number_of_elements: int32 option [@default None];
    first: bool option [@default None];
    size: int32 option [@default None];
    number: int32 option [@default None];
    sort: Sort_object.t option [@default None];
    empty: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Paginated guest portal users *)
let create (total_elements : int64) (total_pages : int32) : t = {
    content = [];
    pageable = None;
    total_elements = total_elements;
    total_pages = total_pages;
    last = None;
    number_of_elements = None;
    first = None;
    size = None;
    number = None;
    sort = None;
    empty = None;
}

