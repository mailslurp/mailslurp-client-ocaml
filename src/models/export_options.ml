(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Export_options.t : Options for exporting user data
 *)

type t = {
    output_format: Enums.outputformat;
    exclude_previously_exported: bool option [@default None];
    created_earliest_time: string option [@default None];
    created_oldest_time: string option [@default None];
    filter: string option [@default None];
    list_separator_token: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Options for exporting user data *)
let create (output_format : Enums.outputformat) : t = {
    output_format = output_format;
    exclude_previously_exported = None;
    created_earliest_time = None;
    created_oldest_time = None;
    filter = None;
    list_separator_token = None;
}

