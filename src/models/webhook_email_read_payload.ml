(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_email_read_payload.t : EMAIL_READ webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is read. This happens when an email is requested in full from the API or a user views the email in the dashboard.
 *)

type t = {
    (* Date time of event creation *)
    created_at: string option [@default None];
    (* ID of the email that was received. Use this ID for fetching the email with the `EmailController`. *)
    email_id: string option [@default None];
    (* Is the email read *)
    email_is_read: bool option [@default None];
    (* Name of the event type webhook is being triggered for. *)
    event_name: Enums.eventname option [@default None];
    (* Id of the inbox that received an email *)
    inbox_id: string option [@default None];
    (* Idempotent message ID. Store this ID locally or in a database to prevent message duplication. *)
    message_id: string option [@default None];
    (* ID of webhook entity being triggered *)
    webhook_id: string option [@default None];
    (* Name of the webhook being triggered *)
    webhook_name: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** EMAIL_READ webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is read. This happens when an email is requested in full from the API or a user views the email in the dashboard. *)
let create () : t = {
    created_at = None;
    email_id = None;
    email_is_read = None;
    event_name = None;
    inbox_id = None;
    message_id = None;
    webhook_id = None;
    webhook_name = None;
}

