(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    items: Email_thread_item.t list;
} [@@deriving yojson { strict = false }, show ];;

let create (items : Email_thread_item.t list) : t = {
    items = items;
}

