(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    slug: Enums.slug;
    name: string;
} [@@deriving yojson { strict = false }, show ];;

let create (slug : Enums.slug) (name : string) : t = {
    slug = slug;
    name = name;
}
