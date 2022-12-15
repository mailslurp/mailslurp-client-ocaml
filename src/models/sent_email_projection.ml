(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Sent_email_projection.t : Collection of items
 *)

type t = {
    id: string;
    from: string option [@default None];
    user_id: string;
    subject: string option [@default None];
    inbox_id: string;
    body_md5_hash: string option [@default None];
    bcc: string list;
    cc: string list;
    virtual_send: bool;
    attachments: string list;
    created_at: string;
    _to: string list;
} [@@deriving yojson { strict = false }, show ];;

(** Collection of items *)
let create (id : string) (user_id : string) (inbox_id : string) (bcc : string list) (cc : string list) (virtual_send : bool) (attachments : string list) (created_at : string) (_to : string list) : t = {
    id = id;
    from = None;
    user_id = user_id;
    subject = None;
    inbox_id = inbox_id;
    body_md5_hash = None;
    bcc = bcc;
    cc = cc;
    virtual_send = virtual_send;
    attachments = attachments;
    created_at = created_at;
    _to = _to;
}

