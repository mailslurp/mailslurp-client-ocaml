(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Test_new_inbox_ruleset_options.t : Test inbox ruleset options
 *)

type t = {
    inbox_ruleset_test_options: Inbox_ruleset_test_options.t;
    create_inbox_ruleset_options: Create_inbox_ruleset_options.t;
} [@@deriving yojson { strict = false }, show ];;

(** Test inbox ruleset options *)
let create (inbox_ruleset_test_options : Inbox_ruleset_test_options.t) (create_inbox_ruleset_options : Create_inbox_ruleset_options.t) : t = {
    inbox_ruleset_test_options = inbox_ruleset_test_options;
    create_inbox_ruleset_options = create_inbox_ruleset_options;
}

