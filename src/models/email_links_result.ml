(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Email_links_result.t : Links found in HTML
 *)

type t = {
    links: string list;
    body: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Links found in HTML *)
let create () : t = {
    links = [];
    body = None;
}

