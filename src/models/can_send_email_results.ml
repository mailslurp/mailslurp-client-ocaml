(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    is_sending_permitted: bool;
    message: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create (is_sending_permitted : bool) : t = {
    is_sending_permitted = is_sending_permitted;
    message = None;
}

