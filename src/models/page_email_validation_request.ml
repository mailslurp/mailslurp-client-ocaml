(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Page_email_validation_request.t : Paginated email validation request records. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.
 *)

type t = {
    content: Email_validation_request_dto.t list;
    pageable: Pageable_object.t option [@default None];
    total_pages: int32;
    total_elements: int64;
    last: bool option [@default None];
    number_of_elements: int32 option [@default None];
    size: int32 option [@default None];
    number: int32 option [@default None];
    sort: Sort_object.t option [@default None];
    first: bool option [@default None];
    empty: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Paginated email validation request records. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls. *)
let create (total_pages : int32) (total_elements : int64) : t = {
    content = [];
    pageable = None;
    total_pages = total_pages;
    total_elements = total_elements;
    last = None;
    number_of_elements = None;
    size = None;
    number = None;
    sort = None;
    first = None;
    empty = None;
}

