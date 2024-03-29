(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_new_email_payload.t : NEW_EMAIL webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to. Use the email ID to fetch the full email body or attachments.
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
    (* Id of the inbox *)
    inbox_id: string;
    (* Id of the domain that received an email *)
    domain_id: string option [@default None];
    (* ID of the email that was received. Use this ID for fetching the email with the `EmailController`. *)
    email_id: string;
    (* Date time of event creation *)
    created_at: string;
    (* List of `To` recipient email addresses that the email was addressed to. See recipients object for names. *)
    _to: string list;
    (* Who the email was sent from. An email address - see fromName for the sender name. *)
    from: string;
    (* List of `CC` recipients email addresses that the email was addressed to. See recipients object for names. *)
    cc: string list;
    (* List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names. *)
    bcc: string list;
    (* The subject line of the email message as specified by SMTP subject header *)
    subject: string option [@default None];
    (* List of attachment meta data objects if attachments present *)
    attachment_meta_datas: Attachment_meta_data.t list;
} [@@deriving yojson { strict = false }, show ];;

(** NEW_EMAIL webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to. Use the email ID to fetch the full email body or attachments. *)
let create (message_id : string) (webhook_id : string) (event_name : Enums.eventname) (inbox_id : string) (email_id : string) (created_at : string) (_to : string list) (from : string) (cc : string list) (bcc : string list) (attachment_meta_datas : Attachment_meta_data.t list) : t = {
    message_id = message_id;
    webhook_id = webhook_id;
    event_name = event_name;
    webhook_name = None;
    inbox_id = inbox_id;
    domain_id = None;
    email_id = email_id;
    created_at = created_at;
    _to = _to;
    from = from;
    cc = cc;
    bcc = bcc;
    subject = None;
    attachment_meta_datas = attachment_meta_datas;
}

