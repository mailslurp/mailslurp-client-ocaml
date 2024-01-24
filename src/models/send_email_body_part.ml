(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Send_email_body_part.t : Email body content parts for multipart mime message. Will override body.
 *)

type t = {
    content_type: string;
    content_body: string;
} [@@deriving yojson { strict = false }, show ];;

(** Email body content parts for multipart mime message. Will override body. *)
let create (content_type : string) (content_body : string) : t = {
    content_type = content_type;
    content_body = content_body;
}
