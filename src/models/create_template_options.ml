(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Create_template_options.t : Options for creating email templates
 *)

type t = {
    name: string;
    content: string;
} [@@deriving yojson { strict = false }, show ];;

(** Options for creating email templates *)
let create (name : string) (content : string) : t = {
    name = name;
    content = content;
}

