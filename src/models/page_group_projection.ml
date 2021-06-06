(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Page_group_projection.t : Paginated missed email results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls.
 *)

type t = {
    content: Group_projection.t list;
    empty: bool option [@default None];
    first: bool option [@default None];
    last: bool option [@default None];
    number: int32 option [@default None];
    number_of_elements: int32 option [@default None];
    pageable: Pageable.t option [@default None];
    size: int32 option [@default None];
    sort: Sort.t option [@default None];
    total_elements: int64 option [@default None];
    total_pages: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Paginated missed email results. Page index starts at zero. Projection results may omit larger entity fields. For fetching a full entity use the projection ID with individual method calls. *)
let create () : t = {
    content = [];
    empty = None;
    first = None;
    last = None;
    number = None;
    number_of_elements = None;
    pageable = None;
    size = None;
    sort = None;
    total_elements = None;
    total_pages = None;
}

