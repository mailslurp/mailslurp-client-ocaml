(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Page_sent_email_with_queue_projection.t : Paginated sent email results for emails sent with queue. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full sent email entity use the projection ID with individual method calls.
 *)

type t = {
    content: Send_with_queue_result.t list;
    pageable: Pageable_object.t option [@default None];
    total_pages: int32;
    total_elements: int64;
    last: bool option [@default None];
    number_of_elements: int32 option [@default None];
    first: bool option [@default None];
    size: int32 option [@default None];
    number: int32 option [@default None];
    sort: Sort_object.t option [@default None];
    empty: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Paginated sent email results for emails sent with queue. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full sent email entity use the projection ID with individual method calls. *)
let create (total_pages : int32) (total_elements : int64) : t = {
    content = [];
    pageable = None;
    total_pages = total_pages;
    total_elements = total_elements;
    last = None;
    number_of_elements = None;
    first = None;
    size = None;
    number = None;
    sort = None;
    empty = None;
}

