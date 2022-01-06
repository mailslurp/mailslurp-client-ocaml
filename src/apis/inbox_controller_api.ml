(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

let create_inbox ?a_custom_email_address_to_use_with_the_inbox__defaults_to_null__when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_123mailslurp_com__if_you_use_the_use_domain_pool_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_123mailslurp_info_or_123mailslurp_biz__when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user__if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain__note_domain_types_must_match_the_inbox_type___so_smtp_inboxes_will_only_work_with_smtp_type_domains__avoid_smtp_inboxes_if_you_need_to_send_emails_as_they_can_only_receive__send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you__to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id_ ?(tags_that_inbox_has_been_tagged_with__tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account__you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui_ = []) ?optional_name_of_the_inbox__displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails_ ?optional_description_of_the_inbox_for_labelling_purposes__is_shown_in_the_dashboard_and_can_be_used_with ?use_the_mail_slurp_domain_name_pool_with_this_inbox_when_creating_the_email_address__defaults_to_null__if_enabled_the_inbox_will_be_an_email_address_with_a_domain_randomly_chosen_from_a_list_of_the_mail_slurp_domains__this_is_useful_when_the_default_mailslurp_com_email_addresses_used_with_inboxes_are_blocked_or_considered_spam_by_a_provider_or_receiving_service__when_domain_pool_is_enabled_an_email_address_will_be_generated_ending_in_mailslurp_worldinfoxyz______this_means_a_tld_is_randomly_selecting_from_a_list_of__biz__info__xyz_etc_to_add_variance_to_the_generated_email_addresses__when_null_or_false_mail_slurp_uses_the_default_behavior_of_mailslurp_com_or_custom_email_address_provided_by_the_email_address_field__note_this_feature_is_only_available_for_http_inbox_types_ ?is_the_inbox_a_favorite__marking_an_inbox_as_a_favorite_is_typically_done_in_the_dashboard_for_quick_access_or_filtering ?optional_inbox_expiration_date__if_null_then_this_inbox_is_permanent_and_the_emails_in_it_wont_be_deleted__if_an_expiration_date_is_provided_or_is_required_by_your_plan_the_inbox_will_be_closed_when_the_expiration_time_is_reached__expired_inboxes_still_contain_their_emails_but_can_no_longer_send_or_receive_emails__an_expired_inbox_record_is_created_when_an_inbox_and_the_email_address_and_inbox_id_are_recorded__the_expires_at_property_is_a_timestamp_string_in_iso_date_time_format_yyyy_mm_dd_th_hmmss_sssxxx_ ?number_of_milliseconds_that_inbox_should_exist_for ?deprecated__team_access_is_always_true__grant_team_access_to_this_inbox_and_the_emails_that_belong_to_it_for_team_members_of_your_organization_ ?http__default_or_smtp_inbox_type__http_inboxes_are_default_and_best_solution_for_most_cases__smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption__but_do_not_support_sending_emails__when_using_custom_domains_the_domain_type_must_match_the_inbox_type__http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_mx_mailslurp_com_ () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID." (fun x -> x) a_custom_email_address_to_use_with_the_inbox__defaults_to_null__when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_123mailslurp_com__if_you_use_the_use_domain_pool_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_123mailslurp_info_or_123mailslurp_biz__when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user__if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain__note_domain_types_must_match_the_inbox_type___so_smtp_inboxes_will_only_work_with_smtp_type_domains__avoid_smtp_inboxes_if_you_need_to_send_emails_as_they_can_only_receive__send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you__to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id_ in
    let uri = Request.add_query_param_list uri "Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI." (List.map (fun x -> x)) tags_that_inbox_has_been_tagged_with__tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account__you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui_ in
    let uri = Request.maybe_add_query_param uri "Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails." (fun x -> x) optional_name_of_the_inbox__displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails_ in
    let uri = Request.maybe_add_query_param uri "Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with" (fun x -> x) optional_description_of_the_inbox_for_labelling_purposes__is_shown_in_the_dashboard_and_can_be_used_with in
    let uri = Request.maybe_add_query_param uri "Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types." string_of_bool use_the_mail_slurp_domain_name_pool_with_this_inbox_when_creating_the_email_address__defaults_to_null__if_enabled_the_inbox_will_be_an_email_address_with_a_domain_randomly_chosen_from_a_list_of_the_mail_slurp_domains__this_is_useful_when_the_default_mailslurp_com_email_addresses_used_with_inboxes_are_blocked_or_considered_spam_by_a_provider_or_receiving_service__when_domain_pool_is_enabled_an_email_address_will_be_generated_ending_in_mailslurp_worldinfoxyz______this_means_a_tld_is_randomly_selecting_from_a_list_of__biz__info__xyz_etc_to_add_variance_to_the_generated_email_addresses__when_null_or_false_mail_slurp_uses_the_default_behavior_of_mailslurp_com_or_custom_email_address_provided_by_the_email_address_field__note_this_feature_is_only_available_for_http_inbox_types_ in
    let uri = Request.maybe_add_query_param uri "Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering" string_of_bool is_the_inbox_a_favorite__marking_an_inbox_as_a_favorite_is_typically_done_in_the_dashboard_for_quick_access_or_filtering in
    let uri = Request.maybe_add_query_param uri "Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX." (fun x -> x) optional_inbox_expiration_date__if_null_then_this_inbox_is_permanent_and_the_emails_in_it_wont_be_deleted__if_an_expiration_date_is_provided_or_is_required_by_your_plan_the_inbox_will_be_closed_when_the_expiration_time_is_reached__expired_inboxes_still_contain_their_emails_but_can_no_longer_send_or_receive_emails__an_expired_inbox_record_is_created_when_an_inbox_and_the_email_address_and_inbox_id_are_recorded__the_expires_at_property_is_a_timestamp_string_in_iso_date_time_format_yyyy_mm_dd_th_hmmss_sssxxx_ in
    let uri = Request.maybe_add_query_param uri "Number of milliseconds that inbox should exist for" Int64.to_string number_of_milliseconds_that_inbox_should_exist_for in
    let uri = Request.maybe_add_query_param uri "DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization." string_of_bool deprecated__team_access_is_always_true__grant_team_access_to_this_inbox_and_the_emails_that_belong_to_it_for_team_members_of_your_organization_ in
    let uri = Request.maybe_add_query_param uri "HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mx.mailslurp.com`." Enums.show_inboxtype http__default_or_smtp_inbox_type__http_inboxes_are_default_and_best_solution_for_most_cases__smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption__but_do_not_support_sending_emails__when_using_custom_domains_the_domain_type_must_match_the_inbox_type__http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_mx_mailslurp_com_ in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let create_inbox_ruleset ~inbox_id ~create_inbox_ruleset_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/rulesets" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Create_inbox_ruleset_options.to_yojson create_inbox_ruleset_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_ruleset_dto.of_yojson) resp body

let create_inbox_with_defaults () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/withDefaults" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let create_inbox_with_options ~create_inbox_dto_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/withOptions" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let body = Request.write_as_json_body Create_inbox_dto.to_yojson create_inbox_dto_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let delete_all_inboxes () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let delete_inbox ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let does_inbox_exist ~email_address =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/exists" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "emailAddress" (fun x -> x) email_address in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_exists_dto.of_yojson) resp body

let flush_expired ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/expired" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `DELETE uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Flush_expired_inboxes_result.of_yojson) resp body

let get_all_inboxes ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?(favourite = false) ?search ?tag ?deprecated__optionally_filter_by_team_access_ ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/paginated" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.add_query_param uri "favourite" string_of_bool favourite in
    let uri = Request.maybe_add_query_param uri "search" (fun x -> x) search in
    let uri = Request.maybe_add_query_param uri "tag" (fun x -> x) tag in
    let uri = Request.maybe_add_query_param uri "DEPRECATED. Optionally filter by team access." string_of_bool deprecated__optionally_filter_by_team_access_ in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_inbox_projection.of_yojson) resp body

