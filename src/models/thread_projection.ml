(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Thread_projection.t : A thread is a message thread created for a message received by an alias
 *)

type t = {
    (* Name of thread *)
    name: string option [@default None];
    (* ID of email thread *)
    id: string;
    (* Thread subject *)
    subject: string option [@default None];
    (* Inbox ID *)
    inbox_id: string;
    (* User ID *)
    user_id: string;
    (* To recipients *)
    _to: string list;
    (* Created at DateTime *)
    created_at: string;
    (* Updated at DateTime *)
    updated_at: string;
    (* BCC recipients *)
    bcc: string list;
    (* CC recipients *)
    cc: string list;
    (* Alias ID *)
    alias_id: string;
} [@@deriving yojson { strict = false }, show ];;

(** A thread is a message thread created for a message received by an alias *)
let create (id : string) (inbox_id : string) (user_id : string) (_to : string list) (created_at : string) (updated_at : string) (alias_id : string) : t = {
    name = None;
    id = id;
    subject = None;
    inbox_id = inbox_id;
    user_id = user_id;
    _to = _to;
    created_at = created_at;
    updated_at = updated_at;
    bcc = [];
    cc = [];
    alias_id = alias_id;
}

