(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Organization_inbox_projection.t : Organization team inbox
 *)

type t = {
    (* ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically. *)
    id: string;
    (* When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`. *)
    created_at: string;
    (* Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search *)
    name: string option [@default None];
    (* The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. *)
    email_address: string option [@default None];
    (* Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering *)
    favourite: bool;
    (* Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. *)
    tags: string list;
    (* Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/ *)
    team_access: bool;
    (* Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send). *)
    inbox_type: Enums.inboxtype option [@default None];
    (* Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes. *)
    read_only: bool;
    (* Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions. *)
    virtual_inbox: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Organization team inbox *)
let create (id : string) (created_at : string) (favourite : bool) (team_access : bool) (read_only : bool) : t = {
    id = id;
    created_at = created_at;
    name = None;
    email_address = None;
    favourite = favourite;
    tags = [];
    team_access = team_access;
    inbox_type = None;
    read_only = read_only;
    virtual_inbox = None;
}

