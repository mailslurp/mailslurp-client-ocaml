(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    id: string;
    seen: bool;
    recipient: string option [@default None];
    html: string;
    url: string;
    inbox_id: string option [@default None];
    sent_email_id: string option [@default None];
    seen_at: string option [@default None];
    created_at: string;
} [@@deriving yojson { strict = false }, show ];;

let create (id : string) (seen : bool) (html : string) (url : string) (created_at : string) : t = {
    id = id;
    seen = seen;
    recipient = None;
    html = html;
    url = url;
    inbox_id = None;
    sent_email_id = None;
    seen_at = None;
    created_at = created_at;
}

