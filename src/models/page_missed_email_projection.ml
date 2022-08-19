(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Page_missed_email_projection.t : Paginated MissedEmail results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.
 *)

type t = {
    content: Missed_email_projection.t list;
    pageable: Pageable_object.t option [@default None];
    total: int64 option [@default None];
    last: bool option [@default None];
    total_elements: int64 option [@default None];
    total_pages: int32 option [@default None];
    size: int32 option [@default None];
    number: int32 option [@default None];
    sort: Sort.t option [@default None];
    first: bool option [@default None];
    number_of_elements: int32 option [@default None];
    empty: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Paginated MissedEmail results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls. *)
let create () : t = {
    content = [];
    pageable = None;
    total = None;
    last = None;
    total_elements = None;
    total_pages = None;
    size = None;
    number = None;
    sort = None;
    first = None;
    number_of_elements = None;
    empty = None;
}

