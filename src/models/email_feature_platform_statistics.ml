(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    platform: Enums.emailfeatureplatformname_slug;
    versions: Email_feature_version_statistics.t list;
} [@@deriving yojson { strict = false }, show ];;

let create (platform : Enums.emailfeatureplatformname_slug) (versions : Email_feature_version_statistics.t list) : t = {
    platform = platform;
    versions = versions;
}
