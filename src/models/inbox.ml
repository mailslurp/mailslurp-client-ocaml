(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Inbox.t : Representation of a MailSlurp inbox. An inbox has an ID and a real email address. Emails can be sent to or from this email address. Inboxes are either `SMTP` or `HTTP` mailboxes. The default, `HTTP` inboxes, use AWS SES to process emails and are best suited as test email accounts. `SMTP` inboxes use a custom mail server at `mx.mailslurp.com` and can only receive emails - they  are best used for public facing email addresses. Use the `EmailController` or the `InboxController` methods to send and receive emails and attachments. Inboxes may have a description, name, and tags for display purposes. You can also favourite an inbox for easier searching. Inboxes can be private or allow team access. Team access enabled inboxes can be seen by other members of an organization. 
 *)

type t = {
    (* When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`. *)
    created_at: string option [@default None];
    (* Description of an inbox for labelling and searching purposes *)
    description: string option [@default None];
    (* The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. *)
    email_address: string option [@default None];
    (* Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email. *)
    expires_at: string option [@default None];
    (* Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering *)
    favourite: bool option [@default None];
    (* ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically. *)
    id: string option [@default None];
    (* Type of inbox - either HTTP (default) or SMTP. HTTP inboxes are great most cases. SMTP inboxes are receive only (cannot send) and are processed by a custom SMTP mail server and are better for public facing inboxes that receive emails from Gmail and other large providers. If using a custom domain the domain type must match the inbox type. Use an SMTP domain for SMTP inboxes that includes an MX record pointing to `10 mx.mailslurp.com` for inbound messages. *)
    inbox_type: Enums.inboxtype option [@default None];
    (* Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search *)
    name: string option [@default None];
    (* Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes. *)
    read_only: bool option [@default None];
    (* Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. *)
    tags: string list;
    (* Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/ *)
    team_access: bool option [@default None];
    (* ID of user that inbox belongs to *)
    user_id: string option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Representation of a MailSlurp inbox. An inbox has an ID and a real email address. Emails can be sent to or from this email address. Inboxes are either `SMTP` or `HTTP` mailboxes. The default, `HTTP` inboxes, use AWS SES to process emails and are best suited as test email accounts. `SMTP` inboxes use a custom mail server at `mx.mailslurp.com` and can only receive emails - they  are best used for public facing email addresses. Use the `EmailController` or the `InboxController` methods to send and receive emails and attachments. Inboxes may have a description, name, and tags for display purposes. You can also favourite an inbox for easier searching. Inboxes can be private or allow team access. Team access enabled inboxes can be seen by other members of an organization.  *)
let create () : t = {
    created_at = None;
    description = None;
    email_address = None;
    expires_at = None;
    favourite = None;
    id = None;
    inbox_type = None;
    name = None;
    read_only = None;
    tags = [];
    team_access = None;
    user_id = None;
}

