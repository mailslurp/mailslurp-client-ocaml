(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    (* Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account. *)
    inbox_ids: string list;
    (* Optional page index in email list pagination *)
    page_index: int32 option [@default None];
    (* Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results *)
    page_size: int32 option [@default None];
    (* Optional createdAt sort direction ASC or DESC *)
    sort_direction: Enums.sortdirection option [@default None];
    (* Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly *)
    unread_only: bool option [@default None];
    (* Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body *)
    search_filter: string option [@default None];
    (* Optional filter emails received after given date time *)
    since: string option [@default None];
    (* Optional filter emails received before given date time *)
    before: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    inbox_ids = [];
    page_index = None;
    page_size = None;
    sort_direction = None;
    unread_only = None;
    search_filter = None;
    since = None;
    before = None;
}

