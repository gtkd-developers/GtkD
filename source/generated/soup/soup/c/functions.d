/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module soup.c.functions;

import std.stdio;
import soup.c.types;
import linker.Loader;

version (Windows)
	static immutable LIBRARY_SOUP = ["libsoup-2.4-1.dll;soup-2.4-1.dll;soup-2.dll"];
else version (OSX)
	static immutable LIBRARY_SOUP = ["libsoup-2.4.1.dylib"];
else
	static immutable LIBRARY_SOUP = ["libsoup-2.4.so.1"];

shared static this()
{
	// soup.Address

	Linker.link(soup_address_get_type, "soup_address_get_type", LIBRARY_SOUP);
	Linker.link(soup_address_new, "soup_address_new", LIBRARY_SOUP);
	Linker.link(soup_address_new_any, "soup_address_new_any", LIBRARY_SOUP);
	Linker.link(soup_address_new_from_sockaddr, "soup_address_new_from_sockaddr", LIBRARY_SOUP);
	Linker.link(soup_address_equal_by_ip, "soup_address_equal_by_ip", LIBRARY_SOUP);
	Linker.link(soup_address_equal_by_name, "soup_address_equal_by_name", LIBRARY_SOUP);
	Linker.link(soup_address_get_gsockaddr, "soup_address_get_gsockaddr", LIBRARY_SOUP);
	Linker.link(soup_address_get_name, "soup_address_get_name", LIBRARY_SOUP);
	Linker.link(soup_address_get_physical, "soup_address_get_physical", LIBRARY_SOUP);
	Linker.link(soup_address_get_port, "soup_address_get_port", LIBRARY_SOUP);
	Linker.link(soup_address_get_sockaddr, "soup_address_get_sockaddr", LIBRARY_SOUP);
	Linker.link(soup_address_hash_by_ip, "soup_address_hash_by_ip", LIBRARY_SOUP);
	Linker.link(soup_address_hash_by_name, "soup_address_hash_by_name", LIBRARY_SOUP);
	Linker.link(soup_address_is_resolved, "soup_address_is_resolved", LIBRARY_SOUP);
	Linker.link(soup_address_resolve_async, "soup_address_resolve_async", LIBRARY_SOUP);
	Linker.link(soup_address_resolve_sync, "soup_address_resolve_sync", LIBRARY_SOUP);

	// soup.Auth

	Linker.link(soup_auth_get_type, "soup_auth_get_type", LIBRARY_SOUP);
	Linker.link(soup_auth_new, "soup_auth_new", LIBRARY_SOUP);
	Linker.link(soup_auth_authenticate, "soup_auth_authenticate", LIBRARY_SOUP);
	Linker.link(soup_auth_can_authenticate, "soup_auth_can_authenticate", LIBRARY_SOUP);
	Linker.link(soup_auth_free_protection_space, "soup_auth_free_protection_space", LIBRARY_SOUP);
	Linker.link(soup_auth_get_authorization, "soup_auth_get_authorization", LIBRARY_SOUP);
	Linker.link(soup_auth_get_host, "soup_auth_get_host", LIBRARY_SOUP);
	Linker.link(soup_auth_get_info, "soup_auth_get_info", LIBRARY_SOUP);
	Linker.link(soup_auth_get_protection_space, "soup_auth_get_protection_space", LIBRARY_SOUP);
	Linker.link(soup_auth_get_realm, "soup_auth_get_realm", LIBRARY_SOUP);
	Linker.link(soup_auth_get_saved_password, "soup_auth_get_saved_password", LIBRARY_SOUP);
	Linker.link(soup_auth_get_saved_users, "soup_auth_get_saved_users", LIBRARY_SOUP);
	Linker.link(soup_auth_get_scheme_name, "soup_auth_get_scheme_name", LIBRARY_SOUP);
	Linker.link(soup_auth_has_saved_password, "soup_auth_has_saved_password", LIBRARY_SOUP);
	Linker.link(soup_auth_is_authenticated, "soup_auth_is_authenticated", LIBRARY_SOUP);
	Linker.link(soup_auth_is_for_proxy, "soup_auth_is_for_proxy", LIBRARY_SOUP);
	Linker.link(soup_auth_is_ready, "soup_auth_is_ready", LIBRARY_SOUP);
	Linker.link(soup_auth_save_password, "soup_auth_save_password", LIBRARY_SOUP);
	Linker.link(soup_auth_update, "soup_auth_update", LIBRARY_SOUP);

	// soup.AuthBasic

	Linker.link(soup_auth_basic_get_type, "soup_auth_basic_get_type", LIBRARY_SOUP);

	// soup.AuthDigest

	Linker.link(soup_auth_digest_get_type, "soup_auth_digest_get_type", LIBRARY_SOUP);

	// soup.AuthDomain

	Linker.link(soup_auth_domain_get_type, "soup_auth_domain_get_type", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_accepts, "soup_auth_domain_accepts", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_add_path, "soup_auth_domain_add_path", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_challenge, "soup_auth_domain_challenge", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_check_password, "soup_auth_domain_check_password", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_covers, "soup_auth_domain_covers", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_get_realm, "soup_auth_domain_get_realm", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_remove_path, "soup_auth_domain_remove_path", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_set_filter, "soup_auth_domain_set_filter", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_set_generic_auth_callback, "soup_auth_domain_set_generic_auth_callback", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_try_generic_auth_callback, "soup_auth_domain_try_generic_auth_callback", LIBRARY_SOUP);

	// soup.AuthDomainBasic

	Linker.link(soup_auth_domain_basic_get_type, "soup_auth_domain_basic_get_type", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_basic_new, "soup_auth_domain_basic_new", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_basic_set_auth_callback, "soup_auth_domain_basic_set_auth_callback", LIBRARY_SOUP);

	// soup.AuthDomainDigest

	Linker.link(soup_auth_domain_digest_get_type, "soup_auth_domain_digest_get_type", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_digest_new, "soup_auth_domain_digest_new", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_digest_encode_password, "soup_auth_domain_digest_encode_password", LIBRARY_SOUP);
	Linker.link(soup_auth_domain_digest_set_auth_callback, "soup_auth_domain_digest_set_auth_callback", LIBRARY_SOUP);

	// soup.AuthManager

	Linker.link(soup_auth_manager_get_type, "soup_auth_manager_get_type", LIBRARY_SOUP);
	Linker.link(soup_auth_manager_clear_cached_credentials, "soup_auth_manager_clear_cached_credentials", LIBRARY_SOUP);
	Linker.link(soup_auth_manager_use_auth, "soup_auth_manager_use_auth", LIBRARY_SOUP);

	// soup.AuthNTLM

	Linker.link(soup_auth_ntlm_get_type, "soup_auth_ntlm_get_type", LIBRARY_SOUP);

	// soup.AuthNegotiate

	Linker.link(soup_auth_negotiate_get_type, "soup_auth_negotiate_get_type", LIBRARY_SOUP);
	Linker.link(soup_auth_negotiate_supported, "soup_auth_negotiate_supported", LIBRARY_SOUP);

	// soup.Buffer

	Linker.link(soup_buffer_get_type, "soup_buffer_get_type", LIBRARY_SOUP);
	Linker.link(soup_buffer_new, "soup_buffer_new", LIBRARY_SOUP);
	Linker.link(soup_buffer_new_take, "soup_buffer_new_take", LIBRARY_SOUP);
	Linker.link(soup_buffer_new_with_owner, "soup_buffer_new_with_owner", LIBRARY_SOUP);
	Linker.link(soup_buffer_copy, "soup_buffer_copy", LIBRARY_SOUP);
	Linker.link(soup_buffer_free, "soup_buffer_free", LIBRARY_SOUP);
	Linker.link(soup_buffer_get_as_bytes, "soup_buffer_get_as_bytes", LIBRARY_SOUP);
	Linker.link(soup_buffer_get_data, "soup_buffer_get_data", LIBRARY_SOUP);
	Linker.link(soup_buffer_get_owner, "soup_buffer_get_owner", LIBRARY_SOUP);
	Linker.link(soup_buffer_new_subbuffer, "soup_buffer_new_subbuffer", LIBRARY_SOUP);

	// soup.Cache

	Linker.link(soup_cache_get_type, "soup_cache_get_type", LIBRARY_SOUP);
	Linker.link(soup_cache_new, "soup_cache_new", LIBRARY_SOUP);
	Linker.link(soup_cache_clear, "soup_cache_clear", LIBRARY_SOUP);
	Linker.link(soup_cache_dump, "soup_cache_dump", LIBRARY_SOUP);
	Linker.link(soup_cache_flush, "soup_cache_flush", LIBRARY_SOUP);
	Linker.link(soup_cache_get_max_size, "soup_cache_get_max_size", LIBRARY_SOUP);
	Linker.link(soup_cache_load, "soup_cache_load", LIBRARY_SOUP);
	Linker.link(soup_cache_set_max_size, "soup_cache_set_max_size", LIBRARY_SOUP);

	// soup.ClientContext

	Linker.link(soup_client_context_get_type, "soup_client_context_get_type", LIBRARY_SOUP);
	Linker.link(soup_client_context_get_address, "soup_client_context_get_address", LIBRARY_SOUP);
	Linker.link(soup_client_context_get_auth_domain, "soup_client_context_get_auth_domain", LIBRARY_SOUP);
	Linker.link(soup_client_context_get_auth_user, "soup_client_context_get_auth_user", LIBRARY_SOUP);
	Linker.link(soup_client_context_get_gsocket, "soup_client_context_get_gsocket", LIBRARY_SOUP);
	Linker.link(soup_client_context_get_host, "soup_client_context_get_host", LIBRARY_SOUP);
	Linker.link(soup_client_context_get_local_address, "soup_client_context_get_local_address", LIBRARY_SOUP);
	Linker.link(soup_client_context_get_remote_address, "soup_client_context_get_remote_address", LIBRARY_SOUP);
	Linker.link(soup_client_context_get_socket, "soup_client_context_get_socket", LIBRARY_SOUP);
	Linker.link(soup_client_context_steal_connection, "soup_client_context_steal_connection", LIBRARY_SOUP);

	// soup.ContentDecoder

	Linker.link(soup_content_decoder_get_type, "soup_content_decoder_get_type", LIBRARY_SOUP);

	// soup.ContentSniffer

	Linker.link(soup_content_sniffer_get_type, "soup_content_sniffer_get_type", LIBRARY_SOUP);
	Linker.link(soup_content_sniffer_new, "soup_content_sniffer_new", LIBRARY_SOUP);
	Linker.link(soup_content_sniffer_get_buffer_size, "soup_content_sniffer_get_buffer_size", LIBRARY_SOUP);
	Linker.link(soup_content_sniffer_sniff, "soup_content_sniffer_sniff", LIBRARY_SOUP);

	// soup.Cookie

	Linker.link(soup_cookie_get_type, "soup_cookie_get_type", LIBRARY_SOUP);
	Linker.link(soup_cookie_new, "soup_cookie_new", LIBRARY_SOUP);
	Linker.link(soup_cookie_applies_to_uri, "soup_cookie_applies_to_uri", LIBRARY_SOUP);
	Linker.link(soup_cookie_copy, "soup_cookie_copy", LIBRARY_SOUP);
	Linker.link(soup_cookie_domain_matches, "soup_cookie_domain_matches", LIBRARY_SOUP);
	Linker.link(soup_cookie_equal, "soup_cookie_equal", LIBRARY_SOUP);
	Linker.link(soup_cookie_free, "soup_cookie_free", LIBRARY_SOUP);
	Linker.link(soup_cookie_get_domain, "soup_cookie_get_domain", LIBRARY_SOUP);
	Linker.link(soup_cookie_get_expires, "soup_cookie_get_expires", LIBRARY_SOUP);
	Linker.link(soup_cookie_get_http_only, "soup_cookie_get_http_only", LIBRARY_SOUP);
	Linker.link(soup_cookie_get_name, "soup_cookie_get_name", LIBRARY_SOUP);
	Linker.link(soup_cookie_get_path, "soup_cookie_get_path", LIBRARY_SOUP);
	Linker.link(soup_cookie_get_same_site_policy, "soup_cookie_get_same_site_policy", LIBRARY_SOUP);
	Linker.link(soup_cookie_get_secure, "soup_cookie_get_secure", LIBRARY_SOUP);
	Linker.link(soup_cookie_get_value, "soup_cookie_get_value", LIBRARY_SOUP);
	Linker.link(soup_cookie_set_domain, "soup_cookie_set_domain", LIBRARY_SOUP);
	Linker.link(soup_cookie_set_expires, "soup_cookie_set_expires", LIBRARY_SOUP);
	Linker.link(soup_cookie_set_http_only, "soup_cookie_set_http_only", LIBRARY_SOUP);
	Linker.link(soup_cookie_set_max_age, "soup_cookie_set_max_age", LIBRARY_SOUP);
	Linker.link(soup_cookie_set_name, "soup_cookie_set_name", LIBRARY_SOUP);
	Linker.link(soup_cookie_set_path, "soup_cookie_set_path", LIBRARY_SOUP);
	Linker.link(soup_cookie_set_same_site_policy, "soup_cookie_set_same_site_policy", LIBRARY_SOUP);
	Linker.link(soup_cookie_set_secure, "soup_cookie_set_secure", LIBRARY_SOUP);
	Linker.link(soup_cookie_set_value, "soup_cookie_set_value", LIBRARY_SOUP);
	Linker.link(soup_cookie_to_cookie_header, "soup_cookie_to_cookie_header", LIBRARY_SOUP);
	Linker.link(soup_cookie_to_set_cookie_header, "soup_cookie_to_set_cookie_header", LIBRARY_SOUP);
	Linker.link(soup_cookie_parse, "soup_cookie_parse", LIBRARY_SOUP);

	// soup.CookieJar

	Linker.link(soup_cookie_jar_get_type, "soup_cookie_jar_get_type", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_new, "soup_cookie_jar_new", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_add_cookie, "soup_cookie_jar_add_cookie", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_add_cookie_full, "soup_cookie_jar_add_cookie_full", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_add_cookie_with_first_party, "soup_cookie_jar_add_cookie_with_first_party", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_all_cookies, "soup_cookie_jar_all_cookies", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_delete_cookie, "soup_cookie_jar_delete_cookie", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_get_accept_policy, "soup_cookie_jar_get_accept_policy", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_get_cookie_list, "soup_cookie_jar_get_cookie_list", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_get_cookie_list_with_same_site_info, "soup_cookie_jar_get_cookie_list_with_same_site_info", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_get_cookies, "soup_cookie_jar_get_cookies", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_is_persistent, "soup_cookie_jar_is_persistent", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_save, "soup_cookie_jar_save", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_set_accept_policy, "soup_cookie_jar_set_accept_policy", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_set_cookie, "soup_cookie_jar_set_cookie", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_set_cookie_with_first_party, "soup_cookie_jar_set_cookie_with_first_party", LIBRARY_SOUP);

	// soup.CookieJarDB

	Linker.link(soup_cookie_jar_db_get_type, "soup_cookie_jar_db_get_type", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_db_new, "soup_cookie_jar_db_new", LIBRARY_SOUP);

	// soup.CookieJarText

	Linker.link(soup_cookie_jar_text_get_type, "soup_cookie_jar_text_get_type", LIBRARY_SOUP);
	Linker.link(soup_cookie_jar_text_new, "soup_cookie_jar_text_new", LIBRARY_SOUP);

	// soup.Date

	Linker.link(soup_date_get_type, "soup_date_get_type", LIBRARY_SOUP);
	Linker.link(soup_date_new, "soup_date_new", LIBRARY_SOUP);
	Linker.link(soup_date_new_from_now, "soup_date_new_from_now", LIBRARY_SOUP);
	Linker.link(soup_date_new_from_string, "soup_date_new_from_string", LIBRARY_SOUP);
	Linker.link(soup_date_new_from_time_t, "soup_date_new_from_time_t", LIBRARY_SOUP);
	Linker.link(soup_date_copy, "soup_date_copy", LIBRARY_SOUP);
	Linker.link(soup_date_free, "soup_date_free", LIBRARY_SOUP);
	Linker.link(soup_date_get_day, "soup_date_get_day", LIBRARY_SOUP);
	Linker.link(soup_date_get_hour, "soup_date_get_hour", LIBRARY_SOUP);
	Linker.link(soup_date_get_minute, "soup_date_get_minute", LIBRARY_SOUP);
	Linker.link(soup_date_get_month, "soup_date_get_month", LIBRARY_SOUP);
	Linker.link(soup_date_get_offset, "soup_date_get_offset", LIBRARY_SOUP);
	Linker.link(soup_date_get_second, "soup_date_get_second", LIBRARY_SOUP);
	Linker.link(soup_date_get_utc, "soup_date_get_utc", LIBRARY_SOUP);
	Linker.link(soup_date_get_year, "soup_date_get_year", LIBRARY_SOUP);
	Linker.link(soup_date_is_past, "soup_date_is_past", LIBRARY_SOUP);
	Linker.link(soup_date_to_string, "soup_date_to_string", LIBRARY_SOUP);
	Linker.link(soup_date_to_time_t, "soup_date_to_time_t", LIBRARY_SOUP);
	Linker.link(soup_date_to_timeval, "soup_date_to_timeval", LIBRARY_SOUP);

	// soup.HSTSEnforcer

	Linker.link(soup_hsts_enforcer_get_type, "soup_hsts_enforcer_get_type", LIBRARY_SOUP);
	Linker.link(soup_hsts_enforcer_new, "soup_hsts_enforcer_new", LIBRARY_SOUP);
	Linker.link(soup_hsts_enforcer_get_domains, "soup_hsts_enforcer_get_domains", LIBRARY_SOUP);
	Linker.link(soup_hsts_enforcer_get_policies, "soup_hsts_enforcer_get_policies", LIBRARY_SOUP);
	Linker.link(soup_hsts_enforcer_has_valid_policy, "soup_hsts_enforcer_has_valid_policy", LIBRARY_SOUP);
	Linker.link(soup_hsts_enforcer_is_persistent, "soup_hsts_enforcer_is_persistent", LIBRARY_SOUP);
	Linker.link(soup_hsts_enforcer_set_policy, "soup_hsts_enforcer_set_policy", LIBRARY_SOUP);
	Linker.link(soup_hsts_enforcer_set_session_policy, "soup_hsts_enforcer_set_session_policy", LIBRARY_SOUP);

	// soup.HSTSEnforcerDB

	Linker.link(soup_hsts_enforcer_db_get_type, "soup_hsts_enforcer_db_get_type", LIBRARY_SOUP);
	Linker.link(soup_hsts_enforcer_db_new, "soup_hsts_enforcer_db_new", LIBRARY_SOUP);

	// soup.HSTSPolicy

	Linker.link(soup_hsts_policy_get_type, "soup_hsts_policy_get_type", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_new, "soup_hsts_policy_new", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_new_from_response, "soup_hsts_policy_new_from_response", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_new_full, "soup_hsts_policy_new_full", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_new_session_policy, "soup_hsts_policy_new_session_policy", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_copy, "soup_hsts_policy_copy", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_equal, "soup_hsts_policy_equal", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_free, "soup_hsts_policy_free", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_get_domain, "soup_hsts_policy_get_domain", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_includes_subdomains, "soup_hsts_policy_includes_subdomains", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_is_expired, "soup_hsts_policy_is_expired", LIBRARY_SOUP);
	Linker.link(soup_hsts_policy_is_session_policy, "soup_hsts_policy_is_session_policy", LIBRARY_SOUP);

	// soup.Logger

	Linker.link(soup_logger_get_type, "soup_logger_get_type", LIBRARY_SOUP);
	Linker.link(soup_logger_new, "soup_logger_new", LIBRARY_SOUP);
	Linker.link(soup_logger_attach, "soup_logger_attach", LIBRARY_SOUP);
	Linker.link(soup_logger_detach, "soup_logger_detach", LIBRARY_SOUP);
	Linker.link(soup_logger_set_printer, "soup_logger_set_printer", LIBRARY_SOUP);
	Linker.link(soup_logger_set_request_filter, "soup_logger_set_request_filter", LIBRARY_SOUP);
	Linker.link(soup_logger_set_response_filter, "soup_logger_set_response_filter", LIBRARY_SOUP);

	// soup.Message

	Linker.link(soup_message_get_type, "soup_message_get_type", LIBRARY_SOUP);
	Linker.link(soup_message_new, "soup_message_new", LIBRARY_SOUP);
	Linker.link(soup_message_new_from_uri, "soup_message_new_from_uri", LIBRARY_SOUP);
	Linker.link(soup_message_add_header_handler, "soup_message_add_header_handler", LIBRARY_SOUP);
	Linker.link(soup_message_add_status_code_handler, "soup_message_add_status_code_handler", LIBRARY_SOUP);
	Linker.link(soup_message_content_sniffed, "soup_message_content_sniffed", LIBRARY_SOUP);
	Linker.link(soup_message_disable_feature, "soup_message_disable_feature", LIBRARY_SOUP);
	Linker.link(soup_message_finished, "soup_message_finished", LIBRARY_SOUP);
	Linker.link(soup_message_get_address, "soup_message_get_address", LIBRARY_SOUP);
	Linker.link(soup_message_get_first_party, "soup_message_get_first_party", LIBRARY_SOUP);
	Linker.link(soup_message_get_flags, "soup_message_get_flags", LIBRARY_SOUP);
	Linker.link(soup_message_get_http_version, "soup_message_get_http_version", LIBRARY_SOUP);
	Linker.link(soup_message_get_https_status, "soup_message_get_https_status", LIBRARY_SOUP);
	Linker.link(soup_message_get_is_top_level_navigation, "soup_message_get_is_top_level_navigation", LIBRARY_SOUP);
	Linker.link(soup_message_get_priority, "soup_message_get_priority", LIBRARY_SOUP);
	Linker.link(soup_message_get_site_for_cookies, "soup_message_get_site_for_cookies", LIBRARY_SOUP);
	Linker.link(soup_message_get_soup_request, "soup_message_get_soup_request", LIBRARY_SOUP);
	Linker.link(soup_message_get_uri, "soup_message_get_uri", LIBRARY_SOUP);
	Linker.link(soup_message_got_body, "soup_message_got_body", LIBRARY_SOUP);
	Linker.link(soup_message_got_chunk, "soup_message_got_chunk", LIBRARY_SOUP);
	Linker.link(soup_message_got_headers, "soup_message_got_headers", LIBRARY_SOUP);
	Linker.link(soup_message_got_informational, "soup_message_got_informational", LIBRARY_SOUP);
	Linker.link(soup_message_is_feature_disabled, "soup_message_is_feature_disabled", LIBRARY_SOUP);
	Linker.link(soup_message_is_keepalive, "soup_message_is_keepalive", LIBRARY_SOUP);
	Linker.link(soup_message_restarted, "soup_message_restarted", LIBRARY_SOUP);
	Linker.link(soup_message_set_chunk_allocator, "soup_message_set_chunk_allocator", LIBRARY_SOUP);
	Linker.link(soup_message_set_first_party, "soup_message_set_first_party", LIBRARY_SOUP);
	Linker.link(soup_message_set_flags, "soup_message_set_flags", LIBRARY_SOUP);
	Linker.link(soup_message_set_http_version, "soup_message_set_http_version", LIBRARY_SOUP);
	Linker.link(soup_message_set_is_top_level_navigation, "soup_message_set_is_top_level_navigation", LIBRARY_SOUP);
	Linker.link(soup_message_set_priority, "soup_message_set_priority", LIBRARY_SOUP);
	Linker.link(soup_message_set_redirect, "soup_message_set_redirect", LIBRARY_SOUP);
	Linker.link(soup_message_set_request, "soup_message_set_request", LIBRARY_SOUP);
	Linker.link(soup_message_set_response, "soup_message_set_response", LIBRARY_SOUP);
	Linker.link(soup_message_set_site_for_cookies, "soup_message_set_site_for_cookies", LIBRARY_SOUP);
	Linker.link(soup_message_set_status, "soup_message_set_status", LIBRARY_SOUP);
	Linker.link(soup_message_set_status_full, "soup_message_set_status_full", LIBRARY_SOUP);
	Linker.link(soup_message_set_uri, "soup_message_set_uri", LIBRARY_SOUP);
	Linker.link(soup_message_starting, "soup_message_starting", LIBRARY_SOUP);
	Linker.link(soup_message_wrote_body, "soup_message_wrote_body", LIBRARY_SOUP);
	Linker.link(soup_message_wrote_body_data, "soup_message_wrote_body_data", LIBRARY_SOUP);
	Linker.link(soup_message_wrote_chunk, "soup_message_wrote_chunk", LIBRARY_SOUP);
	Linker.link(soup_message_wrote_headers, "soup_message_wrote_headers", LIBRARY_SOUP);
	Linker.link(soup_message_wrote_informational, "soup_message_wrote_informational", LIBRARY_SOUP);

	// soup.MessageBody

	Linker.link(soup_message_body_get_type, "soup_message_body_get_type", LIBRARY_SOUP);
	Linker.link(soup_message_body_new, "soup_message_body_new", LIBRARY_SOUP);
	Linker.link(soup_message_body_append, "soup_message_body_append", LIBRARY_SOUP);
	Linker.link(soup_message_body_append_buffer, "soup_message_body_append_buffer", LIBRARY_SOUP);
	Linker.link(soup_message_body_append_take, "soup_message_body_append_take", LIBRARY_SOUP);
	Linker.link(soup_message_body_complete, "soup_message_body_complete", LIBRARY_SOUP);
	Linker.link(soup_message_body_flatten, "soup_message_body_flatten", LIBRARY_SOUP);
	Linker.link(soup_message_body_free, "soup_message_body_free", LIBRARY_SOUP);
	Linker.link(soup_message_body_get_accumulate, "soup_message_body_get_accumulate", LIBRARY_SOUP);
	Linker.link(soup_message_body_get_chunk, "soup_message_body_get_chunk", LIBRARY_SOUP);
	Linker.link(soup_message_body_got_chunk, "soup_message_body_got_chunk", LIBRARY_SOUP);
	Linker.link(soup_message_body_set_accumulate, "soup_message_body_set_accumulate", LIBRARY_SOUP);
	Linker.link(soup_message_body_truncate, "soup_message_body_truncate", LIBRARY_SOUP);
	Linker.link(soup_message_body_wrote_chunk, "soup_message_body_wrote_chunk", LIBRARY_SOUP);

	// soup.MessageHeaders

	Linker.link(soup_message_headers_get_type, "soup_message_headers_get_type", LIBRARY_SOUP);
	Linker.link(soup_message_headers_new, "soup_message_headers_new", LIBRARY_SOUP);
	Linker.link(soup_message_headers_append, "soup_message_headers_append", LIBRARY_SOUP);
	Linker.link(soup_message_headers_clean_connection_headers, "soup_message_headers_clean_connection_headers", LIBRARY_SOUP);
	Linker.link(soup_message_headers_clear, "soup_message_headers_clear", LIBRARY_SOUP);
	Linker.link(soup_message_headers_foreach, "soup_message_headers_foreach", LIBRARY_SOUP);
	Linker.link(soup_message_headers_free, "soup_message_headers_free", LIBRARY_SOUP);
	Linker.link(soup_message_headers_free_ranges, "soup_message_headers_free_ranges", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get, "soup_message_headers_get", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get_content_disposition, "soup_message_headers_get_content_disposition", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get_content_length, "soup_message_headers_get_content_length", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get_content_range, "soup_message_headers_get_content_range", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get_content_type, "soup_message_headers_get_content_type", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get_encoding, "soup_message_headers_get_encoding", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get_expectations, "soup_message_headers_get_expectations", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get_headers_type, "soup_message_headers_get_headers_type", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get_list, "soup_message_headers_get_list", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get_one, "soup_message_headers_get_one", LIBRARY_SOUP);
	Linker.link(soup_message_headers_get_ranges, "soup_message_headers_get_ranges", LIBRARY_SOUP);
	Linker.link(soup_message_headers_header_contains, "soup_message_headers_header_contains", LIBRARY_SOUP);
	Linker.link(soup_message_headers_header_equals, "soup_message_headers_header_equals", LIBRARY_SOUP);
	Linker.link(soup_message_headers_remove, "soup_message_headers_remove", LIBRARY_SOUP);
	Linker.link(soup_message_headers_replace, "soup_message_headers_replace", LIBRARY_SOUP);
	Linker.link(soup_message_headers_set_content_disposition, "soup_message_headers_set_content_disposition", LIBRARY_SOUP);
	Linker.link(soup_message_headers_set_content_length, "soup_message_headers_set_content_length", LIBRARY_SOUP);
	Linker.link(soup_message_headers_set_content_range, "soup_message_headers_set_content_range", LIBRARY_SOUP);
	Linker.link(soup_message_headers_set_content_type, "soup_message_headers_set_content_type", LIBRARY_SOUP);
	Linker.link(soup_message_headers_set_encoding, "soup_message_headers_set_encoding", LIBRARY_SOUP);
	Linker.link(soup_message_headers_set_expectations, "soup_message_headers_set_expectations", LIBRARY_SOUP);
	Linker.link(soup_message_headers_set_range, "soup_message_headers_set_range", LIBRARY_SOUP);
	Linker.link(soup_message_headers_set_ranges, "soup_message_headers_set_ranges", LIBRARY_SOUP);

	// soup.MessageHeadersIter

	Linker.link(soup_message_headers_iter_next, "soup_message_headers_iter_next", LIBRARY_SOUP);
	Linker.link(soup_message_headers_iter_init, "soup_message_headers_iter_init", LIBRARY_SOUP);

	// soup.Multipart

	Linker.link(soup_multipart_get_type, "soup_multipart_get_type", LIBRARY_SOUP);
	Linker.link(soup_multipart_new, "soup_multipart_new", LIBRARY_SOUP);
	Linker.link(soup_multipart_new_from_message, "soup_multipart_new_from_message", LIBRARY_SOUP);
	Linker.link(soup_multipart_append_form_file, "soup_multipart_append_form_file", LIBRARY_SOUP);
	Linker.link(soup_multipart_append_form_string, "soup_multipart_append_form_string", LIBRARY_SOUP);
	Linker.link(soup_multipart_append_part, "soup_multipart_append_part", LIBRARY_SOUP);
	Linker.link(soup_multipart_free, "soup_multipart_free", LIBRARY_SOUP);
	Linker.link(soup_multipart_get_length, "soup_multipart_get_length", LIBRARY_SOUP);
	Linker.link(soup_multipart_get_part, "soup_multipart_get_part", LIBRARY_SOUP);
	Linker.link(soup_multipart_to_message, "soup_multipart_to_message", LIBRARY_SOUP);

	// soup.MultipartInputStream

	Linker.link(soup_multipart_input_stream_get_type, "soup_multipart_input_stream_get_type", LIBRARY_SOUP);
	Linker.link(soup_multipart_input_stream_new, "soup_multipart_input_stream_new", LIBRARY_SOUP);
	Linker.link(soup_multipart_input_stream_get_headers, "soup_multipart_input_stream_get_headers", LIBRARY_SOUP);
	Linker.link(soup_multipart_input_stream_next_part, "soup_multipart_input_stream_next_part", LIBRARY_SOUP);
	Linker.link(soup_multipart_input_stream_next_part_async, "soup_multipart_input_stream_next_part_async", LIBRARY_SOUP);
	Linker.link(soup_multipart_input_stream_next_part_finish, "soup_multipart_input_stream_next_part_finish", LIBRARY_SOUP);

	// soup.PasswordManager

	Linker.link(soup_password_manager_get_type, "soup_password_manager_get_type", LIBRARY_SOUP);
	Linker.link(soup_password_manager_get_passwords_async, "soup_password_manager_get_passwords_async", LIBRARY_SOUP);
	Linker.link(soup_password_manager_get_passwords_sync, "soup_password_manager_get_passwords_sync", LIBRARY_SOUP);

	// soup.ProxyResolver

	Linker.link(soup_proxy_resolver_get_type, "soup_proxy_resolver_get_type", LIBRARY_SOUP);
	Linker.link(soup_proxy_resolver_get_proxy_async, "soup_proxy_resolver_get_proxy_async", LIBRARY_SOUP);
	Linker.link(soup_proxy_resolver_get_proxy_sync, "soup_proxy_resolver_get_proxy_sync", LIBRARY_SOUP);

	// soup.ProxyResolverDefault

	Linker.link(soup_proxy_resolver_default_get_type, "soup_proxy_resolver_default_get_type", LIBRARY_SOUP);

	// soup.ProxyURIResolver

	Linker.link(soup_proxy_uri_resolver_get_type, "soup_proxy_uri_resolver_get_type", LIBRARY_SOUP);
	Linker.link(soup_proxy_uri_resolver_get_proxy_uri_async, "soup_proxy_uri_resolver_get_proxy_uri_async", LIBRARY_SOUP);
	Linker.link(soup_proxy_uri_resolver_get_proxy_uri_sync, "soup_proxy_uri_resolver_get_proxy_uri_sync", LIBRARY_SOUP);

	// soup.Request

	Linker.link(soup_request_get_type, "soup_request_get_type", LIBRARY_SOUP);
	Linker.link(soup_request_get_content_length, "soup_request_get_content_length", LIBRARY_SOUP);
	Linker.link(soup_request_get_content_type, "soup_request_get_content_type", LIBRARY_SOUP);
	Linker.link(soup_request_get_session, "soup_request_get_session", LIBRARY_SOUP);
	Linker.link(soup_request_get_uri, "soup_request_get_uri", LIBRARY_SOUP);
	Linker.link(soup_request_send, "soup_request_send", LIBRARY_SOUP);
	Linker.link(soup_request_send_async, "soup_request_send_async", LIBRARY_SOUP);
	Linker.link(soup_request_send_finish, "soup_request_send_finish", LIBRARY_SOUP);

	// soup.RequestData

	Linker.link(soup_request_data_get_type, "soup_request_data_get_type", LIBRARY_SOUP);

	// soup.RequestFile

	Linker.link(soup_request_file_get_type, "soup_request_file_get_type", LIBRARY_SOUP);
	Linker.link(soup_request_file_get_file, "soup_request_file_get_file", LIBRARY_SOUP);

	// soup.RequestHTTP

	Linker.link(soup_request_http_get_type, "soup_request_http_get_type", LIBRARY_SOUP);
	Linker.link(soup_request_http_get_message, "soup_request_http_get_message", LIBRARY_SOUP);

	// soup.Requester

	Linker.link(soup_requester_get_type, "soup_requester_get_type", LIBRARY_SOUP);
	Linker.link(soup_requester_new, "soup_requester_new", LIBRARY_SOUP);
	Linker.link(soup_requester_request, "soup_requester_request", LIBRARY_SOUP);
	Linker.link(soup_requester_request_uri, "soup_requester_request_uri", LIBRARY_SOUP);

	// soup.Server

	Linker.link(soup_server_get_type, "soup_server_get_type", LIBRARY_SOUP);
	Linker.link(soup_server_new, "soup_server_new", LIBRARY_SOUP);
	Linker.link(soup_server_accept_iostream, "soup_server_accept_iostream", LIBRARY_SOUP);
	Linker.link(soup_server_add_auth_domain, "soup_server_add_auth_domain", LIBRARY_SOUP);
	Linker.link(soup_server_add_early_handler, "soup_server_add_early_handler", LIBRARY_SOUP);
	Linker.link(soup_server_add_handler, "soup_server_add_handler", LIBRARY_SOUP);
	Linker.link(soup_server_add_websocket_extension, "soup_server_add_websocket_extension", LIBRARY_SOUP);
	Linker.link(soup_server_add_websocket_handler, "soup_server_add_websocket_handler", LIBRARY_SOUP);
	Linker.link(soup_server_disconnect, "soup_server_disconnect", LIBRARY_SOUP);
	Linker.link(soup_server_get_async_context, "soup_server_get_async_context", LIBRARY_SOUP);
	Linker.link(soup_server_get_listener, "soup_server_get_listener", LIBRARY_SOUP);
	Linker.link(soup_server_get_listeners, "soup_server_get_listeners", LIBRARY_SOUP);
	Linker.link(soup_server_get_port, "soup_server_get_port", LIBRARY_SOUP);
	Linker.link(soup_server_get_uris, "soup_server_get_uris", LIBRARY_SOUP);
	Linker.link(soup_server_is_https, "soup_server_is_https", LIBRARY_SOUP);
	Linker.link(soup_server_listen, "soup_server_listen", LIBRARY_SOUP);
	Linker.link(soup_server_listen_all, "soup_server_listen_all", LIBRARY_SOUP);
	Linker.link(soup_server_listen_fd, "soup_server_listen_fd", LIBRARY_SOUP);
	Linker.link(soup_server_listen_local, "soup_server_listen_local", LIBRARY_SOUP);
	Linker.link(soup_server_listen_socket, "soup_server_listen_socket", LIBRARY_SOUP);
	Linker.link(soup_server_pause_message, "soup_server_pause_message", LIBRARY_SOUP);
	Linker.link(soup_server_quit, "soup_server_quit", LIBRARY_SOUP);
	Linker.link(soup_server_remove_auth_domain, "soup_server_remove_auth_domain", LIBRARY_SOUP);
	Linker.link(soup_server_remove_handler, "soup_server_remove_handler", LIBRARY_SOUP);
	Linker.link(soup_server_remove_websocket_extension, "soup_server_remove_websocket_extension", LIBRARY_SOUP);
	Linker.link(soup_server_run, "soup_server_run", LIBRARY_SOUP);
	Linker.link(soup_server_run_async, "soup_server_run_async", LIBRARY_SOUP);
	Linker.link(soup_server_set_ssl_cert_file, "soup_server_set_ssl_cert_file", LIBRARY_SOUP);
	Linker.link(soup_server_unpause_message, "soup_server_unpause_message", LIBRARY_SOUP);

	// soup.Session

	Linker.link(soup_session_get_type, "soup_session_get_type", LIBRARY_SOUP);
	Linker.link(soup_session_new, "soup_session_new", LIBRARY_SOUP);
	Linker.link(soup_session_new_with_options, "soup_session_new_with_options", LIBRARY_SOUP);
	Linker.link(soup_session_abort, "soup_session_abort", LIBRARY_SOUP);
	Linker.link(soup_session_add_feature, "soup_session_add_feature", LIBRARY_SOUP);
	Linker.link(soup_session_add_feature_by_type, "soup_session_add_feature_by_type", LIBRARY_SOUP);
	Linker.link(soup_session_cancel_message, "soup_session_cancel_message", LIBRARY_SOUP);
	Linker.link(soup_session_connect_async, "soup_session_connect_async", LIBRARY_SOUP);
	Linker.link(soup_session_connect_finish, "soup_session_connect_finish", LIBRARY_SOUP);
	Linker.link(soup_session_get_async_context, "soup_session_get_async_context", LIBRARY_SOUP);
	Linker.link(soup_session_get_feature, "soup_session_get_feature", LIBRARY_SOUP);
	Linker.link(soup_session_get_feature_for_message, "soup_session_get_feature_for_message", LIBRARY_SOUP);
	Linker.link(soup_session_get_features, "soup_session_get_features", LIBRARY_SOUP);
	Linker.link(soup_session_has_feature, "soup_session_has_feature", LIBRARY_SOUP);
	Linker.link(soup_session_pause_message, "soup_session_pause_message", LIBRARY_SOUP);
	Linker.link(soup_session_prefetch_dns, "soup_session_prefetch_dns", LIBRARY_SOUP);
	Linker.link(soup_session_prepare_for_uri, "soup_session_prepare_for_uri", LIBRARY_SOUP);
	Linker.link(soup_session_queue_message, "soup_session_queue_message", LIBRARY_SOUP);
	Linker.link(soup_session_redirect_message, "soup_session_redirect_message", LIBRARY_SOUP);
	Linker.link(soup_session_remove_feature, "soup_session_remove_feature", LIBRARY_SOUP);
	Linker.link(soup_session_remove_feature_by_type, "soup_session_remove_feature_by_type", LIBRARY_SOUP);
	Linker.link(soup_session_request, "soup_session_request", LIBRARY_SOUP);
	Linker.link(soup_session_request_http, "soup_session_request_http", LIBRARY_SOUP);
	Linker.link(soup_session_request_http_uri, "soup_session_request_http_uri", LIBRARY_SOUP);
	Linker.link(soup_session_request_uri, "soup_session_request_uri", LIBRARY_SOUP);
	Linker.link(soup_session_requeue_message, "soup_session_requeue_message", LIBRARY_SOUP);
	Linker.link(soup_session_send, "soup_session_send", LIBRARY_SOUP);
	Linker.link(soup_session_send_async, "soup_session_send_async", LIBRARY_SOUP);
	Linker.link(soup_session_send_finish, "soup_session_send_finish", LIBRARY_SOUP);
	Linker.link(soup_session_send_message, "soup_session_send_message", LIBRARY_SOUP);
	Linker.link(soup_session_steal_connection, "soup_session_steal_connection", LIBRARY_SOUP);
	Linker.link(soup_session_unpause_message, "soup_session_unpause_message", LIBRARY_SOUP);
	Linker.link(soup_session_websocket_connect_async, "soup_session_websocket_connect_async", LIBRARY_SOUP);
	Linker.link(soup_session_websocket_connect_finish, "soup_session_websocket_connect_finish", LIBRARY_SOUP);
	Linker.link(soup_session_would_redirect, "soup_session_would_redirect", LIBRARY_SOUP);

	// soup.SessionAsync

	Linker.link(soup_session_async_get_type, "soup_session_async_get_type", LIBRARY_SOUP);
	Linker.link(soup_session_async_new, "soup_session_async_new", LIBRARY_SOUP);
	Linker.link(soup_session_async_new_with_options, "soup_session_async_new_with_options", LIBRARY_SOUP);

	// soup.SessionFeature

	Linker.link(soup_session_feature_get_type, "soup_session_feature_get_type", LIBRARY_SOUP);
	Linker.link(soup_session_feature_add_feature, "soup_session_feature_add_feature", LIBRARY_SOUP);
	Linker.link(soup_session_feature_attach, "soup_session_feature_attach", LIBRARY_SOUP);
	Linker.link(soup_session_feature_detach, "soup_session_feature_detach", LIBRARY_SOUP);
	Linker.link(soup_session_feature_has_feature, "soup_session_feature_has_feature", LIBRARY_SOUP);
	Linker.link(soup_session_feature_remove_feature, "soup_session_feature_remove_feature", LIBRARY_SOUP);

	// soup.SessionSync

	Linker.link(soup_session_sync_get_type, "soup_session_sync_get_type", LIBRARY_SOUP);
	Linker.link(soup_session_sync_new, "soup_session_sync_new", LIBRARY_SOUP);
	Linker.link(soup_session_sync_new_with_options, "soup_session_sync_new_with_options", LIBRARY_SOUP);

	// soup.SSocket

	Linker.link(soup_socket_get_type, "soup_socket_get_type", LIBRARY_SOUP);
	Linker.link(soup_socket_new, "soup_socket_new", LIBRARY_SOUP);
	Linker.link(soup_socket_connect_async, "soup_socket_connect_async", LIBRARY_SOUP);
	Linker.link(soup_socket_connect_sync, "soup_socket_connect_sync", LIBRARY_SOUP);
	Linker.link(soup_socket_disconnect, "soup_socket_disconnect", LIBRARY_SOUP);
	Linker.link(soup_socket_get_fd, "soup_socket_get_fd", LIBRARY_SOUP);
	Linker.link(soup_socket_get_local_address, "soup_socket_get_local_address", LIBRARY_SOUP);
	Linker.link(soup_socket_get_remote_address, "soup_socket_get_remote_address", LIBRARY_SOUP);
	Linker.link(soup_socket_is_connected, "soup_socket_is_connected", LIBRARY_SOUP);
	Linker.link(soup_socket_is_ssl, "soup_socket_is_ssl", LIBRARY_SOUP);
	Linker.link(soup_socket_listen, "soup_socket_listen", LIBRARY_SOUP);
	Linker.link(soup_socket_read, "soup_socket_read", LIBRARY_SOUP);
	Linker.link(soup_socket_read_until, "soup_socket_read_until", LIBRARY_SOUP);
	Linker.link(soup_socket_start_proxy_ssl, "soup_socket_start_proxy_ssl", LIBRARY_SOUP);
	Linker.link(soup_socket_start_ssl, "soup_socket_start_ssl", LIBRARY_SOUP);
	Linker.link(soup_socket_write, "soup_socket_write", LIBRARY_SOUP);

	// soup.URI

	Linker.link(soup_uri_get_type, "soup_uri_get_type", LIBRARY_SOUP);
	Linker.link(soup_uri_new, "soup_uri_new", LIBRARY_SOUP);
	Linker.link(soup_uri_new_with_base, "soup_uri_new_with_base", LIBRARY_SOUP);
	Linker.link(soup_uri_copy, "soup_uri_copy", LIBRARY_SOUP);
	Linker.link(soup_uri_copy_host, "soup_uri_copy_host", LIBRARY_SOUP);
	Linker.link(soup_uri_equal, "soup_uri_equal", LIBRARY_SOUP);
	Linker.link(soup_uri_free, "soup_uri_free", LIBRARY_SOUP);
	Linker.link(soup_uri_get_fragment, "soup_uri_get_fragment", LIBRARY_SOUP);
	Linker.link(soup_uri_get_host, "soup_uri_get_host", LIBRARY_SOUP);
	Linker.link(soup_uri_get_password, "soup_uri_get_password", LIBRARY_SOUP);
	Linker.link(soup_uri_get_path, "soup_uri_get_path", LIBRARY_SOUP);
	Linker.link(soup_uri_get_port, "soup_uri_get_port", LIBRARY_SOUP);
	Linker.link(soup_uri_get_query, "soup_uri_get_query", LIBRARY_SOUP);
	Linker.link(soup_uri_get_scheme, "soup_uri_get_scheme", LIBRARY_SOUP);
	Linker.link(soup_uri_get_user, "soup_uri_get_user", LIBRARY_SOUP);
	Linker.link(soup_uri_host_equal, "soup_uri_host_equal", LIBRARY_SOUP);
	Linker.link(soup_uri_host_hash, "soup_uri_host_hash", LIBRARY_SOUP);
	Linker.link(soup_uri_set_fragment, "soup_uri_set_fragment", LIBRARY_SOUP);
	Linker.link(soup_uri_set_host, "soup_uri_set_host", LIBRARY_SOUP);
	Linker.link(soup_uri_set_password, "soup_uri_set_password", LIBRARY_SOUP);
	Linker.link(soup_uri_set_path, "soup_uri_set_path", LIBRARY_SOUP);
	Linker.link(soup_uri_set_port, "soup_uri_set_port", LIBRARY_SOUP);
	Linker.link(soup_uri_set_query, "soup_uri_set_query", LIBRARY_SOUP);
	Linker.link(soup_uri_set_query_from_fields, "soup_uri_set_query_from_fields", LIBRARY_SOUP);
	Linker.link(soup_uri_set_query_from_form, "soup_uri_set_query_from_form", LIBRARY_SOUP);
	Linker.link(soup_uri_set_scheme, "soup_uri_set_scheme", LIBRARY_SOUP);
	Linker.link(soup_uri_set_user, "soup_uri_set_user", LIBRARY_SOUP);
	Linker.link(soup_uri_to_string, "soup_uri_to_string", LIBRARY_SOUP);
	Linker.link(soup_uri_uses_default_port, "soup_uri_uses_default_port", LIBRARY_SOUP);
	Linker.link(soup_uri_decode, "soup_uri_decode", LIBRARY_SOUP);
	Linker.link(soup_uri_encode, "soup_uri_encode", LIBRARY_SOUP);
	Linker.link(soup_uri_normalize, "soup_uri_normalize", LIBRARY_SOUP);

	// soup.WebsocketConnection

	Linker.link(soup_websocket_connection_get_type, "soup_websocket_connection_get_type", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_new, "soup_websocket_connection_new", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_new_with_extensions, "soup_websocket_connection_new_with_extensions", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_close, "soup_websocket_connection_close", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_close_code, "soup_websocket_connection_get_close_code", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_close_data, "soup_websocket_connection_get_close_data", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_connection_type, "soup_websocket_connection_get_connection_type", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_extensions, "soup_websocket_connection_get_extensions", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_io_stream, "soup_websocket_connection_get_io_stream", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_keepalive_interval, "soup_websocket_connection_get_keepalive_interval", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_max_incoming_payload_size, "soup_websocket_connection_get_max_incoming_payload_size", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_origin, "soup_websocket_connection_get_origin", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_protocol, "soup_websocket_connection_get_protocol", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_state, "soup_websocket_connection_get_state", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_get_uri, "soup_websocket_connection_get_uri", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_send_binary, "soup_websocket_connection_send_binary", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_send_message, "soup_websocket_connection_send_message", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_send_text, "soup_websocket_connection_send_text", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_set_keepalive_interval, "soup_websocket_connection_set_keepalive_interval", LIBRARY_SOUP);
	Linker.link(soup_websocket_connection_set_max_incoming_payload_size, "soup_websocket_connection_set_max_incoming_payload_size", LIBRARY_SOUP);

	// soup.WebsocketExtension

	Linker.link(soup_websocket_extension_get_type, "soup_websocket_extension_get_type", LIBRARY_SOUP);
	Linker.link(soup_websocket_extension_configure, "soup_websocket_extension_configure", LIBRARY_SOUP);
	Linker.link(soup_websocket_extension_get_request_params, "soup_websocket_extension_get_request_params", LIBRARY_SOUP);
	Linker.link(soup_websocket_extension_get_response_params, "soup_websocket_extension_get_response_params", LIBRARY_SOUP);
	Linker.link(soup_websocket_extension_process_incoming_message, "soup_websocket_extension_process_incoming_message", LIBRARY_SOUP);
	Linker.link(soup_websocket_extension_process_outgoing_message, "soup_websocket_extension_process_outgoing_message", LIBRARY_SOUP);

	// soup.WebsocketExtensionDeflate

	Linker.link(soup_websocket_extension_deflate_get_type, "soup_websocket_extension_deflate_get_type", LIBRARY_SOUP);

	// soup.WebsocketExtensionManager

	Linker.link(soup_websocket_extension_manager_get_type, "soup_websocket_extension_manager_get_type", LIBRARY_SOUP);

	// soup.XMLRPCParams

	Linker.link(soup_xmlrpc_params_free, "soup_xmlrpc_params_free", LIBRARY_SOUP);
	Linker.link(soup_xmlrpc_params_parse, "soup_xmlrpc_params_parse", LIBRARY_SOUP);
}

