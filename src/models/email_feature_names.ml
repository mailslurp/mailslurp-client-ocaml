(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    family: Email_feature_family_name.t list;
    platform: Email_feature_platform_name.t list;
    category: Email_feature_category_name.t list;
} [@@deriving yojson { strict = false }, show ];;

let create (family : Email_feature_family_name.t list) (platform : Email_feature_platform_name.t list) (category : Email_feature_category_name.t list) : t = {
    family = family;
    platform = platform;
    category = category;
}

