(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    slug: Enums.emailfeaturecategoryname_slug;
    name: string;
} [@@deriving yojson { strict = false }, show ];;

let create (slug : Enums.emailfeaturecategoryname_slug) (name : string) : t = {
    slug = slug;
    name = name;
}

