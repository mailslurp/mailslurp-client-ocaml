(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Email_text_lines_result.t : Parsed text of an email
 *)

type t = {
    lines: string list;
    body: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Parsed text of an email *)
let create () : t = {
    lines = [];
    body = None;
}

