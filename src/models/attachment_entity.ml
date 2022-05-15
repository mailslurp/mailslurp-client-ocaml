(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Attachment_entity.t : Email attachment entity
 *)

type t = {
    id: string option [@default None];
    attachment_id: string;
    user_id: string;
    content_type: string option [@default None];
    content_length: int64 option [@default None];
    name: string option [@default None];
    created_at: string;
    updated_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** Email attachment entity *)
let create (attachment_id : string) (user_id : string) (created_at : string) (updated_at : string) : t = {
    id = None;
    attachment_id = attachment_id;
    user_id = user_id;
    content_type = None;
    content_length = None;
    name = None;
    created_at = created_at;
    updated_at = updated_at;
}

