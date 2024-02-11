(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Reply_to_email_options.t : Options for replying to email with API
 *)

type t = {
    (* Body of the reply email you want to send *)
    body: string;
    (* Is the reply HTML *)
    is_html: bool;
    (* The from header that should be used. Optional *)
    from: string option [@default None];
    (* The replyTo header that should be used. Optional *)
    reply_to: string option [@default None];
    (* Optional custom headers *)
    custom_headers: (string * string) list;
    (* The charset that your message should be sent with. Optional. Default is UTF-8 *)
    charset: string option [@default None];
    (* List of uploaded attachments to send with the reply. Optional. *)
    attachments: string list;
    (* Template variables if using a template *)
    template_variables: (string * Yojson.Safe.t) list;
    (* Template ID to use instead of body. Will use template variable map to fill defined variable slots. *)
    template: string option [@default None];
    (* How an email should be sent based on its recipients *)
    send_strategy: Enums.sendstrategy option [@default Some(`SINGLE_MESSAGE)];
    (* Optionally use inbox name as display name for sender email address *)
    use_inbox_name: bool option [@default None];
    html: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Options for replying to email with API *)
let create (body : string) (is_html : bool) : t = {
    body = body;
    is_html = is_html;
    from = None;
    reply_to = None;
    custom_headers = [];
    charset = None;
    attachments = [];
    template_variables = [];
    template = None;
    send_strategy = None;
    use_inbox_name = None;
    html = None;
}

