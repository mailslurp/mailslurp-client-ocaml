(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Webhook_new_sms_payload.t : NEW_SMS webhook payload. Sent to your webhook url endpoint via HTTP POST when an sms is received by the phone number that your webhook is attached to. Use the SMS ID to fetch the full SMS details.
 *)

type t = {
    (* Idempotent message ID. Store this ID locally or in a database to prevent message duplication. *)
    message_id: string;
    (* ID of webhook entity being triggered *)
    webhook_id: string;
    (* Name of the event type webhook is being triggered for. *)
    event_name: Enums.eventname;
    (* Name of the webhook being triggered *)
    webhook_name: string option [@default None];
    (* ID of SMS message *)
    sms_id: string;
    (* User ID of event *)
    user_id: string;
    (* ID of phone number receiving SMS *)
    phone_number: string;
    (* Recipient phone number *)
    to_number: string;
    (* Sender phone number *)
    from_number: string;
    (* SMS message body *)
    body: string;
    (* SMS has been read *)
    read: bool;
} [@@deriving yojson { strict = false }, show ];;

(** NEW_SMS webhook payload. Sent to your webhook url endpoint via HTTP POST when an sms is received by the phone number that your webhook is attached to. Use the SMS ID to fetch the full SMS details. *)
let create (message_id : string) (webhook_id : string) (event_name : Enums.eventname) (sms_id : string) (user_id : string) (phone_number : string) (to_number : string) (from_number : string) (body : string) (read : bool) : t = {
    message_id = message_id;
    webhook_id = webhook_id;
    event_name = event_name;
    webhook_name = None;
    sms_id = sms_id;
    user_id = user_id;
    phone_number = phone_number;
    to_number = to_number;
    from_number = from_number;
    body = body;
    read = read;
}

