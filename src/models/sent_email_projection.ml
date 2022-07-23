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
    attachments: string list;
    _to: string list;
    created_at: string;
    bcc: string list;
    cc: string list;
    body_md5_hash: string option [@default None];
    virtual_send: bool;
} [@@deriving yojson { strict = false }, show ];;

(** Collection of items *)
let create (id : string) (user_id : string) (inbox_id : string) (attachments : string list) (_to : string list) (created_at : string) (bcc : string list) (cc : string list) (virtual_send : bool) : t = {
    id = id;
    from = None;
    user_id = user_id;
    subject = None;
    inbox_id = inbox_id;
    attachments = attachments;
    _to = _to;
    created_at = created_at;
    bcc = bcc;
    cc = cc;
    body_md5_hash = None;
    virtual_send = virtual_send;
}

