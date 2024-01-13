(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Thread_projection.t : A thread is a message thread created for a message received by an alias
 *)

type t = {
    (* Inbox ID *)
    inbox_id: string;
    (* User ID *)
    user_id: string;
    (* Created at DateTime *)
    created_at: string;
    (* Updated at DateTime *)
    updated_at: string;
    (* To recipients *)
    _to: string list;
    (* BCC recipients *)
    bcc: string list;
    (* CC recipients *)
    cc: string list;
    (* Alias ID *)
    alias_id: string;
    (* Thread subject *)
    subject: string option [@default None];
    (* Name of thread *)
    name: string option [@default None];
    (* ID of email thread *)
    id: string;
} [@@deriving yojson { strict = false }, show ];;

(** A thread is a message thread created for a message received by an alias *)
let create (inbox_id : string) (user_id : string) (created_at : string) (updated_at : string) (_to : string list) (alias_id : string) (id : string) : t = {
    inbox_id = inbox_id;
    user_id = user_id;
    created_at = created_at;
    updated_at = updated_at;
    _to = _to;
    bcc = [];
    cc = [];
    alias_id = alias_id;
    subject = None;
    name = None;
    id = id;
}

