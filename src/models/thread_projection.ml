(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Thread_projection.t : A thread is a message thread created for a message received by an alias
 *)

type t = {
    alias_id: string;
    bcc: string list;
    cc: string list;
    created_at: string;
    id: string;
    inbox_id: string;
    name: string option [@default None];
    subject: string option [@default None];
    _to: string list;
    updated_at: string;
    user_id: string;
} [@@deriving yojson { strict = false }, show ];;

(** A thread is a message thread created for a message received by an alias *)
let create (alias_id : string) (created_at : string) (id : string) (inbox_id : string) (_to : string list) (updated_at : string) (user_id : string) : t = {
    alias_id = alias_id;
    bcc = [];
    cc = [];
    created_at = created_at;
    id = id;
    inbox_id = inbox_id;
    name = None;
    subject = None;
    _to = _to;
    updated_at = updated_at;
    user_id = user_id;
}

