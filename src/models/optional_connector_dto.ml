(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    present: bool;
    _result: Connector_dto.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (present : bool) : t = {
    present = present;
    _result = None;
}

