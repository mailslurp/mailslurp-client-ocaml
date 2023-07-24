(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    domain: string;
    version: Enums.generatebimirecordoptions_version[@default `BIMI1];
    logo_url: string;
    vmc_url: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (domain : string) (version : Enums.generatebimirecordoptions_version) (logo_url : string) : t = {
    domain = domain;
    version = version;
    logo_url = logo_url;
    vmc_url = None;
}
