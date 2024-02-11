(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Update_inbox_options.t : Options for updating inbox properties
 *)

type t = {
    (* Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search *)
    name: string option [@default None];
    (* Description of an inbox for labelling and searching purposes *)
    description: string option [@default None];
    (* Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. *)
    tags: string list;
    (* Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email. *)
    expires_at: string option [@default None];
    (* Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering *)
    favourite: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Options for updating inbox properties *)
let create () : t = {
    name = None;
    description = None;
    tags = [];
    expires_at = None;
    favourite = None;
}

