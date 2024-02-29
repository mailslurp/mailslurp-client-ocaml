(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    from: string option [@default None];
    subject: string option [@default None];
    inbox_id: string;
    user_id: string;
    attachments: string list;
    _to: string list;
    bcc: string list;
    cc: string list;
    created_at: string;
    body_md5_hash: string option [@default None];
    virtual_send: bool;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (inbox_id : string) (user_id : string) (attachments : string list) (_to : string list) (bcc : string list) (cc : string list) (created_at : string) (virtual_send : bool) : t = {
    id = id;
    from = None;
    subject = None;
    inbox_id = inbox_id;
    user_id = user_id;
    attachments = attachments;
    _to = _to;
    bcc = bcc;
    cc = cc;
    created_at = created_at;
    body_md5_hash = None;
    virtual_send = virtual_send;
}

