(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Upload_attachment_options.t : Options for uploading files for attachments. When sending emails with the API that require attachments first upload each attachment. Then use the returned attachment ID in your `SendEmailOptions` when sending an email. This way you can use attachments multiple times once they have been uploaded.
 *)

type t = {
    (* Base64 encoded string of file contents. Typically this means reading the bytes or string content of a file and then converting that to a base64 encoded string. *)
    base64_contents: string;
    (* Optional contentType for file. For instance `application/pdf` *)
    content_type: string option [@default None];
    (* Optional filename to save upload with. Will be the name that is shown in email clients *)
    filename: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Options for uploading files for attachments. When sending emails with the API that require attachments first upload each attachment. Then use the returned attachment ID in your `SendEmailOptions` when sending an email. This way you can use attachments multiple times once they have been uploaded. *)
let create (base64_contents : string) : t = {
    base64_contents = base64_contents;
    content_type = None;
    filename = None;
}

