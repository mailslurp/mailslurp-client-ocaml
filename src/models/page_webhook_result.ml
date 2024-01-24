(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Page_webhook_result.t : Paginated webhook results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.
 *)

type t = {
    content: Webhook_result_dto.t list;
    pageable: Pageable_object.t option [@default None];
    total: int64 option [@default None];
    total_elements: int64 option [@default None];
    total_pages: int32 option [@default None];
    last: bool option [@default None];
    number_of_elements: int32 option [@default None];
    first: bool option [@default None];
    size: int32 option [@default None];
    number: int32 option [@default None];
    sort: Sort_object.t option [@default None];
    empty: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Paginated webhook results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls. *)
let create () : t = {
    content = [];
    pageable = None;
    total = None;
    total_elements = None;
    total_pages = None;
    last = None;
    number_of_elements = None;
    first = None;
    size = None;
    number = None;
    sort = None;
    empty = None;
}

