(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string option [@default None];
    seen: bool option [@default None];
    recipient: string option [@default None];
    html: string option [@default None];
    url: string option [@default None];
    inbox_id: string option [@default None];
    sent_email_id: string option [@default None];
    seen_at: string option [@default None];
    created_at: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    id = None;
    seen = None;
    recipient = None;
    html = None;
    url = None;
    inbox_id = None;
    sent_email_id = None;
    seen_at = None;
    created_at = None;
}

