(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    template_html: string;
    subject: string;
    sender_inbox: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (template_html : string) (subject : string) : t = {
    template_html = template_html;
    subject = subject;
    sender_inbox = None;
}

