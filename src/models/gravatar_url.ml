(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Gravatar_url.t : User image
 *)

type t = {
    url: string;
    hash: string;
} [@@deriving yojson { strict = false }, show ];;

(** User image *)
let create (url : string) (hash : string) : t = {
    url = url;
    hash = hash;
}

