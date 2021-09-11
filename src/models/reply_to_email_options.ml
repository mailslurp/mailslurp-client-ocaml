(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Reply_to_email_options.t : Options for replying to email with API
 *)

type t = {
    (* List of uploaded attachments to send with the reply. Optional. *)
    attachments: string list;
    (* Body of the reply email you want to send *)
    body: string option [@default None];
    (* The charset that your message should be sent with. Optional. Default is UTF-8 *)
    charset: string option [@default None];
    (* The from header that should be used. Optional *)
    from: string option [@default None];
    (* Is the reply HTML *)
    is_html: bool option [@default None];
    (* The replyTo header that should be used. Optional *)
    reply_to: string option [@default None];
    (* When to send the email. Typically immediately *)
    send_strategy: Enums.sendstrategy option [@default Some(`SINGLE_MESSAGE)];
    (* Template ID to use instead of body. Will use template variable map to fill defined variable slots. *)
    template: string option [@default None];
    (* Template variables if using a template *)
    template_variables: Yojson.Safe.t option [@default None];
    (* Optionally use inbox name as display name for sender email address *)
    use_inbox_name: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Options for replying to email with API *)
let create () : t = {
    attachments = [];
    body = None;
    charset = None;
    from = None;
    is_html = None;
    reply_to = None;
    send_strategy = None;
    template = None;
    template_variables = None;
    use_inbox_name = None;
}

