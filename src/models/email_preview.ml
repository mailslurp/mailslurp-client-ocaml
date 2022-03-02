(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Email_preview.t : Preview of an email message. For full message (including body and attachments) call the `getEmail` or other email endpoints with the provided email ID.
 *)

type t = {
    (* ID of the email entity *)
    id: string;
    (* The subject line of the email message as specified by SMTP subject header *)
    subject: string option [@default None];
    (* List of `To` recipient email addresses that the email was addressed to. See recipients object for names. *)
    _to: string list;
    (* Who the email was sent from. An email address - see fromName for the sender name. *)
    from: string option [@default None];
    (* List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names. *)
    bcc: string list;
    (* List of `CC` recipients email addresses that the email was addressed to. See recipients object for names. *)
    cc: string list;
    (* When was the email received by MailSlurp *)
    created_at: string;
    (* Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks. *)
    read: bool option [@default None];
    (* List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. *)
    attachments: string list;
} [@@deriving yojson { strict = false }, show ];;

(** Preview of an email message. For full message (including body and attachments) call the `getEmail` or other email endpoints with the provided email ID. *)
let create (id : string) (_to : string list) (created_at : string) : t = {
    id = id;
    subject = None;
    _to = _to;
    from = None;
    bcc = [];
    cc = [];
    created_at = created_at;
    read = None;
    attachments = [];
}

