(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_email_read_payload.t : EMAIL_READ webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is read. This happens when an email is requested in full from the API or a user views the email in the dashboard.
 *)

type t = {
    (* Idempotent message ID. Store this ID locally or in a database to prevent message duplication. *)
    message_id: string;
    (* ID of webhook entity being triggered *)
    webhook_id: string;
    (* Name of the event type webhook is being triggered for. *)
    event_name: Enums.eventname;
    (* Name of the webhook being triggered *)
    webhook_name: string option [@default None];
    (* ID of the email that was received. Use this ID for fetching the email with the `EmailController`. *)
    email_id: string;
    (* Id of the inbox that received an email *)
    inbox_id: string;
    (* Is the email read *)
    email_is_read: bool;
    (* Date time of event creation *)
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

(** EMAIL_READ webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is read. This happens when an email is requested in full from the API or a user views the email in the dashboard. *)
let create (message_id : string) (webhook_id : string) (event_name : Enums.eventname) (email_id : string) (inbox_id : string) (email_is_read : bool) (created_at : string) : t = {
    message_id = message_id;
    webhook_id = webhook_id;
    event_name = event_name;
    webhook_name = None;
    email_id = email_id;
    inbox_id = inbox_id;
    email_is_read = email_is_read;
    created_at = created_at;
}
