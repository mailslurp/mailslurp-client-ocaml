(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Inbox_forwarder_test_result.t : Results of inbox forwarder test
 *)

type t = {
    matches: (string * bool) list;
    does_match: bool;
} [@@deriving yojson { strict = false }, show ];;

(** Results of inbox forwarder test *)
let create (matches : (string * bool) list) (does_match : bool) : t = {
    matches = matches;
    does_match = does_match;
}

