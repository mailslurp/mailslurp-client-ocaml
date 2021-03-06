(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    user_id: string option [@default None];
    event_type: string option [@default None];
    mail_source: string option [@default None];
    mail_message_id: string option [@default None];
    complaint_recipient: string;
    created_at: string;
    updated_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (complaint_recipient : string) (created_at : string) (updated_at : string) : t = {
    id = id;
    user_id = None;
    event_type = None;
    mail_source = None;
    mail_message_id = None;
    complaint_recipient = complaint_recipient;
    created_at = created_at;
    updated_at = updated_at;
}

