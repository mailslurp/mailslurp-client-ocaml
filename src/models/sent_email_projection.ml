(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    user_id: string;
    body_md5_hash: string option [@default None];
    from: string option [@default None];
    subject: string option [@default None];
    attachments: string list;
    inbox_id: string;
    _to: string list;
    bcc: string list;
    cc: string list;
    created_at: string;
    virtual_send: bool;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (user_id : string) (attachments : string list) (inbox_id : string) (_to : string list) (bcc : string list) (cc : string list) (created_at : string) (virtual_send : bool) : t = {
    id = id;
    user_id = user_id;
    body_md5_hash = None;
    from = None;
    subject = None;
    attachments = attachments;
    inbox_id = inbox_id;
    _to = _to;
    bcc = bcc;
    cc = cc;
    created_at = created_at;
    virtual_send = virtual_send;
}

