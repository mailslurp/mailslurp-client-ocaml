(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Generate_structured_content_sms_options.t : Options for generating structured content output from an SMS
 *)

type t = {
    (* SMS ID to read and pass to AI *)
    sms_id: string;
    (* Optional instructions for the AI to follow. Try to be precise and clear. You can include examples and hints. *)
    instructions: string option [@default None];
    output_schema: Structured_output_schema.t option [@default None];
    (* ID of transformer to apply *)
    transform_id: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Options for generating structured content output from an SMS *)
let create (sms_id : string) : t = {
    sms_id = sms_id;
    instructions = None;
    output_schema = None;
    transform_id = None;
}

