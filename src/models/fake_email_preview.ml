(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    email_address: string;
    sender: Sender.t option [@default None];
    recipients: Email_recipients.t option [@default None];
    has_attachments: bool;
    subject: string option [@default None];
    preview: string option [@default None];
    created_at: string;
    seen: bool;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (email_address : string) (has_attachments : bool) (created_at : string) (seen : bool) : t = {
    id = id;
    email_address = email_address;
    sender = None;
    recipients = None;
    has_attachments = has_attachments;
    subject = None;
    preview = None;
    created_at = created_at;
    seen = seen;
}

