(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_dto.t : Representation of a webhook for an inbox. The URL specified will be using by MailSlurp whenever an email is received by the attached inbox. A webhook entity should have a URL that points to your server. Your server should accept HTTP/S POST requests and return a success 200. MailSlurp will retry your webhooks if they fail. See https://api.mailslurp.com/schemas/webhook-payload for the payload schema.
 *)

type t = {
    (* ID of the Webhook *)
    id: string;
    (* User ID of the Webhook *)
    user_id: string;
    (* Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. *)
    basic_auth: bool;
    (* Name of the webhook *)
    name: string option [@default None];
    (* The phoneNumberId that the Webhook will be triggered by. If null then webhook triggered at account level or inbox level if inboxId set *)
    phone_id: string option [@default None];
    (* The inbox that the Webhook will be triggered by. If null then webhook triggered at account level or phone level if phoneId set *)
    inbox_id: string option [@default None];
    (* Request body template for HTTP request that will be sent for the webhook. Use Moustache style template variables to insert values from the original event payload. *)
    request_body_template: string option [@default None];
    (* URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. *)
    url: string;
    (* HTTP method that your server endpoint must listen for *)
    _method: Enums.webhookdto_method;
    (* Deprecated. Fetch JSON Schema for webhook using the getJsonSchemaForWebhookPayload method *)
    payload_json_schema: string;
    (* When the webhook was created *)
    created_at: string option;
    updated_at: string;
    (* Webhook trigger event name *)
    event_name: Enums.eventname option [@default None];
    request_headers: Webhook_headers.t option [@default None];
    (* Should notifier ignore insecure SSL certificates *)
    ignore_insecure_ssl_certificates: bool option [@default None];
    (* Should notifier use static IP range when sending webhook payload *)
    use_static_ip_range: bool option [@default None];
    (* Webhook health *)
    health_status: Enums.healthstatus option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Representation of a webhook for an inbox. The URL specified will be using by MailSlurp whenever an email is received by the attached inbox. A webhook entity should have a URL that points to your server. Your server should accept HTTP/S POST requests and return a success 200. MailSlurp will retry your webhooks if they fail. See https://api.mailslurp.com/schemas/webhook-payload for the payload schema. *)
let create (id : string) (user_id : string) (basic_auth : bool) (url : string) (_method : Enums.webhookdto_method) (payload_json_schema : string) (created_at : string option) (updated_at : string) : t = {
    id = id;
    user_id = user_id;
    basic_auth = basic_auth;
    name = None;
    phone_id = None;
    inbox_id = None;
    request_body_template = None;
    url = url;
    _method = _method;
    payload_json_schema = payload_json_schema;
    created_at = created_at;
    updated_at = updated_at;
    event_name = None;
    request_headers = None;
    ignore_insecure_ssl_certificates = None;
    use_static_ip_range = None;
    health_status = None;
}

