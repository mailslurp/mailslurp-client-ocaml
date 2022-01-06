(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Page_sent_email_projection.t : Paginated sent email results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full sent email entity use the projection ID with individual method calls.
 *)

type t = {
    (* Collection of items *)
    content: Sent_email_projection.t list;
    pageable: Pageable.t option [@default None];
    (* Size of page requested *)
    size: int32 option [@default None];
    (* Page number starting at 0 *)
    number: int32 option [@default None];
    (* Total number of pages available *)
    total_pages: int32 option [@default None];
    (* Number of items returned *)
    number_of_elements: int32 option [@default None];
    (* Total number of items available for querying *)
    total_elements: int64 option [@default None];
    last: bool option [@default None];
    sort: Sort.t option [@default None];
    first: bool option [@default None];
    empty: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Paginated sent email results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full sent email entity use the projection ID with individual method calls. *)
let create () : t = {
    content = [];
    pageable = None;
    size = None;
    number = None;
    total_pages = None;
    number_of_elements = None;
    total_elements = None;
    last = None;
    sort = None;
    first = None;
    empty = None;
}