let get_emails ~id_of_inbox_that_emails_belongs_to ?alias_for_limit__assessed_first_before_assessing_any_passed_limit_ ?limit ?sort_the_results_by_received_date_and_direction_asc_or_desc ?retry_timeout ?delay_timeout ?min_count ?unread_only ?exclude_emails_received_after_this_iso_8601_date_time ?exclude_emails_received_before_this_iso_8601_date_time () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/emails" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "Id of inbox that emails belongs to"  id_of_inbox_that_emails_belongs_to in
    let uri = Request.maybe_add_query_param uri "Alias for limit. Assessed first before assessing any passed limit." Int32.to_string alias_for_limit__assessed_first_before_assessing_any_passed_limit_ in
    let uri = Request.maybe_add_query_param uri "limit" Int32.to_string limit in
    let uri = Request.maybe_add_query_param uri "Sort the results by received date and direction ASC or DESC" Enums.show_sortdirection sort_the_results_by_received_date_and_direction_asc_or_desc in
    let uri = Request.maybe_add_query_param uri "retryTimeout" Int64.to_string retry_timeout in
    let uri = Request.maybe_add_query_param uri "delayTimeout" Int64.to_string delay_timeout in
    let uri = Request.maybe_add_query_param uri "minCount" Int64.to_string min_count in
    let uri = Request.maybe_add_query_param uri "unreadOnly" string_of_bool unread_only in
    let uri = Request.maybe_add_query_param uri "Exclude emails received after this ISO 8601 date time" (fun x -> x) exclude_emails_received_after_this_iso_8601_date_time in
    let uri = Request.maybe_add_query_param uri "Exclude emails received before this ISO 8601 date time" (fun x -> x) exclude_emails_received_before_this_iso_8601_date_time in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Email_preview.of_yojson) resp body

