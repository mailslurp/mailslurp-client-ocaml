(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Attachment_projection.t : Email attachment data
 *)

type t = {
    created_at: string;
    updated_at: string;
    user_id: string;
    (* Inbox ID *)
    inbox_id: string option [@default None];
    (* Content ID of attachment. *)
    content_id: string option [@default None];
    (* Attachment ID *)
    attachment_id: string;
    name: string option [@default None];
    (* ID *)
    id: string;
    (* Content length of attachment in bytes *)
    content_length: int64 option [@default None];
    (* Content type of attachment. *)
    content_type: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Email attachment data *)
let create (created_at : string) (updated_at : string) (user_id : string) (attachment_id : string) (id : string) : t = {
    created_at = created_at;
    updated_at = updated_at;
    user_id = user_id;
    inbox_id = None;
    content_id = None;
    attachment_id = attachment_id;
    name = None;
    id = id;
    content_length = None;
    content_type = None;
}

