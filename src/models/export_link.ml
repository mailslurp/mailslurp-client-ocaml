(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Export_link.t : Export download link
 *)

type t = {
    download_link: string;
} [@@deriving yojson { strict = false }, show ];;

(** Export download link *)
let create (download_link : string) : t = {
    download_link = download_link;
}
