(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Inbox_replier_event_projection.t : Inbox replier event
 *)

type t = {
    message: string option [@default None];
    id: string option [@default None];
    status: Enums.status option [@default None];
    recipients: string list;
    user_id: string option [@default None];
    email_id: string option [@default None];
    inbox_id: string option [@default None];
    created_at: string;
    sent_id: string option [@default None];
    replier_id: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Inbox replier event *)
let create (created_at : string) : t = {
    message = None;
    id = None;
    status = None;
    recipients = [];
    user_id = None;
    email_id = None;
    inbox_id = None;
    created_at = created_at;
    sent_id = None;
    replier_id = None;
}

