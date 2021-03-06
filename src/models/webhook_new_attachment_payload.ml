(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_new_attachment_payload.t : NEW_ATTACHMENT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains an attachment. You can use the attachmentId to download the attachment.
 *)

type t = {
    (* Idempotent message ID. Store this ID locally or in a database to prevent message duplication. *)
    message_id: string;
    (* ID of webhook entity being triggered *)
    webhook_id: string;
    (* Name of the webhook being triggered *)
    webhook_name: string option [@default None];
    (* Name of the event type webhook is being triggered for. *)
    event_name: Enums.eventname;
    (* ID of attachment. Use the `AttachmentController` to *)
    attachment_id: string;
    (* Filename of the attachment if present *)
    name: string;
    (* Content type of attachment such as 'image/png' or 'application/pdf *)
    content_type: string;
    (* Size of attachment in bytes *)
    content_length: int64;
} [@@deriving yojson { strict = false }, show ];;

(** NEW_ATTACHMENT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains an attachment. You can use the attachmentId to download the attachment. *)
let create (message_id : string) (webhook_id : string) (event_name : Enums.eventname) (attachment_id : string) (name : string) (content_type : string) (content_length : int64) : t = {
    message_id = message_id;
    webhook_id = webhook_id;
    webhook_name = None;
    event_name = event_name;
    attachment_id = attachment_id;
    name = name;
    content_type = content_type;
    content_length = content_length;
}

