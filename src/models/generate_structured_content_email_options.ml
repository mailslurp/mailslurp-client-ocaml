(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Generate_structured_content_email_options.t : Options for generating structured content output from an email
 *)

type t = {
    (* Email ID to read and pass to AI *)
    email_id: string;
    (* Content selector to select part of email to operate on *)
    content_selector: Enums.contentselector option [@default None];
    (* Optional instructions for the AI to follow. Try to be precise and clear. You can include examples and hints. *)
    instructions: string option [@default None];
    output_schema: Structured_output_schema.t;
} [@@deriving yojson { strict = false }, show ];;

(** Options for generating structured content output from an email *)
let create (email_id : string) (output_schema : Structured_output_schema.t) : t = {
    email_id = email_id;
    content_selector = None;
    instructions = None;
    output_schema = output_schema;
}

