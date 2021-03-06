(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Page_sent_email_with_queue_projection.t : Paginated sent email results for emails sent with queue. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full sent email entity use the projection ID with individual method calls.
 *)

type t = {
    (* Collection of items *)
    content: Send_with_queue_result.t list;
    pageable: Pageable_object.t option [@default None];
    total: int64 option [@default None];
    (* Size of page requested *)
    size: int32;
    (* Page number starting at 0 *)
    number: int32;
    (* Number of items returned *)
    number_of_elements: int32;
    (* Total number of pages available *)
    total_pages: int32;
    (* Total number of items available for querying *)
    total_elements: int64;
    last: bool option [@default None];
    sort: Sort.t option [@default None];
    first: bool option [@default None];
    empty: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Paginated sent email results for emails sent with queue. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full sent email entity use the projection ID with individual method calls. *)
let create (content : Send_with_queue_result.t list) (size : int32) (number : int32) (number_of_elements : int32) (total_pages : int32) (total_elements : int64) : t = {
    content = content;
    pageable = None;
    total = None;
    size = size;
    number = number;
    number_of_elements = number_of_elements;
    total_pages = total_pages;
    total_elements = total_elements;
    last = None;
    sort = None;
    first = None;
    empty = None;
}

