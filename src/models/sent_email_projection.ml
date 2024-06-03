(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    created_at: string;
    id: string;
    from: string option [@default None];
    subject: string option [@default None];
    attachments: string list;
    inbox_id: string;
    user_id: string;
    _to: string list;
    bcc: string list;
    cc: string list;
    body_md5_hash: string option [@default None];
    virtual_send: bool;
} [@@deriving yojson { strict = false }, show ];;

let create (created_at : string) (id : string) (attachments : string list) (inbox_id : string) (user_id : string) (_to : string list) (bcc : string list) (cc : string list) (virtual_send : bool) : t = {
    created_at = created_at;
    id = id;
    from = None;
    subject = None;
    attachments = attachments;
    inbox_id = inbox_id;
    user_id = user_id;
    _to = _to;
    bcc = bcc;
    cc = cc;
    body_md5_hash = None;
    virtual_send = virtual_send;
}