__gshared extern(C)
{

	// soup.Address

	GType function() c_soup_address_get_type;
	SoupAddress* function(const(char)* name, uint port) c_soup_address_new;
	SoupAddress* function(SoupAddressFamily family, uint port) c_soup_address_new_any;
	SoupAddress* function(sockaddr* sa, int len) c_soup_address_new_from_sockaddr;
	int function(void* addr1, void* addr2) c_soup_address_equal_by_ip;
	int function(void* addr1, void* addr2) c_soup_address_equal_by_name;
	GSocketAddress* function(SoupAddress* addr) c_soup_address_get_gsockaddr;
	const(char)* function(SoupAddress* addr) c_soup_address_get_name;
	const(char)* function(SoupAddress* addr) c_soup_address_get_physical;
	uint function(SoupAddress* addr) c_soup_address_get_port;
	sockaddr* function(SoupAddress* addr, int* len) c_soup_address_get_sockaddr;
	uint function(void* addr) c_soup_address_hash_by_ip;
	uint function(void* addr) c_soup_address_hash_by_name;
	int function(SoupAddress* addr) c_soup_address_is_resolved;
	void function(SoupAddress* addr, GMainContext* asyncContext, GCancellable* cancellable, SoupAddressCallback callback, void* userData) c_soup_address_resolve_async;
	uint function(SoupAddress* addr, GCancellable* cancellable) c_soup_address_resolve_sync;

	// soup.Auth

	GType function() c_soup_auth_get_type;
	SoupAuth* function(GType type, SoupMessage* msg, const(char)* authHeader) c_soup_auth_new;
	void function(SoupAuth* auth, const(char)* username, const(char)* password) c_soup_auth_authenticate;
	int function(SoupAuth* auth) c_soup_auth_can_authenticate;
	void function(SoupAuth* auth, GSList* space) c_soup_auth_free_protection_space;
	char* function(SoupAuth* auth, SoupMessage* msg) c_soup_auth_get_authorization;
	const(char)* function(SoupAuth* auth) c_soup_auth_get_host;
	char* function(SoupAuth* auth) c_soup_auth_get_info;
	GSList* function(SoupAuth* auth, SoupURI* sourceUri) c_soup_auth_get_protection_space;
	const(char)* function(SoupAuth* auth) c_soup_auth_get_realm;
	const(char)* function(SoupAuth* auth, const(char)* user) c_soup_auth_get_saved_password;
	GSList* function(SoupAuth* auth) c_soup_auth_get_saved_users;
	const(char)* function(SoupAuth* auth) c_soup_auth_get_scheme_name;
	void function(SoupAuth* auth, const(char)* username, const(char)* password) c_soup_auth_has_saved_password;
	int function(SoupAuth* auth) c_soup_auth_is_authenticated;
	int function(SoupAuth* auth) c_soup_auth_is_for_proxy;
	int function(SoupAuth* auth, SoupMessage* msg) c_soup_auth_is_ready;
	void function(SoupAuth* auth, const(char)* username, const(char)* password) c_soup_auth_save_password;
	int function(SoupAuth* auth, SoupMessage* msg, const(char)* authHeader) c_soup_auth_update;

	// soup.AuthBasic

	GType function() c_soup_auth_basic_get_type;

	// soup.AuthDigest

	GType function() c_soup_auth_digest_get_type;

	// soup.AuthDomain

	GType function() c_soup_auth_domain_get_type;
	char* function(SoupAuthDomain* domain, SoupMessage* msg) c_soup_auth_domain_accepts;
	void function(SoupAuthDomain* domain, const(char)* path) c_soup_auth_domain_add_path;
	void function(SoupAuthDomain* domain, SoupMessage* msg) c_soup_auth_domain_challenge;
	int function(SoupAuthDomain* domain, SoupMessage* msg, const(char)* username, const(char)* password) c_soup_auth_domain_check_password;
	int function(SoupAuthDomain* domain, SoupMessage* msg) c_soup_auth_domain_covers;
	const(char)* function(SoupAuthDomain* domain) c_soup_auth_domain_get_realm;
	void function(SoupAuthDomain* domain, const(char)* path) c_soup_auth_domain_remove_path;
	void function(SoupAuthDomain* domain, SoupAuthDomainFilter filter, void* filterData, GDestroyNotify dnotify) c_soup_auth_domain_set_filter;
	void function(SoupAuthDomain* domain, SoupAuthDomainGenericAuthCallback authCallback, void* authData, GDestroyNotify dnotify) c_soup_auth_domain_set_generic_auth_callback;
	int function(SoupAuthDomain* domain, SoupMessage* msg, const(char)* username) c_soup_auth_domain_try_generic_auth_callback;

	// soup.AuthDomainBasic

	GType function() c_soup_auth_domain_basic_get_type;
	SoupAuthDomain* function(const(char)* optname1, ... ) c_soup_auth_domain_basic_new;
	void function(SoupAuthDomain* domain, SoupAuthDomainBasicAuthCallback callback, void* userData, GDestroyNotify dnotify) c_soup_auth_domain_basic_set_auth_callback;

	// soup.AuthDomainDigest

	GType function() c_soup_auth_domain_digest_get_type;
	SoupAuthDomain* function(const(char)* optname1, ... ) c_soup_auth_domain_digest_new;
	char* function(const(char)* username, const(char)* realm, const(char)* password) c_soup_auth_domain_digest_encode_password;
	void function(SoupAuthDomain* domain, SoupAuthDomainDigestAuthCallback callback, void* userData, GDestroyNotify dnotify) c_soup_auth_domain_digest_set_auth_callback;

	// soup.AuthManager

	GType function() c_soup_auth_manager_get_type;
	void function(SoupAuthManager* manager) c_soup_auth_manager_clear_cached_credentials;
	void function(SoupAuthManager* manager, SoupURI* uri, SoupAuth* auth) c_soup_auth_manager_use_auth;

	// soup.AuthNTLM

	GType function() c_soup_auth_ntlm_get_type;

	// soup.AuthNegotiate

	GType function() c_soup_auth_negotiate_get_type;
	int function() c_soup_auth_negotiate_supported;

	// soup.Buffer

	GType function() c_soup_buffer_get_type;
	SoupBuffer* function(SoupMemoryUse use, void* data, size_t length) c_soup_buffer_new;
	SoupBuffer* function(char* data, size_t length) c_soup_buffer_new_take;
	SoupBuffer* function(void* data, size_t length, void* owner, GDestroyNotify ownerDnotify) c_soup_buffer_new_with_owner;
	SoupBuffer* function(SoupBuffer* buffer) c_soup_buffer_copy;
	void function(SoupBuffer* buffer) c_soup_buffer_free;
	GBytes* function(SoupBuffer* buffer) c_soup_buffer_get_as_bytes;
	void function(SoupBuffer* buffer, ubyte** data, size_t* length) c_soup_buffer_get_data;
	void* function(SoupBuffer* buffer) c_soup_buffer_get_owner;
	SoupBuffer* function(SoupBuffer* parent, size_t offset, size_t length) c_soup_buffer_new_subbuffer;

	// soup.Cache

	GType function() c_soup_cache_get_type;
	SoupCache* function(const(char)* cacheDir, SoupCacheType cacheType) c_soup_cache_new;
	void function(SoupCache* cache) c_soup_cache_clear;
	void function(SoupCache* cache) c_soup_cache_dump;
	void function(SoupCache* cache) c_soup_cache_flush;
	uint function(SoupCache* cache) c_soup_cache_get_max_size;
	void function(SoupCache* cache) c_soup_cache_load;
	void function(SoupCache* cache, uint maxSize) c_soup_cache_set_max_size;

	// soup.ClientContext

	GType function() c_soup_client_context_get_type;
	SoupAddress* function(SoupClientContext* client) c_soup_client_context_get_address;
	SoupAuthDomain* function(SoupClientContext* client) c_soup_client_context_get_auth_domain;
	const(char)* function(SoupClientContext* client) c_soup_client_context_get_auth_user;
	GSocket* function(SoupClientContext* client) c_soup_client_context_get_gsocket;
	const(char)* function(SoupClientContext* client) c_soup_client_context_get_host;
	GSocketAddress* function(SoupClientContext* client) c_soup_client_context_get_local_address;
	GSocketAddress* function(SoupClientContext* client) c_soup_client_context_get_remote_address;
	SoupSocket* function(SoupClientContext* client) c_soup_client_context_get_socket;
	GIOStream* function(SoupClientContext* client) c_soup_client_context_steal_connection;

	// soup.ContentDecoder

	GType function() c_soup_content_decoder_get_type;

	// soup.ContentSniffer

	GType function() c_soup_content_sniffer_get_type;
	SoupContentSniffer* function() c_soup_content_sniffer_new;
	size_t function(SoupContentSniffer* sniffer) c_soup_content_sniffer_get_buffer_size;
	char* function(SoupContentSniffer* sniffer, SoupMessage* msg, SoupBuffer* buffer, GHashTable** params) c_soup_content_sniffer_sniff;

	// soup.Cookie

	GType function() c_soup_cookie_get_type;
	SoupCookie* function(const(char)* name, const(char)* value, const(char)* domain, const(char)* path, int maxAge) c_soup_cookie_new;
	int function(SoupCookie* cookie, SoupURI* uri) c_soup_cookie_applies_to_uri;
	SoupCookie* function(SoupCookie* cookie) c_soup_cookie_copy;
	int function(SoupCookie* cookie, const(char)* host) c_soup_cookie_domain_matches;
	int function(SoupCookie* cookie1, SoupCookie* cookie2) c_soup_cookie_equal;
	void function(SoupCookie* cookie) c_soup_cookie_free;
	const(char)* function(SoupCookie* cookie) c_soup_cookie_get_domain;
	SoupDate* function(SoupCookie* cookie) c_soup_cookie_get_expires;
	int function(SoupCookie* cookie) c_soup_cookie_get_http_only;
	const(char)* function(SoupCookie* cookie) c_soup_cookie_get_name;
	const(char)* function(SoupCookie* cookie) c_soup_cookie_get_path;
	SoupSameSitePolicy function(SoupCookie* cookie) c_soup_cookie_get_same_site_policy;
	int function(SoupCookie* cookie) c_soup_cookie_get_secure;
	const(char)* function(SoupCookie* cookie) c_soup_cookie_get_value;
	void function(SoupCookie* cookie, const(char)* domain) c_soup_cookie_set_domain;
	void function(SoupCookie* cookie, SoupDate* expires) c_soup_cookie_set_expires;
	void function(SoupCookie* cookie, int httpOnly) c_soup_cookie_set_http_only;
	void function(SoupCookie* cookie, int maxAge) c_soup_cookie_set_max_age;
	void function(SoupCookie* cookie, const(char)* name) c_soup_cookie_set_name;
	void function(SoupCookie* cookie, const(char)* path) c_soup_cookie_set_path;
	void function(SoupCookie* cookie, SoupSameSitePolicy policy) c_soup_cookie_set_same_site_policy;
	void function(SoupCookie* cookie, int secure) c_soup_cookie_set_secure;
	void function(SoupCookie* cookie, const(char)* value) c_soup_cookie_set_value;
	char* function(SoupCookie* cookie) c_soup_cookie_to_cookie_header;
	char* function(SoupCookie* cookie) c_soup_cookie_to_set_cookie_header;
	SoupCookie* function(const(char)* header, SoupURI* origin) c_soup_cookie_parse;

	// soup.CookieJar

	GType function() c_soup_cookie_jar_get_type;
	SoupCookieJar* function() c_soup_cookie_jar_new;
	void function(SoupCookieJar* jar, SoupCookie* cookie) c_soup_cookie_jar_add_cookie;
	void function(SoupCookieJar* jar, SoupCookie* cookie, SoupURI* uri, SoupURI* firstParty) c_soup_cookie_jar_add_cookie_full;
	void function(SoupCookieJar* jar, SoupURI* firstParty, SoupCookie* cookie) c_soup_cookie_jar_add_cookie_with_first_party;
	GSList* function(SoupCookieJar* jar) c_soup_cookie_jar_all_cookies;
	void function(SoupCookieJar* jar, SoupCookie* cookie) c_soup_cookie_jar_delete_cookie;
	SoupCookieJarAcceptPolicy function(SoupCookieJar* jar) c_soup_cookie_jar_get_accept_policy;
	GSList* function(SoupCookieJar* jar, SoupURI* uri, int forHttp) c_soup_cookie_jar_get_cookie_list;
	GSList* function(SoupCookieJar* jar, SoupURI* uri, SoupURI* topLevel, SoupURI* siteForCookies, int forHttp, int isSafeMethod, int isTopLevelNavigation) c_soup_cookie_jar_get_cookie_list_with_same_site_info;
	char* function(SoupCookieJar* jar, SoupURI* uri, int forHttp) c_soup_cookie_jar_get_cookies;
	int function(SoupCookieJar* jar) c_soup_cookie_jar_is_persistent;
	void function(SoupCookieJar* jar) c_soup_cookie_jar_save;
	void function(SoupCookieJar* jar, SoupCookieJarAcceptPolicy policy) c_soup_cookie_jar_set_accept_policy;
	void function(SoupCookieJar* jar, SoupURI* uri, const(char)* cookie) c_soup_cookie_jar_set_cookie;
	void function(SoupCookieJar* jar, SoupURI* uri, SoupURI* firstParty, const(char)* cookie) c_soup_cookie_jar_set_cookie_with_first_party;

	// soup.CookieJarDB

	GType function() c_soup_cookie_jar_db_get_type;
	SoupCookieJar* function(const(char)* filename, int readOnly) c_soup_cookie_jar_db_new;

	// soup.CookieJarText

	GType function() c_soup_cookie_jar_text_get_type;
	SoupCookieJar* function(const(char)* filename, int readOnly) c_soup_cookie_jar_text_new;

	// soup.Date

	GType function() c_soup_date_get_type;
	SoupDate* function(int year, int month, int day, int hour, int minute, int second) c_soup_date_new;
	SoupDate* function(int offsetSeconds) c_soup_date_new_from_now;
	SoupDate* function(const(char)* dateString) c_soup_date_new_from_string;
	SoupDate* function(uint when) c_soup_date_new_from_time_t;
	SoupDate* function(SoupDate* date) c_soup_date_copy;
	void function(SoupDate* date) c_soup_date_free;
	int function(SoupDate* date) c_soup_date_get_day;
	int function(SoupDate* date) c_soup_date_get_hour;
	int function(SoupDate* date) c_soup_date_get_minute;
	int function(SoupDate* date) c_soup_date_get_month;
	int function(SoupDate* date) c_soup_date_get_offset;
	int function(SoupDate* date) c_soup_date_get_second;
	int function(SoupDate* date) c_soup_date_get_utc;
	int function(SoupDate* date) c_soup_date_get_year;
	int function(SoupDate* date) c_soup_date_is_past;
	char* function(SoupDate* date, SoupDateFormat format) c_soup_date_to_string;
	uint function(SoupDate* date) c_soup_date_to_time_t;
	void function(SoupDate* date, GTimeVal* time) c_soup_date_to_timeval;

	// soup.HSTSEnforcer

	GType function() c_soup_hsts_enforcer_get_type;
	SoupHSTSEnforcer* function() c_soup_hsts_enforcer_new;
	GList* function(SoupHSTSEnforcer* hstsEnforcer, int sessionPolicies) c_soup_hsts_enforcer_get_domains;
	GList* function(SoupHSTSEnforcer* hstsEnforcer, int sessionPolicies) c_soup_hsts_enforcer_get_policies;
	int function(SoupHSTSEnforcer* hstsEnforcer, const(char)* domain) c_soup_hsts_enforcer_has_valid_policy;
	int function(SoupHSTSEnforcer* hstsEnforcer) c_soup_hsts_enforcer_is_persistent;
	void function(SoupHSTSEnforcer* hstsEnforcer, SoupHSTSPolicy* policy) c_soup_hsts_enforcer_set_policy;
	void function(SoupHSTSEnforcer* hstsEnforcer, const(char)* domain, int includeSubdomains) c_soup_hsts_enforcer_set_session_policy;

	// soup.HSTSEnforcerDB

	GType function() c_soup_hsts_enforcer_db_get_type;
	SoupHSTSEnforcer* function(const(char)* filename) c_soup_hsts_enforcer_db_new;

	// soup.HSTSPolicy

	GType function() c_soup_hsts_policy_get_type;
	SoupHSTSPolicy* function(const(char)* domain, ulong maxAge, int includeSubdomains) c_soup_hsts_policy_new;
	SoupHSTSPolicy* function(SoupMessage* msg) c_soup_hsts_policy_new_from_response;
	SoupHSTSPolicy* function(const(char)* domain, ulong maxAge, SoupDate* expires, int includeSubdomains) c_soup_hsts_policy_new_full;
	SoupHSTSPolicy* function(const(char)* domain, int includeSubdomains) c_soup_hsts_policy_new_session_policy;
	SoupHSTSPolicy* function(SoupHSTSPolicy* policy) c_soup_hsts_policy_copy;
	int function(SoupHSTSPolicy* policy1, SoupHSTSPolicy* policy2) c_soup_hsts_policy_equal;
	void function(SoupHSTSPolicy* policy) c_soup_hsts_policy_free;
	const(char)* function(SoupHSTSPolicy* policy) c_soup_hsts_policy_get_domain;
	int function(SoupHSTSPolicy* policy) c_soup_hsts_policy_includes_subdomains;
	int function(SoupHSTSPolicy* policy) c_soup_hsts_policy_is_expired;
	int function(SoupHSTSPolicy* policy) c_soup_hsts_policy_is_session_policy;

	// soup.Logger

	GType function() c_soup_logger_get_type;
	SoupLogger* function(SoupLoggerLogLevel level, int maxBodySize) c_soup_logger_new;
	void function(SoupLogger* logger, SoupSession* session) c_soup_logger_attach;
	void function(SoupLogger* logger, SoupSession* session) c_soup_logger_detach;
	void function(SoupLogger* logger, SoupLoggerPrinter printer, void* printerData, GDestroyNotify destroy) c_soup_logger_set_printer;
	void function(SoupLogger* logger, SoupLoggerFilter requestFilter, void* filterData, GDestroyNotify destroy) c_soup_logger_set_request_filter;
	void function(SoupLogger* logger, SoupLoggerFilter responseFilter, void* filterData, GDestroyNotify destroy) c_soup_logger_set_response_filter;

	// soup.Message

	GType function() c_soup_message_get_type;
	SoupMessage* function(const(char)* method, const(char)* uriString) c_soup_message_new;
	SoupMessage* function(const(char)* method, SoupURI* uri) c_soup_message_new_from_uri;
	uint function(SoupMessage* msg, const(char)* signal, const(char)* header, GCallback callback, void* userData) c_soup_message_add_header_handler;
	uint function(SoupMessage* msg, const(char)* signal, uint statusCode, GCallback callback, void* userData) c_soup_message_add_status_code_handler;
	void function(SoupMessage* msg, const(char)* contentType, GHashTable* params) c_soup_message_content_sniffed;
	void function(SoupMessage* msg, GType featureType) c_soup_message_disable_feature;
	void function(SoupMessage* msg) c_soup_message_finished;
	SoupAddress* function(SoupMessage* msg) c_soup_message_get_address;
	SoupURI* function(SoupMessage* msg) c_soup_message_get_first_party;
	SoupMessageFlags function(SoupMessage* msg) c_soup_message_get_flags;
	SoupHTTPVersion function(SoupMessage* msg) c_soup_message_get_http_version;
	int function(SoupMessage* msg, GTlsCertificate** certificate, GTlsCertificateFlags* errors) c_soup_message_get_https_status;
	int function(SoupMessage* msg) c_soup_message_get_is_top_level_navigation;
	SoupMessagePriority function(SoupMessage* msg) c_soup_message_get_priority;
	SoupURI* function(SoupMessage* msg) c_soup_message_get_site_for_cookies;
	SoupRequest* function(SoupMessage* msg) c_soup_message_get_soup_request;
	SoupURI* function(SoupMessage* msg) c_soup_message_get_uri;
	void function(SoupMessage* msg) c_soup_message_got_body;
	void function(SoupMessage* msg, SoupBuffer* chunk) c_soup_message_got_chunk;
	void function(SoupMessage* msg) c_soup_message_got_headers;
	void function(SoupMessage* msg) c_soup_message_got_informational;
	int function(SoupMessage* msg, GType featureType) c_soup_message_is_feature_disabled;
	int function(SoupMessage* msg) c_soup_message_is_keepalive;
	void function(SoupMessage* msg) c_soup_message_restarted;
	void function(SoupMessage* msg, SoupChunkAllocator allocator, void* userData, GDestroyNotify destroyNotify) c_soup_message_set_chunk_allocator;
	void function(SoupMessage* msg, SoupURI* firstParty) c_soup_message_set_first_party;
	void function(SoupMessage* msg, SoupMessageFlags flags) c_soup_message_set_flags;
	void function(SoupMessage* msg, SoupHTTPVersion version_) c_soup_message_set_http_version;
	void function(SoupMessage* msg, int isTopLevelNavigation) c_soup_message_set_is_top_level_navigation;
	void function(SoupMessage* msg, SoupMessagePriority priority) c_soup_message_set_priority;
	void function(SoupMessage* msg, uint statusCode, const(char)* redirectUri) c_soup_message_set_redirect;
	void function(SoupMessage* msg, const(char)* contentType, SoupMemoryUse reqUse, char* reqBody, size_t reqLength) c_soup_message_set_request;
	void function(SoupMessage* msg, const(char)* contentType, SoupMemoryUse respUse, char* respBody, size_t respLength) c_soup_message_set_response;
	void function(SoupMessage* msg, SoupURI* siteForCookies) c_soup_message_set_site_for_cookies;
	void function(SoupMessage* msg, uint statusCode) c_soup_message_set_status;
	void function(SoupMessage* msg, uint statusCode, const(char)* reasonPhrase) c_soup_message_set_status_full;
	void function(SoupMessage* msg, SoupURI* uri) c_soup_message_set_uri;
	void function(SoupMessage* msg) c_soup_message_starting;
	void function(SoupMessage* msg) c_soup_message_wrote_body;
	void function(SoupMessage* msg, SoupBuffer* chunk) c_soup_message_wrote_body_data;
	void function(SoupMessage* msg) c_soup_message_wrote_chunk;
	void function(SoupMessage* msg) c_soup_message_wrote_headers;
	void function(SoupMessage* msg) c_soup_message_wrote_informational;

	// soup.MessageBody

	GType function() c_soup_message_body_get_type;
	SoupMessageBody* function() c_soup_message_body_new;
	void function(SoupMessageBody* body_, SoupMemoryUse use, void* data, size_t length) c_soup_message_body_append;
	void function(SoupMessageBody* body_, SoupBuffer* buffer) c_soup_message_body_append_buffer;
	void function(SoupMessageBody* body_, char* data, size_t length) c_soup_message_body_append_take;
	void function(SoupMessageBody* body_) c_soup_message_body_complete;
	SoupBuffer* function(SoupMessageBody* body_) c_soup_message_body_flatten;
	void function(SoupMessageBody* body_) c_soup_message_body_free;
	int function(SoupMessageBody* body_) c_soup_message_body_get_accumulate;
	SoupBuffer* function(SoupMessageBody* body_, long offset) c_soup_message_body_get_chunk;
	void function(SoupMessageBody* body_, SoupBuffer* chunk) c_soup_message_body_got_chunk;
	void function(SoupMessageBody* body_, int accumulate) c_soup_message_body_set_accumulate;
	void function(SoupMessageBody* body_) c_soup_message_body_truncate;
	void function(SoupMessageBody* body_, SoupBuffer* chunk) c_soup_message_body_wrote_chunk;

	// soup.MessageHeaders

	GType function() c_soup_message_headers_get_type;
	SoupMessageHeaders* function(SoupMessageHeadersType type) c_soup_message_headers_new;
	void function(SoupMessageHeaders* hdrs, const(char)* name, const(char)* value) c_soup_message_headers_append;
	void function(SoupMessageHeaders* hdrs) c_soup_message_headers_clean_connection_headers;
	void function(SoupMessageHeaders* hdrs) c_soup_message_headers_clear;
	void function(SoupMessageHeaders* hdrs, SoupMessageHeadersForeachFunc func, void* userData) c_soup_message_headers_foreach;
	void function(SoupMessageHeaders* hdrs) c_soup_message_headers_free;
	void function(SoupMessageHeaders* hdrs, SoupRange* ranges) c_soup_message_headers_free_ranges;
	const(char)* function(SoupMessageHeaders* hdrs, const(char)* name) c_soup_message_headers_get;
	int function(SoupMessageHeaders* hdrs, char** disposition, GHashTable** params) c_soup_message_headers_get_content_disposition;
	long function(SoupMessageHeaders* hdrs) c_soup_message_headers_get_content_length;
	int function(SoupMessageHeaders* hdrs, long* start, long* end, long* totalLength) c_soup_message_headers_get_content_range;
	const(char)* function(SoupMessageHeaders* hdrs, GHashTable** params) c_soup_message_headers_get_content_type;
	SoupEncoding function(SoupMessageHeaders* hdrs) c_soup_message_headers_get_encoding;
	SoupExpectation function(SoupMessageHeaders* hdrs) c_soup_message_headers_get_expectations;
	SoupMessageHeadersType function(SoupMessageHeaders* hdrs) c_soup_message_headers_get_headers_type;
	const(char)* function(SoupMessageHeaders* hdrs, const(char)* name) c_soup_message_headers_get_list;
	const(char)* function(SoupMessageHeaders* hdrs, const(char)* name) c_soup_message_headers_get_one;
	int function(SoupMessageHeaders* hdrs, long totalLength, SoupRange** ranges, int* length) c_soup_message_headers_get_ranges;
	int function(SoupMessageHeaders* hdrs, const(char)* name, const(char)* token) c_soup_message_headers_header_contains;
	int function(SoupMessageHeaders* hdrs, const(char)* name, const(char)* value) c_soup_message_headers_header_equals;
	void function(SoupMessageHeaders* hdrs, const(char)* name) c_soup_message_headers_remove;
	void function(SoupMessageHeaders* hdrs, const(char)* name, const(char)* value) c_soup_message_headers_replace;
	void function(SoupMessageHeaders* hdrs, const(char)* disposition, GHashTable* params) c_soup_message_headers_set_content_disposition;
	void function(SoupMessageHeaders* hdrs, long contentLength) c_soup_message_headers_set_content_length;
	void function(SoupMessageHeaders* hdrs, long start, long end, long totalLength) c_soup_message_headers_set_content_range;
	void function(SoupMessageHeaders* hdrs, const(char)* contentType, GHashTable* params) c_soup_message_headers_set_content_type;
	void function(SoupMessageHeaders* hdrs, SoupEncoding encoding) c_soup_message_headers_set_encoding;
	void function(SoupMessageHeaders* hdrs, SoupExpectation expectations) c_soup_message_headers_set_expectations;
	void function(SoupMessageHeaders* hdrs, long start, long end) c_soup_message_headers_set_range;
	void function(SoupMessageHeaders* hdrs, SoupRange* ranges, int length) c_soup_message_headers_set_ranges;

	// soup.MessageHeadersIter

	int function(SoupMessageHeadersIter* iter, char** name, char** value) c_soup_message_headers_iter_next;
	void function(SoupMessageHeadersIter* iter, SoupMessageHeaders* hdrs) c_soup_message_headers_iter_init;

	// soup.Multipart

	GType function() c_soup_multipart_get_type;
	SoupMultipart* function(const(char)* mimeType) c_soup_multipart_new;
	SoupMultipart* function(SoupMessageHeaders* headers, SoupMessageBody* body_) c_soup_multipart_new_from_message;
	void function(SoupMultipart* multipart, const(char)* controlName, const(char)* filename, const(char)* contentType, SoupBuffer* body_) c_soup_multipart_append_form_file;
	void function(SoupMultipart* multipart, const(char)* controlName, const(char)* data) c_soup_multipart_append_form_string;
	void function(SoupMultipart* multipart, SoupMessageHeaders* headers, SoupBuffer* body_) c_soup_multipart_append_part;
	void function(SoupMultipart* multipart) c_soup_multipart_free;
	int function(SoupMultipart* multipart) c_soup_multipart_get_length;
	int function(SoupMultipart* multipart, int part, SoupMessageHeaders** headers, SoupBuffer** body_) c_soup_multipart_get_part;
	void function(SoupMultipart* multipart, SoupMessageHeaders* destHeaders, SoupMessageBody* destBody) c_soup_multipart_to_message;

	// soup.MultipartInputStream

	GType function() c_soup_multipart_input_stream_get_type;
	SoupMultipartInputStream* function(SoupMessage* msg, GInputStream* baseStream) c_soup_multipart_input_stream_new;
	SoupMessageHeaders* function(SoupMultipartInputStream* multipart) c_soup_multipart_input_stream_get_headers;
	GInputStream* function(SoupMultipartInputStream* multipart, GCancellable* cancellable, GError** err) c_soup_multipart_input_stream_next_part;
	void function(SoupMultipartInputStream* multipart, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* data) c_soup_multipart_input_stream_next_part_async;
	GInputStream* function(SoupMultipartInputStream* multipart, GAsyncResult* result, GError** err) c_soup_multipart_input_stream_next_part_finish;

	// soup.PasswordManager

	GType function() c_soup_password_manager_get_type;
	void function(SoupPasswordManager* passwordManager, SoupMessage* msg, SoupAuth* auth, int retrying, GMainContext* asyncContext, GCancellable* cancellable, SoupPasswordManagerCallback callback, void* userData) c_soup_password_manager_get_passwords_async;
	void function(SoupPasswordManager* passwordManager, SoupMessage* msg, SoupAuth* auth, GCancellable* cancellable) c_soup_password_manager_get_passwords_sync;

	// soup.ProxyResolver

	GType function() c_soup_proxy_resolver_get_type;
	void function(SoupProxyResolver* proxyResolver, SoupMessage* msg, GMainContext* asyncContext, GCancellable* cancellable, SoupProxyResolverCallback callback, void* userData) c_soup_proxy_resolver_get_proxy_async;
	uint function(SoupProxyResolver* proxyResolver, SoupMessage* msg, GCancellable* cancellable, SoupAddress** addr) c_soup_proxy_resolver_get_proxy_sync;

	// soup.ProxyResolverDefault

	GType function() c_soup_proxy_resolver_default_get_type;

	// soup.ProxyURIResolver

	GType function() c_soup_proxy_uri_resolver_get_type;
	void function(SoupProxyURIResolver* proxyUriResolver, SoupURI* uri, GMainContext* asyncContext, GCancellable* cancellable, SoupProxyURIResolverCallback callback, void* userData) c_soup_proxy_uri_resolver_get_proxy_uri_async;
	uint function(SoupProxyURIResolver* proxyUriResolver, SoupURI* uri, GCancellable* cancellable, SoupURI** proxyUri) c_soup_proxy_uri_resolver_get_proxy_uri_sync;

	// soup.Request

	GType function() c_soup_request_get_type;
	long function(SoupRequest* request) c_soup_request_get_content_length;
	const(char)* function(SoupRequest* request) c_soup_request_get_content_type;
	SoupSession* function(SoupRequest* request) c_soup_request_get_session;
	SoupURI* function(SoupRequest* request) c_soup_request_get_uri;
	GInputStream* function(SoupRequest* request, GCancellable* cancellable, GError** err) c_soup_request_send;
	void function(SoupRequest* request, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_soup_request_send_async;
	GInputStream* function(SoupRequest* request, GAsyncResult* result, GError** err) c_soup_request_send_finish;

	// soup.RequestData

	GType function() c_soup_request_data_get_type;

	// soup.RequestFile

	GType function() c_soup_request_file_get_type;
	GFile* function(SoupRequestFile* file) c_soup_request_file_get_file;

	// soup.RequestHTTP

	GType function() c_soup_request_http_get_type;
	SoupMessage* function(SoupRequestHTTP* http) c_soup_request_http_get_message;

	// soup.Requester

	GType function() c_soup_requester_get_type;
	SoupRequester* function() c_soup_requester_new;
	SoupRequest* function(SoupRequester* requester, const(char)* uriString, GError** err) c_soup_requester_request;
	SoupRequest* function(SoupRequester* requester, SoupURI* uri, GError** err) c_soup_requester_request_uri;

	// soup.Server

	GType function() c_soup_server_get_type;
	SoupServer* function(const(char)* optname1, ... ) c_soup_server_new;
	int function(SoupServer* server, GIOStream* stream, GSocketAddress* localAddr, GSocketAddress* remoteAddr, GError** err) c_soup_server_accept_iostream;
	void function(SoupServer* server, SoupAuthDomain* authDomain) c_soup_server_add_auth_domain;
	void function(SoupServer* server, const(char)* path, SoupServerCallback callback, void* userData, GDestroyNotify destroy) c_soup_server_add_early_handler;
	void function(SoupServer* server, const(char)* path, SoupServerCallback callback, void* userData, GDestroyNotify destroy) c_soup_server_add_handler;
	void function(SoupServer* server, GType extensionType) c_soup_server_add_websocket_extension;
	void function(SoupServer* server, const(char)* path, const(char)* origin, char** protocols, SoupServerWebsocketCallback callback, void* userData, GDestroyNotify destroy) c_soup_server_add_websocket_handler;
	void function(SoupServer* server) c_soup_server_disconnect;
	GMainContext* function(SoupServer* server) c_soup_server_get_async_context;
	SoupSocket* function(SoupServer* server) c_soup_server_get_listener;
	GSList* function(SoupServer* server) c_soup_server_get_listeners;
	uint function(SoupServer* server) c_soup_server_get_port;
	GSList* function(SoupServer* server) c_soup_server_get_uris;
	int function(SoupServer* server) c_soup_server_is_https;
	int function(SoupServer* server, GSocketAddress* address, SoupServerListenOptions options, GError** err) c_soup_server_listen;
	int function(SoupServer* server, uint port, SoupServerListenOptions options, GError** err) c_soup_server_listen_all;
	int function(SoupServer* server, int fd, SoupServerListenOptions options, GError** err) c_soup_server_listen_fd;
	int function(SoupServer* server, uint port, SoupServerListenOptions options, GError** err) c_soup_server_listen_local;
	int function(SoupServer* server, GSocket* socket, SoupServerListenOptions options, GError** err) c_soup_server_listen_socket;
	void function(SoupServer* server, SoupMessage* msg) c_soup_server_pause_message;
	void function(SoupServer* server) c_soup_server_quit;
	void function(SoupServer* server, SoupAuthDomain* authDomain) c_soup_server_remove_auth_domain;
	void function(SoupServer* server, const(char)* path) c_soup_server_remove_handler;
	void function(SoupServer* server, GType extensionType) c_soup_server_remove_websocket_extension;
	void function(SoupServer* server) c_soup_server_run;
	void function(SoupServer* server) c_soup_server_run_async;
	int function(SoupServer* server, const(char)* sslCertFile, const(char)* sslKeyFile, GError** err) c_soup_server_set_ssl_cert_file;
	void function(SoupServer* server, SoupMessage* msg) c_soup_server_unpause_message;

	// soup.Session

	GType function() c_soup_session_get_type;
	SoupSession* function() c_soup_session_new;
	SoupSession* function(const(char)* optname1, ... ) c_soup_session_new_with_options;
	void function(SoupSession* session) c_soup_session_abort;
	void function(SoupSession* session, SoupSessionFeature* feature) c_soup_session_add_feature;
	void function(SoupSession* session, GType featureType) c_soup_session_add_feature_by_type;
	void function(SoupSession* session, SoupMessage* msg, uint statusCode) c_soup_session_cancel_message;
	void function(SoupSession* session, SoupURI* uri, GCancellable* cancellable, SoupSessionConnectProgressCallback progressCallback, GAsyncReadyCallback callback, void* userData) c_soup_session_connect_async;
	GIOStream* function(SoupSession* session, GAsyncResult* result, GError** err) c_soup_session_connect_finish;
	GMainContext* function(SoupSession* session) c_soup_session_get_async_context;
	SoupSessionFeature* function(SoupSession* session, GType featureType) c_soup_session_get_feature;
	SoupSessionFeature* function(SoupSession* session, GType featureType, SoupMessage* msg) c_soup_session_get_feature_for_message;
	GSList* function(SoupSession* session, GType featureType) c_soup_session_get_features;
	int function(SoupSession* session, GType featureType) c_soup_session_has_feature;
	void function(SoupSession* session, SoupMessage* msg) c_soup_session_pause_message;
	void function(SoupSession* session, const(char)* hostname, GCancellable* cancellable, SoupAddressCallback callback, void* userData) c_soup_session_prefetch_dns;
	void function(SoupSession* session, SoupURI* uri) c_soup_session_prepare_for_uri;
	void function(SoupSession* session, SoupMessage* msg, SoupSessionCallback callback, void* userData) c_soup_session_queue_message;
	int function(SoupSession* session, SoupMessage* msg) c_soup_session_redirect_message;
	void function(SoupSession* session, SoupSessionFeature* feature) c_soup_session_remove_feature;
	void function(SoupSession* session, GType featureType) c_soup_session_remove_feature_by_type;
	SoupRequest* function(SoupSession* session, const(char)* uriString, GError** err) c_soup_session_request;
	SoupRequestHTTP* function(SoupSession* session, const(char)* method, const(char)* uriString, GError** err) c_soup_session_request_http;
	SoupRequestHTTP* function(SoupSession* session, const(char)* method, SoupURI* uri, GError** err) c_soup_session_request_http_uri;
	SoupRequest* function(SoupSession* session, SoupURI* uri, GError** err) c_soup_session_request_uri;
	void function(SoupSession* session, SoupMessage* msg) c_soup_session_requeue_message;
	GInputStream* function(SoupSession* session, SoupMessage* msg, GCancellable* cancellable, GError** err) c_soup_session_send;
	void function(SoupSession* session, SoupMessage* msg, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_soup_session_send_async;
	GInputStream* function(SoupSession* session, GAsyncResult* result, GError** err) c_soup_session_send_finish;
	uint function(SoupSession* session, SoupMessage* msg) c_soup_session_send_message;
	GIOStream* function(SoupSession* session, SoupMessage* msg) c_soup_session_steal_connection;
	void function(SoupSession* session, SoupMessage* msg) c_soup_session_unpause_message;
	void function(SoupSession* session, SoupMessage* msg, const(char)* origin, char** protocols, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_soup_session_websocket_connect_async;
	SoupWebsocketConnection* function(SoupSession* session, GAsyncResult* result, GError** err) c_soup_session_websocket_connect_finish;
	int function(SoupSession* session, SoupMessage* msg) c_soup_session_would_redirect;

	// soup.SessionAsync

	GType function() c_soup_session_async_get_type;
	SoupSession* function() c_soup_session_async_new;
	SoupSession* function(const(char)* optname1, ... ) c_soup_session_async_new_with_options;

	// soup.SessionFeature

	GType function() c_soup_session_feature_get_type;
	int function(SoupSessionFeature* feature, GType type) c_soup_session_feature_add_feature;
	void function(SoupSessionFeature* feature, SoupSession* session) c_soup_session_feature_attach;
	void function(SoupSessionFeature* feature, SoupSession* session) c_soup_session_feature_detach;
	int function(SoupSessionFeature* feature, GType type) c_soup_session_feature_has_feature;
	int function(SoupSessionFeature* feature, GType type) c_soup_session_feature_remove_feature;

	// soup.SessionSync

	GType function() c_soup_session_sync_get_type;
	SoupSession* function() c_soup_session_sync_new;
	SoupSession* function(const(char)* optname1, ... ) c_soup_session_sync_new_with_options;

	// soup.SSocket

	GType function() c_soup_socket_get_type;
	SoupSocket* function(const(char)* optname1, ... ) c_soup_socket_new;
	void function(SoupSocket* sock, GCancellable* cancellable, SoupSocketCallback callback, void* userData) c_soup_socket_connect_async;
	uint function(SoupSocket* sock, GCancellable* cancellable) c_soup_socket_connect_sync;
	void function(SoupSocket* sock) c_soup_socket_disconnect;
	int function(SoupSocket* sock) c_soup_socket_get_fd;
	SoupAddress* function(SoupSocket* sock) c_soup_socket_get_local_address;
	SoupAddress* function(SoupSocket* sock) c_soup_socket_get_remote_address;
	int function(SoupSocket* sock) c_soup_socket_is_connected;
	int function(SoupSocket* sock) c_soup_socket_is_ssl;
	int function(SoupSocket* sock) c_soup_socket_listen;
	SoupSocketIOStatus function(SoupSocket* sock, void* buffer, size_t len, size_t* nread, GCancellable* cancellable, GError** err) c_soup_socket_read;
	SoupSocketIOStatus function(SoupSocket* sock, void* buffer, size_t len, void* boundary, size_t boundaryLen, size_t* nread, int* gotBoundary, GCancellable* cancellable, GError** err) c_soup_socket_read_until;
	int function(SoupSocket* sock, const(char)* sslHost, GCancellable* cancellable) c_soup_socket_start_proxy_ssl;
	int function(SoupSocket* sock, GCancellable* cancellable) c_soup_socket_start_ssl;
	SoupSocketIOStatus function(SoupSocket* sock, void* buffer, size_t len, size_t* nwrote, GCancellable* cancellable, GError** err) c_soup_socket_write;

	// soup.URI

	GType function() c_soup_uri_get_type;
	SoupURI* function(const(char)* uriString) c_soup_uri_new;
	SoupURI* function(SoupURI* base, const(char)* uriString) c_soup_uri_new_with_base;
	SoupURI* function(SoupURI* uri) c_soup_uri_copy;
	SoupURI* function(SoupURI* uri) c_soup_uri_copy_host;
	int function(SoupURI* uri1, SoupURI* uri2) c_soup_uri_equal;
	void function(SoupURI* uri) c_soup_uri_free;
	const(char)* function(SoupURI* uri) c_soup_uri_get_fragment;
	const(char)* function(SoupURI* uri) c_soup_uri_get_host;
	const(char)* function(SoupURI* uri) c_soup_uri_get_password;
	const(char)* function(SoupURI* uri) c_soup_uri_get_path;
	uint function(SoupURI* uri) c_soup_uri_get_port;
	const(char)* function(SoupURI* uri) c_soup_uri_get_query;
	const(char)* function(SoupURI* uri) c_soup_uri_get_scheme;
	const(char)* function(SoupURI* uri) c_soup_uri_get_user;
	int function(void* v1, void* v2) c_soup_uri_host_equal;
	uint function(void* key) c_soup_uri_host_hash;
	void function(SoupURI* uri, const(char)* fragment) c_soup_uri_set_fragment;
	void function(SoupURI* uri, const(char)* host) c_soup_uri_set_host;
	void function(SoupURI* uri, const(char)* password) c_soup_uri_set_password;
	void function(SoupURI* uri, const(char)* path) c_soup_uri_set_path;
	void function(SoupURI* uri, uint port) c_soup_uri_set_port;
	void function(SoupURI* uri, const(char)* query) c_soup_uri_set_query;
	void function(SoupURI* uri, const(char)* firstField, ... ) c_soup_uri_set_query_from_fields;
	void function(SoupURI* uri, GHashTable* form) c_soup_uri_set_query_from_form;
	void function(SoupURI* uri, const(char)* scheme) c_soup_uri_set_scheme;
	void function(SoupURI* uri, const(char)* user) c_soup_uri_set_user;
	char* function(SoupURI* uri, int justPathAndQuery) c_soup_uri_to_string;
	int function(SoupURI* uri) c_soup_uri_uses_default_port;
	char* function(const(char)* part) c_soup_uri_decode;
	char* function(const(char)* part, const(char)* escapeExtra) c_soup_uri_encode;
	char* function(const(char)* part, const(char)* unescapeExtra) c_soup_uri_normalize;

	// soup.WebsocketConnection

	GType function() c_soup_websocket_connection_get_type;
	SoupWebsocketConnection* function(GIOStream* stream, SoupURI* uri, SoupWebsocketConnectionType type, const(char)* origin, const(char)* protocol) c_soup_websocket_connection_new;
	SoupWebsocketConnection* function(GIOStream* stream, SoupURI* uri, SoupWebsocketConnectionType type, const(char)* origin, const(char)* protocol, GList* extensions) c_soup_websocket_connection_new_with_extensions;
	void function(SoupWebsocketConnection* self, ushort code, const(char)* data) c_soup_websocket_connection_close;
	ushort function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_close_code;
	const(char)* function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_close_data;
	SoupWebsocketConnectionType function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_connection_type;
	GList* function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_extensions;
	GIOStream* function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_io_stream;
	uint function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_keepalive_interval;
	ulong function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_max_incoming_payload_size;
	const(char)* function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_origin;
	const(char)* function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_protocol;
	SoupWebsocketState function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_state;
	SoupURI* function(SoupWebsocketConnection* self) c_soup_websocket_connection_get_uri;
	void function(SoupWebsocketConnection* self, void* data, size_t length) c_soup_websocket_connection_send_binary;
	void function(SoupWebsocketConnection* self, SoupWebsocketDataType type, GBytes* message) c_soup_websocket_connection_send_message;
	void function(SoupWebsocketConnection* self, const(char)* text) c_soup_websocket_connection_send_text;
	void function(SoupWebsocketConnection* self, uint interval) c_soup_websocket_connection_set_keepalive_interval;
	void function(SoupWebsocketConnection* self, ulong maxIncomingPayloadSize) c_soup_websocket_connection_set_max_incoming_payload_size;

	// soup.WebsocketExtension

	GType function() c_soup_websocket_extension_get_type;
	int function(SoupWebsocketExtension* extension, SoupWebsocketConnectionType connectionType, GHashTable* params, GError** err) c_soup_websocket_extension_configure;
	char* function(SoupWebsocketExtension* extension) c_soup_websocket_extension_get_request_params;
	char* function(SoupWebsocketExtension* extension) c_soup_websocket_extension_get_response_params;
	GBytes* function(SoupWebsocketExtension* extension, ubyte* header, GBytes* payload, GError** err) c_soup_websocket_extension_process_incoming_message;
	GBytes* function(SoupWebsocketExtension* extension, ubyte* header, GBytes* payload, GError** err) c_soup_websocket_extension_process_outgoing_message;

	// soup.WebsocketExtensionDeflate

	GType function() c_soup_websocket_extension_deflate_get_type;

	// soup.WebsocketExtensionManager

	GType function() c_soup_websocket_extension_manager_get_type;

	// soup.XMLRPCParams

	void function(SoupXMLRPCParams* self) c_soup_xmlrpc_params_free;
	GVariant* function(SoupXMLRPCParams* self, const(char)* signature, GError** err) c_soup_xmlrpc_params_parse;
}


// soup.Address

alias c_soup_address_get_type soup_address_get_type;
alias c_soup_address_new soup_address_new;
alias c_soup_address_new_any soup_address_new_any;
alias c_soup_address_new_from_sockaddr soup_address_new_from_sockaddr;
alias c_soup_address_equal_by_ip soup_address_equal_by_ip;
alias c_soup_address_equal_by_name soup_address_equal_by_name;
alias c_soup_address_get_gsockaddr soup_address_get_gsockaddr;
alias c_soup_address_get_name soup_address_get_name;
alias c_soup_address_get_physical soup_address_get_physical;
alias c_soup_address_get_port soup_address_get_port;
alias c_soup_address_get_sockaddr soup_address_get_sockaddr;
alias c_soup_address_hash_by_ip soup_address_hash_by_ip;
alias c_soup_address_hash_by_name soup_address_hash_by_name;
alias c_soup_address_is_resolved soup_address_is_resolved;
alias c_soup_address_resolve_async soup_address_resolve_async;
alias c_soup_address_resolve_sync soup_address_resolve_sync;

// soup.Auth

alias c_soup_auth_get_type soup_auth_get_type;
alias c_soup_auth_new soup_auth_new;
alias c_soup_auth_authenticate soup_auth_authenticate;
alias c_soup_auth_can_authenticate soup_auth_can_authenticate;
alias c_soup_auth_free_protection_space soup_auth_free_protection_space;
alias c_soup_auth_get_authorization soup_auth_get_authorization;
alias c_soup_auth_get_host soup_auth_get_host;
alias c_soup_auth_get_info soup_auth_get_info;
alias c_soup_auth_get_protection_space soup_auth_get_protection_space;
alias c_soup_auth_get_realm soup_auth_get_realm;
alias c_soup_auth_get_saved_password soup_auth_get_saved_password;
alias c_soup_auth_get_saved_users soup_auth_get_saved_users;
alias c_soup_auth_get_scheme_name soup_auth_get_scheme_name;
alias c_soup_auth_has_saved_password soup_auth_has_saved_password;
alias c_soup_auth_is_authenticated soup_auth_is_authenticated;
alias c_soup_auth_is_for_proxy soup_auth_is_for_proxy;
alias c_soup_auth_is_ready soup_auth_is_ready;
alias c_soup_auth_save_password soup_auth_save_password;
alias c_soup_auth_update soup_auth_update;

// soup.AuthBasic

alias c_soup_auth_basic_get_type soup_auth_basic_get_type;

// soup.AuthDigest

alias c_soup_auth_digest_get_type soup_auth_digest_get_type;

// soup.AuthDomain

alias c_soup_auth_domain_get_type soup_auth_domain_get_type;
alias c_soup_auth_domain_accepts soup_auth_domain_accepts;
alias c_soup_auth_domain_add_path soup_auth_domain_add_path;
alias c_soup_auth_domain_challenge soup_auth_domain_challenge;
alias c_soup_auth_domain_check_password soup_auth_domain_check_password;
alias c_soup_auth_domain_covers soup_auth_domain_covers;
alias c_soup_auth_domain_get_realm soup_auth_domain_get_realm;
alias c_soup_auth_domain_remove_path soup_auth_domain_remove_path;
alias c_soup_auth_domain_set_filter soup_auth_domain_set_filter;
alias c_soup_auth_domain_set_generic_auth_callback soup_auth_domain_set_generic_auth_callback;
alias c_soup_auth_domain_try_generic_auth_callback soup_auth_domain_try_generic_auth_callback;

// soup.AuthDomainBasic

alias c_soup_auth_domain_basic_get_type soup_auth_domain_basic_get_type;
alias c_soup_auth_domain_basic_new soup_auth_domain_basic_new;
alias c_soup_auth_domain_basic_set_auth_callback soup_auth_domain_basic_set_auth_callback;

// soup.AuthDomainDigest

alias c_soup_auth_domain_digest_get_type soup_auth_domain_digest_get_type;
alias c_soup_auth_domain_digest_new soup_auth_domain_digest_new;
alias c_soup_auth_domain_digest_encode_password soup_auth_domain_digest_encode_password;
alias c_soup_auth_domain_digest_set_auth_callback soup_auth_domain_digest_set_auth_callback;

// soup.AuthManager

alias c_soup_auth_manager_get_type soup_auth_manager_get_type;
alias c_soup_auth_manager_clear_cached_credentials soup_auth_manager_clear_cached_credentials;
alias c_soup_auth_manager_use_auth soup_auth_manager_use_auth;

// soup.AuthNTLM

alias c_soup_auth_ntlm_get_type soup_auth_ntlm_get_type;

// soup.AuthNegotiate

alias c_soup_auth_negotiate_get_type soup_auth_negotiate_get_type;
alias c_soup_auth_negotiate_supported soup_auth_negotiate_supported;

// soup.Buffer

alias c_soup_buffer_get_type soup_buffer_get_type;
alias c_soup_buffer_new soup_buffer_new;
alias c_soup_buffer_new_take soup_buffer_new_take;
alias c_soup_buffer_new_with_owner soup_buffer_new_with_owner;
alias c_soup_buffer_copy soup_buffer_copy;
alias c_soup_buffer_free soup_buffer_free;
alias c_soup_buffer_get_as_bytes soup_buffer_get_as_bytes;
alias c_soup_buffer_get_data soup_buffer_get_data;
alias c_soup_buffer_get_owner soup_buffer_get_owner;
alias c_soup_buffer_new_subbuffer soup_buffer_new_subbuffer;

// soup.Cache

alias c_soup_cache_get_type soup_cache_get_type;
alias c_soup_cache_new soup_cache_new;
alias c_soup_cache_clear soup_cache_clear;
alias c_soup_cache_dump soup_cache_dump;
alias c_soup_cache_flush soup_cache_flush;
alias c_soup_cache_get_max_size soup_cache_get_max_size;
alias c_soup_cache_load soup_cache_load;
alias c_soup_cache_set_max_size soup_cache_set_max_size;

// soup.ClientContext

alias c_soup_client_context_get_type soup_client_context_get_type;
alias c_soup_client_context_get_address soup_client_context_get_address;
alias c_soup_client_context_get_auth_domain soup_client_context_get_auth_domain;
alias c_soup_client_context_get_auth_user soup_client_context_get_auth_user;
alias c_soup_client_context_get_gsocket soup_client_context_get_gsocket;
alias c_soup_client_context_get_host soup_client_context_get_host;
alias c_soup_client_context_get_local_address soup_client_context_get_local_address;
alias c_soup_client_context_get_remote_address soup_client_context_get_remote_address;
alias c_soup_client_context_get_socket soup_client_context_get_socket;
alias c_soup_client_context_steal_connection soup_client_context_steal_connection;

// soup.ContentDecoder

alias c_soup_content_decoder_get_type soup_content_decoder_get_type;

// soup.ContentSniffer

alias c_soup_content_sniffer_get_type soup_content_sniffer_get_type;
alias c_soup_content_sniffer_new soup_content_sniffer_new;
alias c_soup_content_sniffer_get_buffer_size soup_content_sniffer_get_buffer_size;
alias c_soup_content_sniffer_sniff soup_content_sniffer_sniff;

// soup.Cookie

alias c_soup_cookie_get_type soup_cookie_get_type;
alias c_soup_cookie_new soup_cookie_new;
alias c_soup_cookie_applies_to_uri soup_cookie_applies_to_uri;
alias c_soup_cookie_copy soup_cookie_copy;
alias c_soup_cookie_domain_matches soup_cookie_domain_matches;
alias c_soup_cookie_equal soup_cookie_equal;
alias c_soup_cookie_free soup_cookie_free;
alias c_soup_cookie_get_domain soup_cookie_get_domain;
alias c_soup_cookie_get_expires soup_cookie_get_expires;
alias c_soup_cookie_get_http_only soup_cookie_get_http_only;
alias c_soup_cookie_get_name soup_cookie_get_name;
alias c_soup_cookie_get_path soup_cookie_get_path;
alias c_soup_cookie_get_same_site_policy soup_cookie_get_same_site_policy;
alias c_soup_cookie_get_secure soup_cookie_get_secure;
alias c_soup_cookie_get_value soup_cookie_get_value;
alias c_soup_cookie_set_domain soup_cookie_set_domain;
alias c_soup_cookie_set_expires soup_cookie_set_expires;
alias c_soup_cookie_set_http_only soup_cookie_set_http_only;
alias c_soup_cookie_set_max_age soup_cookie_set_max_age;
alias c_soup_cookie_set_name soup_cookie_set_name;
alias c_soup_cookie_set_path soup_cookie_set_path;
alias c_soup_cookie_set_same_site_policy soup_cookie_set_same_site_policy;
alias c_soup_cookie_set_secure soup_cookie_set_secure;
alias c_soup_cookie_set_value soup_cookie_set_value;
alias c_soup_cookie_to_cookie_header soup_cookie_to_cookie_header;
alias c_soup_cookie_to_set_cookie_header soup_cookie_to_set_cookie_header;
alias c_soup_cookie_parse soup_cookie_parse;

// soup.CookieJar

alias c_soup_cookie_jar_get_type soup_cookie_jar_get_type;
alias c_soup_cookie_jar_new soup_cookie_jar_new;
alias c_soup_cookie_jar_add_cookie soup_cookie_jar_add_cookie;
alias c_soup_cookie_jar_add_cookie_full soup_cookie_jar_add_cookie_full;
alias c_soup_cookie_jar_add_cookie_with_first_party soup_cookie_jar_add_cookie_with_first_party;
alias c_soup_cookie_jar_all_cookies soup_cookie_jar_all_cookies;
alias c_soup_cookie_jar_delete_cookie soup_cookie_jar_delete_cookie;
alias c_soup_cookie_jar_get_accept_policy soup_cookie_jar_get_accept_policy;
alias c_soup_cookie_jar_get_cookie_list soup_cookie_jar_get_cookie_list;
alias c_soup_cookie_jar_get_cookie_list_with_same_site_info soup_cookie_jar_get_cookie_list_with_same_site_info;
alias c_soup_cookie_jar_get_cookies soup_cookie_jar_get_cookies;
alias c_soup_cookie_jar_is_persistent soup_cookie_jar_is_persistent;
alias c_soup_cookie_jar_save soup_cookie_jar_save;
alias c_soup_cookie_jar_set_accept_policy soup_cookie_jar_set_accept_policy;
alias c_soup_cookie_jar_set_cookie soup_cookie_jar_set_cookie;
alias c_soup_cookie_jar_set_cookie_with_first_party soup_cookie_jar_set_cookie_with_first_party;

// soup.CookieJarDB

alias c_soup_cookie_jar_db_get_type soup_cookie_jar_db_get_type;
alias c_soup_cookie_jar_db_new soup_cookie_jar_db_new;

// soup.CookieJarText

alias c_soup_cookie_jar_text_get_type soup_cookie_jar_text_get_type;
alias c_soup_cookie_jar_text_new soup_cookie_jar_text_new;

// soup.Date

alias c_soup_date_get_type soup_date_get_type;
alias c_soup_date_new soup_date_new;
alias c_soup_date_new_from_now soup_date_new_from_now;
alias c_soup_date_new_from_string soup_date_new_from_string;
alias c_soup_date_new_from_time_t soup_date_new_from_time_t;
alias c_soup_date_copy soup_date_copy;
alias c_soup_date_free soup_date_free;
alias c_soup_date_get_day soup_date_get_day;
alias c_soup_date_get_hour soup_date_get_hour;
alias c_soup_date_get_minute soup_date_get_minute;
alias c_soup_date_get_month soup_date_get_month;
alias c_soup_date_get_offset soup_date_get_offset;
alias c_soup_date_get_second soup_date_get_second;
alias c_soup_date_get_utc soup_date_get_utc;
alias c_soup_date_get_year soup_date_get_year;
alias c_soup_date_is_past soup_date_is_past;
alias c_soup_date_to_string soup_date_to_string;
alias c_soup_date_to_time_t soup_date_to_time_t;
alias c_soup_date_to_timeval soup_date_to_timeval;

// soup.HSTSEnforcer

alias c_soup_hsts_enforcer_get_type soup_hsts_enforcer_get_type;
alias c_soup_hsts_enforcer_new soup_hsts_enforcer_new;
alias c_soup_hsts_enforcer_get_domains soup_hsts_enforcer_get_domains;
alias c_soup_hsts_enforcer_get_policies soup_hsts_enforcer_get_policies;
alias c_soup_hsts_enforcer_has_valid_policy soup_hsts_enforcer_has_valid_policy;
alias c_soup_hsts_enforcer_is_persistent soup_hsts_enforcer_is_persistent;
alias c_soup_hsts_enforcer_set_policy soup_hsts_enforcer_set_policy;
alias c_soup_hsts_enforcer_set_session_policy soup_hsts_enforcer_set_session_policy;

// soup.HSTSEnforcerDB

alias c_soup_hsts_enforcer_db_get_type soup_hsts_enforcer_db_get_type;
alias c_soup_hsts_enforcer_db_new soup_hsts_enforcer_db_new;

// soup.HSTSPolicy

alias c_soup_hsts_policy_get_type soup_hsts_policy_get_type;
alias c_soup_hsts_policy_new soup_hsts_policy_new;
alias c_soup_hsts_policy_new_from_response soup_hsts_policy_new_from_response;
alias c_soup_hsts_policy_new_full soup_hsts_policy_new_full;
alias c_soup_hsts_policy_new_session_policy soup_hsts_policy_new_session_policy;
alias c_soup_hsts_policy_copy soup_hsts_policy_copy;
alias c_soup_hsts_policy_equal soup_hsts_policy_equal;
alias c_soup_hsts_policy_free soup_hsts_policy_free;
alias c_soup_hsts_policy_get_domain soup_hsts_policy_get_domain;
alias c_soup_hsts_policy_includes_subdomains soup_hsts_policy_includes_subdomains;
alias c_soup_hsts_policy_is_expired soup_hsts_policy_is_expired;
alias c_soup_hsts_policy_is_session_policy soup_hsts_policy_is_session_policy;

// soup.Logger

alias c_soup_logger_get_type soup_logger_get_type;
alias c_soup_logger_new soup_logger_new;
alias c_soup_logger_attach soup_logger_attach;
alias c_soup_logger_detach soup_logger_detach;
alias c_soup_logger_set_printer soup_logger_set_printer;
alias c_soup_logger_set_request_filter soup_logger_set_request_filter;
alias c_soup_logger_set_response_filter soup_logger_set_response_filter;

// soup.Message

alias c_soup_message_get_type soup_message_get_type;
alias c_soup_message_new soup_message_new;
alias c_soup_message_new_from_uri soup_message_new_from_uri;
alias c_soup_message_add_header_handler soup_message_add_header_handler;
alias c_soup_message_add_status_code_handler soup_message_add_status_code_handler;
alias c_soup_message_content_sniffed soup_message_content_sniffed;
alias c_soup_message_disable_feature soup_message_disable_feature;
alias c_soup_message_finished soup_message_finished;
alias c_soup_message_get_address soup_message_get_address;
alias c_soup_message_get_first_party soup_message_get_first_party;
alias c_soup_message_get_flags soup_message_get_flags;
alias c_soup_message_get_http_version soup_message_get_http_version;
alias c_soup_message_get_https_status soup_message_get_https_status;
alias c_soup_message_get_is_top_level_navigation soup_message_get_is_top_level_navigation;
alias c_soup_message_get_priority soup_message_get_priority;
alias c_soup_message_get_site_for_cookies soup_message_get_site_for_cookies;
alias c_soup_message_get_soup_request soup_message_get_soup_request;
alias c_soup_message_get_uri soup_message_get_uri;
alias c_soup_message_got_body soup_message_got_body;
alias c_soup_message_got_chunk soup_message_got_chunk;
alias c_soup_message_got_headers soup_message_got_headers;
alias c_soup_message_got_informational soup_message_got_informational;
alias c_soup_message_is_feature_disabled soup_message_is_feature_disabled;
alias c_soup_message_is_keepalive soup_message_is_keepalive;
alias c_soup_message_restarted soup_message_restarted;
alias c_soup_message_set_chunk_allocator soup_message_set_chunk_allocator;
alias c_soup_message_set_first_party soup_message_set_first_party;
alias c_soup_message_set_flags soup_message_set_flags;
alias c_soup_message_set_http_version soup_message_set_http_version;
alias c_soup_message_set_is_top_level_navigation soup_message_set_is_top_level_navigation;
alias c_soup_message_set_priority soup_message_set_priority;
alias c_soup_message_set_redirect soup_message_set_redirect;
alias c_soup_message_set_request soup_message_set_request;
alias c_soup_message_set_response soup_message_set_response;
alias c_soup_message_set_site_for_cookies soup_message_set_site_for_cookies;
alias c_soup_message_set_status soup_message_set_status;
alias c_soup_message_set_status_full soup_message_set_status_full;
alias c_soup_message_set_uri soup_message_set_uri;
alias c_soup_message_starting soup_message_starting;
alias c_soup_message_wrote_body soup_message_wrote_body;
alias c_soup_message_wrote_body_data soup_message_wrote_body_data;
alias c_soup_message_wrote_chunk soup_message_wrote_chunk;
alias c_soup_message_wrote_headers soup_message_wrote_headers;
alias c_soup_message_wrote_informational soup_message_wrote_informational;

// soup.MessageBody

alias c_soup_message_body_get_type soup_message_body_get_type;
alias c_soup_message_body_new soup_message_body_new;
alias c_soup_message_body_append soup_message_body_append;
alias c_soup_message_body_append_buffer soup_message_body_append_buffer;
alias c_soup_message_body_append_take soup_message_body_append_take;
alias c_soup_message_body_complete soup_message_body_complete;
alias c_soup_message_body_flatten soup_message_body_flatten;
alias c_soup_message_body_free soup_message_body_free;
alias c_soup_message_body_get_accumulate soup_message_body_get_accumulate;
alias c_soup_message_body_get_chunk soup_message_body_get_chunk;
alias c_soup_message_body_got_chunk soup_message_body_got_chunk;
alias c_soup_message_body_set_accumulate soup_message_body_set_accumulate;
alias c_soup_message_body_truncate soup_message_body_truncate;
alias c_soup_message_body_wrote_chunk soup_message_body_wrote_chunk;

// soup.MessageHeaders

alias c_soup_message_headers_get_type soup_message_headers_get_type;
alias c_soup_message_headers_new soup_message_headers_new;
alias c_soup_message_headers_append soup_message_headers_append;
alias c_soup_message_headers_clean_connection_headers soup_message_headers_clean_connection_headers;
alias c_soup_message_headers_clear soup_message_headers_clear;
alias c_soup_message_headers_foreach soup_message_headers_foreach;
alias c_soup_message_headers_free soup_message_headers_free;
alias c_soup_message_headers_free_ranges soup_message_headers_free_ranges;
alias c_soup_message_headers_get soup_message_headers_get;
alias c_soup_message_headers_get_content_disposition soup_message_headers_get_content_disposition;
alias c_soup_message_headers_get_content_length soup_message_headers_get_content_length;
alias c_soup_message_headers_get_content_range soup_message_headers_get_content_range;
alias c_soup_message_headers_get_content_type soup_message_headers_get_content_type;
alias c_soup_message_headers_get_encoding soup_message_headers_get_encoding;
alias c_soup_message_headers_get_expectations soup_message_headers_get_expectations;
alias c_soup_message_headers_get_headers_type soup_message_headers_get_headers_type;
alias c_soup_message_headers_get_list soup_message_headers_get_list;
alias c_soup_message_headers_get_one soup_message_headers_get_one;
alias c_soup_message_headers_get_ranges soup_message_headers_get_ranges;
alias c_soup_message_headers_header_contains soup_message_headers_header_contains;
alias c_soup_message_headers_header_equals soup_message_headers_header_equals;
alias c_soup_message_headers_remove soup_message_headers_remove;
alias c_soup_message_headers_replace soup_message_headers_replace;
alias c_soup_message_headers_set_content_disposition soup_message_headers_set_content_disposition;
alias c_soup_message_headers_set_content_length soup_message_headers_set_content_length;
alias c_soup_message_headers_set_content_range soup_message_headers_set_content_range;
alias c_soup_message_headers_set_content_type soup_message_headers_set_content_type;
alias c_soup_message_headers_set_encoding soup_message_headers_set_encoding;
alias c_soup_message_headers_set_expectations soup_message_headers_set_expectations;
alias c_soup_message_headers_set_range soup_message_headers_set_range;
alias c_soup_message_headers_set_ranges soup_message_headers_set_ranges;

// soup.MessageHeadersIter

alias c_soup_message_headers_iter_next soup_message_headers_iter_next;
alias c_soup_message_headers_iter_init soup_message_headers_iter_init;

// soup.Multipart

alias c_soup_multipart_get_type soup_multipart_get_type;
alias c_soup_multipart_new soup_multipart_new;
alias c_soup_multipart_new_from_message soup_multipart_new_from_message;
alias c_soup_multipart_append_form_file soup_multipart_append_form_file;
alias c_soup_multipart_append_form_string soup_multipart_append_form_string;
alias c_soup_multipart_append_part soup_multipart_append_part;
alias c_soup_multipart_free soup_multipart_free;
alias c_soup_multipart_get_length soup_multipart_get_length;
alias c_soup_multipart_get_part soup_multipart_get_part;
alias c_soup_multipart_to_message soup_multipart_to_message;

// soup.MultipartInputStream

alias c_soup_multipart_input_stream_get_type soup_multipart_input_stream_get_type;
alias c_soup_multipart_input_stream_new soup_multipart_input_stream_new;
alias c_soup_multipart_input_stream_get_headers soup_multipart_input_stream_get_headers;
alias c_soup_multipart_input_stream_next_part soup_multipart_input_stream_next_part;
alias c_soup_multipart_input_stream_next_part_async soup_multipart_input_stream_next_part_async;
alias c_soup_multipart_input_stream_next_part_finish soup_multipart_input_stream_next_part_finish;

// soup.PasswordManager

alias c_soup_password_manager_get_type soup_password_manager_get_type;
alias c_soup_password_manager_get_passwords_async soup_password_manager_get_passwords_async;
alias c_soup_password_manager_get_passwords_sync soup_password_manager_get_passwords_sync;

// soup.ProxyResolver

alias c_soup_proxy_resolver_get_type soup_proxy_resolver_get_type;
alias c_soup_proxy_resolver_get_proxy_async soup_proxy_resolver_get_proxy_async;
alias c_soup_proxy_resolver_get_proxy_sync soup_proxy_resolver_get_proxy_sync;

// soup.ProxyResolverDefault

alias c_soup_proxy_resolver_default_get_type soup_proxy_resolver_default_get_type;

// soup.ProxyURIResolver

alias c_soup_proxy_uri_resolver_get_type soup_proxy_uri_resolver_get_type;
alias c_soup_proxy_uri_resolver_get_proxy_uri_async soup_proxy_uri_resolver_get_proxy_uri_async;
alias c_soup_proxy_uri_resolver_get_proxy_uri_sync soup_proxy_uri_resolver_get_proxy_uri_sync;

// soup.Request

alias c_soup_request_get_type soup_request_get_type;
alias c_soup_request_get_content_length soup_request_get_content_length;
alias c_soup_request_get_content_type soup_request_get_content_type;
alias c_soup_request_get_session soup_request_get_session;
alias c_soup_request_get_uri soup_request_get_uri;
alias c_soup_request_send soup_request_send;
alias c_soup_request_send_async soup_request_send_async;
alias c_soup_request_send_finish soup_request_send_finish;

// soup.RequestData

alias c_soup_request_data_get_type soup_request_data_get_type;

// soup.RequestFile

alias c_soup_request_file_get_type soup_request_file_get_type;
alias c_soup_request_file_get_file soup_request_file_get_file;

// soup.RequestHTTP

alias c_soup_request_http_get_type soup_request_http_get_type;
alias c_soup_request_http_get_message soup_request_http_get_message;

// soup.Requester

alias c_soup_requester_get_type soup_requester_get_type;
alias c_soup_requester_new soup_requester_new;
alias c_soup_requester_request soup_requester_request;
alias c_soup_requester_request_uri soup_requester_request_uri;

// soup.Server

alias c_soup_server_get_type soup_server_get_type;
alias c_soup_server_new soup_server_new;
alias c_soup_server_accept_iostream soup_server_accept_iostream;
alias c_soup_server_add_auth_domain soup_server_add_auth_domain;
alias c_soup_server_add_early_handler soup_server_add_early_handler;
alias c_soup_server_add_handler soup_server_add_handler;
alias c_soup_server_add_websocket_extension soup_server_add_websocket_extension;
alias c_soup_server_add_websocket_handler soup_server_add_websocket_handler;
alias c_soup_server_disconnect soup_server_disconnect;
alias c_soup_server_get_async_context soup_server_get_async_context;
alias c_soup_server_get_listener soup_server_get_listener;
alias c_soup_server_get_listeners soup_server_get_listeners;
alias c_soup_server_get_port soup_server_get_port;
alias c_soup_server_get_uris soup_server_get_uris;
alias c_soup_server_is_https soup_server_is_https;
alias c_soup_server_listen soup_server_listen;
alias c_soup_server_listen_all soup_server_listen_all;
alias c_soup_server_listen_fd soup_server_listen_fd;
alias c_soup_server_listen_local soup_server_listen_local;
alias c_soup_server_listen_socket soup_server_listen_socket;
alias c_soup_server_pause_message soup_server_pause_message;
alias c_soup_server_quit soup_server_quit;
alias c_soup_server_remove_auth_domain soup_server_remove_auth_domain;
alias c_soup_server_remove_handler soup_server_remove_handler;
alias c_soup_server_remove_websocket_extension soup_server_remove_websocket_extension;
alias c_soup_server_run soup_server_run;
alias c_soup_server_run_async soup_server_run_async;
alias c_soup_server_set_ssl_cert_file soup_server_set_ssl_cert_file;
alias c_soup_server_unpause_message soup_server_unpause_message;

// soup.Session

alias c_soup_session_get_type soup_session_get_type;
alias c_soup_session_new soup_session_new;
alias c_soup_session_new_with_options soup_session_new_with_options;
alias c_soup_session_abort soup_session_abort;
alias c_soup_session_add_feature soup_session_add_feature;
alias c_soup_session_add_feature_by_type soup_session_add_feature_by_type;
alias c_soup_session_cancel_message soup_session_cancel_message;
alias c_soup_session_connect_async soup_session_connect_async;
alias c_soup_session_connect_finish soup_session_connect_finish;
alias c_soup_session_get_async_context soup_session_get_async_context;
alias c_soup_session_get_feature soup_session_get_feature;
alias c_soup_session_get_feature_for_message soup_session_get_feature_for_message;
alias c_soup_session_get_features soup_session_get_features;
alias c_soup_session_has_feature soup_session_has_feature;
alias c_soup_session_pause_message soup_session_pause_message;
alias c_soup_session_prefetch_dns soup_session_prefetch_dns;
alias c_soup_session_prepare_for_uri soup_session_prepare_for_uri;
alias c_soup_session_queue_message soup_session_queue_message;
alias c_soup_session_redirect_message soup_session_redirect_message;
alias c_soup_session_remove_feature soup_session_remove_feature;
alias c_soup_session_remove_feature_by_type soup_session_remove_feature_by_type;
alias c_soup_session_request soup_session_request;
alias c_soup_session_request_http soup_session_request_http;
alias c_soup_session_request_http_uri soup_session_request_http_uri;
alias c_soup_session_request_uri soup_session_request_uri;
alias c_soup_session_requeue_message soup_session_requeue_message;
alias c_soup_session_send soup_session_send;
alias c_soup_session_send_async soup_session_send_async;
alias c_soup_session_send_finish soup_session_send_finish;
alias c_soup_session_send_message soup_session_send_message;
alias c_soup_session_steal_connection soup_session_steal_connection;
alias c_soup_session_unpause_message soup_session_unpause_message;
alias c_soup_session_websocket_connect_async soup_session_websocket_connect_async;
alias c_soup_session_websocket_connect_finish soup_session_websocket_connect_finish;
alias c_soup_session_would_redirect soup_session_would_redirect;

// soup.SessionAsync

alias c_soup_session_async_get_type soup_session_async_get_type;
alias c_soup_session_async_new soup_session_async_new;
alias c_soup_session_async_new_with_options soup_session_async_new_with_options;

// soup.SessionFeature

alias c_soup_session_feature_get_type soup_session_feature_get_type;
alias c_soup_session_feature_add_feature soup_session_feature_add_feature;
alias c_soup_session_feature_attach soup_session_feature_attach;
alias c_soup_session_feature_detach soup_session_feature_detach;
alias c_soup_session_feature_has_feature soup_session_feature_has_feature;
alias c_soup_session_feature_remove_feature soup_session_feature_remove_feature;

// soup.SessionSync

alias c_soup_session_sync_get_type soup_session_sync_get_type;
alias c_soup_session_sync_new soup_session_sync_new;
alias c_soup_session_sync_new_with_options soup_session_sync_new_with_options;

// soup.SSocket

alias c_soup_socket_get_type soup_socket_get_type;
alias c_soup_socket_new soup_socket_new;
alias c_soup_socket_connect_async soup_socket_connect_async;
alias c_soup_socket_connect_sync soup_socket_connect_sync;
alias c_soup_socket_disconnect soup_socket_disconnect;
alias c_soup_socket_get_fd soup_socket_get_fd;
alias c_soup_socket_get_local_address soup_socket_get_local_address;
alias c_soup_socket_get_remote_address soup_socket_get_remote_address;
alias c_soup_socket_is_connected soup_socket_is_connected;
alias c_soup_socket_is_ssl soup_socket_is_ssl;
alias c_soup_socket_listen soup_socket_listen;
alias c_soup_socket_read soup_socket_read;
alias c_soup_socket_read_until soup_socket_read_until;
alias c_soup_socket_start_proxy_ssl soup_socket_start_proxy_ssl;
alias c_soup_socket_start_ssl soup_socket_start_ssl;
alias c_soup_socket_write soup_socket_write;

// soup.URI

alias c_soup_uri_get_type soup_uri_get_type;
alias c_soup_uri_new soup_uri_new;
alias c_soup_uri_new_with_base soup_uri_new_with_base;
alias c_soup_uri_copy soup_uri_copy;
alias c_soup_uri_copy_host soup_uri_copy_host;
alias c_soup_uri_equal soup_uri_equal;
alias c_soup_uri_free soup_uri_free;
alias c_soup_uri_get_fragment soup_uri_get_fragment;
alias c_soup_uri_get_host soup_uri_get_host;
alias c_soup_uri_get_password soup_uri_get_password;
alias c_soup_uri_get_path soup_uri_get_path;
alias c_soup_uri_get_port soup_uri_get_port;
alias c_soup_uri_get_query soup_uri_get_query;
alias c_soup_uri_get_scheme soup_uri_get_scheme;
alias c_soup_uri_get_user soup_uri_get_user;
alias c_soup_uri_host_equal soup_uri_host_equal;
alias c_soup_uri_host_hash soup_uri_host_hash;
alias c_soup_uri_set_fragment soup_uri_set_fragment;
alias c_soup_uri_set_host soup_uri_set_host;
alias c_soup_uri_set_password soup_uri_set_password;
alias c_soup_uri_set_path soup_uri_set_path;
alias c_soup_uri_set_port soup_uri_set_port;
alias c_soup_uri_set_query soup_uri_set_query;
alias c_soup_uri_set_query_from_fields soup_uri_set_query_from_fields;
alias c_soup_uri_set_query_from_form soup_uri_set_query_from_form;
alias c_soup_uri_set_scheme soup_uri_set_scheme;
alias c_soup_uri_set_user soup_uri_set_user;
alias c_soup_uri_to_string soup_uri_to_string;
alias c_soup_uri_uses_default_port soup_uri_uses_default_port;
alias c_soup_uri_decode soup_uri_decode;
alias c_soup_uri_encode soup_uri_encode;
alias c_soup_uri_normalize soup_uri_normalize;

// soup.WebsocketConnection

alias c_soup_websocket_connection_get_type soup_websocket_connection_get_type;
alias c_soup_websocket_connection_new soup_websocket_connection_new;
alias c_soup_websocket_connection_new_with_extensions soup_websocket_connection_new_with_extensions;
alias c_soup_websocket_connection_close soup_websocket_connection_close;
alias c_soup_websocket_connection_get_close_code soup_websocket_connection_get_close_code;
alias c_soup_websocket_connection_get_close_data soup_websocket_connection_get_close_data;
alias c_soup_websocket_connection_get_connection_type soup_websocket_connection_get_connection_type;
alias c_soup_websocket_connection_get_extensions soup_websocket_connection_get_extensions;
alias c_soup_websocket_connection_get_io_stream soup_websocket_connection_get_io_stream;
alias c_soup_websocket_connection_get_keepalive_interval soup_websocket_connection_get_keepalive_interval;
alias c_soup_websocket_connection_get_max_incoming_payload_size soup_websocket_connection_get_max_incoming_payload_size;
alias c_soup_websocket_connection_get_origin soup_websocket_connection_get_origin;
alias c_soup_websocket_connection_get_protocol soup_websocket_connection_get_protocol;
alias c_soup_websocket_connection_get_state soup_websocket_connection_get_state;
alias c_soup_websocket_connection_get_uri soup_websocket_connection_get_uri;
alias c_soup_websocket_connection_send_binary soup_websocket_connection_send_binary;
alias c_soup_websocket_connection_send_message soup_websocket_connection_send_message;
alias c_soup_websocket_connection_send_text soup_websocket_connection_send_text;
alias c_soup_websocket_connection_set_keepalive_interval soup_websocket_connection_set_keepalive_interval;
alias c_soup_websocket_connection_set_max_incoming_payload_size soup_websocket_connection_set_max_incoming_payload_size;

// soup.WebsocketExtension

alias c_soup_websocket_extension_get_type soup_websocket_extension_get_type;
alias c_soup_websocket_extension_configure soup_websocket_extension_configure;
alias c_soup_websocket_extension_get_request_params soup_websocket_extension_get_request_params;
alias c_soup_websocket_extension_get_response_params soup_websocket_extension_get_response_params;
alias c_soup_websocket_extension_process_incoming_message soup_websocket_extension_process_incoming_message;
alias c_soup_websocket_extension_process_outgoing_message soup_websocket_extension_process_outgoing_message;

// soup.WebsocketExtensionDeflate

alias c_soup_websocket_extension_deflate_get_type soup_websocket_extension_deflate_get_type;

// soup.WebsocketExtensionManager

alias c_soup_websocket_extension_manager_get_type soup_websocket_extension_manager_get_type;

// soup.XMLRPCParams

alias c_soup_xmlrpc_params_free soup_xmlrpc_params_free;
alias c_soup_xmlrpc_params_parse soup_xmlrpc_params_parse;
