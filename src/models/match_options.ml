(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Match_options.t : Optional filter for matching emails based on fields. For instance filter results to only include emails whose `SUBJECT` value does `CONTAIN` given match value. An example payload would be `{ matches: [{ field: 'SUBJECT', should: 'CONTAIN', value: 'Welcome' }] }`. You can also pass conditions such as `HAS_ATTACHMENT`. If you wish to extract regex matches inside the email content see the `getEmailContentMatch` method in the EmailController.
 *)

type t = {
    (* Zero or more conditions such as `{ condition: 'HAS_ATTACHMENTS', value: 'TRUE' }`. Note the values are the strings `TRUE|FALSE` not booleans. *)
    conditions: Condition_option.t list;
    (* Zero or more match options such as `{ field: 'SUBJECT', should: 'CONTAIN', value: 'Welcome' }`. Options are additive so if one does not match the email is excluded from results *)
    matches: Match_option.t list;
} [@@deriving yojson { strict = false }, show ];;

(** Optional filter for matching emails based on fields. For instance filter results to only include emails whose `SUBJECT` value does `CONTAIN` given match value. An example payload would be `{ matches: [{ field: 'SUBJECT', should: 'CONTAIN', value: 'Welcome' }] }`. You can also pass conditions such as `HAS_ATTACHMENT`. If you wish to extract regex matches inside the email content see the `getEmailContentMatch` method in the EmailController. *)
let create () : t = {
    conditions = [];
    matches = [];
}

