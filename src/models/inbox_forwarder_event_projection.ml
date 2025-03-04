(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Inbox_forwarder_event_projection.t : Inbox forwarder event
 *)

type t = {
    created_at: string;
    user_id: string option [@default None];
    email_id: string option [@default None];
    inbox_id: string option [@default None];
    sent_id: string option [@default None];
    forwarder_id: string option [@default None];
    message: string option [@default None];
    id: string option [@default None];
    status: Enums.inboxrepliereventprojection_status option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Inbox forwarder event *)
let create (created_at : string) : t = {
    created_at = created_at;
    user_id = None;
    email_id = None;
    inbox_id = None;
    sent_id = None;
    forwarder_id = None;
    message = None;
    id = None;
    status = None;
}

