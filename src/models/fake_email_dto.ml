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
    subject: string option [@default None];
    preview: string option [@default None];
    body: string;
    seen: bool;
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (email_address : string) (body : string) (seen : bool) (created_at : string) : t = {
    id = id;
    email_address = email_address;
    sender = None;
    recipients = None;
    subject = None;
    preview = None;
    body = body;
    seen = seen;
    created_at = created_at;
}
