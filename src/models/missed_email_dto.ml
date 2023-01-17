(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Missed_email_dto.t : Missed email
 *)

type t = {
    id: string;
    user_id: string option [@default None];
    subject: string option [@default None];
    body_excerpt: string option [@default None];
    attachment_count: int32;
    from: string option [@default None];
    raw_url: string option [@default None];
    raw_key: string option [@default None];
    raw_bucket: string option [@default None];
    can_restore: bool option [@default None];
    _to: string list;
    cc: string list;
    bcc: string list;
    inbox_ids: string list;
    created_at: string;
    updated_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** Missed email *)
let create (id : string) (attachment_count : int32) (_to : string list) (cc : string list) (bcc : string list) (inbox_ids : string list) (created_at : string) (updated_at : string) : t = {
    id = id;
    user_id = None;
    subject = None;
    body_excerpt = None;
    attachment_count = attachment_count;
    from = None;
    raw_url = None;
    raw_key = None;
    raw_bucket = None;
    can_restore = None;
    _to = _to;
    cc = cc;
    bcc = bcc;
    inbox_ids = inbox_ids;
    created_at = created_at;
    updated_at = updated_at;
}

