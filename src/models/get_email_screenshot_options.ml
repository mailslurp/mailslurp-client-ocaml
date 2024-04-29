(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Get_email_screenshot_options.t : Options taking a screenshot capture of a rendered email
 *)

type t = {
    (* Window height in pixels *)
    height: int32 option [@default None];
    (* Window width in pixels *)
    width: int32 option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Options taking a screenshot capture of a rendered email *)
let create () : t = {
    height = None;
    width = None;
}