let get_inbox ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let get_inbox_count () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/count" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Count_dto.of_yojson) resp body

let get_inbox_email_count ~id_of_inbox_that_emails_belongs_to =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/emails/count" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "Id of inbox that emails belongs to"  id_of_inbox_that_emails_belongs_to in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Count_dto.of_yojson) resp body

let get_inbox_emails_paginated ~id_of_inbox_that_emails_belongs_to ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/emails/paginated" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "Id of inbox that emails belongs to"  id_of_inbox_that_emails_belongs_to in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_email_preview.of_yojson) resp body

let get_inbox_sent_emails ~inbox_id ?(page = 0l) ?(optional_page_size_in_inbox_sent_email_list_pagination = 20l) ?(sort = `ASC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/sent" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "Optional page size in inbox sent email list pagination" Int32.to_string optional_page_size_in_inbox_sent_email_list_pagination in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_sent_email_projection.of_yojson) resp body

let get_inbox_tags () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/tags" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.to_string) resp body

let get_inboxes ?(size = 100l) ?(sort = `ASC) ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as_list_of (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let get_organization_inboxes ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/organization" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_organization_inbox_projection.of_yojson) resp body

let list_inbox_rulesets ~inbox_id ?(page = 0l) ?(size = 20l) ?(sort = `ASC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/rulesets" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "size" Int32.to_string size in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_inbox_ruleset_dto.of_yojson) resp body

let list_inbox_tracking_pixels ~inbox_id ?(page = 0l) ?(optional_page_size_in_inbox_tracking_pixel_list_pagination = 20l) ?(sort = `ASC) ?search_filter ?since ?before () =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/tracking-pixels" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let uri = Request.add_query_param uri "page" Int32.to_string page in
    let uri = Request.add_query_param uri "Optional page size in inbox tracking pixel list pagination" Int32.to_string optional_page_size_in_inbox_tracking_pixel_list_pagination in
    let uri = Request.add_query_param uri "sort" Enums.show_sortdirection sort in
    let uri = Request.maybe_add_query_param uri "searchFilter" (fun x -> x) search_filter in
    let uri = Request.maybe_add_query_param uri "since" (fun x -> x) since in
    let uri = Request.maybe_add_query_param uri "before" (fun x -> x) before in
    Cohttp_lwt_unix.Client.call `GET uri ~headers >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Page_tracking_pixel_projection.of_yojson) resp body

let send_email ~id_of_the_inbox_you_want_to_send_the_email_from ~send_email_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "ID of the inbox you want to send the email from"  id_of_the_inbox_you_want_to_send_the_email_from in
    let body = Request.write_as_json_body Send_email_options.to_yojson send_email_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.handle_unit_response resp

let send_email_and_confirm ~id_of_the_inbox_you_want_to_send_the_email_from ~send_email_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/confirm" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "ID of the inbox you want to send the email from"  id_of_the_inbox_you_want_to_send_the_email_from in
    let body = Request.write_as_json_body Send_email_options.to_yojson send_email_options_t in
    Cohttp_lwt_unix.Client.call `POST uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Sent_email_dto.of_yojson) resp body

let send_test_email ~inbox_id =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/send-test-email" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    Cohttp_lwt_unix.Client.call `POST uri ~headers >>= fun (resp, body) ->
    Request.handle_unit_response resp

let set_inbox_favourited ~inbox_id ~set_inbox_favourited_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}/favourite" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Set_inbox_favourited_options.to_yojson set_inbox_favourited_options_t in
    Cohttp_lwt_unix.Client.call `PUT uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

let update_inbox ~inbox_id ~update_inbox_options_t =
    let open Lwt in
    let uri = Request.build_uri "/inboxes/{inboxId}" in
    let headers = Request.default_headers in
    let headers = Cohttp.Header.add headers "x-api-key" Request.api_key in
    let uri = Request.replace_path_param uri "inboxId"  inbox_id in
    let body = Request.write_as_json_body Update_inbox_options.to_yojson update_inbox_options_t in
    Cohttp_lwt_unix.Client.call `PATCH uri ~headers ~body >>= fun (resp, body) ->
    Request.read_json_body_as (JsonSupport.unwrap Inbox_dto.of_yojson) resp body

