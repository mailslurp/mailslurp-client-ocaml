(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Create_domain_options.t : Options for creating a domain to use with MailSlurp. You must have ownership access to this domain in order to verify it. Domains will not function correctly until the domain has been verified. See https://www.mailslurp.com/guides/custom-domains for help. Domains can be either `HTTP` or `SMTP` type. The type of domain determines which inboxes can be used with it. `SMTP` inboxes use a mail server running `mxslurp.click` while `HTTP` inboxes are handled by AWS SES.
 *)

type t = {
    (* The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So `test.com` covers all subdomains such as `mail.test.com`. Don't include a protocol such as `http://`. Once added you must complete the verification steps by adding the returned records to your domain. *)
    domain: string;
    (* Optional description of the domain. *)
    description: string option [@default None];
    (* Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID. *)
    created_catch_all_inbox: bool option [@default None];
    (* Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails. *)
    domain_type: Enums.domaintype option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Options for creating a domain to use with MailSlurp. You must have ownership access to this domain in order to verify it. Domains will not function correctly until the domain has been verified. See https://www.mailslurp.com/guides/custom-domains for help. Domains can be either `HTTP` or `SMTP` type. The type of domain determines which inboxes can be used with it. `SMTP` inboxes use a mail server running `mxslurp.click` while `HTTP` inboxes are handled by AWS SES. *)
let create (domain : string) : t = {
    domain = domain;
    description = None;
    created_catch_all_inbox = None;
    domain_type = None;
}

