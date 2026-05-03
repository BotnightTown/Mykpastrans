--
-- PostgreSQL database dump
--

\restrict aqQNKT8ahunInee8U9BZ12qow2oSgwk40AARiJQuUtLqXMyOac7rMygQAWfhena

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO strapi;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO strapi;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNER TO strapi;

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: article_news; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_news (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    excerpt character varying(255),
    slug character varying(255),
    time_published_at timestamp(6) without time zone,
    content jsonb
);


ALTER TABLE public.article_news OWNER TO strapi;

--
-- Name: article_news_category_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_news_category_lnk (
    id integer NOT NULL,
    article_new_id integer,
    category_id integer
);


ALTER TABLE public.article_news_category_lnk OWNER TO strapi;

--
-- Name: article_news_category_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_news_category_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_news_category_lnk_id_seq OWNER TO strapi;

--
-- Name: article_news_category_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_news_category_lnk_id_seq OWNED BY public.article_news_category_lnk.id;


--
-- Name: article_news_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_news_id_seq OWNER TO strapi;

--
-- Name: article_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_news_id_seq OWNED BY public.article_news.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.categories OWNER TO strapi;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO strapi;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: components_schedule_bus_directions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_schedule_bus_directions (
    id integer NOT NULL,
    endpoint_name character varying(255),
    is_weekend boolean
);


ALTER TABLE public.components_schedule_bus_directions OWNER TO strapi;

--
-- Name: components_schedule_bus_directions_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_schedule_bus_directions_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_schedule_bus_directions_cmps OWNER TO strapi;

--
-- Name: components_schedule_bus_directions_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_schedule_bus_directions_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_schedule_bus_directions_cmps_id_seq OWNER TO strapi;

--
-- Name: components_schedule_bus_directions_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_schedule_bus_directions_cmps_id_seq OWNED BY public.components_schedule_bus_directions_cmps.id;


--
-- Name: components_schedule_bus_directions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_schedule_bus_directions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_schedule_bus_directions_id_seq OWNER TO strapi;

--
-- Name: components_schedule_bus_directions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_schedule_bus_directions_id_seq OWNED BY public.components_schedule_bus_directions.id;


--
-- Name: components_schedule_bus_trips; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_schedule_bus_trips (
    id integer NOT NULL,
    "time" character varying(255),
    note character varying(255),
    is_short boolean
);


ALTER TABLE public.components_schedule_bus_trips OWNER TO strapi;

--
-- Name: components_schedule_bus_trips_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_schedule_bus_trips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_schedule_bus_trips_id_seq OWNER TO strapi;

--
-- Name: components_schedule_bus_trips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_schedule_bus_trips_id_seq OWNED BY public.components_schedule_bus_trips.id;


--
-- Name: contact_messages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.contact_messages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    email character varying(255),
    subject character varying(255),
    message text,
    status_field character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    phone_number character varying(255)
);


ALTER TABLE public.contact_messages OWNER TO strapi;

--
-- Name: contact_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.contact_messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contact_messages_id_seq OWNER TO strapi;

--
-- Name: contact_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.contact_messages_id_seq OWNED BY public.contact_messages.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text text,
    caption text,
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url text,
    preview_url text,
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    focal_point jsonb
);


ALTER TABLE public.files OWNER TO strapi;

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO strapi;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_lnk_id_seq OWNER TO strapi;

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO strapi;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_mph_id_seq OWNER TO strapi;

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: route_stops; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.route_stops (
    id integer NOT NULL,
    document_id character varying(255),
    "order" integer,
    direction character varying(255),
    on_demand boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.route_stops OWNER TO strapi;

--
-- Name: route_stops_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.route_stops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.route_stops_id_seq OWNER TO strapi;

--
-- Name: route_stops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.route_stops_id_seq OWNED BY public.route_stops.id;


--
-- Name: route_stops_route_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.route_stops_route_lnk (
    id integer NOT NULL,
    route_stop_id integer,
    route_id integer,
    route_stop_ord double precision
);


ALTER TABLE public.route_stops_route_lnk OWNER TO strapi;

--
-- Name: route_stops_route_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.route_stops_route_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.route_stops_route_lnk_id_seq OWNER TO strapi;

--
-- Name: route_stops_route_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.route_stops_route_lnk_id_seq OWNED BY public.route_stops_route_lnk.id;


--
-- Name: route_stops_stop_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.route_stops_stop_lnk (
    id integer NOT NULL,
    route_stop_id integer,
    stop_id integer,
    route_stop_ord double precision
);


ALTER TABLE public.route_stops_stop_lnk OWNER TO strapi;

--
-- Name: route_stops_stop_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.route_stops_stop_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.route_stops_stop_lnk_id_seq OWNER TO strapi;

--
-- Name: route_stops_stop_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.route_stops_stop_lnk_id_seq OWNED BY public.route_stops_stop_lnk.id;


--
-- Name: routes; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.routes (
    id integer NOT NULL,
    document_id character varying(255),
    number character varying(255),
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    interval_time character varying(255)
);


ALTER TABLE public.routes OWNER TO strapi;

--
-- Name: routes_cmps; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.routes_cmps (
    id integer NOT NULL,
    entity_id integer,
    cmp_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.routes_cmps OWNER TO strapi;

--
-- Name: routes_cmps_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.routes_cmps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.routes_cmps_id_seq OWNER TO strapi;

--
-- Name: routes_cmps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.routes_cmps_id_seq OWNED BY public.routes_cmps.id;


--
-- Name: routes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.routes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.routes_id_seq OWNER TO strapi;

--
-- Name: routes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.routes_id_seq OWNED BY public.routes.id;


--
-- Name: stops; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.stops (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    note character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.stops OWNER TO strapi;

--
-- Name: stops_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.stops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stops_id_seq OWNER TO strapi;

--
-- Name: stops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.stops_id_seq OWNED BY public.stops.id;


--
-- Name: strapi_ai_localization_jobs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_ai_localization_jobs (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255) NOT NULL,
    source_locale character varying(255) NOT NULL,
    target_locales jsonb NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_localization_jobs OWNER TO strapi;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_ai_localization_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNER TO strapi;

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNED BY public.strapi_ai_localization_jobs.id;


--
-- Name: strapi_ai_metadata_jobs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_ai_metadata_jobs (
    id integer NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    completed_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_metadata_jobs OWNER TO strapi;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_ai_metadata_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNER TO strapi;

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNED BY public.strapi_ai_metadata_jobs.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO strapi;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_history_versions_id_seq OWNER TO strapi;

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO strapi;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO strapi;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_sessions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_sessions (
    id integer NOT NULL,
    document_id character varying(255),
    user_id character varying(255),
    session_id character varying(255),
    child_id character varying(255),
    device_id character varying(255),
    origin character varying(255),
    expires_at timestamp(6) without time zone,
    absolute_expires_at timestamp(6) without time zone,
    status character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_sessions OWNER TO strapi;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_sessions_id_seq OWNER TO strapi;

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_sessions_id_seq OWNED BY public.strapi_sessions.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO strapi;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO strapi;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO strapi;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO strapi;

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO strapi;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNER TO strapi;

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO strapi;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNER TO strapi;

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO strapi;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNER TO strapi;

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: vacancies; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.vacancies (
    id integer NOT NULL,
    document_id character varying(255),
    title character varying(255),
    description jsonb,
    time_published_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    contact_number character varying(255),
    slug character varying(255)
);


ALTER TABLE public.vacancies OWNER TO strapi;

--
-- Name: vacancies_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.vacancies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vacancies_id_seq OWNER TO strapi;

--
-- Name: vacancies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.vacancies_id_seq OWNED BY public.vacancies.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: article_news id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_news ALTER COLUMN id SET DEFAULT nextval('public.article_news_id_seq'::regclass);


--
-- Name: article_news_category_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_news_category_lnk ALTER COLUMN id SET DEFAULT nextval('public.article_news_category_lnk_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: components_schedule_bus_directions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_schedule_bus_directions ALTER COLUMN id SET DEFAULT nextval('public.components_schedule_bus_directions_id_seq'::regclass);


--
-- Name: components_schedule_bus_directions_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_schedule_bus_directions_cmps ALTER COLUMN id SET DEFAULT nextval('public.components_schedule_bus_directions_cmps_id_seq'::regclass);


--
-- Name: components_schedule_bus_trips id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_schedule_bus_trips ALTER COLUMN id SET DEFAULT nextval('public.components_schedule_bus_trips_id_seq'::regclass);


--
-- Name: contact_messages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_messages ALTER COLUMN id SET DEFAULT nextval('public.contact_messages_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: route_stops id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops ALTER COLUMN id SET DEFAULT nextval('public.route_stops_id_seq'::regclass);


--
-- Name: route_stops_route_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops_route_lnk ALTER COLUMN id SET DEFAULT nextval('public.route_stops_route_lnk_id_seq'::regclass);


--
-- Name: route_stops_stop_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops_stop_lnk ALTER COLUMN id SET DEFAULT nextval('public.route_stops_stop_lnk_id_seq'::regclass);


--
-- Name: routes id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.routes ALTER COLUMN id SET DEFAULT nextval('public.routes_id_seq'::regclass);


--
-- Name: routes_cmps id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.routes_cmps ALTER COLUMN id SET DEFAULT nextval('public.routes_cmps_id_seq'::regclass);


--
-- Name: stops id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.stops ALTER COLUMN id SET DEFAULT nextval('public.stops_id_seq'::regclass);


--
-- Name: strapi_ai_localization_jobs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_localization_jobs_id_seq'::regclass);


--
-- Name: strapi_ai_metadata_jobs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_metadata_jobs_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_sessions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions ALTER COLUMN id SET DEFAULT nextval('public.strapi_sessions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Name: vacancies id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.vacancies ALTER COLUMN id SET DEFAULT nextval('public.vacancies_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
155	zfy9s24lm2bt6bgnh9zr2qvq	plugin::content-manager.explorer.delete	{}	api::contact-message.contact-message	{}	[]	2026-03-11 10:03:31.513	2026-03-11 10:03:31.513	2026-03-11 10:03:31.514	\N	\N	\N
156	pflcv7szruaa02l3xqoza3r1	plugin::content-manager.explorer.publish	{}	api::contact-message.contact-message	{}	[]	2026-03-11 10:03:31.519	2026-03-11 10:03:31.519	2026-03-11 10:03:31.519	\N	\N	\N
26	o17bt19b4cl1uycgql8aslht	plugin::upload.read	{}	\N	{}	[]	2026-01-26 14:36:48.375	2026-01-26 14:36:48.375	2026-01-26 14:36:48.375	\N	\N	\N
27	xwhc21y8d4v4tpf2w701vlzd	plugin::upload.configure-view	{}	\N	{}	[]	2026-01-26 14:36:48.379	2026-01-26 14:36:48.379	2026-01-26 14:36:48.379	\N	\N	\N
28	toqcvxby4yfh9momav63uhit	plugin::upload.assets.create	{}	\N	{}	[]	2026-01-26 14:36:48.384	2026-01-26 14:36:48.384	2026-01-26 14:36:48.384	\N	\N	\N
29	j7uge2yyx52nw9nwkkhz947l	plugin::upload.assets.update	{}	\N	{}	[]	2026-01-26 14:36:48.389	2026-01-26 14:36:48.389	2026-01-26 14:36:48.389	\N	\N	\N
30	d4lpsjch0e92obqeym7pbbzr	plugin::upload.assets.download	{}	\N	{}	[]	2026-01-26 14:36:48.394	2026-01-26 14:36:48.394	2026-01-26 14:36:48.394	\N	\N	\N
31	j9xv396075lghnklu08ypdby	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-01-26 14:36:48.399	2026-01-26 14:36:48.399	2026-01-26 14:36:48.399	\N	\N	\N
157	vy86a5ny5wve56fg7hcxl7eu	plugin::content-manager.explorer.create	{}	api::contact-message.contact-message	{"fields": ["name", "email", "subject", "message", "status_field"]}	[]	2026-03-11 10:06:53.835	2026-03-11 10:35:51.761	2026-03-11 10:06:53.836	\N	\N	\N
170	uw6n9y5tq3rlj2egtvt2kwd6	plugin::content-manager.explorer.create	{}	api::contact-message.contact-message	{"fields": ["name", "phone_number", "email", "subject", "message", "status_field"]}	[]	2026-03-11 10:36:18.118	2026-03-11 10:36:18.118	2026-03-11 10:36:18.119	\N	\N	\N
171	o1uycg8zi0f13g34m5wf3ich	plugin::content-manager.explorer.read	{}	api::contact-message.contact-message	{"fields": ["name", "phone_number", "email", "subject", "message", "status_field"]}	[]	2026-03-11 10:36:18.125	2026-03-11 10:36:18.125	2026-03-11 10:36:18.126	\N	\N	\N
172	uqxa4v51w1rvskqs3ipsdzmk	plugin::content-manager.explorer.update	{}	api::contact-message.contact-message	{"fields": ["name", "phone_number", "email", "subject", "message", "status_field"]}	[]	2026-03-11 10:36:18.13	2026-03-11 10:36:18.13	2026-03-11 10:36:18.13	\N	\N	\N
52	yjbrp2880csr5g8jr4ghpgn7	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2026-01-26 14:36:48.504	2026-01-26 14:36:48.504	2026-01-26 14:36:48.504	\N	\N	\N
53	vokcecxlwl0wzvwuzi3o41to	plugin::upload.configure-view	{}	\N	{}	[]	2026-01-26 14:36:48.509	2026-01-26 14:36:48.509	2026-01-26 14:36:48.509	\N	\N	\N
54	ekws6tav9iawugymfjgjkdzi	plugin::upload.assets.create	{}	\N	{}	[]	2026-01-26 14:36:48.513	2026-01-26 14:36:48.513	2026-01-26 14:36:48.513	\N	\N	\N
55	bek0a1pxke68bh7czuyrhyi3	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2026-01-26 14:36:48.518	2026-01-26 14:36:48.518	2026-01-26 14:36:48.518	\N	\N	\N
56	pozgvuazk1hmek7t5zjwzsat	plugin::upload.assets.download	{}	\N	{}	[]	2026-01-26 14:36:48.523	2026-01-26 14:36:48.523	2026-01-26 14:36:48.523	\N	\N	\N
57	wbzqpi0cdfbqyirz6fn8ggvq	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-01-26 14:36:48.528	2026-01-26 14:36:48.528	2026-01-26 14:36:48.528	\N	\N	\N
58	agwhzka4l4xtu9lyz56u5iii	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-01-26 14:36:48.558	2026-01-26 14:36:48.558	2026-01-26 14:36:48.558	\N	\N	\N
64	styawb5c4ysjetm24x13w885	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-01-26 14:36:48.589	2026-01-26 14:36:48.589	2026-01-26 14:36:48.589	\N	\N	\N
70	nf4ywvgweiqdlqucdad19y8h	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-01-26 14:36:48.617	2026-01-26 14:36:48.617	2026-01-26 14:36:48.617	\N	\N	\N
158	o3vbiauoh0gw08hl1b2d8etm	plugin::content-manager.explorer.read	{}	api::contact-message.contact-message	{"fields": ["name", "email", "subject", "message", "status_field"]}	[]	2026-03-11 10:06:57.643	2026-03-11 10:35:51.761	2026-03-11 10:06:57.643	\N	\N	\N
76	r16q2bniavh97g3sog8crcit	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-01-26 14:36:48.644	2026-01-26 14:36:48.644	2026-01-26 14:36:48.644	\N	\N	\N
191	lj5z2ctsd3yotykuh678on2g	plugin::content-manager.explorer.delete	{}	api::route.route	{}	[]	2026-03-23 08:03:48.169	2026-03-23 08:03:48.169	2026-03-23 08:03:48.169	\N	\N	\N
192	x8biiva3g0joxick12di17ay	plugin::content-manager.explorer.publish	{}	api::route.route	{}	[]	2026-03-23 08:03:48.173	2026-03-23 08:03:48.173	2026-03-23 08:03:48.173	\N	\N	\N
82	nmd3w6b8ph8dtpq2kc5i576z	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-01-26 14:36:48.674	2026-01-26 14:36:48.674	2026-01-26 14:36:48.674	\N	\N	\N
97	gjvz6gsk5asc0k2x0orpq2ie	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2026-01-26 14:36:48.744	2026-01-26 14:36:48.744	2026-01-26 14:36:48.744	\N	\N	\N
98	bj3qh1bwrxi412fgizztm0nn	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2026-01-26 14:36:48.749	2026-01-26 14:36:48.749	2026-01-26 14:36:48.749	\N	\N	\N
99	bzu1rlhfvaaxk16yiit4wegu	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2026-01-26 14:36:48.753	2026-01-26 14:36:48.753	2026-01-26 14:36:48.754	\N	\N	\N
100	qvufrui3jivgk4utcm5kjjoz	plugin::content-type-builder.read	{}	\N	{}	[]	2026-01-26 14:36:48.759	2026-01-26 14:36:48.759	2026-01-26 14:36:48.76	\N	\N	\N
101	riqxctmp9ztzbxp612vjrnmr	plugin::email.settings.read	{}	\N	{}	[]	2026-01-26 14:36:48.764	2026-01-26 14:36:48.764	2026-01-26 14:36:48.764	\N	\N	\N
102	d8y5w4wtihyj6u7k3wrv1oo2	plugin::upload.read	{}	\N	{}	[]	2026-01-26 14:36:48.769	2026-01-26 14:36:48.769	2026-01-26 14:36:48.769	\N	\N	\N
103	zvi60yynnbslxlvlasecf2u7	plugin::upload.assets.create	{}	\N	{}	[]	2026-01-26 14:36:48.774	2026-01-26 14:36:48.774	2026-01-26 14:36:48.775	\N	\N	\N
104	nsk3a1t9uvul0lxycebozave	plugin::upload.assets.update	{}	\N	{}	[]	2026-01-26 14:36:48.779	2026-01-26 14:36:48.779	2026-01-26 14:36:48.779	\N	\N	\N
105	s7gf0zxrh3ycgi7815hpp6mu	plugin::upload.assets.download	{}	\N	{}	[]	2026-01-26 14:36:48.784	2026-01-26 14:36:48.784	2026-01-26 14:36:48.784	\N	\N	\N
106	eowblnfrviilqdnkbhlrpgll	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-01-26 14:36:48.788	2026-01-26 14:36:48.788	2026-01-26 14:36:48.788	\N	\N	\N
107	vi1jey1inga3olw5cg30sbvs	plugin::upload.configure-view	{}	\N	{}	[]	2026-01-26 14:36:48.793	2026-01-26 14:36:48.793	2026-01-26 14:36:48.793	\N	\N	\N
108	lzxiacw7ewxj8bmxyy936uxd	plugin::upload.settings.read	{}	\N	{}	[]	2026-01-26 14:36:48.797	2026-01-26 14:36:48.797	2026-01-26 14:36:48.797	\N	\N	\N
109	mgdvgqwn9d9vc0beisjwek6x	plugin::i18n.locale.create	{}	\N	{}	[]	2026-01-26 14:36:48.802	2026-01-26 14:36:48.802	2026-01-26 14:36:48.802	\N	\N	\N
110	qmg7a8lue23hk7gvqh0fjzph	plugin::i18n.locale.read	{}	\N	{}	[]	2026-01-26 14:36:48.806	2026-01-26 14:36:48.806	2026-01-26 14:36:48.806	\N	\N	\N
111	zhbo6u24d02vr7wwnqz656gy	plugin::i18n.locale.update	{}	\N	{}	[]	2026-01-26 14:36:48.811	2026-01-26 14:36:48.811	2026-01-26 14:36:48.811	\N	\N	\N
112	n1aymd3x9f9k0q4dzq4oz8eg	plugin::i18n.locale.delete	{}	\N	{}	[]	2026-01-26 14:36:48.816	2026-01-26 14:36:48.816	2026-01-26 14:36:48.817	\N	\N	\N
113	sp01c9v63f9xjpk7a0qth82e	plugin::users-permissions.roles.create	{}	\N	{}	[]	2026-01-26 14:36:48.821	2026-01-26 14:36:48.821	2026-01-26 14:36:48.821	\N	\N	\N
114	rte2nj0yrrojh638v0n2j7t9	plugin::users-permissions.roles.read	{}	\N	{}	[]	2026-01-26 14:36:48.825	2026-01-26 14:36:48.825	2026-01-26 14:36:48.825	\N	\N	\N
115	mfsgb2lv2j15g9nvqg6mzdab	plugin::users-permissions.roles.update	{}	\N	{}	[]	2026-01-26 14:36:48.83	2026-01-26 14:36:48.83	2026-01-26 14:36:48.83	\N	\N	\N
116	y6jjho02ugcliftwtxc46vha	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2026-01-26 14:36:48.835	2026-01-26 14:36:48.835	2026-01-26 14:36:48.835	\N	\N	\N
117	cakgdvqba8vn9brijfjwm6v5	plugin::users-permissions.providers.read	{}	\N	{}	[]	2026-01-26 14:36:48.839	2026-01-26 14:36:48.839	2026-01-26 14:36:48.839	\N	\N	\N
118	cmh8c17182bjtj43kw23uc78	plugin::users-permissions.providers.update	{}	\N	{}	[]	2026-01-26 14:36:48.843	2026-01-26 14:36:48.843	2026-01-26 14:36:48.844	\N	\N	\N
119	bo936z03lctxpjepyonmlya5	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2026-01-26 14:36:48.849	2026-01-26 14:36:48.849	2026-01-26 14:36:48.849	\N	\N	\N
120	mpfqm0fosbpk1zdd7j32je6q	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2026-01-26 14:36:48.854	2026-01-26 14:36:48.854	2026-01-26 14:36:48.854	\N	\N	\N
121	xqevxss4ufsmjp1lk0cjuz88	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2026-01-26 14:36:48.858	2026-01-26 14:36:48.858	2026-01-26 14:36:48.858	\N	\N	\N
122	l1xet5ola4wftdfttk9nt5yy	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2026-01-26 14:36:48.863	2026-01-26 14:36:48.863	2026-01-26 14:36:48.863	\N	\N	\N
125	k17b5ktv3922o9jfzt2hq5rq	admin::marketplace.read	{}	\N	{}	[]	2026-01-26 14:36:48.877	2026-01-26 14:36:48.877	2026-01-26 14:36:48.877	\N	\N	\N
126	l8j8k5b16r2mhuwvzxewdw7e	admin::webhooks.create	{}	\N	{}	[]	2026-01-26 14:36:48.881	2026-01-26 14:36:48.881	2026-01-26 14:36:48.881	\N	\N	\N
127	kn25rg7rkuitmkftxywqzprx	admin::webhooks.read	{}	\N	{}	[]	2026-01-26 14:36:48.885	2026-01-26 14:36:48.885	2026-01-26 14:36:48.885	\N	\N	\N
128	ococvore6574nxyk2wouhqrx	admin::webhooks.update	{}	\N	{}	[]	2026-01-26 14:36:48.889	2026-01-26 14:36:48.889	2026-01-26 14:36:48.889	\N	\N	\N
129	p8xmaygby3lpsz7j5ujec405	admin::webhooks.delete	{}	\N	{}	[]	2026-01-26 14:36:48.893	2026-01-26 14:36:48.893	2026-01-26 14:36:48.894	\N	\N	\N
130	s9iwfk2yphqnv0d8ch9jnbz8	admin::users.create	{}	\N	{}	[]	2026-01-26 14:36:48.897	2026-01-26 14:36:48.897	2026-01-26 14:36:48.897	\N	\N	\N
131	fatqbnbfmg0ce33a0x2mt62b	admin::users.read	{}	\N	{}	[]	2026-01-26 14:36:48.901	2026-01-26 14:36:48.901	2026-01-26 14:36:48.901	\N	\N	\N
132	ndmjc8p4zhua5brymvcf7g1k	admin::users.update	{}	\N	{}	[]	2026-01-26 14:36:48.905	2026-01-26 14:36:48.905	2026-01-26 14:36:48.905	\N	\N	\N
133	linumteq05qola75r2vggszq	admin::users.delete	{}	\N	{}	[]	2026-01-26 14:36:48.909	2026-01-26 14:36:48.909	2026-01-26 14:36:48.909	\N	\N	\N
134	x0u815evu6rgteewj9hernzx	admin::roles.create	{}	\N	{}	[]	2026-01-26 14:36:48.913	2026-01-26 14:36:48.913	2026-01-26 14:36:48.913	\N	\N	\N
135	ojbdib8ukwppacncvg6b0exq	admin::roles.read	{}	\N	{}	[]	2026-01-26 14:36:48.918	2026-01-26 14:36:48.918	2026-01-26 14:36:48.918	\N	\N	\N
136	hr6t3kb0ds6gzv4nr3iog4wd	admin::roles.update	{}	\N	{}	[]	2026-01-26 14:36:48.922	2026-01-26 14:36:48.922	2026-01-26 14:36:48.922	\N	\N	\N
137	alce1hr02kbugrwxd57ftbz2	admin::roles.delete	{}	\N	{}	[]	2026-01-26 14:36:48.928	2026-01-26 14:36:48.928	2026-01-26 14:36:48.928	\N	\N	\N
138	jzi03ua8fiy6hz2746ch81gl	admin::api-tokens.access	{}	\N	{}	[]	2026-01-26 14:36:48.933	2026-01-26 14:36:48.933	2026-01-26 14:36:48.933	\N	\N	\N
139	jzykki7ix774x4gdkj4d1bpi	admin::api-tokens.create	{}	\N	{}	[]	2026-01-26 14:36:48.937	2026-01-26 14:36:48.937	2026-01-26 14:36:48.937	\N	\N	\N
140	h9iy22e4i5okzv2gbhb0llzc	admin::api-tokens.read	{}	\N	{}	[]	2026-01-26 14:36:48.941	2026-01-26 14:36:48.941	2026-01-26 14:36:48.941	\N	\N	\N
141	qw20mi50hcbznbwzbi01tfo6	admin::api-tokens.update	{}	\N	{}	[]	2026-01-26 14:36:48.945	2026-01-26 14:36:48.945	2026-01-26 14:36:48.945	\N	\N	\N
142	ey91262qdsmfzqvalvf53cmi	admin::api-tokens.regenerate	{}	\N	{}	[]	2026-01-26 14:36:48.949	2026-01-26 14:36:48.949	2026-01-26 14:36:48.949	\N	\N	\N
143	osyp9jlpdvcfg2ef8jl58n2i	admin::api-tokens.delete	{}	\N	{}	[]	2026-01-26 14:36:48.954	2026-01-26 14:36:48.954	2026-01-26 14:36:48.954	\N	\N	\N
144	cgot223amfeq39rgypoghqnz	admin::project-settings.update	{}	\N	{}	[]	2026-01-26 14:36:48.959	2026-01-26 14:36:48.959	2026-01-26 14:36:48.96	\N	\N	\N
145	r53q9p89y74g807sm2z38ec4	admin::project-settings.read	{}	\N	{}	[]	2026-01-26 14:36:48.964	2026-01-26 14:36:48.964	2026-01-26 14:36:48.964	\N	\N	\N
146	n2fwvk3sf5tkmd4fpcb0pxos	admin::transfer.tokens.access	{}	\N	{}	[]	2026-01-26 14:36:48.968	2026-01-26 14:36:48.968	2026-01-26 14:36:48.969	\N	\N	\N
147	ywerjt6m2oroexdrv5ts5pwe	admin::transfer.tokens.create	{}	\N	{}	[]	2026-01-26 14:36:48.973	2026-01-26 14:36:48.973	2026-01-26 14:36:48.973	\N	\N	\N
148	y4g4ejp1arqymadqid59gp7x	admin::transfer.tokens.read	{}	\N	{}	[]	2026-01-26 14:36:48.978	2026-01-26 14:36:48.978	2026-01-26 14:36:48.978	\N	\N	\N
149	ktnex1h9ek1ghbkpx95hvxys	admin::transfer.tokens.update	{}	\N	{}	[]	2026-01-26 14:36:48.984	2026-01-26 14:36:48.984	2026-01-26 14:36:48.984	\N	\N	\N
150	i8rzdxlbz4jis9nhblaclnzu	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2026-01-26 14:36:48.99	2026-01-26 14:36:48.99	2026-01-26 14:36:48.99	\N	\N	\N
151	d68n1inkx8jkg30hm0ur1vqf	admin::transfer.tokens.delete	{}	\N	{}	[]	2026-01-26 14:36:48.995	2026-01-26 14:36:48.995	2026-01-26 14:36:48.995	\N	\N	\N
160	x2h2by5zbd4crbco79d6y712	plugin::content-manager.explorer.delete	{}	api::contact-message.contact-message	{}	[]	2026-03-11 10:11:19.375	2026-03-11 10:11:19.375	2026-03-11 10:11:19.375	\N	\N	\N
161	ae48ozfm1wiole1gnh0pmu3m	plugin::content-manager.explorer.publish	{}	api::contact-message.contact-message	{}	[]	2026-03-11 10:11:19.382	2026-03-11 10:11:19.382	2026-03-11 10:11:19.382	\N	\N	\N
162	ky5wqv7023dqhqnwwfdcar2s	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-03-11 10:11:19.388	2026-03-11 10:11:19.388	2026-03-11 10:11:19.388	\N	\N	\N
163	oazlgukoqrxz6nvslatq1kdb	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-03-11 10:11:19.393	2026-03-11 10:11:19.393	2026-03-11 10:11:19.394	\N	\N	\N
164	q5p8z3p2c70y3tjywud8usut	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-03-11 10:11:19.398	2026-03-11 10:11:19.398	2026-03-11 10:11:19.398	\N	\N	\N
165	hwtuphduq7lo6ptt86kd2737	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-03-11 10:11:19.403	2026-03-11 10:11:19.403	2026-03-11 10:11:19.403	\N	\N	\N
166	z08rr5b9azmxwklz0u5sflwq	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-03-11 10:11:19.408	2026-03-11 10:11:19.408	2026-03-11 10:11:19.408	\N	\N	\N
159	pxepo0s2mpt2gb1vzj1c81lw	plugin::content-manager.explorer.update	{}	api::contact-message.contact-message	{"fields": ["name", "email", "subject", "message", "status_field"]}	[]	2026-03-11 10:11:19.369	2026-03-11 10:35:51.761	2026-03-11 10:11:19.369	\N	\N	\N
209	z52xvq0br8bimjrb4zbe4dos	plugin::content-manager.explorer.delete	{}	api::article-new.article-new	{}	[]	2026-04-07 19:54:52.932	2026-04-07 19:54:52.932	2026-04-07 19:54:52.932	\N	\N	\N
210	pcvkjrlhyoax3fdsvnip99wt	plugin::content-manager.explorer.publish	{}	api::article-new.article-new	{}	[]	2026-04-07 19:54:52.936	2026-04-07 19:54:52.936	2026-04-07 19:54:52.936	\N	\N	\N
212	acd7tjinabo05yq7y64h443l	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["name", "slug"]}	[]	2026-04-07 19:56:29.78	2026-04-07 19:56:29.78	2026-04-07 19:56:29.78	\N	\N	\N
214	muq3vi1s923lkv887nx0ouo1	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["name", "slug"]}	[]	2026-04-07 19:56:29.793	2026-04-07 19:56:29.793	2026-04-07 19:56:29.794	\N	\N	\N
216	wk7e1a5uw77cn1gr5wnwsx2n	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["name", "slug"]}	[]	2026-04-07 19:56:29.804	2026-04-07 19:56:29.804	2026-04-07 19:56:29.805	\N	\N	\N
217	nuynniufbgk2j6tl708xu1cc	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2026-04-07 19:56:29.812	2026-04-07 19:56:29.812	2026-04-07 19:56:29.812	\N	\N	\N
218	rmbgneqsjyjvvzvtqp1y44hq	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2026-04-07 19:56:29.831	2026-04-07 19:56:29.831	2026-04-07 19:56:29.831	\N	\N	\N
228	zsfegcchyrf4srvnnp8ogylf	plugin::content-manager.explorer.create	{}	api::article-new.article-new	{"fields": ["title", "content", "cover", "excerpt", "slug", "category", "timePublishedAt"]}	[]	2026-04-07 22:05:21.611	2026-04-07 22:05:21.611	2026-04-07 22:05:21.612	\N	\N	\N
229	pso015ypi4rlrgztj28mzyid	plugin::content-manager.explorer.read	{}	api::article-new.article-new	{"fields": ["title", "content", "cover", "excerpt", "slug", "category", "timePublishedAt"]}	[]	2026-04-07 22:05:21.621	2026-04-07 22:05:21.621	2026-04-07 22:05:21.621	\N	\N	\N
230	cbe5i2h6yg8bxn537crao6sx	plugin::content-manager.explorer.update	{}	api::article-new.article-new	{"fields": ["title", "content", "cover", "excerpt", "slug", "category", "timePublishedAt"]}	[]	2026-04-07 22:05:21.627	2026-04-07 22:05:21.627	2026-04-07 22:05:21.627	\N	\N	\N
243	wwb8q65ek6k539bzr6k4a8zk	plugin::content-manager.explorer.delete	{}	api::vacancy.vacancy	{}	[]	2026-04-10 13:01:19.144	2026-04-10 13:01:19.144	2026-04-10 13:01:19.144	\N	\N	\N
244	kpm67z9vjc725474be8ul2vz	plugin::content-manager.explorer.publish	{}	api::vacancy.vacancy	{}	[]	2026-04-10 13:01:19.149	2026-04-10 13:01:19.149	2026-04-10 13:01:19.149	\N	\N	\N
248	l3nj18a6pf4mn7lm4wahuk0x	plugin::content-manager.explorer.create	{}	api::vacancy.vacancy	{"fields": ["title", "description", "timePublishedAt", "contactNumber", "slug"]}	[]	2026-04-10 14:14:06.738	2026-04-10 14:14:06.738	2026-04-10 14:14:06.739	\N	\N	\N
249	t0p6ut6jx455j3ymf9datxw7	plugin::content-manager.explorer.read	{}	api::vacancy.vacancy	{"fields": ["title", "description", "timePublishedAt", "contactNumber", "slug"]}	[]	2026-04-10 14:14:06.755	2026-04-10 14:14:06.755	2026-04-10 14:14:06.755	\N	\N	\N
250	p624gsdaiqx5x06xjz5kaeno	plugin::content-manager.explorer.update	{}	api::vacancy.vacancy	{"fields": ["title", "description", "timePublishedAt", "contactNumber", "slug"]}	[]	2026-04-10 14:14:06.766	2026-04-10 14:14:06.766	2026-04-10 14:14:06.766	\N	\N	\N
254	j3li3golq3psqarcsaykzkex	plugin::content-manager.explorer.delete	{}	api::stop.stop	{}	[]	2026-04-10 14:56:49.145	2026-04-10 14:56:49.145	2026-04-10 14:56:49.145	\N	\N	\N
255	nqnkrg8f65k1gc1rj9t8lyd8	plugin::content-manager.explorer.publish	{}	api::stop.stop	{}	[]	2026-04-10 14:56:49.152	2026-04-10 14:56:49.152	2026-04-10 14:56:49.153	\N	\N	\N
259	nx7vjogguoz07teo2rxzjbmb	plugin::content-manager.explorer.delete	{}	api::route-stop.route-stop	{}	[]	2026-04-11 12:46:08.279	2026-04-11 12:46:08.279	2026-04-11 12:46:08.279	\N	\N	\N
260	vc4ies0a7kwlpqmsu5a23aiu	plugin::content-manager.explorer.publish	{}	api::route-stop.route-stop	{}	[]	2026-04-11 12:46:08.283	2026-04-11 12:46:08.283	2026-04-11 12:46:08.283	\N	\N	\N
263	i4yegtzrnxbx03d31ce39erw	plugin::content-manager.explorer.create	{}	api::stop.stop	{"fields": ["name", "note", "route_stops"]}	[]	2026-04-11 12:47:25.862	2026-04-11 12:47:25.862	2026-04-11 12:47:25.862	\N	\N	\N
266	siey2epiwbk9w06mwal8qmka	plugin::content-manager.explorer.read	{}	api::stop.stop	{"fields": ["name", "note", "route_stops"]}	[]	2026-04-11 12:47:25.873	2026-04-11 12:47:25.873	2026-04-11 12:47:25.873	\N	\N	\N
269	my9j2f0dnlx8sa3j5f024psk	plugin::content-manager.explorer.update	{}	api::stop.stop	{"fields": ["name", "note", "route_stops"]}	[]	2026-04-11 12:47:25.9	2026-04-11 12:47:25.9	2026-04-11 12:47:25.9	\N	\N	\N
270	odmg1diu96t472rhlwhcck41	plugin::content-manager.explorer.create	{}	api::route.route	{"fields": ["number", "title", "schedule.endpoint_name", "schedule.trips.time", "schedule.trips.note", "schedule.trips.is_short", "schedule.isWeekend", "intervalTime", "stops"]}	[]	2026-04-11 12:53:22.204	2026-04-11 12:53:22.204	2026-04-11 12:53:22.205	\N	\N	\N
271	rh4w5yuskzhr52x3tsil54an	plugin::content-manager.explorer.read	{}	api::route.route	{"fields": ["number", "title", "schedule.endpoint_name", "schedule.trips.time", "schedule.trips.note", "schedule.trips.is_short", "schedule.isWeekend", "intervalTime", "stops"]}	[]	2026-04-11 12:53:22.212	2026-04-11 12:53:22.212	2026-04-11 12:53:22.212	\N	\N	\N
272	fmxsn396nzhk0zdpp32xgpr0	plugin::content-manager.explorer.update	{}	api::route.route	{"fields": ["number", "title", "schedule.endpoint_name", "schedule.trips.time", "schedule.trips.note", "schedule.trips.is_short", "schedule.isWeekend", "intervalTime", "stops"]}	[]	2026-04-11 12:53:22.218	2026-04-11 12:53:22.218	2026-04-11 12:53:22.219	\N	\N	\N
276	g3rhp0emksbpsgjder8evx1v	plugin::content-manager.explorer.create	{}	api::route-stop.route-stop	{"fields": ["Order", "direction", "onDemand", "route", "stop"]}	[]	2026-04-11 13:08:09.557	2026-04-11 13:08:09.557	2026-04-11 13:08:09.558	\N	\N	\N
277	srloiuidm9re7xfj3e1vxdnr	plugin::content-manager.explorer.read	{}	api::route-stop.route-stop	{"fields": ["Order", "direction", "onDemand", "route", "stop"]}	[]	2026-04-11 13:08:09.567	2026-04-11 13:08:09.567	2026-04-11 13:08:09.567	\N	\N	\N
278	h1t9f0uprzj928m4jza9z04c	plugin::content-manager.explorer.update	{}	api::route-stop.route-stop	{"fields": ["Order", "direction", "onDemand", "route", "stop"]}	[]	2026-04-11 13:08:09.573	2026-04-11 13:08:09.573	2026-04-11 13:08:09.574	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
155	155	1	98
156	156	1	99
157	157	4	1
158	158	4	2
159	159	4	3
160	160	4	4
161	161	4	5
162	162	4	6
163	163	4	7
164	164	4	8
165	165	4	9
166	166	4	10
170	170	1	100
171	171	1	101
172	172	1	102
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
191	191	1	106
192	192	1	107
52	52	3	21
53	53	3	22
54	54	3	23
55	55	3	24
56	56	3	25
57	57	3	26
58	58	1	1
64	64	1	7
70	70	1	13
76	76	1	19
82	82	1	25
97	97	1	40
98	98	1	41
99	99	1	42
100	100	1	43
101	101	1	44
102	102	1	45
103	103	1	46
104	104	1	47
105	105	1	48
106	106	1	49
107	107	1	50
108	108	1	51
109	109	1	52
110	110	1	53
111	111	1	54
112	112	1	55
113	113	1	56
114	114	1	57
115	115	1	58
116	116	1	59
117	117	1	60
118	118	1	61
119	119	1	62
120	120	1	63
121	121	1	64
122	122	1	65
125	125	1	68
126	126	1	69
127	127	1	70
128	128	1	71
129	129	1	72
130	130	1	73
131	131	1	74
132	132	1	75
133	133	1	76
134	134	1	77
135	135	1	78
136	136	1	79
137	137	1	80
138	138	1	81
139	139	1	82
140	140	1	83
141	141	1	84
142	142	1	85
143	143	1	86
144	144	1	87
145	145	1	88
146	146	1	89
147	147	1	90
148	148	1	91
149	149	1	92
150	150	1	93
151	151	1	94
209	209	1	111
210	210	1	112
212	212	1	114
214	214	1	116
216	216	1	118
217	217	1	119
218	218	1	120
228	228	1	121
229	229	1	122
230	230	1	123
243	243	1	130
244	244	1	131
248	248	1	132
249	249	1	133
250	250	1	134
254	254	1	138
255	255	1	139
259	259	1	143
260	260	1	144
263	263	1	147
266	266	1	150
269	269	1	153
270	270	1	154
271	271	1	155
272	272	1	156
276	276	1	157
277	277	1	158
278	278	1	159
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	tltay50go6f5ibzm2nh20uhf	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2026-01-26 14:36:48.174	2026-01-26 14:36:48.174	2026-01-26 14:36:48.174	\N	\N	\N
2	en4szseub40ucavqz45w19v7	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2026-01-26 14:36:48.194	2026-01-26 14:36:48.194	2026-01-26 14:36:48.194	\N	\N	\N
3	n19x0ck4brc74bmwyntitjrq	Author	strapi-author	Authors can manage the content they have created.	2026-01-26 14:36:48.201	2026-01-26 14:36:48.201	2026-01-26 14:36:48.202	\N	\N	\N
4	jytvkf7aruyn9cwkjf9xets7	Public	public-mmlr9phj	Created March 11th, 2026	2026-03-11 10:06:53.767	2026-03-11 10:11:19.29	2026-03-11 10:06:53.768	\N	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	wmwhl2131z65832qypmxh4w2	Vladyslav	Blidar	\N	minecraftv871@gmail.com	$2a$10$dJ.Fl8Jm0nl.vZUKAC0ABOMTbZQOwYX8pJuiFEEb./6qknwdSjlTS	df838db08806e2dbbfb989f33b24868587e18b13	\N	t	f	\N	2026-01-27 14:55:33.302	2026-03-11 09:56:56.138	2026-01-27 14:55:33.303	\N	\N	\N
\.


--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: article_news; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_news (id, document_id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, excerpt, slug, time_published_at, content) FROM stdin;
1	dtfh1l8fbd8grmfzagpk0jka	Повернення автобусів з Одеси	2026-04-07 21:29:50.542	2026-04-07 22:06:12.885	\N	1	1	\N	Повернений автобус з Одеси	povernennya-avtobusiv-z-odesy	2026-04-04 16:03:00	[{"type": "paragraph", "children": [{"text": "Друзі, маємо гарну новину.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Сьогодні до Миколаєва повернулися наші автобуси з Одеси. Нагадаємо, що через складну ситуацію після атак російських терористів в Одесі тимчасово не працював електротранспорт. Тому напередодні нового року КП «Миколаївпастранс» передало місту п’ять автобусів для забезпечення перевезень.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Наразі транспорт повернувся та вже найближчим часом вийде на маршрути Миколаєва.", "type": "text"}]}]
3	dtfh1l8fbd8grmfzagpk0jka	Повернення автобусів з Одеси	2026-04-07 21:29:50.542	2026-04-07 22:06:12.885	2026-04-07 22:06:12.92	1	1	\N	Повернений автобус з Одеси	povernennya-avtobusiv-z-odesy	2026-04-04 16:03:00	[{"type": "paragraph", "children": [{"text": "Друзі, маємо гарну новину.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Сьогодні до Миколаєва повернулися наші автобуси з Одеси. Нагадаємо, що через складну ситуацію після атак російських терористів в Одесі тимчасово не працював електротранспорт. Тому напередодні нового року КП «Миколаївпастранс» передало місту п’ять автобусів для забезпечення перевезень.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Наразі транспорт повернувся та вже найближчим часом вийде на маршрути Миколаєва.", "type": "text"}]}]
4	jb4vzp0lbk3q1enlkuh7xc9i	Нові вакансії	2026-04-09 18:51:36.041	2026-04-09 18:58:15.435	\N	1	1	\N	Список нових вакансій	novi-vakansiyi	2026-04-06 00:00:00	[{"type": "paragraph", "children": [{"text": "КП ММР «МИКОЛАЇВПСТРАНС»", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "ЗАПРОШУЄ НА ПОСТІЙНУ РОБОТУ:", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "фахівця з публічних закупівель;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "секретаря;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "бухгалтера;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "токаря;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "електрогазозварника;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "мийника-прибиральника рухомого складу.", "type": "text"}]}]}, {"type": "paragraph", "children": [{"text": "ПРОПОНУЄМО:", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "офіціальне працевлаштування;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "вчасну щомісячну оплату праці;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "бронювання;", "type": "text"}]}]}, {"type": "paragraph", "children": [{"text": "Звертайтеся за телефоном 0508180771", "type": "text"}]}]
8	jb4vzp0lbk3q1enlkuh7xc9i	Нові вакансії	2026-04-09 18:51:36.041	2026-04-09 18:58:15.435	2026-04-09 18:58:15.45	1	1	\N	Список нових вакансій	novi-vakansiyi	2026-04-06 00:00:00	[{"type": "paragraph", "children": [{"text": "КП ММР «МИКОЛАЇВПСТРАНС»", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "ЗАПРОШУЄ НА ПОСТІЙНУ РОБОТУ:", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "фахівця з публічних закупівель;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "секретаря;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "бухгалтера;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "токаря;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "електрогазозварника;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "мийника-прибиральника рухомого складу.", "type": "text"}]}]}, {"type": "paragraph", "children": [{"text": "ПРОПОНУЄМО:", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "офіціальне працевлаштування;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "вчасну щомісячну оплату праці;", "type": "text"}]}, {"type": "list-item", "children": [{"text": "бронювання;", "type": "text"}]}]}, {"type": "paragraph", "children": [{"text": "Звертайтеся за телефоном 0508180771", "type": "text"}]}]
9	zpxtp1xf8izhbpssv85lq621	Оновлення розкладу маршруту №79	2026-04-09 19:15:23.166	2026-04-09 19:15:23.166	\N	1	1	\N	Новий розклад маршруту №79	onovlennya-rozkladu-marshrutu-79	2026-03-26 20:56:00	[{"type": "paragraph", "children": [{"text": "‼️Шановні пасажири! ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Ви просили, ми зробили.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Відзавтра, 27 березня, збільшуємо кількість рейсів маршруту №79 (мкрн. Варварівка- «Велам»).", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Працюємо для вас! Дякуємо, що обираєте наш транспорт.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Розклад ", "type": "text"}, {"url": "http://localhost:3000/passengers/schedule", "type": "link", "children": [{"text": "тут", "type": "text"}]}, {"text": ", зберігайте.", "type": "text"}]}]
10	zpxtp1xf8izhbpssv85lq621	Оновлення розкладу маршруту №79	2026-04-09 19:15:23.166	2026-04-09 19:15:23.166	2026-04-09 19:15:23.177	1	1	\N	Новий розклад маршруту №79	onovlennya-rozkladu-marshrutu-79	2026-03-26 20:56:00	[{"type": "paragraph", "children": [{"text": "‼️Шановні пасажири! ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Ви просили, ми зробили.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Відзавтра, 27 березня, збільшуємо кількість рейсів маршруту №79 (мкрн. Варварівка- «Велам»).", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Працюємо для вас! Дякуємо, що обираєте наш транспорт.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Розклад ", "type": "text"}, {"url": "http://localhost:3000/passengers/schedule", "type": "link", "children": [{"text": "тут", "type": "text"}]}, {"text": ", зберігайте.", "type": "text"}]}]
\.


--
-- Data for Name: article_news_category_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_news_category_lnk (id, article_new_id, category_id) FROM stdin;
1	1	1
2	3	2
3	4	3
7	8	4
8	9	5
9	10	6
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.categories (id, document_id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	mw8u9g4nwdya4rx2uhj5k70h	Гуманітарна допомога	humanitarna-dopomoha	2026-04-07 21:32:06.941	2026-04-07 21:33:00.029	\N	1	1	\N
2	mw8u9g4nwdya4rx2uhj5k70h	Гуманітарна допомога	humanitarna-dopomoha	2026-04-07 21:32:06.941	2026-04-07 21:33:00.029	2026-04-07 21:33:00.039	1	1	\N
3	udy0iol66ipsuxy4c5bh5wad	Вакансії	vakansiyi	2026-04-09 18:50:07.406	2026-04-09 18:50:07.406	\N	1	1	\N
4	udy0iol66ipsuxy4c5bh5wad	Вакансії	vakansiyi	2026-04-09 18:50:07.406	2026-04-09 18:50:07.406	2026-04-09 18:50:07.425	1	1	\N
5	admrr3dk1x0guv5hkxy14br1	Оновлення розкладу	onovlennya-rozkladu	2026-04-09 19:13:18.288	2026-04-09 19:13:18.288	\N	1	1	\N
6	admrr3dk1x0guv5hkxy14br1	Оновлення розкладу	onovlennya-rozkladu	2026-04-09 19:13:18.288	2026-04-09 19:13:18.288	2026-04-09 19:13:18.294	1	1	\N
\.


--
-- Data for Name: components_schedule_bus_directions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_schedule_bus_directions (id, endpoint_name, is_weekend) FROM stdin;
6	Завод «Океан»	f
7	Мкр. Тернівка	f
61	Завод «Океан»	f
62	Мкр. Тернівка	f
14	пл. Перемоги	t
15	Кладовище (військова частина)	t
27	пл. Перемоги	f
28	Кладовище (військова частина)	f
63	пл. Перемоги	t
64	Кладовище (військова частина)	t
65	пл. Перемоги	f
66	Кладовище (військова частина)	f
37	Центральний ринок (вул. Ігоря Бедзая буд. 4)	f
38	Кладовище (вул. Автомобільна)	f
39	Центральний ринок (вул. Ігоря Бедзая буд. 4)	t
40	Кладовище (вул. Автомобільна)	t
67	Центральний ринок (вул. Ігоря Бедзая буд. 4)	f
68	Кладовище (вул. Автомобільна)	f
69	Центральний ринок (вул. Ігоря Бедзая буд. 4)	t
70	Кладовище (вул. Автомобільна)	t
45	Варварівка (вул. Одеське шосе 94)	f
46	ВТФ «Велам»	f
71	Варварівка (вул. Одеське шосе 94)	f
72	ВТФ «Велам»	f
1	мкр. Намив	f
3	мкр. Ракетне Урочище	f
73	мкр. Намив	f
74	мкр. Ракетне Урочище	f
57	Центральний стадіон	f
58	Балабанівка	f
79	Центральний стадіон	f
80	Балабанівка	f
\.


--
-- Data for Name: components_schedule_bus_directions_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_schedule_bus_directions_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
2280	67	1362	schedule.bus-trip	trips	1
2281	67	1363	schedule.bus-trip	trips	2
2282	67	1364	schedule.bus-trip	trips	3
2283	68	1365	schedule.bus-trip	trips	1
2284	68	1366	schedule.bus-trip	trips	2
2285	69	1367	schedule.bus-trip	trips	1
2286	69	1368	schedule.bus-trip	trips	2
2287	69	1369	schedule.bus-trip	trips	3
2288	69	1370	schedule.bus-trip	trips	4
2289	70	1371	schedule.bus-trip	trips	1
2290	70	1372	schedule.bus-trip	trips	2
2291	70	1373	schedule.bus-trip	trips	3
1046	46	633	schedule.bus-trip	trips	60
1047	46	634	schedule.bus-trip	trips	61
1048	46	635	schedule.bus-trip	trips	62
1049	46	636	schedule.bus-trip	trips	63
1050	46	637	schedule.bus-trip	trips	64
1051	46	638	schedule.bus-trip	trips	65
2424	71	1374	schedule.bus-trip	trips	1
2425	71	1375	schedule.bus-trip	trips	2
2426	71	1376	schedule.bus-trip	trips	3
2427	71	1377	schedule.bus-trip	trips	4
2428	71	1378	schedule.bus-trip	trips	5
2429	71	1379	schedule.bus-trip	trips	6
2430	71	1380	schedule.bus-trip	trips	7
2431	71	1381	schedule.bus-trip	trips	8
2432	71	1382	schedule.bus-trip	trips	9
2433	71	1383	schedule.bus-trip	trips	10
2434	71	1384	schedule.bus-trip	trips	11
2435	71	1385	schedule.bus-trip	trips	12
2436	71	1386	schedule.bus-trip	trips	13
2437	71	1387	schedule.bus-trip	trips	14
2438	71	1388	schedule.bus-trip	trips	15
2439	71	1389	schedule.bus-trip	trips	16
2440	71	1390	schedule.bus-trip	trips	17
2441	71	1391	schedule.bus-trip	trips	18
2442	71	1392	schedule.bus-trip	trips	19
2443	71	1393	schedule.bus-trip	trips	20
2444	71	1394	schedule.bus-trip	trips	21
2445	71	1395	schedule.bus-trip	trips	22
2446	71	1396	schedule.bus-trip	trips	23
2447	71	1397	schedule.bus-trip	trips	24
2448	71	1398	schedule.bus-trip	trips	25
2449	71	1399	schedule.bus-trip	trips	26
2450	71	1400	schedule.bus-trip	trips	27
2451	71	1401	schedule.bus-trip	trips	28
2452	71	1402	schedule.bus-trip	trips	29
2453	71	1403	schedule.bus-trip	trips	30
2454	71	1404	schedule.bus-trip	trips	31
2455	71	1405	schedule.bus-trip	trips	32
2456	71	1406	schedule.bus-trip	trips	33
2457	71	1407	schedule.bus-trip	trips	34
2458	71	1408	schedule.bus-trip	trips	35
2459	71	1409	schedule.bus-trip	trips	36
2460	71	1410	schedule.bus-trip	trips	37
11	6	10	schedule.bus-trip	trips	1
28	6	22	schedule.bus-trip	trips	2
355	14	202	schedule.bus-trip	trips	1
356	14	203	schedule.bus-trip	trips	2
357	14	204	schedule.bus-trip	trips	3
358	14	205	schedule.bus-trip	trips	4
359	14	206	schedule.bus-trip	trips	5
360	14	207	schedule.bus-trip	trips	6
361	14	208	schedule.bus-trip	trips	7
362	15	209	schedule.bus-trip	trips	1
363	15	210	schedule.bus-trip	trips	2
364	15	211	schedule.bus-trip	trips	3
365	15	212	schedule.bus-trip	trips	4
366	15	213	schedule.bus-trip	trips	5
367	15	214	schedule.bus-trip	trips	6
796	27	421	schedule.bus-trip	trips	1
797	27	422	schedule.bus-trip	trips	2
798	27	423	schedule.bus-trip	trips	3
799	27	424	schedule.bus-trip	trips	4
800	27	425	schedule.bus-trip	trips	5
12	6	11	schedule.bus-trip	trips	3
30	6	23	schedule.bus-trip	trips	4
31	6	24	schedule.bus-trip	trips	5
32	6	25	schedule.bus-trip	trips	6
33	6	26	schedule.bus-trip	trips	7
34	6	27	schedule.bus-trip	trips	8
35	6	28	schedule.bus-trip	trips	9
36	6	29	schedule.bus-trip	trips	10
37	6	30	schedule.bus-trip	trips	11
38	6	31	schedule.bus-trip	trips	12
39	6	32	schedule.bus-trip	trips	13
40	6	33	schedule.bus-trip	trips	14
41	6	34	schedule.bus-trip	trips	15
42	6	35	schedule.bus-trip	trips	16
43	6	36	schedule.bus-trip	trips	17
44	6	37	schedule.bus-trip	trips	18
45	6	38	schedule.bus-trip	trips	19
46	6	39	schedule.bus-trip	trips	20
47	6	40	schedule.bus-trip	trips	21
48	6	41	schedule.bus-trip	trips	22
49	6	42	schedule.bus-trip	trips	23
50	6	43	schedule.bus-trip	trips	24
51	6	44	schedule.bus-trip	trips	25
52	6	45	schedule.bus-trip	trips	26
53	6	46	schedule.bus-trip	trips	27
54	6	47	schedule.bus-trip	trips	28
55	6	48	schedule.bus-trip	trips	29
56	6	49	schedule.bus-trip	trips	30
57	6	50	schedule.bus-trip	trips	31
58	6	51	schedule.bus-trip	trips	32
59	6	52	schedule.bus-trip	trips	33
60	6	53	schedule.bus-trip	trips	34
61	6	54	schedule.bus-trip	trips	35
62	6	55	schedule.bus-trip	trips	36
63	6	56	schedule.bus-trip	trips	37
64	6	57	schedule.bus-trip	trips	38
65	6	58	schedule.bus-trip	trips	39
66	6	59	schedule.bus-trip	trips	40
67	6	60	schedule.bus-trip	trips	41
68	6	61	schedule.bus-trip	trips	42
69	6	62	schedule.bus-trip	trips	43
70	6	63	schedule.bus-trip	trips	44
71	6	64	schedule.bus-trip	trips	45
72	6	65	schedule.bus-trip	trips	46
13	7	12	schedule.bus-trip	trips	1
122	7	66	schedule.bus-trip	trips	2
14	7	13	schedule.bus-trip	trips	3
124	7	67	schedule.bus-trip	trips	4
125	7	68	schedule.bus-trip	trips	5
126	7	69	schedule.bus-trip	trips	6
127	7	70	schedule.bus-trip	trips	7
128	7	71	schedule.bus-trip	trips	8
129	7	72	schedule.bus-trip	trips	9
130	7	73	schedule.bus-trip	trips	10
131	7	74	schedule.bus-trip	trips	11
132	7	75	schedule.bus-trip	trips	12
133	7	76	schedule.bus-trip	trips	13
134	7	77	schedule.bus-trip	trips	14
135	7	78	schedule.bus-trip	trips	15
136	7	79	schedule.bus-trip	trips	16
137	7	80	schedule.bus-trip	trips	17
138	7	81	schedule.bus-trip	trips	18
139	7	82	schedule.bus-trip	trips	19
140	7	83	schedule.bus-trip	trips	20
141	7	84	schedule.bus-trip	trips	21
801	28	426	schedule.bus-trip	trips	1
802	28	427	schedule.bus-trip	trips	2
803	28	428	schedule.bus-trip	trips	3
962	45	549	schedule.bus-trip	trips	43
963	45	550	schedule.bus-trip	trips	44
964	45	551	schedule.bus-trip	trips	45
965	45	552	schedule.bus-trip	trips	46
966	45	553	schedule.bus-trip	trips	47
967	45	554	schedule.bus-trip	trips	48
968	45	555	schedule.bus-trip	trips	49
969	45	556	schedule.bus-trip	trips	50
970	45	557	schedule.bus-trip	trips	51
971	45	558	schedule.bus-trip	trips	52
972	45	559	schedule.bus-trip	trips	53
973	45	560	schedule.bus-trip	trips	54
896	37	483	schedule.bus-trip	trips	1
897	37	484	schedule.bus-trip	trips	2
898	37	485	schedule.bus-trip	trips	3
899	38	486	schedule.bus-trip	trips	1
900	38	487	schedule.bus-trip	trips	2
901	39	488	schedule.bus-trip	trips	1
902	39	489	schedule.bus-trip	trips	2
903	39	490	schedule.bus-trip	trips	3
904	39	491	schedule.bus-trip	trips	4
905	40	492	schedule.bus-trip	trips	1
906	40	493	schedule.bus-trip	trips	2
907	40	494	schedule.bus-trip	trips	3
974	45	561	schedule.bus-trip	trips	55
975	45	562	schedule.bus-trip	trips	56
976	45	563	schedule.bus-trip	trips	57
977	45	564	schedule.bus-trip	trips	58
978	45	565	schedule.bus-trip	trips	59
979	45	566	schedule.bus-trip	trips	60
980	45	567	schedule.bus-trip	trips	61
981	45	568	schedule.bus-trip	trips	62
982	45	569	schedule.bus-trip	trips	63
983	45	570	schedule.bus-trip	trips	64
984	45	571	schedule.bus-trip	trips	65
985	45	572	schedule.bus-trip	trips	66
6	1	5	schedule.bus-trip	trips	1
1	1	1	schedule.bus-trip	trips	2
1517	1	903	schedule.bus-trip	trips	3
1518	1	904	schedule.bus-trip	trips	4
1519	1	905	schedule.bus-trip	trips	5
1520	1	906	schedule.bus-trip	trips	6
1521	1	907	schedule.bus-trip	trips	7
1522	1	908	schedule.bus-trip	trips	8
1523	1	909	schedule.bus-trip	trips	9
1524	1	910	schedule.bus-trip	trips	10
1525	1	911	schedule.bus-trip	trips	11
1526	1	912	schedule.bus-trip	trips	12
1527	1	913	schedule.bus-trip	trips	13
1528	1	914	schedule.bus-trip	trips	14
1529	1	915	schedule.bus-trip	trips	15
1530	1	916	schedule.bus-trip	trips	16
1531	1	917	schedule.bus-trip	trips	17
1532	1	918	schedule.bus-trip	trips	18
1533	1	919	schedule.bus-trip	trips	19
1534	1	920	schedule.bus-trip	trips	20
1535	1	921	schedule.bus-trip	trips	21
1536	1	922	schedule.bus-trip	trips	22
1537	1	923	schedule.bus-trip	trips	23
1538	1	924	schedule.bus-trip	trips	24
1539	1	925	schedule.bus-trip	trips	25
1540	1	926	schedule.bus-trip	trips	26
1541	1	927	schedule.bus-trip	trips	27
1542	1	928	schedule.bus-trip	trips	28
1543	1	929	schedule.bus-trip	trips	29
1544	1	930	schedule.bus-trip	trips	30
1545	1	931	schedule.bus-trip	trips	31
1546	1	932	schedule.bus-trip	trips	32
1547	1	933	schedule.bus-trip	trips	33
1548	1	934	schedule.bus-trip	trips	34
1549	1	935	schedule.bus-trip	trips	35
1550	1	936	schedule.bus-trip	trips	36
1551	1	937	schedule.bus-trip	trips	37
1552	1	938	schedule.bus-trip	trips	38
1553	1	939	schedule.bus-trip	trips	39
1554	1	940	schedule.bus-trip	trips	40
1555	1	941	schedule.bus-trip	trips	41
3	3	3	schedule.bus-trip	trips	1
4	3	4	schedule.bus-trip	trips	2
1558	3	942	schedule.bus-trip	trips	3
1559	3	943	schedule.bus-trip	trips	4
1605	3	944	schedule.bus-trip	trips	5
1606	3	945	schedule.bus-trip	trips	6
1607	3	946	schedule.bus-trip	trips	7
1608	3	947	schedule.bus-trip	trips	8
1609	3	948	schedule.bus-trip	trips	9
1610	3	949	schedule.bus-trip	trips	10
923	45	510	schedule.bus-trip	trips	4
924	45	511	schedule.bus-trip	trips	5
925	45	512	schedule.bus-trip	trips	6
926	45	513	schedule.bus-trip	trips	7
927	45	514	schedule.bus-trip	trips	8
928	45	515	schedule.bus-trip	trips	9
929	45	516	schedule.bus-trip	trips	10
930	45	517	schedule.bus-trip	trips	11
931	45	518	schedule.bus-trip	trips	12
932	45	519	schedule.bus-trip	trips	13
933	45	520	schedule.bus-trip	trips	14
934	45	521	schedule.bus-trip	trips	15
935	45	522	schedule.bus-trip	trips	16
936	45	523	schedule.bus-trip	trips	17
937	45	524	schedule.bus-trip	trips	18
938	45	525	schedule.bus-trip	trips	19
939	45	526	schedule.bus-trip	trips	20
940	45	527	schedule.bus-trip	trips	21
941	45	528	schedule.bus-trip	trips	22
942	45	529	schedule.bus-trip	trips	23
943	45	530	schedule.bus-trip	trips	24
944	45	531	schedule.bus-trip	trips	25
945	45	532	schedule.bus-trip	trips	26
946	45	533	schedule.bus-trip	trips	27
947	45	534	schedule.bus-trip	trips	28
948	45	535	schedule.bus-trip	trips	29
949	45	536	schedule.bus-trip	trips	30
950	45	537	schedule.bus-trip	trips	31
951	45	538	schedule.bus-trip	trips	32
952	45	539	schedule.bus-trip	trips	33
953	45	540	schedule.bus-trip	trips	34
954	45	541	schedule.bus-trip	trips	35
955	45	542	schedule.bus-trip	trips	36
956	45	543	schedule.bus-trip	trips	37
957	45	544	schedule.bus-trip	trips	38
958	45	545	schedule.bus-trip	trips	39
959	45	546	schedule.bus-trip	trips	40
960	45	547	schedule.bus-trip	trips	41
961	45	548	schedule.bus-trip	trips	42
986	45	573	schedule.bus-trip	trips	67
987	46	574	schedule.bus-trip	trips	1
988	46	575	schedule.bus-trip	trips	2
989	46	576	schedule.bus-trip	trips	3
990	46	577	schedule.bus-trip	trips	4
991	46	578	schedule.bus-trip	trips	5
992	46	579	schedule.bus-trip	trips	6
993	46	580	schedule.bus-trip	trips	7
994	46	581	schedule.bus-trip	trips	8
995	46	582	schedule.bus-trip	trips	9
996	46	583	schedule.bus-trip	trips	10
997	46	584	schedule.bus-trip	trips	11
998	46	585	schedule.bus-trip	trips	12
999	46	586	schedule.bus-trip	trips	13
1000	46	587	schedule.bus-trip	trips	14
1001	46	588	schedule.bus-trip	trips	15
1002	46	589	schedule.bus-trip	trips	16
1003	46	590	schedule.bus-trip	trips	17
1004	46	591	schedule.bus-trip	trips	18
1005	46	592	schedule.bus-trip	trips	19
1006	46	593	schedule.bus-trip	trips	20
1007	46	594	schedule.bus-trip	trips	21
1008	46	595	schedule.bus-trip	trips	22
1009	46	596	schedule.bus-trip	trips	23
1010	46	597	schedule.bus-trip	trips	24
1011	46	598	schedule.bus-trip	trips	25
1012	46	599	schedule.bus-trip	trips	26
1013	46	600	schedule.bus-trip	trips	27
1014	46	601	schedule.bus-trip	trips	28
1015	46	602	schedule.bus-trip	trips	29
1016	46	603	schedule.bus-trip	trips	30
1611	3	950	schedule.bus-trip	trips	11
1612	3	951	schedule.bus-trip	trips	12
920	45	507	schedule.bus-trip	trips	1
921	45	508	schedule.bus-trip	trips	2
922	45	509	schedule.bus-trip	trips	3
1017	46	604	schedule.bus-trip	trips	31
1018	46	605	schedule.bus-trip	trips	32
1019	46	606	schedule.bus-trip	trips	33
1020	46	607	schedule.bus-trip	trips	34
1021	46	608	schedule.bus-trip	trips	35
1022	46	609	schedule.bus-trip	trips	36
1023	46	610	schedule.bus-trip	trips	37
1024	46	611	schedule.bus-trip	trips	38
1025	46	612	schedule.bus-trip	trips	39
1026	46	613	schedule.bus-trip	trips	40
1027	46	614	schedule.bus-trip	trips	41
1028	46	615	schedule.bus-trip	trips	42
1029	46	616	schedule.bus-trip	trips	43
1030	46	617	schedule.bus-trip	trips	44
1031	46	618	schedule.bus-trip	trips	45
1032	46	619	schedule.bus-trip	trips	46
1033	46	620	schedule.bus-trip	trips	47
1034	46	621	schedule.bus-trip	trips	48
1035	46	622	schedule.bus-trip	trips	49
1036	46	623	schedule.bus-trip	trips	50
1037	46	624	schedule.bus-trip	trips	51
1038	46	625	schedule.bus-trip	trips	52
1039	46	626	schedule.bus-trip	trips	53
142	7	85	schedule.bus-trip	trips	22
143	7	86	schedule.bus-trip	trips	23
144	7	87	schedule.bus-trip	trips	24
145	7	88	schedule.bus-trip	trips	25
146	7	89	schedule.bus-trip	trips	26
147	7	90	schedule.bus-trip	trips	27
148	7	91	schedule.bus-trip	trips	28
149	7	92	schedule.bus-trip	trips	29
150	7	93	schedule.bus-trip	trips	30
151	7	94	schedule.bus-trip	trips	31
152	7	95	schedule.bus-trip	trips	32
153	7	96	schedule.bus-trip	trips	33
154	7	97	schedule.bus-trip	trips	34
155	7	98	schedule.bus-trip	trips	35
156	7	99	schedule.bus-trip	trips	36
157	7	100	schedule.bus-trip	trips	37
158	7	101	schedule.bus-trip	trips	38
159	7	102	schedule.bus-trip	trips	39
160	7	103	schedule.bus-trip	trips	40
161	7	104	schedule.bus-trip	trips	41
162	7	105	schedule.bus-trip	trips	42
163	7	106	schedule.bus-trip	trips	43
164	7	107	schedule.bus-trip	trips	44
165	7	108	schedule.bus-trip	trips	45
166	7	109	schedule.bus-trip	trips	46
2126	61	1245	schedule.bus-trip	trips	1
2127	61	1246	schedule.bus-trip	trips	2
2128	61	1247	schedule.bus-trip	trips	3
2129	61	1248	schedule.bus-trip	trips	4
2130	61	1249	schedule.bus-trip	trips	5
2131	61	1250	schedule.bus-trip	trips	6
2132	61	1251	schedule.bus-trip	trips	7
2133	61	1252	schedule.bus-trip	trips	8
2134	61	1253	schedule.bus-trip	trips	9
2135	61	1254	schedule.bus-trip	trips	10
2136	61	1255	schedule.bus-trip	trips	11
2137	61	1256	schedule.bus-trip	trips	12
2138	61	1257	schedule.bus-trip	trips	13
2139	61	1258	schedule.bus-trip	trips	14
2140	61	1259	schedule.bus-trip	trips	15
2141	61	1260	schedule.bus-trip	trips	16
2142	61	1261	schedule.bus-trip	trips	17
2143	61	1262	schedule.bus-trip	trips	18
2144	61	1263	schedule.bus-trip	trips	19
2145	61	1264	schedule.bus-trip	trips	20
2146	61	1265	schedule.bus-trip	trips	21
1613	3	952	schedule.bus-trip	trips	13
1614	3	953	schedule.bus-trip	trips	14
1615	3	954	schedule.bus-trip	trips	15
1616	3	955	schedule.bus-trip	trips	16
1617	3	956	schedule.bus-trip	trips	17
1618	3	957	schedule.bus-trip	trips	18
1619	3	958	schedule.bus-trip	trips	19
1620	3	959	schedule.bus-trip	trips	20
1621	3	960	schedule.bus-trip	trips	21
1622	3	961	schedule.bus-trip	trips	22
1623	3	962	schedule.bus-trip	trips	23
1624	3	963	schedule.bus-trip	trips	24
1625	3	964	schedule.bus-trip	trips	25
1626	3	965	schedule.bus-trip	trips	26
1627	3	966	schedule.bus-trip	trips	27
1628	3	967	schedule.bus-trip	trips	28
1629	3	968	schedule.bus-trip	trips	29
1630	3	969	schedule.bus-trip	trips	30
1631	3	970	schedule.bus-trip	trips	31
1632	3	971	schedule.bus-trip	trips	32
1706	3	972	schedule.bus-trip	trips	33
1707	3	973	schedule.bus-trip	trips	34
1708	3	974	schedule.bus-trip	trips	35
1709	3	975	schedule.bus-trip	trips	36
1710	3	976	schedule.bus-trip	trips	37
1711	3	977	schedule.bus-trip	trips	38
1712	3	978	schedule.bus-trip	trips	39
1713	3	979	schedule.bus-trip	trips	40
1714	3	980	schedule.bus-trip	trips	41
2638	73	1506	schedule.bus-trip	trips	1
2639	73	1507	schedule.bus-trip	trips	2
2640	73	1508	schedule.bus-trip	trips	3
2641	73	1509	schedule.bus-trip	trips	4
2642	73	1510	schedule.bus-trip	trips	5
2643	73	1511	schedule.bus-trip	trips	6
2644	73	1512	schedule.bus-trip	trips	7
2645	73	1513	schedule.bus-trip	trips	8
2646	73	1514	schedule.bus-trip	trips	9
2647	73	1515	schedule.bus-trip	trips	10
2648	73	1516	schedule.bus-trip	trips	11
2649	73	1517	schedule.bus-trip	trips	12
2650	73	1518	schedule.bus-trip	trips	13
2651	73	1519	schedule.bus-trip	trips	14
2652	73	1520	schedule.bus-trip	trips	15
2653	73	1521	schedule.bus-trip	trips	16
2654	73	1522	schedule.bus-trip	trips	17
2655	73	1523	schedule.bus-trip	trips	18
2656	73	1524	schedule.bus-trip	trips	19
2657	73	1525	schedule.bus-trip	trips	20
2658	73	1526	schedule.bus-trip	trips	21
2659	73	1527	schedule.bus-trip	trips	22
2660	73	1528	schedule.bus-trip	trips	23
2661	73	1529	schedule.bus-trip	trips	24
2662	73	1530	schedule.bus-trip	trips	25
2663	73	1531	schedule.bus-trip	trips	26
2664	73	1532	schedule.bus-trip	trips	27
2665	73	1533	schedule.bus-trip	trips	28
2666	73	1534	schedule.bus-trip	trips	29
2667	73	1535	schedule.bus-trip	trips	30
2668	73	1536	schedule.bus-trip	trips	31
2669	73	1537	schedule.bus-trip	trips	32
2670	73	1538	schedule.bus-trip	trips	33
2671	73	1539	schedule.bus-trip	trips	34
2672	73	1540	schedule.bus-trip	trips	35
2673	73	1541	schedule.bus-trip	trips	36
2674	73	1542	schedule.bus-trip	trips	37
2675	73	1543	schedule.bus-trip	trips	38
2676	73	1544	schedule.bus-trip	trips	39
2677	73	1545	schedule.bus-trip	trips	40
2678	73	1546	schedule.bus-trip	trips	41
2679	74	1547	schedule.bus-trip	trips	1
2680	74	1548	schedule.bus-trip	trips	2
2681	74	1549	schedule.bus-trip	trips	3
2682	74	1550	schedule.bus-trip	trips	4
2683	74	1551	schedule.bus-trip	trips	5
2684	74	1552	schedule.bus-trip	trips	6
2685	74	1553	schedule.bus-trip	trips	7
2686	74	1554	schedule.bus-trip	trips	8
2687	74	1555	schedule.bus-trip	trips	9
2688	74	1556	schedule.bus-trip	trips	10
2689	74	1557	schedule.bus-trip	trips	11
2690	74	1558	schedule.bus-trip	trips	12
2691	74	1559	schedule.bus-trip	trips	13
2692	74	1560	schedule.bus-trip	trips	14
2693	74	1561	schedule.bus-trip	trips	15
2694	74	1562	schedule.bus-trip	trips	16
2695	74	1563	schedule.bus-trip	trips	17
2696	74	1564	schedule.bus-trip	trips	18
2697	74	1565	schedule.bus-trip	trips	19
2698	74	1566	schedule.bus-trip	trips	20
2699	74	1567	schedule.bus-trip	trips	21
2700	74	1568	schedule.bus-trip	trips	22
2701	74	1569	schedule.bus-trip	trips	23
2702	74	1570	schedule.bus-trip	trips	24
2703	74	1571	schedule.bus-trip	trips	25
2704	74	1572	schedule.bus-trip	trips	26
2705	74	1573	schedule.bus-trip	trips	27
2706	74	1574	schedule.bus-trip	trips	28
2707	74	1575	schedule.bus-trip	trips	29
2708	74	1576	schedule.bus-trip	trips	30
2709	74	1577	schedule.bus-trip	trips	31
2710	74	1578	schedule.bus-trip	trips	32
2711	74	1579	schedule.bus-trip	trips	33
2712	74	1580	schedule.bus-trip	trips	34
2713	74	1581	schedule.bus-trip	trips	35
2714	74	1582	schedule.bus-trip	trips	36
2715	74	1583	schedule.bus-trip	trips	37
2716	74	1584	schedule.bus-trip	trips	38
2717	74	1585	schedule.bus-trip	trips	39
2718	74	1586	schedule.bus-trip	trips	40
2719	74	1587	schedule.bus-trip	trips	41
1821	57	1075	schedule.bus-trip	trips	1
1823	57	1076	schedule.bus-trip	trips	2
1900	58	1153	schedule.bus-trip	trips	37
1901	58	1154	schedule.bus-trip	trips	38
1902	58	1155	schedule.bus-trip	trips	39
1903	58	1156	schedule.bus-trip	trips	40
1904	58	1157	schedule.bus-trip	trips	41
1905	58	1158	schedule.bus-trip	trips	42
1906	58	1159	schedule.bus-trip	trips	43
3145	79	1758	schedule.bus-trip	trips	1
3146	79	1759	schedule.bus-trip	trips	2
3147	79	1760	schedule.bus-trip	trips	3
3148	79	1761	schedule.bus-trip	trips	4
3149	79	1762	schedule.bus-trip	trips	5
3150	79	1763	schedule.bus-trip	trips	6
3151	79	1764	schedule.bus-trip	trips	7
3152	79	1765	schedule.bus-trip	trips	8
3153	79	1766	schedule.bus-trip	trips	9
3154	79	1767	schedule.bus-trip	trips	10
3155	79	1768	schedule.bus-trip	trips	11
3156	79	1769	schedule.bus-trip	trips	12
3157	79	1770	schedule.bus-trip	trips	13
3158	79	1771	schedule.bus-trip	trips	14
3159	79	1772	schedule.bus-trip	trips	15
3160	79	1773	schedule.bus-trip	trips	16
3161	79	1774	schedule.bus-trip	trips	17
3162	79	1775	schedule.bus-trip	trips	18
3163	79	1776	schedule.bus-trip	trips	19
2147	61	1266	schedule.bus-trip	trips	22
2148	61	1267	schedule.bus-trip	trips	23
2149	61	1268	schedule.bus-trip	trips	24
2150	61	1269	schedule.bus-trip	trips	25
2151	61	1270	schedule.bus-trip	trips	26
2152	61	1271	schedule.bus-trip	trips	27
2153	61	1272	schedule.bus-trip	trips	28
2154	61	1273	schedule.bus-trip	trips	29
2155	61	1274	schedule.bus-trip	trips	30
2156	61	1275	schedule.bus-trip	trips	31
2157	61	1276	schedule.bus-trip	trips	32
2158	61	1277	schedule.bus-trip	trips	33
2159	61	1278	schedule.bus-trip	trips	34
2160	61	1279	schedule.bus-trip	trips	35
2161	61	1280	schedule.bus-trip	trips	36
2162	61	1281	schedule.bus-trip	trips	37
2163	61	1282	schedule.bus-trip	trips	38
3164	79	1777	schedule.bus-trip	trips	20
1824	57	1077	schedule.bus-trip	trips	3
1825	57	1078	schedule.bus-trip	trips	4
1826	57	1079	schedule.bus-trip	trips	5
1827	57	1080	schedule.bus-trip	trips	6
1828	57	1081	schedule.bus-trip	trips	7
1829	57	1082	schedule.bus-trip	trips	8
1830	57	1083	schedule.bus-trip	trips	9
1831	57	1084	schedule.bus-trip	trips	10
1832	57	1085	schedule.bus-trip	trips	11
1833	57	1086	schedule.bus-trip	trips	12
1834	57	1087	schedule.bus-trip	trips	13
1835	57	1088	schedule.bus-trip	trips	14
1836	57	1089	schedule.bus-trip	trips	15
1837	57	1090	schedule.bus-trip	trips	16
1838	57	1091	schedule.bus-trip	trips	17
1839	57	1092	schedule.bus-trip	trips	18
1840	57	1093	schedule.bus-trip	trips	19
1841	57	1094	schedule.bus-trip	trips	20
1842	57	1095	schedule.bus-trip	trips	21
1843	57	1096	schedule.bus-trip	trips	22
1844	57	1097	schedule.bus-trip	trips	23
1845	57	1098	schedule.bus-trip	trips	24
1846	57	1099	schedule.bus-trip	trips	25
1847	57	1100	schedule.bus-trip	trips	26
1848	57	1101	schedule.bus-trip	trips	27
1849	57	1102	schedule.bus-trip	trips	28
1850	57	1103	schedule.bus-trip	trips	29
1851	57	1104	schedule.bus-trip	trips	30
1852	57	1105	schedule.bus-trip	trips	31
1853	57	1106	schedule.bus-trip	trips	32
1854	57	1107	schedule.bus-trip	trips	33
1855	57	1108	schedule.bus-trip	trips	34
1856	57	1109	schedule.bus-trip	trips	35
1857	57	1110	schedule.bus-trip	trips	36
1858	57	1111	schedule.bus-trip	trips	37
1859	57	1112	schedule.bus-trip	trips	38
1860	57	1113	schedule.bus-trip	trips	39
1861	57	1114	schedule.bus-trip	trips	40
1862	57	1115	schedule.bus-trip	trips	41
1863	57	1116	schedule.bus-trip	trips	42
1864	58	1117	schedule.bus-trip	trips	1
1865	58	1118	schedule.bus-trip	trips	2
1866	58	1119	schedule.bus-trip	trips	3
1867	58	1120	schedule.bus-trip	trips	4
1868	58	1121	schedule.bus-trip	trips	5
1869	58	1122	schedule.bus-trip	trips	6
1870	58	1123	schedule.bus-trip	trips	7
1871	58	1124	schedule.bus-trip	trips	8
1872	58	1125	schedule.bus-trip	trips	9
1873	58	1126	schedule.bus-trip	trips	10
1874	58	1127	schedule.bus-trip	trips	11
1875	58	1128	schedule.bus-trip	trips	12
1876	58	1129	schedule.bus-trip	trips	13
1877	58	1130	schedule.bus-trip	trips	14
1878	58	1131	schedule.bus-trip	trips	15
1879	58	1132	schedule.bus-trip	trips	16
1880	58	1133	schedule.bus-trip	trips	17
1881	58	1134	schedule.bus-trip	trips	18
1882	58	1135	schedule.bus-trip	trips	19
1883	58	1136	schedule.bus-trip	trips	20
1884	58	1137	schedule.bus-trip	trips	21
1885	58	1138	schedule.bus-trip	trips	22
1886	58	1139	schedule.bus-trip	trips	23
1887	58	1140	schedule.bus-trip	trips	24
2164	61	1283	schedule.bus-trip	trips	39
2165	61	1284	schedule.bus-trip	trips	40
2166	61	1285	schedule.bus-trip	trips	41
2167	61	1286	schedule.bus-trip	trips	42
2168	61	1287	schedule.bus-trip	trips	43
2169	61	1288	schedule.bus-trip	trips	44
2170	61	1289	schedule.bus-trip	trips	45
2171	61	1290	schedule.bus-trip	trips	46
2172	62	1291	schedule.bus-trip	trips	1
2173	62	1292	schedule.bus-trip	trips	2
2174	62	1293	schedule.bus-trip	trips	3
2175	62	1294	schedule.bus-trip	trips	4
2176	62	1295	schedule.bus-trip	trips	5
2177	62	1296	schedule.bus-trip	trips	6
2178	62	1297	schedule.bus-trip	trips	7
2179	62	1298	schedule.bus-trip	trips	8
2180	62	1299	schedule.bus-trip	trips	9
2181	62	1300	schedule.bus-trip	trips	10
2182	62	1301	schedule.bus-trip	trips	11
2183	62	1302	schedule.bus-trip	trips	12
2184	62	1303	schedule.bus-trip	trips	13
2185	62	1304	schedule.bus-trip	trips	14
2186	62	1305	schedule.bus-trip	trips	15
2187	62	1306	schedule.bus-trip	trips	16
2188	62	1307	schedule.bus-trip	trips	17
2189	62	1308	schedule.bus-trip	trips	18
2190	62	1309	schedule.bus-trip	trips	19
2191	62	1310	schedule.bus-trip	trips	20
2192	62	1311	schedule.bus-trip	trips	21
2193	62	1312	schedule.bus-trip	trips	22
2194	62	1313	schedule.bus-trip	trips	23
2195	62	1314	schedule.bus-trip	trips	24
2196	62	1315	schedule.bus-trip	trips	25
2197	62	1316	schedule.bus-trip	trips	26
2198	62	1317	schedule.bus-trip	trips	27
2199	62	1318	schedule.bus-trip	trips	28
2200	62	1319	schedule.bus-trip	trips	29
2201	62	1320	schedule.bus-trip	trips	30
2202	62	1321	schedule.bus-trip	trips	31
2203	62	1322	schedule.bus-trip	trips	32
2204	62	1323	schedule.bus-trip	trips	33
2205	62	1324	schedule.bus-trip	trips	34
2206	62	1325	schedule.bus-trip	trips	35
2207	62	1326	schedule.bus-trip	trips	36
2208	62	1327	schedule.bus-trip	trips	37
2209	62	1328	schedule.bus-trip	trips	38
2210	62	1329	schedule.bus-trip	trips	39
2211	62	1330	schedule.bus-trip	trips	40
2212	62	1331	schedule.bus-trip	trips	41
2213	62	1332	schedule.bus-trip	trips	42
2214	62	1333	schedule.bus-trip	trips	43
2215	62	1334	schedule.bus-trip	trips	44
2216	62	1335	schedule.bus-trip	trips	45
2217	62	1336	schedule.bus-trip	trips	46
804	28	429	schedule.bus-trip	trips	4
805	28	430	schedule.bus-trip	trips	5
806	28	431	schedule.bus-trip	trips	6
807	28	432	schedule.bus-trip	trips	7
2243	63	1337	schedule.bus-trip	trips	1
2244	63	1338	schedule.bus-trip	trips	2
2245	63	1339	schedule.bus-trip	trips	3
2246	63	1340	schedule.bus-trip	trips	4
2247	63	1341	schedule.bus-trip	trips	5
2248	63	1342	schedule.bus-trip	trips	6
2249	63	1343	schedule.bus-trip	trips	7
2250	64	1344	schedule.bus-trip	trips	1
2251	64	1345	schedule.bus-trip	trips	2
2252	64	1346	schedule.bus-trip	trips	3
2253	64	1347	schedule.bus-trip	trips	4
2254	64	1348	schedule.bus-trip	trips	5
2255	64	1349	schedule.bus-trip	trips	6
2256	65	1350	schedule.bus-trip	trips	1
2257	65	1351	schedule.bus-trip	trips	2
2258	65	1352	schedule.bus-trip	trips	3
2259	65	1353	schedule.bus-trip	trips	4
2260	65	1354	schedule.bus-trip	trips	5
2261	66	1355	schedule.bus-trip	trips	1
2262	66	1356	schedule.bus-trip	trips	2
2263	66	1357	schedule.bus-trip	trips	3
2264	66	1358	schedule.bus-trip	trips	4
2265	66	1359	schedule.bus-trip	trips	5
2266	66	1360	schedule.bus-trip	trips	6
2267	66	1361	schedule.bus-trip	trips	7
1040	46	627	schedule.bus-trip	trips	54
1041	46	628	schedule.bus-trip	trips	55
1042	46	629	schedule.bus-trip	trips	56
1043	46	630	schedule.bus-trip	trips	57
1044	46	631	schedule.bus-trip	trips	58
1045	46	632	schedule.bus-trip	trips	59
2461	71	1411	schedule.bus-trip	trips	38
2462	71	1412	schedule.bus-trip	trips	39
2463	71	1413	schedule.bus-trip	trips	40
2464	71	1414	schedule.bus-trip	trips	41
2465	71	1415	schedule.bus-trip	trips	42
2466	71	1416	schedule.bus-trip	trips	43
2467	71	1417	schedule.bus-trip	trips	44
2468	71	1418	schedule.bus-trip	trips	45
2469	71	1419	schedule.bus-trip	trips	46
2470	71	1420	schedule.bus-trip	trips	47
2471	71	1421	schedule.bus-trip	trips	48
2472	71	1422	schedule.bus-trip	trips	49
2473	71	1423	schedule.bus-trip	trips	50
2474	71	1424	schedule.bus-trip	trips	51
2475	71	1425	schedule.bus-trip	trips	52
2476	71	1426	schedule.bus-trip	trips	53
2477	71	1427	schedule.bus-trip	trips	54
2478	71	1428	schedule.bus-trip	trips	55
2479	71	1429	schedule.bus-trip	trips	56
2480	71	1430	schedule.bus-trip	trips	57
2481	71	1431	schedule.bus-trip	trips	58
2482	71	1432	schedule.bus-trip	trips	59
2483	71	1433	schedule.bus-trip	trips	60
2484	71	1434	schedule.bus-trip	trips	61
2485	71	1435	schedule.bus-trip	trips	62
2486	71	1436	schedule.bus-trip	trips	63
2487	71	1437	schedule.bus-trip	trips	64
2488	71	1438	schedule.bus-trip	trips	65
2489	71	1439	schedule.bus-trip	trips	66
2490	71	1440	schedule.bus-trip	trips	67
2491	72	1441	schedule.bus-trip	trips	1
2492	72	1442	schedule.bus-trip	trips	2
2493	72	1443	schedule.bus-trip	trips	3
2494	72	1444	schedule.bus-trip	trips	4
2495	72	1445	schedule.bus-trip	trips	5
2496	72	1446	schedule.bus-trip	trips	6
2497	72	1447	schedule.bus-trip	trips	7
2498	72	1448	schedule.bus-trip	trips	8
2499	72	1449	schedule.bus-trip	trips	9
2500	72	1450	schedule.bus-trip	trips	10
2501	72	1451	schedule.bus-trip	trips	11
2502	72	1452	schedule.bus-trip	trips	12
2503	72	1453	schedule.bus-trip	trips	13
2504	72	1454	schedule.bus-trip	trips	14
2505	72	1455	schedule.bus-trip	trips	15
2506	72	1456	schedule.bus-trip	trips	16
2507	72	1457	schedule.bus-trip	trips	17
2508	72	1458	schedule.bus-trip	trips	18
2509	72	1459	schedule.bus-trip	trips	19
2510	72	1460	schedule.bus-trip	trips	20
2511	72	1461	schedule.bus-trip	trips	21
2512	72	1462	schedule.bus-trip	trips	22
2513	72	1463	schedule.bus-trip	trips	23
2514	72	1464	schedule.bus-trip	trips	24
2515	72	1465	schedule.bus-trip	trips	25
2516	72	1466	schedule.bus-trip	trips	26
2517	72	1467	schedule.bus-trip	trips	27
2518	72	1468	schedule.bus-trip	trips	28
2519	72	1469	schedule.bus-trip	trips	29
2520	72	1470	schedule.bus-trip	trips	30
2521	72	1471	schedule.bus-trip	trips	31
2522	72	1472	schedule.bus-trip	trips	32
2523	72	1473	schedule.bus-trip	trips	33
2524	72	1474	schedule.bus-trip	trips	34
2525	72	1475	schedule.bus-trip	trips	35
2526	72	1476	schedule.bus-trip	trips	36
2527	72	1477	schedule.bus-trip	trips	37
2528	72	1478	schedule.bus-trip	trips	38
2529	72	1479	schedule.bus-trip	trips	39
2530	72	1480	schedule.bus-trip	trips	40
2531	72	1481	schedule.bus-trip	trips	41
2532	72	1482	schedule.bus-trip	trips	42
2533	72	1483	schedule.bus-trip	trips	43
2534	72	1484	schedule.bus-trip	trips	44
2535	72	1485	schedule.bus-trip	trips	45
2536	72	1486	schedule.bus-trip	trips	46
2537	72	1487	schedule.bus-trip	trips	47
2538	72	1488	schedule.bus-trip	trips	48
2539	72	1489	schedule.bus-trip	trips	49
2540	72	1490	schedule.bus-trip	trips	50
2541	72	1491	schedule.bus-trip	trips	51
2542	72	1492	schedule.bus-trip	trips	52
2543	72	1493	schedule.bus-trip	trips	53
2544	72	1494	schedule.bus-trip	trips	54
2545	72	1495	schedule.bus-trip	trips	55
2546	72	1496	schedule.bus-trip	trips	56
2547	72	1497	schedule.bus-trip	trips	57
2548	72	1498	schedule.bus-trip	trips	58
2549	72	1499	schedule.bus-trip	trips	59
2550	72	1500	schedule.bus-trip	trips	60
2551	72	1501	schedule.bus-trip	trips	61
2552	72	1502	schedule.bus-trip	trips	62
2553	72	1503	schedule.bus-trip	trips	63
2554	72	1504	schedule.bus-trip	trips	64
2555	72	1505	schedule.bus-trip	trips	65
1888	58	1141	schedule.bus-trip	trips	25
1889	58	1142	schedule.bus-trip	trips	26
1890	58	1143	schedule.bus-trip	trips	27
1891	58	1144	schedule.bus-trip	trips	28
1892	58	1145	schedule.bus-trip	trips	29
1893	58	1146	schedule.bus-trip	trips	30
1894	58	1147	schedule.bus-trip	trips	31
1895	58	1148	schedule.bus-trip	trips	32
1896	58	1149	schedule.bus-trip	trips	33
1897	58	1150	schedule.bus-trip	trips	34
1898	58	1151	schedule.bus-trip	trips	35
1899	58	1152	schedule.bus-trip	trips	36
3165	79	1778	schedule.bus-trip	trips	21
3166	79	1779	schedule.bus-trip	trips	22
3167	79	1780	schedule.bus-trip	trips	23
3168	79	1781	schedule.bus-trip	trips	24
3169	79	1782	schedule.bus-trip	trips	25
3170	79	1783	schedule.bus-trip	trips	26
3171	79	1784	schedule.bus-trip	trips	27
3172	79	1785	schedule.bus-trip	trips	28
3173	79	1786	schedule.bus-trip	trips	29
3174	79	1787	schedule.bus-trip	trips	30
3175	79	1788	schedule.bus-trip	trips	31
3176	79	1789	schedule.bus-trip	trips	32
3177	79	1790	schedule.bus-trip	trips	33
3178	79	1791	schedule.bus-trip	trips	34
3179	79	1792	schedule.bus-trip	trips	35
3180	79	1793	schedule.bus-trip	trips	36
3181	79	1794	schedule.bus-trip	trips	37
3182	79	1795	schedule.bus-trip	trips	38
3183	79	1796	schedule.bus-trip	trips	39
3184	79	1797	schedule.bus-trip	trips	40
3185	79	1798	schedule.bus-trip	trips	41
3186	79	1799	schedule.bus-trip	trips	42
3187	80	1800	schedule.bus-trip	trips	1
3188	80	1801	schedule.bus-trip	trips	2
3189	80	1802	schedule.bus-trip	trips	3
3190	80	1803	schedule.bus-trip	trips	4
3191	80	1804	schedule.bus-trip	trips	5
3192	80	1805	schedule.bus-trip	trips	6
3193	80	1806	schedule.bus-trip	trips	7
3194	80	1807	schedule.bus-trip	trips	8
3195	80	1808	schedule.bus-trip	trips	9
3196	80	1809	schedule.bus-trip	trips	10
3197	80	1810	schedule.bus-trip	trips	11
3198	80	1811	schedule.bus-trip	trips	12
3199	80	1812	schedule.bus-trip	trips	13
3200	80	1813	schedule.bus-trip	trips	14
3201	80	1814	schedule.bus-trip	trips	15
3202	80	1815	schedule.bus-trip	trips	16
3203	80	1816	schedule.bus-trip	trips	17
3204	80	1817	schedule.bus-trip	trips	18
3205	80	1818	schedule.bus-trip	trips	19
3206	80	1819	schedule.bus-trip	trips	20
3207	80	1820	schedule.bus-trip	trips	21
3208	80	1821	schedule.bus-trip	trips	22
3209	80	1822	schedule.bus-trip	trips	23
3210	80	1823	schedule.bus-trip	trips	24
3211	80	1824	schedule.bus-trip	trips	25
3212	80	1825	schedule.bus-trip	trips	26
3213	80	1826	schedule.bus-trip	trips	27
3214	80	1827	schedule.bus-trip	trips	28
3215	80	1828	schedule.bus-trip	trips	29
3216	80	1829	schedule.bus-trip	trips	30
3217	80	1830	schedule.bus-trip	trips	31
3218	80	1831	schedule.bus-trip	trips	32
3219	80	1832	schedule.bus-trip	trips	33
3220	80	1833	schedule.bus-trip	trips	34
3221	80	1834	schedule.bus-trip	trips	35
3222	80	1835	schedule.bus-trip	trips	36
3223	80	1836	schedule.bus-trip	trips	37
3224	80	1837	schedule.bus-trip	trips	38
3225	80	1838	schedule.bus-trip	trips	39
3226	80	1839	schedule.bus-trip	trips	40
3227	80	1840	schedule.bus-trip	trips	41
3228	80	1841	schedule.bus-trip	trips	42
3229	80	1842	schedule.bus-trip	trips	43
\.


--
-- Data for Name: components_schedule_bus_trips; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_schedule_bus_trips (id, "time", note, is_short) FROM stdin;
1362	10:00	\N	\N
1363	12:40	\N	\N
1364	15:00	далі по маршруту №81 до мкр. Ракетне Урочище	t
1365	11:10	\N	\N
421	10:00	\N	\N
422	11:10	\N	\N
423	12:30	\N	\N
1366	13:50	\N	\N
1367	08:00	\N	\N
1368	10:20	\N	\N
1369	13:00	\N	\N
1370	15:20	далі по маршруту №81 до мкр. Намив	t
1371	09:10	\N	\N
1372	11:30	\N	\N
1373	14:10	\N	\N
5	06:35	з 6-ї Слобідської до Намиву	t
1	07:00	\N	\N
903	07:20	\N	\N
904	08:00	\N	\N
905	08:20	\N	\N
906	09:00	\N	\N
907	09:20	\N	\N
935	18:40	\N	\N
936	19:00	до 6-ї Слобідської	t
424	13:40	\N	\N
425	14:50	\N	\N
426	10:30	\N	\N
427	11:40	\N	\N
937	19:20	до 6-ї Слобідської	t
938	19:40	\N	\N
939	20:40	\N	\N
940	21:40	\N	\N
428	12:00	\N	\N
429	12:45	\N	\N
430	13:30	\N	\N
431	14:10	\N	\N
432	15:20	далі по маршруту №79 до Веламу	t
941	22:30	до 6-ї Слобідської	t
3	06:40	З 6-ї Слобідської до Ракетного Урочища	t
4	07:00	\N	f
942	07:20	\N	\N
943	08:00	\N	\N
960	14:00	\N	\N
961	14:20	\N	\N
962	14:40	\N	\N
963	15:00	\N	\N
964	15:20	\N	\N
965	15:40	\N	\N
966	16:00	\N	\N
967	16:20	\N	\N
968	16:40	\N	\N
969	17:00	\N	\N
970	17:20	\N	\N
971	17:40	\N	\N
972	18:00	\N	\N
973	18:20	\N	\N
974	18:40	\N	\N
975	19:00	до 3-ї Слобідської	t
976	19:20	до 3-ї Слобідської	t
977	19:40	\N	\N
978	20:40	\N	\N
979	21:40	\N	\N
980	22:30	до 6-ї Слобідської	t
1506	06:35	з 6-ї Слобідської до Намиву	t
1507	07:00	\N	\N
1508	07:20	\N	\N
1509	08:00	\N	\N
1510	08:20	\N	\N
1511	09:00	\N	\N
1512	09:20	\N	\N
1513	10:00	\N	\N
1514	10:10	з 3-ї Слобідської до Намиву	t
1515	10:20	\N	\N
1516	10:40	\N	\N
1517	11:00	\N	\N
1518	11:20	\N	\N
1519	11:40	\N	\N
1520	12:00	\N	\N
1521	12:20	\N	\N
1522	12:40	\N	\N
1523	13:00	\N	\N
1524	13:20	\N	\N
1525	13:40	\N	\N
1526	14:00	\N	\N
1527	14:20	\N	\N
1528	14:40	\N	\N
1529	15:00	\N	\N
1530	15:20	\N	\N
1531	15:40	\N	\N
1532	16:00	\N	\N
1533	16:20	\N	\N
1534	16:40	\N	\N
1535	17:00	\N	\N
1536	17:20	\N	\N
1537	17:40	\N	\N
1538	18:00	\N	\N
1539	18:20	\N	\N
1540	18:40	\N	\N
1541	19:00	до 6-ї Слобідської	t
1542	19:20	до 6-ї Слобідської	t
1543	19:40	\N	\N
1544	20:40	\N	\N
1545	21:40	\N	\N
1546	22:30	до 6-ї Слобідської	t
1547	06:40	З 6-ї Слобідської до Ракетного Урочища	t
1548	07:00	\N	f
1549	07:20	\N	\N
1076	06:00	з 6-ї Слобідської до Балабанівки	t
1077	06:20	з 6-ї Слобідської до Балабанівки	t
1078	06:20	\N	f
1079	06:45	\N	\N
1080	07:10	\N	f
10	05:40	З автовокзалу	t
22	06:00	З автовокзалу	t
11	06:15	\N	\N
23	06:20	З автовокзалу	t
24	06:45	З автовокзалу	t
25	06:40	\N	f
26	07:00	\N	\N
27	07:25	\N	\N
28	07:50	\N	\N
29	08:15	\N	\N
30	08:40	\N	\N
31	09:05	\N	\N
32	09:30	\N	\N
33	09:30	З автовокзалу	\N
34	09:50	\N	\N
35	10:10	\N	\N
36	10:30	\N	\N
37	10:50	\N	\N
38	11:10	\N	\N
39	11:30	\N	\N
40	11:50	\N	\N
41	12:10	\N	\N
42	12:30	\N	\N
43	12:50	\N	\N
44	13:10	\N	\N
45	13:30	\N	\N
46	13:50	\N	\N
47	14:10	\N	\N
48	14:30	\N	\N
507	05:40	З пл. Перемоги до Веламу	t
508	05:55	З пл. Перемоги до Веламу	t
509	06:00	\N	\N
510	06:10	З пл. Перемоги до Веламу	t
511	06:20	\N	\N
512	06:30	З пл. Перемоги до Веламу	t
513	06:40	\N	\N
514	06:45	З пл. Перемоги до Веламу	t
515	07:00	\N	\N
516	07:20	\N	\N
517	07:35	\N	\N
518	07:50	\N	\N
519	08:10	\N	\N
520	08:25	\N	\N
521	08:40	\N	\N
522	08:55	\N	\N
523	09:15	\N	\N
524	09:30	\N	\N
525	09:45	\N	\N
526	10:00	\N	\N
527	10:15	\N	\N
528	10:35	\N	\N
529	10:50	\N	\N
530	11:05	\N	\N
531	11:20	\N	\N
532	11:35	\N	\N
533	11:55	\N	\N
534	12:10	\N	\N
535	12:25	\N	\N
536	12:40	\N	\N
537	12:55	\N	\N
538	13:15	\N	\N
539	13:30	\N	\N
540	13:55	до пл. Перемоги	t
541	14:15	\N	\N
542	14:30	до пл. Перемоги	t
543	14:45	\N	\N
544	15:00	до пл. Перемоги	\N
545	15:00	з пл. Перемоги до Веламу	t
546	15:20	\N	\N
547	15:35	з пл. Перемоги до Веламу	\N
548	15:35	\N	\N
549	15:50	\N	\N
550	16:05	з пл. Перемоги до Веламу	\N
551	16:10	\N	\N
552	16:25	\N	\N
553	16:40	\N	\N
554	16:55	\N	\N
555	17:10	\N	\N
556	17:25	\N	\N
557	17:40	\N	\N
558	17:55	\N	\N
559	18:10	до 6-ї слобідської	t
560	18:30	\N	\N
561	18:45	до 6-ї слобідської	\N
562	19:00	\N	\N
563	19:20	\N	\N
564	19:35	до Автовокзалу	\N
565	19:45	\N	\N
566	20:15	\N	\N
567	20:30	\N	\N
568	21:00	\N	\N
569	21:30	\N	\N
570	21:45	\N	\N
571	22:10	до Автовокзалу	t
572	22:30	до Автовокзалу	t
573	22:45	до Автовокзалу	t
574	05:20	з пл. Перемоги до Варварівки	t
575	05:35	з пл. Перемоги до Варварівки	t
576	06:00	\N	\N
577	06:00	з пл. Перемоги до Варварівки	t
578	06:15	\N	\N
579	06:25	з пл. Перемоги до Варварівки	t
580	06:30	\N	\N
581	06:50	\N	\N
582	07:05	\N	\N
583	07:20	\N	\N
584	07:35	\N	\N
585	07:50	\N	\N
586	08:10	\N	\N
587	08:25	\N	\N
588	08:40	\N	\N
589	08:55	\N	\N
590	09:15	\N	\N
591	09:30	\N	\N
592	09:45	\N	\N
593	10:00	\N	\N
594	10:15	\N	\N
595	10:35	\N	\N
596	10:50	\N	\N
597	11:05	\N	\N
598	11:20	\N	\N
599	11:35	\N	\N
600	11:55	\N	\N
601	12:10	\N	\N
602	12:25	\N	\N
603	12:40	\N	\N
604	12:55	\N	\N
605	13:15	\N	\N
606	13:30	\N	\N
607	13:45	\N	\N
608	13:55	до пл. Перемоги	t
609	14:15	\N	\N
610	14:30	до пл. Перемоги	t
611	14:40	з пл. Перемоги до Варварівки	t
612	14:45	\N	\N
613	15:00	до пл. Перемоги	t
614	15:10	з пл. Перемоги до Варварівки	t
615	15:20	\N	\N
616	15:35	\N	\N
617	15:45	з пл. Перемоги до Варварівки	\N
618	15:50	\N	\N
619	16:10	\N	\N
620	16:25	\N	\N
621	16:40	\N	\N
1550	08:00	\N	\N
1551	08:20	\N	\N
1552	09:00	\N	\N
1553	09:20	\N	\N
1554	10:00	\N	\N
1555	10:10	З 3-ї Слобідської до Ракетного Урочища	t
1556	10:20	\N	\N
1557	10:40	\N	\N
1558	11:00	\N	\N
1559	11:20	\N	\N
1560	11:40	\N	\N
1561	12:00	\N	\N
1562	12:20	\N	\N
1563	12:40	\N	\N
1564	13:00	\N	\N
1565	13:20	\N	\N
1566	13:40	\N	\N
1567	14:00	\N	\N
1568	14:20	\N	\N
1569	14:40	\N	\N
1570	15:00	\N	\N
1571	15:20	\N	\N
70	07:00	\N	\N
71	07:25	\N	\N
202	08:00	\N	\N
203	09:10	\N	\N
204	10:20	\N	\N
205	11:30	\N	\N
206	12:50	\N	\N
207	14:00	\N	\N
208	15:10	далі по маршруту №79 до Веламу	t
1572	15:40	\N	\N
1573	16:00	\N	\N
1574	16:20	\N	\N
209	8:30	\N	\N
210	09:40	\N	\N
211	10:50	\N	\N
212	12:00	\N	\N
213	13:20	\N	\N
214	14:30	\N	\N
483	10:00	\N	\N
484	12:40	\N	\N
485	15:00	далі по маршруту №81 до мкр. Ракетне Урочище	t
486	11:10	\N	\N
487	13:50	\N	\N
488	08:00	\N	\N
489	10:20	\N	\N
490	13:00	\N	\N
491	15:20	далі по маршруту №81 до мкр. Намив	t
492	09:10	\N	\N
493	11:30	\N	\N
494	14:10	\N	\N
1111	18:15	\N	f
1112	18:25	до 6-ї слобідської	t
1113	18:55	до 6-ї слобідської	t
1114	19:20	\N	f
1115	20:55	\N	f
1116	21:50	до 6-ї слобідської	t
1117	06:00	з 6-ї Слобідської до стадіону	t
1118	06:20	\N	f
1119	06:25	з 6-ї Слобідської до стадіону	t
1120	06:45	\N	f
1121	06:50	з 6-ї Слобідської до стадіону	t
1122	07:05	\N	f
1123	07:35	\N	f
1124	08:00	\N	f
1125	08:25	\N	f
1126	08:50	\N	f
1127	09:15	\N	f
1128	09:35	\N	f
1129	09:50	з автовокзалу до стадіону	t
1130	09:55	\N	f
1131	10:15	\N	f
1132	10:35	\N	f
1133	10:55	\N	f
920	13:40	\N	\N
921	14:00	\N	\N
922	14:20	\N	\N
923	14:40	\N	\N
924	15:00	\N	\N
925	15:20	\N	\N
926	15:40	\N	\N
927	16:00	\N	\N
928	16:20	\N	\N
929	16:40	\N	\N
930	17:00	\N	\N
931	17:20	\N	\N
622	16:55	\N	\N
623	17:10	\N	\N
624	17:25	\N	\N
625	17:40	\N	\N
626	18:00	\N	\N
627	18:15	\N	\N
628	18:30	\N	\N
629	18:50	\N	\N
630	19:15	\N	\N
631	19:45	\N	\N
632	20:15	\N	\N
633	20:35	\N	\N
634	21:00	\N	\N
635	21:30	\N	\N
636	21:45	\N	\N
637	22:05	до Автовокзалу	t
638	22:35	до Автовокзалу	t
1374	05:40	З пл. Перемоги до Веламу	t
1375	05:55	З пл. Перемоги до Веламу	t
1376	06:00	\N	\N
1377	06:10	З пл. Перемоги до Веламу	t
1378	06:20	\N	\N
1379	06:30	З пл. Перемоги до Веламу	t
1380	06:40	\N	\N
1381	06:45	З пл. Перемоги до Веламу	t
1382	07:00	\N	\N
1383	07:20	\N	\N
1384	07:35	\N	\N
1385	07:50	\N	\N
1386	08:10	\N	\N
1387	08:25	\N	\N
1388	08:40	\N	\N
1389	08:55	\N	\N
1390	09:15	\N	\N
1391	09:30	\N	\N
72	07:50	\N	\N
73	08:15	\N	\N
74	08:40	\N	\N
75	09:05	\N	\N
76	09:30	\N	\N
77	09:30	З автовокзалу	t
78	09:50	\N	\N
79	10:10	\N	\N
80	10:30	\N	\N
81	10:50	\N	\N
82	11:10	\N	\N
83	11:30	\N	\N
84	11:50	\N	\N
85	12:10	\N	\N
86	12:30	\N	\N
87	12:50	\N	\N
88	13:10	\N	\N
89	13:30	\N	\N
90	13:50	\N	\N
91	14:10	\N	\N
92	14:30	\N	\N
93	14:50	\N	\N
94	15:10	\N	\N
95	15:30	\N	\N
96	15:50	\N	\N
97	16:10	\N	\N
98	16:30	\N	\N
99	16:50	\N	\N
100	17:10	\N	\N
101	17:30	\N	\N
102	17:45	До 6-ї Слобідської	t
103	18:00	До 6-ї Слобідської	t
104	18:20	\N	\N
105	18:35	До 6-ї Слобідської	\N
106	18:50	До 6-ї Слобідської	\N
932	17:40	\N	\N
933	18:00	\N	\N
934	18:20	\N	\N
908	10:00	\N	\N
909	10:10	з 3-ї Слобідської до Намиву	t
910	10:20	\N	\N
911	10:40	\N	\N
912	11:00	\N	\N
913	11:20	\N	\N
914	11:40	\N	\N
915	12:00	\N	\N
916	12:20	\N	\N
917	12:40	\N	\N
918	13:00	\N	\N
919	13:20	\N	\N
944	08:20	\N	\N
945	09:00	\N	\N
946	09:20	\N	\N
947	10:00	\N	\N
948	10:10	З 3-ї Слобідської до Ракетного Урочища	t
949	10:20	\N	\N
950	10:40	\N	\N
951	11:00	\N	\N
952	11:20	\N	\N
953	11:40	\N	\N
954	12:00	\N	\N
955	12:20	\N	\N
956	12:40	\N	\N
957	13:00	\N	\N
958	13:20	\N	\N
959	13:40	\N	\N
1143	14:15	\N	f
1144	14:35	\N	f
1145	14:55	\N	f
1146	15:15	\N	f
1147	15:35	\N	f
1148	15:55	\N	f
1149	16:35	\N	f
1150	16:55	\N	f
1151	17:15	\N	f
1575	16:40	\N	\N
1576	17:00	\N	\N
1577	17:20	\N	\N
1578	17:40	\N	\N
1579	18:00	\N	\N
1580	18:20	\N	\N
1581	18:40	\N	\N
1582	19:00	до 3-ї Слобідської	t
1583	19:20	до 3-ї Слобідської	t
1584	19:40	\N	\N
1585	20:40	\N	\N
1586	21:40	\N	\N
1587	22:30	до 6-ї Слобідської	t
1758	05:45	з 6-ї Слобідської до Балабанівки	t
1759	06:00	з 6-ї Слобідської до Балабанівки	t
1760	06:20	з 6-ї Слобідської до Балабанівки	t
1761	06:20	\N	f
1762	06:45	\N	\N
1763	07:10	\N	f
1764	07:35	\N	f
1765	08:20	\N	f
1766	08:50	\N	f
1767	09:10	з автовокзалу до Балабанівки	t
1768	09:15	\N	f
1769	09:40	\N	f
1770	10:05	\N	f
1771	10:20	\N	f
1772	10:40	\N	f
1773	11:00	\N	f
1774	11:20	\N	f
1775	11:40	\N	f
1776	12:00	\N	f
1777	12:40	\N	f
1778	12:55	\N	f
1779	13:20	\N	f
1780	13:40	\N	f
1781	14:00	\N	f
1782	14:20	\N	f
1100	14:40	\N	f
1101	15:00	\N	f
1102	15:20	\N	f
1103	15:40	\N	f
1104	16:00	\N	f
1105	16:30	\N	f
1106	16:45	\N	f
1107	17:00	\N	f
1108	17:20	\N	f
1109	17:40	\N	f
1110	17:45	до 6-ї слобідської	t
1134	11:20	\N	f
1135	11:40	\N	f
1136	11:55	\N	f
1137	12:25	\N	f
1138	12:40	\N	f
1139	12:55	\N	f
1140	13:15	\N	f
1141	13:35	\N	f
1142	13:55	\N	f
1152	17:45	\N	f
1153	18:00	\N	f
1154	18:10	до автовокзалу	t
1155	18:30	до автовокзалу	t
1156	18:50	до автовокзалу	t
1157	19:35	\N	f
1158	20:40	\N	f
1159	22:10	до автовокзалу	t
1392	09:45	\N	\N
1393	10:00	\N	\N
1394	10:15	\N	\N
1395	10:35	\N	\N
1396	10:50	\N	\N
1397	11:05	\N	\N
1398	11:20	\N	\N
1399	11:35	\N	\N
1400	11:55	\N	\N
1401	12:10	\N	\N
1402	12:25	\N	\N
1403	12:40	\N	\N
1404	12:55	\N	\N
1405	13:15	\N	\N
1406	13:30	\N	\N
1407	13:55	до пл. Перемоги	t
1408	14:15	\N	\N
1075	05:45	з 6-ї Слобідської до Балабанівки	t
1081	07:35	\N	f
1082	08:20	\N	f
1083	08:50	\N	f
1084	09:10	з автовокзалу до Балабанівки	t
1085	09:15	\N	f
1086	09:40	\N	f
1087	10:05	\N	f
1088	10:20	\N	f
1089	10:40	\N	f
1090	11:00	\N	f
1091	11:20	\N	f
1092	11:40	\N	f
1093	12:00	\N	f
1094	12:40	\N	f
1095	12:55	\N	f
1096	13:20	\N	f
1097	13:40	\N	f
1098	14:00	\N	f
1099	14:20	\N	f
49	14:50	\N	\N
50	15:10	\N	\N
51	15:30	\N	\N
52	15:50	\N	\N
53	16:10	\N	\N
54	16:30	\N	\N
55	16:50	\N	\N
56	17:10	\N	\N
57	17:30	\N	\N
58	17:45	До 6-ї Слобідської	t
59	18:00	До 6-ї Слобідської	t
60	18:20	\N	\N
61	18:35	До 6-ї Слобідської	t
62	18:50	До 6-ї Слобідської	t
63	19:50	\N	\N
64	21:15	\N	\N
65	22:30	До 6-ї Слобідської	\N
12	05:40	З автовокзалу	t
66	06:00	З автовокзалу	t
13	06:15	\N	\N
67	06:20	З автовокзалу	t
68	06:40	\N	\N
69	06:45	З автовокзалу	t
107	19:50	\N	\N
108	21:15	\N	\N
109	22:30	До 6-ї Слобідської	\N
1245	05:40	З автовокзалу	t
1246	06:00	З автовокзалу	t
1247	06:15	\N	\N
1248	06:20	З автовокзалу	t
1249	06:45	З автовокзалу	t
1250	06:40	\N	f
1251	07:00	\N	\N
1252	07:25	\N	\N
1253	07:50	\N	\N
1254	08:15	\N	\N
1255	08:40	\N	\N
1256	09:05	\N	\N
1257	09:30	\N	\N
1258	09:30	З автовокзалу	\N
1259	09:50	\N	\N
1260	10:10	\N	\N
1261	10:30	\N	\N
1262	10:50	\N	\N
1263	11:10	\N	\N
1264	11:30	\N	\N
1265	11:50	\N	\N
1266	12:10	\N	\N
1267	12:30	\N	\N
1268	12:50	\N	\N
1269	13:10	\N	\N
1270	13:30	\N	\N
1271	13:50	\N	\N
1272	14:10	\N	\N
1273	14:30	\N	\N
1274	14:50	\N	\N
1275	15:10	\N	\N
1276	15:30	\N	\N
1277	15:50	\N	\N
1278	16:10	\N	\N
1279	16:30	\N	\N
1280	16:50	\N	\N
1281	17:10	\N	\N
1282	17:30	\N	\N
1283	17:45	До 6-ї Слобідської	t
1284	18:00	До 6-ї Слобідської	t
1285	18:20	\N	\N
1286	18:35	До 6-ї Слобідської	t
1287	18:50	До 6-ї Слобідської	t
1288	19:50	\N	\N
1289	21:15	\N	\N
1290	22:30	До 6-ї Слобідської	\N
1291	05:40	З автовокзалу	t
1292	06:00	З автовокзалу	t
1293	06:15	\N	\N
1294	06:20	З автовокзалу	t
1295	06:40	\N	\N
1296	06:45	З автовокзалу	t
1297	07:00	\N	\N
1298	07:25	\N	\N
1299	07:50	\N	\N
1300	08:15	\N	\N
1301	08:40	\N	\N
1302	09:05	\N	\N
1303	09:30	\N	\N
1304	09:30	З автовокзалу	t
1305	09:50	\N	\N
1306	10:10	\N	\N
1307	10:30	\N	\N
1308	10:50	\N	\N
1309	11:10	\N	\N
1310	11:30	\N	\N
1311	11:50	\N	\N
1312	12:10	\N	\N
1313	12:30	\N	\N
1314	12:50	\N	\N
1315	13:10	\N	\N
1316	13:30	\N	\N
1317	13:50	\N	\N
1318	14:10	\N	\N
1319	14:30	\N	\N
1320	14:50	\N	\N
1321	15:10	\N	\N
1322	15:30	\N	\N
1323	15:50	\N	\N
1324	16:10	\N	\N
1325	16:30	\N	\N
1326	16:50	\N	\N
1327	17:10	\N	\N
1328	17:30	\N	\N
1329	17:45	До 6-ї Слобідської	t
1330	18:00	До 6-ї Слобідської	t
1331	18:20	\N	\N
1332	18:35	До 6-ї Слобідської	\N
1333	18:50	До 6-ї Слобідської	\N
1334	19:50	\N	\N
1335	21:15	\N	\N
1336	22:30	До 6-ї Слобідської	\N
1337	08:00	\N	\N
1338	09:10	\N	\N
1339	10:20	\N	\N
1340	11:30	\N	\N
1341	12:50	\N	\N
1342	14:00	\N	\N
1343	15:10	далі по маршруту №79 до Веламу	t
1344	8:30	\N	\N
1345	09:40	\N	\N
1346	10:50	\N	\N
1347	12:00	\N	\N
1348	13:20	\N	\N
1349	14:30	\N	\N
1350	10:00	\N	\N
1351	11:10	\N	\N
1352	12:30	\N	\N
1353	13:40	\N	\N
1354	14:50	\N	\N
1355	10:30	\N	\N
1356	11:40	\N	\N
1357	12:00	\N	\N
1358	12:45	\N	\N
1359	13:30	\N	\N
1360	14:10	\N	\N
1361	15:20	далі по маршруту №79 до Веламу	t
1409	14:30	до пл. Перемоги	t
1410	14:45	\N	\N
1411	15:00	до пл. Перемоги	\N
1412	15:00	з пл. Перемоги до Веламу	t
1413	15:20	\N	\N
1414	15:35	з пл. Перемоги до Веламу	\N
1415	15:35	\N	\N
1416	15:50	\N	\N
1417	16:05	з пл. Перемоги до Веламу	\N
1418	16:10	\N	\N
1419	16:25	\N	\N
1420	16:40	\N	\N
1421	16:55	\N	\N
1422	17:10	\N	\N
1423	17:25	\N	\N
1424	17:40	\N	\N
1425	17:55	\N	\N
1426	18:10	до 6-ї слобідської	t
1427	18:30	\N	\N
1428	18:45	до 6-ї слобідської	\N
1429	19:00	\N	\N
1430	19:20	\N	\N
1431	19:35	до Автовокзалу	\N
1432	19:45	\N	\N
1433	20:15	\N	\N
1434	20:30	\N	\N
1435	21:00	\N	\N
1436	21:30	\N	\N
1437	21:45	\N	\N
1438	22:10	до Автовокзалу	t
1439	22:30	до Автовокзалу	t
1440	22:45	до Автовокзалу	t
1441	05:20	з пл. Перемоги до Варварівки	t
1442	05:35	з пл. Перемоги до Варварівки	t
1443	06:00	\N	\N
1444	06:00	з пл. Перемоги до Варварівки	t
1445	06:15	\N	\N
1446	06:25	з пл. Перемоги до Варварівки	t
1447	06:30	\N	\N
1448	06:50	\N	\N
1449	07:05	\N	\N
1450	07:20	\N	\N
1451	07:35	\N	\N
1452	07:50	\N	\N
1453	08:10	\N	\N
1454	08:25	\N	\N
1455	08:40	\N	\N
1456	08:55	\N	\N
1457	09:15	\N	\N
1458	09:30	\N	\N
1459	09:45	\N	\N
1460	10:00	\N	\N
1461	10:15	\N	\N
1462	10:35	\N	\N
1463	10:50	\N	\N
1464	11:05	\N	\N
1465	11:20	\N	\N
1466	11:35	\N	\N
1467	11:55	\N	\N
1468	12:10	\N	\N
1469	12:25	\N	\N
1470	12:40	\N	\N
1471	12:55	\N	\N
1472	13:15	\N	\N
1473	13:30	\N	\N
1474	13:45	\N	\N
1475	13:55	до пл. Перемоги	t
1476	14:15	\N	\N
1477	14:30	до пл. Перемоги	t
1478	14:40	з пл. Перемоги до Варварівки	t
1479	14:45	\N	\N
1480	15:00	до пл. Перемоги	t
1481	15:10	з пл. Перемоги до Варварівки	t
1482	15:20	\N	\N
1483	15:35	\N	\N
1484	15:45	з пл. Перемоги до Варварівки	\N
1485	15:50	\N	\N
1486	16:10	\N	\N
1487	16:25	\N	\N
1488	16:40	\N	\N
1489	16:55	\N	\N
1490	17:10	\N	\N
1491	17:25	\N	\N
1492	17:40	\N	\N
1493	18:00	\N	\N
1494	18:15	\N	\N
1495	18:30	\N	\N
1496	18:50	\N	\N
1497	19:15	\N	\N
1498	19:45	\N	\N
1499	20:15	\N	\N
1500	20:35	\N	\N
1501	21:00	\N	\N
1502	21:30	\N	\N
1503	21:45	\N	\N
1504	22:05	до Автовокзалу	t
1505	22:35	до Автовокзалу	t
1783	14:40	\N	f
1784	15:00	\N	f
1785	15:20	\N	f
1786	15:40	\N	f
1787	16:00	\N	f
1788	16:30	\N	f
1789	16:45	\N	f
1790	17:00	\N	f
1791	17:20	\N	f
1792	17:40	\N	f
1793	17:45	до 6-ї слобідської	t
1794	18:15	\N	f
1795	18:25	до 6-ї слобідської	t
1796	18:55	до 6-ї слобідської	t
1797	19:20	\N	f
1798	20:55	\N	f
1799	21:50	до 6-ї слобідської	t
1800	06:00	з 6-ї Слобідської до стадіону	t
1801	06:20	\N	f
1802	06:25	з 6-ї Слобідської до стадіону	t
1803	06:45	\N	f
1804	06:50	з 6-ї Слобідської до стадіону	t
1805	07:05	\N	f
1806	07:35	\N	f
1807	08:00	\N	f
1808	08:25	\N	f
1809	08:50	\N	f
1810	09:15	\N	f
1811	09:35	\N	f
1812	09:50	з автовокзалу до стадіону	t
1813	09:55	\N	f
1814	10:15	\N	f
1815	10:35	\N	f
1816	10:55	\N	f
1817	11:20	\N	f
1818	11:40	\N	f
1819	11:55	\N	f
1820	12:25	\N	f
1821	12:40	\N	f
1822	12:55	\N	f
1823	13:15	\N	f
1824	13:35	\N	f
1825	13:55	\N	f
1826	14:15	\N	f
1827	14:35	\N	f
1828	14:55	\N	f
1829	15:15	\N	f
1830	15:35	\N	f
1831	15:55	\N	f
1832	16:35	\N	f
1833	16:55	\N	f
1834	17:15	\N	f
1835	17:45	\N	f
1836	18:00	\N	f
1837	18:10	до автовокзалу	t
1838	18:30	до автовокзалу	t
1839	18:50	до автовокзалу	t
1840	19:35	\N	f
1841	20:40	\N	f
1842	22:10	до автовокзалу	t
\.


--
-- Data for Name: contact_messages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.contact_messages (id, document_id, name, email, subject, message, status_field, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, phone_number) FROM stdin;
1	ancrtbnrwxojihdwe3my04tr	Блідар Владислав	blidarv871@gmail.com	Скарга на роботу водія	Воділа не дав скористатися терміналом	new	2026-03-11 10:36:25.776	2026-03-11 10:36:25.776	\N	\N	\N	\N	380956802562
2	ancrtbnrwxojihdwe3my04tr	Блідар Владислав	blidarv871@gmail.com	Скарга на роботу водія	Воділа не дав скористатися терміналом	new	2026-03-11 10:36:25.776	2026-03-11 10:36:25.776	2026-03-11 10:36:25.785	\N	\N	\N	380956802562
3	q2sgxhfva7rdnly9xohk36u3	Богдан Бойченко	blidarv871@gmail.com	Запит про розклад	а де автобуси альо я сіки чекаю	new	2026-03-11 10:59:00.345	2026-03-11 10:59:00.345	\N	\N	\N	\N	380632161650
4	q2sgxhfva7rdnly9xohk36u3	Богдан Бойченко	blidarv871@gmail.com	Запит про розклад	а де автобуси альо я сіки чекаю	new	2026-03-11 10:59:00.345	2026-03-11 10:59:00.345	2026-03-11 10:59:00.354	\N	\N	\N	380632161650
5	e9ww3pc6nlif8nct7pyb9c2g	adsdsad	dasdas@dsanmk.gmail.com	Запит про розклад	asdsadas	new	2026-03-15 21:31:31.215	2026-03-15 21:31:31.215	\N	\N	\N	\N	380123123123
6	e9ww3pc6nlif8nct7pyb9c2g	adsdsad	dasdas@dsanmk.gmail.com	Запит про розклад	asdsadas	new	2026-03-15 21:31:31.215	2026-03-15 21:31:31.215	2026-03-15 21:31:31.23	\N	\N	\N	380123123123
13	ifezjv3xtw7b2vcjuqveaqwr	фів	dsad@gmail.com	Скарга на роботу водія	asd	new	2026-03-15 21:40:02.573	2026-03-15 21:40:02.573	\N	\N	\N	\N	380231333133
14	ifezjv3xtw7b2vcjuqveaqwr	фів	dsad@gmail.com	Скарга на роботу водія	asd	new	2026-03-15 21:40:02.573	2026-03-15 21:40:02.573	2026-03-15 21:40:02.578	\N	\N	\N	380231333133
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, focal_point) FROM stdin;
1	bh41xtqs0ll9nicdn74wdof0	daviddoe@strapi	An image uploaded to Strapi called daviddoe@strapi	daviddoe@strapi	1200	1345	{"large": {"ext": ".jpeg", "url": "/uploads/large_daviddoe_strapi_dae42581f6.jpeg", "hash": "large_daviddoe_strapi_dae42581f6", "mime": "image/jpeg", "name": "large_daviddoe@strapi", "path": null, "size": 76.95, "width": 892, "height": 1000, "sizeInBytes": 76951}, "small": {"ext": ".jpeg", "url": "/uploads/small_daviddoe_strapi_dae42581f6.jpeg", "hash": "small_daviddoe_strapi_dae42581f6", "mime": "image/jpeg", "name": "small_daviddoe@strapi", "path": null, "size": 23.36, "width": 446, "height": 500, "sizeInBytes": 23361}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_daviddoe_strapi_dae42581f6.jpeg", "hash": "medium_daviddoe_strapi_dae42581f6", "mime": "image/jpeg", "name": "medium_daviddoe@strapi", "path": null, "size": 46.85, "width": 669, "height": 750, "sizeInBytes": 46854}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_daviddoe_strapi_dae42581f6.jpeg", "hash": "thumbnail_daviddoe_strapi_dae42581f6", "mime": "image/jpeg", "name": "thumbnail_daviddoe@strapi", "path": null, "size": 4.21, "width": 139, "height": 156, "sizeInBytes": 4210}}	daviddoe_strapi_dae42581f6	.jpeg	image/jpeg	106.75	/uploads/daviddoe_strapi_dae42581f6.jpeg	\N	local	\N	/	2026-01-26 14:36:49.517	2026-01-26 14:36:49.517	2026-01-26 14:36:49.518	\N	\N	\N	\N
2	f25p2f4wblknws5p9fwg8hza	sarahbaker@strapi	An image uploaded to Strapi called sarahbaker@strapi	sarahbaker@strapi	1200	992	{"large": {"ext": ".jpeg", "url": "/uploads/large_sarahbaker_strapi_887733d5dd.jpeg", "hash": "large_sarahbaker_strapi_887733d5dd", "mime": "image/jpeg", "name": "large_sarahbaker@strapi", "path": null, "size": 109.88, "width": 1000, "height": 827, "sizeInBytes": 109879}, "small": {"ext": ".jpeg", "url": "/uploads/small_sarahbaker_strapi_887733d5dd.jpeg", "hash": "small_sarahbaker_strapi_887733d5dd", "mime": "image/jpeg", "name": "small_sarahbaker@strapi", "path": null, "size": 32.02, "width": 500, "height": 413, "sizeInBytes": 32015}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_sarahbaker_strapi_887733d5dd.jpeg", "hash": "medium_sarahbaker_strapi_887733d5dd", "mime": "image/jpeg", "name": "medium_sarahbaker@strapi", "path": null, "size": 65.51, "width": 750, "height": 620, "sizeInBytes": 65505}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_sarahbaker_strapi_887733d5dd.jpeg", "hash": "thumbnail_sarahbaker_strapi_887733d5dd", "mime": "image/jpeg", "name": "thumbnail_sarahbaker@strapi", "path": null, "size": 6.65, "width": 189, "height": 156, "sizeInBytes": 6646}}	sarahbaker_strapi_887733d5dd	.jpeg	image/jpeg	141.62	/uploads/sarahbaker_strapi_887733d5dd.jpeg	\N	local	\N	/	2026-01-26 14:36:49.672	2026-01-26 14:36:49.672	2026-01-26 14:36:49.673	\N	\N	\N	\N
3	seh1tgcerfa57360lxd4giht	the-internet-s-own-boy	An image uploaded to Strapi called the-internet-s-own-boy	the-internet-s-own-boy	1200	707	{"large": {"ext": ".jpeg", "url": "/uploads/large_the_internet_s_own_boy_4cb9bf0c1d.jpeg", "hash": "large_the_internet_s_own_boy_4cb9bf0c1d", "mime": "image/jpeg", "name": "large_the-internet-s-own-boy", "path": null, "size": 70.12, "width": 1000, "height": 589, "sizeInBytes": 70123}, "small": {"ext": ".jpeg", "url": "/uploads/small_the_internet_s_own_boy_4cb9bf0c1d.jpeg", "hash": "small_the_internet_s_own_boy_4cb9bf0c1d", "mime": "image/jpeg", "name": "small_the-internet-s-own-boy", "path": null, "size": 25.18, "width": 500, "height": 295, "sizeInBytes": 25184}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_the_internet_s_own_boy_4cb9bf0c1d.jpeg", "hash": "medium_the_internet_s_own_boy_4cb9bf0c1d", "mime": "image/jpeg", "name": "medium_the-internet-s-own-boy", "path": null, "size": 45.97, "width": 750, "height": 442, "sizeInBytes": 45972}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_the_internet_s_own_boy_4cb9bf0c1d.jpeg", "hash": "thumbnail_the_internet_s_own_boy_4cb9bf0c1d", "mime": "image/jpeg", "name": "thumbnail_the-internet-s-own-boy", "path": null, "size": 8.36, "width": 245, "height": 144, "sizeInBytes": 8363}}	the_internet_s_own_boy_4cb9bf0c1d	.jpeg	image/jpeg	91.55	/uploads/the_internet_s_own_boy_4cb9bf0c1d.jpeg	\N	local	\N	/	2026-01-26 14:36:49.776	2026-01-26 14:36:49.776	2026-01-26 14:36:49.777	\N	\N	\N	\N
4	hkqzfhrtkuxhu65gbdsj8eel	coffee-art	An image uploaded to Strapi called coffee-art	coffee-art	1200	671	{"large": {"ext": ".jpeg", "url": "/uploads/large_coffee_art_ff6eea5db2.jpeg", "hash": "large_coffee_art_ff6eea5db2", "mime": "image/jpeg", "name": "large_coffee-art", "path": null, "size": 42.3, "width": 1000, "height": 559, "sizeInBytes": 42299}, "small": {"ext": ".jpeg", "url": "/uploads/small_coffee_art_ff6eea5db2.jpeg", "hash": "small_coffee_art_ff6eea5db2", "mime": "image/jpeg", "name": "small_coffee-art", "path": null, "size": 15.75, "width": 500, "height": 280, "sizeInBytes": 15745}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_coffee_art_ff6eea5db2.jpeg", "hash": "medium_coffee_art_ff6eea5db2", "mime": "image/jpeg", "name": "medium_coffee-art", "path": null, "size": 28.3, "width": 750, "height": 419, "sizeInBytes": 28299}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_coffee_art_ff6eea5db2.jpeg", "hash": "thumbnail_coffee_art_ff6eea5db2", "mime": "image/jpeg", "name": "thumbnail_coffee-art", "path": null, "size": 5.9, "width": 245, "height": 137, "sizeInBytes": 5895}}	coffee_art_ff6eea5db2	.jpeg	image/jpeg	49.79	/uploads/coffee_art_ff6eea5db2.jpeg	\N	local	\N	/	2026-01-26 14:36:49.878	2026-01-26 14:36:49.878	2026-01-26 14:36:49.878	\N	\N	\N	\N
5	va2jh9v5j8tia3mne6azb8nl	coffee-beans	An image uploaded to Strapi called coffee-beans	coffee-beans	1200	800	{"large": {"ext": ".jpeg", "url": "/uploads/large_coffee_beans_02f9f16cdc.jpeg", "hash": "large_coffee_beans_02f9f16cdc", "mime": "image/jpeg", "name": "large_coffee-beans", "path": null, "size": 128.34, "width": 1000, "height": 667, "sizeInBytes": 128339}, "small": {"ext": ".jpeg", "url": "/uploads/small_coffee_beans_02f9f16cdc.jpeg", "hash": "small_coffee_beans_02f9f16cdc", "mime": "image/jpeg", "name": "small_coffee-beans", "path": null, "size": 33.84, "width": 500, "height": 333, "sizeInBytes": 33840}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_coffee_beans_02f9f16cdc.jpeg", "hash": "medium_coffee_beans_02f9f16cdc", "mime": "image/jpeg", "name": "medium_coffee-beans", "path": null, "size": 74.28, "width": 750, "height": 500, "sizeInBytes": 74278}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_coffee_beans_02f9f16cdc.jpeg", "hash": "thumbnail_coffee_beans_02f9f16cdc", "mime": "image/jpeg", "name": "thumbnail_coffee-beans", "path": null, "size": 7.95, "width": 234, "height": 156, "sizeInBytes": 7953}}	coffee_beans_02f9f16cdc	.jpeg	image/jpeg	169.30	/uploads/coffee_beans_02f9f16cdc.jpeg	\N	local	\N	/	2026-01-26 14:36:50	2026-01-26 14:36:50	2026-01-26 14:36:50	\N	\N	\N	\N
6	ik6bf6tmaonsqbxb6c5ow5il	this-shrimp-is-awesome	An image uploaded to Strapi called this-shrimp-is-awesome	this-shrimp-is-awesome	1200	630	{"large": {"ext": ".jpeg", "url": "/uploads/large_this_shrimp_is_awesome_36b1306e09.jpeg", "hash": "large_this_shrimp_is_awesome_36b1306e09", "mime": "image/jpeg", "name": "large_this-shrimp-is-awesome", "path": null, "size": 72.91, "width": 1000, "height": 525, "sizeInBytes": 72911}, "small": {"ext": ".jpeg", "url": "/uploads/small_this_shrimp_is_awesome_36b1306e09.jpeg", "hash": "small_this_shrimp_is_awesome_36b1306e09", "mime": "image/jpeg", "name": "small_this-shrimp-is-awesome", "path": null, "size": 27.02, "width": 500, "height": 263, "sizeInBytes": 27016}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_this_shrimp_is_awesome_36b1306e09.jpeg", "hash": "medium_this_shrimp_is_awesome_36b1306e09", "mime": "image/jpeg", "name": "medium_this-shrimp-is-awesome", "path": null, "size": 48.24, "width": 750, "height": 394, "sizeInBytes": 48237}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_this_shrimp_is_awesome_36b1306e09.jpeg", "hash": "thumbnail_this_shrimp_is_awesome_36b1306e09", "mime": "image/jpeg", "name": "thumbnail_this-shrimp-is-awesome", "path": null, "size": 9.63, "width": 245, "height": 129, "sizeInBytes": 9629}}	this_shrimp_is_awesome_36b1306e09	.jpeg	image/jpeg	95.48	/uploads/this_shrimp_is_awesome_36b1306e09.jpeg	\N	local	\N	/	2026-01-26 14:36:50.129	2026-01-26 14:36:50.129	2026-01-26 14:36:50.129	\N	\N	\N	\N
7	pslyh796exvalhz59b6cuuje	a-bug-is-becoming-a-meme-on-the-internet	An image uploaded to Strapi called a-bug-is-becoming-a-meme-on-the-internet	a-bug-is-becoming-a-meme-on-the-internet	1200	800	{"large": {"ext": ".jpeg", "url": "/uploads/large_a_bug_is_becoming_a_meme_on_the_internet_19cb86d098.jpeg", "hash": "large_a_bug_is_becoming_a_meme_on_the_internet_19cb86d098", "mime": "image/jpeg", "name": "large_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 51.43, "width": 1000, "height": 667, "sizeInBytes": 51430}, "small": {"ext": ".jpeg", "url": "/uploads/small_a_bug_is_becoming_a_meme_on_the_internet_19cb86d098.jpeg", "hash": "small_a_bug_is_becoming_a_meme_on_the_internet_19cb86d098", "mime": "image/jpeg", "name": "small_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 19.73, "width": 500, "height": 333, "sizeInBytes": 19732}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_a_bug_is_becoming_a_meme_on_the_internet_19cb86d098.jpeg", "hash": "medium_a_bug_is_becoming_a_meme_on_the_internet_19cb86d098", "mime": "image/jpeg", "name": "medium_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 34.52, "width": 750, "height": 500, "sizeInBytes": 34516}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_a_bug_is_becoming_a_meme_on_the_internet_19cb86d098.jpeg", "hash": "thumbnail_a_bug_is_becoming_a_meme_on_the_internet_19cb86d098", "mime": "image/jpeg", "name": "thumbnail_a-bug-is-becoming-a-meme-on-the-internet", "path": null, "size": 6.69, "width": 234, "height": 156, "sizeInBytes": 6686}}	a_bug_is_becoming_a_meme_on_the_internet_19cb86d098	.jpeg	image/jpeg	55.76	/uploads/a_bug_is_becoming_a_meme_on_the_internet_19cb86d098.jpeg	\N	local	\N	/	2026-01-26 14:36:50.292	2026-01-26 14:36:50.292	2026-01-26 14:36:50.292	\N	\N	\N	\N
8	mr08fy1ldhhb0jpf9srwo6dd	beautiful-picture	An image uploaded to Strapi called beautiful-picture	beautiful-picture	1200	799	{"large": {"ext": ".jpeg", "url": "/uploads/large_beautiful_picture_3bd6da024e.jpeg", "hash": "large_beautiful_picture_3bd6da024e", "mime": "image/jpeg", "name": "large_beautiful-picture", "path": null, "size": 88.33, "width": 1000, "height": 666, "sizeInBytes": 88333}, "small": {"ext": ".jpeg", "url": "/uploads/small_beautiful_picture_3bd6da024e.jpeg", "hash": "small_beautiful_picture_3bd6da024e", "mime": "image/jpeg", "name": "small_beautiful-picture", "path": null, "size": 24.58, "width": 500, "height": 333, "sizeInBytes": 24579}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_beautiful_picture_3bd6da024e.jpeg", "hash": "medium_beautiful_picture_3bd6da024e", "mime": "image/jpeg", "name": "medium_beautiful-picture", "path": null, "size": 51.95, "width": 750, "height": 499, "sizeInBytes": 51951}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_beautiful_picture_3bd6da024e.jpeg", "hash": "thumbnail_beautiful_picture_3bd6da024e", "mime": "image/jpeg", "name": "thumbnail_beautiful-picture", "path": null, "size": 6.42, "width": 235, "height": 156, "sizeInBytes": 6417}}	beautiful_picture_3bd6da024e	.jpeg	image/jpeg	114.28	/uploads/beautiful_picture_3bd6da024e.jpeg	\N	local	\N	/	2026-01-26 14:36:50.445	2026-01-26 14:36:50.445	2026-01-26 14:36:50.445	\N	\N	\N	\N
9	m51dda0m26rq1npw4ht59yll	what-s-inside-a-black-hole	An image uploaded to Strapi called what-s-inside-a-black-hole	what-s-inside-a-black-hole	800	466	{"small": {"ext": ".jpeg", "url": "/uploads/small_what_s_inside_a_black_hole_d98c9f2970.jpeg", "hash": "small_what_s_inside_a_black_hole_d98c9f2970", "mime": "image/jpeg", "name": "small_what-s-inside-a-black-hole", "path": null, "size": 3.87, "width": 500, "height": 291, "sizeInBytes": 3867}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_what_s_inside_a_black_hole_d98c9f2970.jpeg", "hash": "medium_what_s_inside_a_black_hole_d98c9f2970", "mime": "image/jpeg", "name": "medium_what-s-inside-a-black-hole", "path": null, "size": 6.92, "width": 750, "height": 437, "sizeInBytes": 6923}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_what_s_inside_a_black_hole_d98c9f2970.jpeg", "hash": "thumbnail_what_s_inside_a_black_hole_d98c9f2970", "mime": "image/jpeg", "name": "thumbnail_what-s-inside-a-black-hole", "path": null, "size": 1.56, "width": 245, "height": 143, "sizeInBytes": 1556}}	what_s_inside_a_black_hole_d98c9f2970	.jpeg	image/jpeg	7.50	/uploads/what_s_inside_a_black_hole_d98c9f2970.jpeg	\N	local	\N	/	2026-01-26 14:36:50.545	2026-01-26 14:36:50.545	2026-01-26 14:36:50.545	\N	\N	\N	\N
10	lrh10qubd0agyjkomxm2wxcv	favicon	An image uploaded to Strapi called favicon	favicon	512	512	{"small": {"ext": ".png", "url": "/uploads/small_favicon_99f6072838.png", "hash": "small_favicon_99f6072838", "mime": "image/png", "name": "small_favicon", "path": null, "size": 17.8, "width": 500, "height": 500, "sizeInBytes": 17800}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_favicon_99f6072838.png", "hash": "thumbnail_favicon_99f6072838", "mime": "image/png", "name": "thumbnail_favicon", "path": null, "size": 4.61, "width": 156, "height": 156, "sizeInBytes": 4605}}	favicon_99f6072838	.png	image/png	2.74	/uploads/favicon_99f6072838.png	\N	local	\N	/	2026-01-26 14:36:50.664	2026-01-26 14:36:50.664	2026-01-26 14:36:50.665	\N	\N	\N	\N
11	tcgy9wxl54t57wix7019xu4n	default-image	An image uploaded to Strapi called default-image	default-image	1208	715	{"large": {"ext": ".png", "url": "/uploads/large_default_image_7a941a7445.png", "hash": "large_default_image_7a941a7445", "mime": "image/png", "name": "large_default-image", "path": null, "size": 339.67, "width": 1000, "height": 592, "sizeInBytes": 339673}, "small": {"ext": ".png", "url": "/uploads/small_default_image_7a941a7445.png", "hash": "small_default_image_7a941a7445", "mime": "image/png", "name": "small_default-image", "path": null, "size": 77.8, "width": 500, "height": 296, "sizeInBytes": 77795}, "medium": {"ext": ".png", "url": "/uploads/medium_default_image_7a941a7445.png", "hash": "medium_default_image_7a941a7445", "mime": "image/png", "name": "medium_default-image", "path": null, "size": 181.54, "width": 750, "height": 444, "sizeInBytes": 181542}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_default_image_7a941a7445.png", "hash": "thumbnail_default_image_7a941a7445", "mime": "image/png", "name": "thumbnail_default-image", "path": null, "size": 22.25, "width": 245, "height": 145, "sizeInBytes": 22253}}	default_image_7a941a7445	.png	image/png	87.10	/uploads/default_image_7a941a7445.png	\N	local	\N	/	2026-01-26 14:36:50.93	2026-01-26 14:36:50.93	2026-01-26 14:36:50.93	\N	\N	\N	\N
12	en98ate8w3glc12jgszixr4m	658154375_1426436942611783_4541970991851018742_n.jpg	\N	\N	1200	628	{"large": {"ext": ".jpg", "url": "/uploads/large_658154375_1426436942611783_4541970991851018742_n_674783a3ff.jpg", "hash": "large_658154375_1426436942611783_4541970991851018742_n_674783a3ff", "mime": "image/jpeg", "name": "large_658154375_1426436942611783_4541970991851018742_n.jpg", "path": null, "size": 105.48, "width": 1000, "height": 523, "sizeInBytes": 105480}, "small": {"ext": ".jpg", "url": "/uploads/small_658154375_1426436942611783_4541970991851018742_n_674783a3ff.jpg", "hash": "small_658154375_1426436942611783_4541970991851018742_n_674783a3ff", "mime": "image/jpeg", "name": "small_658154375_1426436942611783_4541970991851018742_n.jpg", "path": null, "size": 36.44, "width": 500, "height": 262, "sizeInBytes": 36443}, "medium": {"ext": ".jpg", "url": "/uploads/medium_658154375_1426436942611783_4541970991851018742_n_674783a3ff.jpg", "hash": "medium_658154375_1426436942611783_4541970991851018742_n_674783a3ff", "mime": "image/jpeg", "name": "medium_658154375_1426436942611783_4541970991851018742_n.jpg", "path": null, "size": 70.67, "width": 750, "height": 393, "sizeInBytes": 70669}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_658154375_1426436942611783_4541970991851018742_n_674783a3ff.jpg", "hash": "thumbnail_658154375_1426436942611783_4541970991851018742_n_674783a3ff", "mime": "image/jpeg", "name": "thumbnail_658154375_1426436942611783_4541970991851018742_n.jpg", "path": null, "size": 8.63, "width": 245, "height": 128, "sizeInBytes": 8631}}	658154375_1426436942611783_4541970991851018742_n_674783a3ff	.jpg	image/jpeg	142.97	/uploads/658154375_1426436942611783_4541970991851018742_n_674783a3ff.jpg	\N	local	\N	/	2026-03-31 17:20:38.437	2026-03-31 17:20:38.437	2026-03-31 17:20:38.437	1	1	\N	\N
13	hrxzdtx8b33pt4utebfjpbpj	658154375_1426436942611783_4541970991851018742_n.jpg	\N	\N	1200	628	{"large": {"ext": ".jpg", "url": "/uploads/large_658154375_1426436942611783_4541970991851018742_n_a124d04e29.jpg", "hash": "large_658154375_1426436942611783_4541970991851018742_n_a124d04e29", "mime": "image/jpeg", "name": "large_658154375_1426436942611783_4541970991851018742_n.jpg", "path": null, "size": 105.48, "width": 1000, "height": 523, "sizeInBytes": 105480}, "small": {"ext": ".jpg", "url": "/uploads/small_658154375_1426436942611783_4541970991851018742_n_a124d04e29.jpg", "hash": "small_658154375_1426436942611783_4541970991851018742_n_a124d04e29", "mime": "image/jpeg", "name": "small_658154375_1426436942611783_4541970991851018742_n.jpg", "path": null, "size": 36.44, "width": 500, "height": 262, "sizeInBytes": 36443}, "medium": {"ext": ".jpg", "url": "/uploads/medium_658154375_1426436942611783_4541970991851018742_n_a124d04e29.jpg", "hash": "medium_658154375_1426436942611783_4541970991851018742_n_a124d04e29", "mime": "image/jpeg", "name": "medium_658154375_1426436942611783_4541970991851018742_n.jpg", "path": null, "size": 70.67, "width": 750, "height": 393, "sizeInBytes": 70669}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_658154375_1426436942611783_4541970991851018742_n_a124d04e29.jpg", "hash": "thumbnail_658154375_1426436942611783_4541970991851018742_n_a124d04e29", "mime": "image/jpeg", "name": "thumbnail_658154375_1426436942611783_4541970991851018742_n.jpg", "path": null, "size": 8.63, "width": 245, "height": 128, "sizeInBytes": 8631}}	658154375_1426436942611783_4541970991851018742_n_a124d04e29	.jpg	image/jpeg	142.97	/uploads/658154375_1426436942611783_4541970991851018742_n_a124d04e29.jpg	\N	local	\N	/	2026-03-31 17:57:34.836	2026-03-31 17:57:34.836	2026-03-31 17:57:34.837	1	1	\N	\N
14	be7tcrj6jhju3qkaz0b6le6h	658221327_1433508621904615_1198198794107376414_n.jpg	\N	\N	1179	708	{"large": {"ext": ".jpg", "url": "/uploads/large_658221327_1433508621904615_1198198794107376414_n_3c21dd72f6.jpg", "hash": "large_658221327_1433508621904615_1198198794107376414_n_3c21dd72f6", "mime": "image/jpeg", "name": "large_658221327_1433508621904615_1198198794107376414_n.jpg", "path": null, "size": 89.14, "width": 1000, "height": 601, "sizeInBytes": 89140}, "small": {"ext": ".jpg", "url": "/uploads/small_658221327_1433508621904615_1198198794107376414_n_3c21dd72f6.jpg", "hash": "small_658221327_1433508621904615_1198198794107376414_n_3c21dd72f6", "mime": "image/jpeg", "name": "small_658221327_1433508621904615_1198198794107376414_n.jpg", "path": null, "size": 27.83, "width": 500, "height": 300, "sizeInBytes": 27831}, "medium": {"ext": ".jpg", "url": "/uploads/medium_658221327_1433508621904615_1198198794107376414_n_3c21dd72f6.jpg", "hash": "medium_658221327_1433508621904615_1198198794107376414_n_3c21dd72f6", "mime": "image/jpeg", "name": "medium_658221327_1433508621904615_1198198794107376414_n.jpg", "path": null, "size": 54.54, "width": 750, "height": 450, "sizeInBytes": 54536}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_658221327_1433508621904615_1198198794107376414_n_3c21dd72f6.jpg", "hash": "thumbnail_658221327_1433508621904615_1198198794107376414_n_3c21dd72f6", "mime": "image/jpeg", "name": "thumbnail_658221327_1433508621904615_1198198794107376414_n.jpg", "path": null, "size": 8.82, "width": 245, "height": 147, "sizeInBytes": 8822}}	658221327_1433508621904615_1198198794107376414_n_3c21dd72f6	.jpg	image/jpeg	103.65	/uploads/658221327_1433508621904615_1198198794107376414_n_3c21dd72f6.jpg	\N	local	\N	/	2026-04-07 21:28:24.102	2026-04-07 21:28:24.102	2026-04-07 21:28:24.102	1	1	\N	\N
15	dyeuxpovr0j0mw08vifqvv9v	662069038_1435087948413349_6736472999642185779_n.jpg	\N	\N	940	788	{"small": {"ext": ".jpg", "url": "/uploads/small_662069038_1435087948413349_6736472999642185779_n_aaf3b1d638.jpg", "hash": "small_662069038_1435087948413349_6736472999642185779_n_aaf3b1d638", "mime": "image/jpeg", "name": "small_662069038_1435087948413349_6736472999642185779_n.jpg", "path": null, "size": 47.54, "width": 500, "height": 419, "sizeInBytes": 47535}, "medium": {"ext": ".jpg", "url": "/uploads/medium_662069038_1435087948413349_6736472999642185779_n_aaf3b1d638.jpg", "hash": "medium_662069038_1435087948413349_6736472999642185779_n_aaf3b1d638", "mime": "image/jpeg", "name": "medium_662069038_1435087948413349_6736472999642185779_n.jpg", "path": null, "size": 89.89, "width": 750, "height": 629, "sizeInBytes": 89889}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_662069038_1435087948413349_6736472999642185779_n_aaf3b1d638.jpg", "hash": "thumbnail_662069038_1435087948413349_6736472999642185779_n_aaf3b1d638", "mime": "image/jpeg", "name": "thumbnail_662069038_1435087948413349_6736472999642185779_n.jpg", "path": null, "size": 8.5, "width": 186, "height": 156, "sizeInBytes": 8497}}	662069038_1435087948413349_6736472999642185779_n_aaf3b1d638	.jpg	image/jpeg	131.61	/uploads/662069038_1435087948413349_6736472999642185779_n_aaf3b1d638.jpg	\N	local	\N	/	2026-04-09 18:50:51.751	2026-04-09 18:50:51.751	2026-04-09 18:50:51.751	1	1	\N	\N
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
36	14	1	api::article-new.article-new	cover	1
37	14	3	api::article-new.article-new	cover	1
45	15	4	api::article-new.article-new	cover	1
46	15	8	api::article-new.article-new	cover	1
47	13	9	api::article-new.article-new	cover	1
48	13	10	api::article-new.article-new	cover	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	hnwrjgkizu7ljalwrbbqqviv	English (en)	en	2026-01-26 14:36:47.998	2026-01-26 14:36:47.998	2026-01-26 14:36:47.999	\N	\N	\N
2	j4zyrwgvvwon9rguk2ql473q	Українська	uk-UA	2026-03-11 10:14:51.565	2026-03-11 10:14:51.565	2026-03-11 10:14:51.567	1	1	\N
\.


--
-- Data for Name: route_stops; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.route_stops (id, document_id, "order", direction, on_demand, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
2655	gp9ouap64ny9vkpzrlba2ur5	1	forward	f	2026-04-11 19:03:23.722	2026-04-11 19:03:23.722	\N	\N	\N	\N
2656	gp9ouap64ny9vkpzrlba2ur5	1	forward	f	2026-04-11 19:03:23.722	2026-04-11 19:03:23.722	2026-04-11 19:03:23.736	\N	\N	\N
2657	bgfzq2dufpf7f20v114jjopk	2	forward	f	2026-04-11 19:03:23.805	2026-04-11 19:03:23.805	\N	\N	\N	\N
2658	bgfzq2dufpf7f20v114jjopk	2	forward	f	2026-04-11 19:03:23.805	2026-04-11 19:03:23.805	2026-04-11 19:03:23.827	\N	\N	\N
2659	prgxozsgholupr617vk599u2	3	forward	f	2026-04-11 19:03:23.897	2026-04-11 19:03:23.897	\N	\N	\N	\N
2660	prgxozsgholupr617vk599u2	3	forward	f	2026-04-11 19:03:23.897	2026-04-11 19:03:23.897	2026-04-11 19:03:23.909	\N	\N	\N
2661	coyceivpg0zb35hch85nwpix	4	forward	f	2026-04-11 19:03:23.971	2026-04-11 19:03:23.971	\N	\N	\N	\N
2662	coyceivpg0zb35hch85nwpix	4	forward	f	2026-04-11 19:03:23.971	2026-04-11 19:03:23.971	2026-04-11 19:03:23.982	\N	\N	\N
2663	du3dczvdrk9mcqw3802dzyn0	5	forward	f	2026-04-11 19:03:24.045	2026-04-11 19:03:24.045	\N	\N	\N	\N
2664	du3dczvdrk9mcqw3802dzyn0	5	forward	f	2026-04-11 19:03:24.045	2026-04-11 19:03:24.045	2026-04-11 19:03:24.064	\N	\N	\N
2665	gpqtmjno661wap3u71cyxxcr	6	forward	f	2026-04-11 19:03:24.158	2026-04-11 19:03:24.158	\N	\N	\N	\N
2666	gpqtmjno661wap3u71cyxxcr	6	forward	f	2026-04-11 19:03:24.158	2026-04-11 19:03:24.158	2026-04-11 19:03:24.17	\N	\N	\N
2667	vubc5eseejwplose2ll5ri0v	7	forward	f	2026-04-11 19:03:24.229	2026-04-11 19:03:24.229	\N	\N	\N	\N
2668	vubc5eseejwplose2ll5ri0v	7	forward	f	2026-04-11 19:03:24.229	2026-04-11 19:03:24.229	2026-04-11 19:03:24.238	\N	\N	\N
2669	phjit5uktc6go993mxnvuvf4	8	forward	f	2026-04-11 19:03:24.298	2026-04-11 19:03:24.298	\N	\N	\N	\N
2670	phjit5uktc6go993mxnvuvf4	8	forward	f	2026-04-11 19:03:24.298	2026-04-11 19:03:24.298	2026-04-11 19:03:24.307	\N	\N	\N
2671	jkx61e5qpe4y948waql4qp1z	9	forward	f	2026-04-11 19:03:24.362	2026-04-11 19:03:24.362	\N	\N	\N	\N
2672	jkx61e5qpe4y948waql4qp1z	9	forward	f	2026-04-11 19:03:24.362	2026-04-11 19:03:24.362	2026-04-11 19:03:24.374	\N	\N	\N
2673	asivimnqerm2aipuaeu8a54q	10	forward	f	2026-04-11 19:03:24.43	2026-04-11 19:03:24.43	\N	\N	\N	\N
2674	asivimnqerm2aipuaeu8a54q	10	forward	f	2026-04-11 19:03:24.43	2026-04-11 19:03:24.43	2026-04-11 19:03:24.437	\N	\N	\N
2675	v41y7did53hqvufifarvispm	11	forward	f	2026-04-11 19:03:24.491	2026-04-11 19:03:24.491	\N	\N	\N	\N
2676	v41y7did53hqvufifarvispm	11	forward	f	2026-04-11 19:03:24.491	2026-04-11 19:03:24.491	2026-04-11 19:03:24.5	\N	\N	\N
2677	j41a0e3th22miu6fu3e6klws	12	forward	f	2026-04-11 19:03:24.558	2026-04-11 19:03:24.558	\N	\N	\N	\N
2678	j41a0e3th22miu6fu3e6klws	12	forward	f	2026-04-11 19:03:24.558	2026-04-11 19:03:24.558	2026-04-11 19:03:24.568	\N	\N	\N
2679	u1b2ohr5huh4i21d346z9odz	13	forward	f	2026-04-11 19:03:24.622	2026-04-11 19:03:24.622	\N	\N	\N	\N
2680	u1b2ohr5huh4i21d346z9odz	13	forward	f	2026-04-11 19:03:24.622	2026-04-11 19:03:24.622	2026-04-11 19:03:24.632	\N	\N	\N
2681	f08u8jpnqws3l0cuaiy0i2ta	14	forward	f	2026-04-11 19:03:24.686	2026-04-11 19:03:24.686	\N	\N	\N	\N
2682	f08u8jpnqws3l0cuaiy0i2ta	14	forward	f	2026-04-11 19:03:24.686	2026-04-11 19:03:24.686	2026-04-11 19:03:24.695	\N	\N	\N
2683	f7v7m4fh2n113kd5iw631bnu	15	forward	f	2026-04-11 19:03:24.751	2026-04-11 19:03:24.751	\N	\N	\N	\N
2684	f7v7m4fh2n113kd5iw631bnu	15	forward	f	2026-04-11 19:03:24.751	2026-04-11 19:03:24.751	2026-04-11 19:03:24.759	\N	\N	\N
2685	gfr7xa2r1awm7ram8q5to8g3	16	forward	f	2026-04-11 19:03:24.813	2026-04-11 19:03:24.813	\N	\N	\N	\N
2686	gfr7xa2r1awm7ram8q5to8g3	16	forward	f	2026-04-11 19:03:24.813	2026-04-11 19:03:24.813	2026-04-11 19:03:24.822	\N	\N	\N
2687	u82cyccbfvmrk5j9r5g6mee8	17	forward	f	2026-04-11 19:03:24.881	2026-04-11 19:03:24.881	\N	\N	\N	\N
2688	u82cyccbfvmrk5j9r5g6mee8	17	forward	f	2026-04-11 19:03:24.881	2026-04-11 19:03:24.881	2026-04-11 19:03:24.887	\N	\N	\N
2689	carts66psgm4faomvtw957im	18	forward	f	2026-04-11 19:03:24.948	2026-04-11 19:03:24.948	\N	\N	\N	\N
2690	carts66psgm4faomvtw957im	18	forward	f	2026-04-11 19:03:24.948	2026-04-11 19:03:24.948	2026-04-11 19:03:24.955	\N	\N	\N
2691	qvyjo6q7srttwkkq0p7k7ni0	19	forward	f	2026-04-11 19:03:25.008	2026-04-11 19:03:25.008	\N	\N	\N	\N
2692	qvyjo6q7srttwkkq0p7k7ni0	19	forward	f	2026-04-11 19:03:25.008	2026-04-11 19:03:25.008	2026-04-11 19:03:25.019	\N	\N	\N
2693	v79sskc98weps2mex376cnb7	20	forward	f	2026-04-11 19:03:25.071	2026-04-11 19:03:25.071	\N	\N	\N	\N
2694	v79sskc98weps2mex376cnb7	20	forward	f	2026-04-11 19:03:25.071	2026-04-11 19:03:25.071	2026-04-11 19:03:25.079	\N	\N	\N
2695	a4fy92alfkcd11unjjpt903o	21	forward	f	2026-04-11 19:03:25.127	2026-04-11 19:03:25.127	\N	\N	\N	\N
2696	a4fy92alfkcd11unjjpt903o	21	forward	f	2026-04-11 19:03:25.127	2026-04-11 19:03:25.127	2026-04-11 19:03:25.134	\N	\N	\N
2697	vphdhtdeul4brxrm3obo2bcf	22	forward	f	2026-04-11 19:03:25.188	2026-04-11 19:03:25.188	\N	\N	\N	\N
2698	vphdhtdeul4brxrm3obo2bcf	22	forward	f	2026-04-11 19:03:25.188	2026-04-11 19:03:25.188	2026-04-11 19:03:25.197	\N	\N	\N
2699	m0om22eq5u9gqhcmsu1u9b35	23	forward	f	2026-04-11 19:03:25.245	2026-04-11 19:03:25.245	\N	\N	\N	\N
2700	m0om22eq5u9gqhcmsu1u9b35	23	forward	f	2026-04-11 19:03:25.245	2026-04-11 19:03:25.245	2026-04-11 19:03:25.252	\N	\N	\N
2701	bzzwtbf12w827jzniyk8ri4m	24	forward	t	2026-04-11 19:03:25.302	2026-04-11 19:03:25.302	\N	\N	\N	\N
2702	bzzwtbf12w827jzniyk8ri4m	24	forward	t	2026-04-11 19:03:25.302	2026-04-11 19:03:25.302	2026-04-11 19:03:25.309	\N	\N	\N
2703	cmlqvjm6412gzrv3jc3wedoe	25	forward	f	2026-04-11 19:03:25.358	2026-04-11 19:03:25.358	\N	\N	\N	\N
2704	cmlqvjm6412gzrv3jc3wedoe	25	forward	f	2026-04-11 19:03:25.358	2026-04-11 19:03:25.358	2026-04-11 19:03:25.365	\N	\N	\N
2705	b2psxda49n5g2fmugyx3qbct	26	forward	t	2026-04-11 19:03:25.417	2026-04-11 19:03:25.417	\N	\N	\N	\N
2706	b2psxda49n5g2fmugyx3qbct	26	forward	t	2026-04-11 19:03:25.417	2026-04-11 19:03:25.417	2026-04-11 19:03:25.427	\N	\N	\N
2707	xc3vpphh1slktw7zm4q98ndk	27	forward	f	2026-04-11 19:03:25.479	2026-04-11 19:03:25.479	\N	\N	\N	\N
2708	xc3vpphh1slktw7zm4q98ndk	27	forward	f	2026-04-11 19:03:25.479	2026-04-11 19:03:25.479	2026-04-11 19:03:25.487	\N	\N	\N
2709	yikn02ea3qt8ge4b2ehavrpm	28	forward	f	2026-04-11 19:03:25.538	2026-04-11 19:03:25.538	\N	\N	\N	\N
2710	yikn02ea3qt8ge4b2ehavrpm	28	forward	f	2026-04-11 19:03:25.538	2026-04-11 19:03:25.538	2026-04-11 19:03:25.55	\N	\N	\N
2711	fmkrduyk3ayeka22omzkhp9i	29	forward	f	2026-04-11 19:03:25.645	2026-04-11 19:03:25.645	\N	\N	\N	\N
2712	fmkrduyk3ayeka22omzkhp9i	29	forward	f	2026-04-11 19:03:25.645	2026-04-11 19:03:25.645	2026-04-11 19:03:25.654	\N	\N	\N
2713	ld5ywg87ftenq45t5sm53h19	30	forward	f	2026-04-11 19:03:25.702	2026-04-11 19:03:25.702	\N	\N	\N	\N
2714	ld5ywg87ftenq45t5sm53h19	30	forward	f	2026-04-11 19:03:25.702	2026-04-11 19:03:25.702	2026-04-11 19:03:25.711	\N	\N	\N
2715	k4zqhn3ee3sd3p4i220g03k9	31	forward	f	2026-04-11 19:03:25.758	2026-04-11 19:03:25.758	\N	\N	\N	\N
2716	k4zqhn3ee3sd3p4i220g03k9	31	forward	f	2026-04-11 19:03:25.758	2026-04-11 19:03:25.758	2026-04-11 19:03:25.765	\N	\N	\N
2717	v3vgjlzeoona6dr5pzfb057d	32	forward	f	2026-04-11 19:03:25.849	2026-04-11 19:03:25.849	\N	\N	\N	\N
2718	v3vgjlzeoona6dr5pzfb057d	32	forward	f	2026-04-11 19:03:25.849	2026-04-11 19:03:25.849	2026-04-11 19:03:25.862	\N	\N	\N
2719	rgk3ytwt6s8s5wxt4sq6yzsg	33	forward	f	2026-04-11 19:03:25.92	2026-04-11 19:03:25.92	\N	\N	\N	\N
2720	rgk3ytwt6s8s5wxt4sq6yzsg	33	forward	f	2026-04-11 19:03:25.92	2026-04-11 19:03:25.92	2026-04-11 19:03:25.928	\N	\N	\N
2721	yy91idvsa17ox6jcltfvu5zi	34	forward	f	2026-04-11 19:03:25.976	2026-04-11 19:03:25.976	\N	\N	\N	\N
2722	yy91idvsa17ox6jcltfvu5zi	34	forward	f	2026-04-11 19:03:25.976	2026-04-11 19:03:25.976	2026-04-11 19:03:25.985	\N	\N	\N
2723	s4w88r5yn366oeto5af3mrpx	35	forward	f	2026-04-11 19:03:26.031	2026-04-11 19:03:26.031	\N	\N	\N	\N
2724	s4w88r5yn366oeto5af3mrpx	35	forward	f	2026-04-11 19:03:26.031	2026-04-11 19:03:26.031	2026-04-11 19:03:26.037	\N	\N	\N
2725	gg0ylw2zrf2mgfumqg5c9je9	36	forward	f	2026-04-11 19:03:26.095	2026-04-11 19:03:26.095	\N	\N	\N	\N
2726	gg0ylw2zrf2mgfumqg5c9je9	36	forward	f	2026-04-11 19:03:26.095	2026-04-11 19:03:26.095	2026-04-11 19:03:26.103	\N	\N	\N
2727	bipvjuqcq9orqvhdik0hhgfd	37	forward	f	2026-04-11 19:03:26.153	2026-04-11 19:03:26.153	\N	\N	\N	\N
2728	bipvjuqcq9orqvhdik0hhgfd	37	forward	f	2026-04-11 19:03:26.153	2026-04-11 19:03:26.153	2026-04-11 19:03:26.165	\N	\N	\N
2729	dsn2art7vz09yshtzenijc8z	38	forward	f	2026-04-11 19:03:26.214	2026-04-11 19:03:26.214	\N	\N	\N	\N
2730	dsn2art7vz09yshtzenijc8z	38	forward	f	2026-04-11 19:03:26.214	2026-04-11 19:03:26.214	2026-04-11 19:03:26.22	\N	\N	\N
2731	rg1ysu1a1ofd5v1plo1puo40	39	forward	t	2026-04-11 19:03:26.27	2026-04-11 19:03:26.27	\N	\N	\N	\N
2732	rg1ysu1a1ofd5v1plo1puo40	39	forward	t	2026-04-11 19:03:26.27	2026-04-11 19:03:26.27	2026-04-11 19:03:26.278	\N	\N	\N
2733	y5u6w7obc9n3wfm7r3w3e7m5	40	forward	t	2026-04-11 19:03:26.332	2026-04-11 19:03:26.332	\N	\N	\N	\N
2734	y5u6w7obc9n3wfm7r3w3e7m5	40	forward	t	2026-04-11 19:03:26.332	2026-04-11 19:03:26.332	2026-04-11 19:03:26.34	\N	\N	\N
2741	drlj1d4gmeahwlsq8yuhdofb	44	forward	f	2026-04-11 19:03:26.583	2026-04-11 19:03:26.583	\N	\N	\N	\N
2742	drlj1d4gmeahwlsq8yuhdofb	44	forward	f	2026-04-11 19:03:26.583	2026-04-11 19:03:26.583	2026-04-11 19:03:26.589	\N	\N	\N
2747	wwjjwwb3d2fyenw2imlavtrg	47	forward	f	2026-04-11 19:03:26.771	2026-04-11 19:03:26.771	\N	\N	\N	\N
2748	wwjjwwb3d2fyenw2imlavtrg	47	forward	f	2026-04-11 19:03:26.771	2026-04-11 19:03:26.771	2026-04-11 19:03:26.78	\N	\N	\N
2765	ekxteydp5jjza1h57yr1fkke	56	forward	f	2026-04-11 19:03:27.318	2026-04-11 19:03:27.318	\N	\N	\N	\N
2766	ekxteydp5jjza1h57yr1fkke	56	forward	f	2026-04-11 19:03:27.318	2026-04-11 19:03:27.318	2026-04-11 19:03:27.323	\N	\N	\N
2769	e2zpiveyv9dux2a4wxgkol5b	58	forward	f	2026-04-11 19:03:27.456	2026-04-11 19:03:27.456	\N	\N	\N	\N
2770	e2zpiveyv9dux2a4wxgkol5b	58	forward	f	2026-04-11 19:03:27.456	2026-04-11 19:03:27.456	2026-04-11 19:03:27.472	\N	\N	\N
3131	n0mu7koumi0v0yvu1di0lhdn	8	forward	f	2026-04-11 19:03:35.106	2026-04-11 19:03:35.106	\N	\N	\N	\N
3132	n0mu7koumi0v0yvu1di0lhdn	8	forward	f	2026-04-11 19:03:35.106	2026-04-11 19:03:35.106	2026-04-11 19:03:35.113	\N	\N	\N
3187	zk26matxm8ya7yxihsoy16k3	36	forward	f	2026-04-11 19:03:36.367	2026-04-11 19:03:36.367	\N	\N	\N	\N
3188	zk26matxm8ya7yxihsoy16k3	36	forward	f	2026-04-11 19:03:36.367	2026-04-11 19:03:36.367	2026-04-11 19:03:36.375	\N	\N	\N
3191	nt9xgg0gzk5x2q0pwmq3xagw	38	forward	f	2026-04-11 19:03:36.454	2026-04-11 19:03:36.454	\N	\N	\N	\N
3192	nt9xgg0gzk5x2q0pwmq3xagw	38	forward	f	2026-04-11 19:03:36.454	2026-04-11 19:03:36.454	2026-04-11 19:03:36.464	\N	\N	\N
3201	s1yrkttcuqfmr1mlcl0mbrg6	43	forward	f	2026-04-11 19:03:36.722	2026-04-11 19:03:36.722	\N	\N	\N	\N
3202	s1yrkttcuqfmr1mlcl0mbrg6	43	forward	f	2026-04-11 19:03:36.722	2026-04-11 19:03:36.722	2026-04-11 19:03:36.731	\N	\N	\N
3205	wk44nio8n20fm2b4q1wycs2f	1	backward	f	2026-04-11 19:03:36.812	2026-04-11 19:03:36.812	\N	\N	\N	\N
3206	wk44nio8n20fm2b4q1wycs2f	1	backward	f	2026-04-11 19:03:36.812	2026-04-11 19:03:36.812	2026-04-11 19:03:36.819	\N	\N	\N
3211	rzm0ka5qmuu6j3kjrricqzx7	4	backward	f	2026-04-11 19:03:36.927	2026-04-11 19:03:36.927	\N	\N	\N	\N
3212	rzm0ka5qmuu6j3kjrricqzx7	4	backward	f	2026-04-11 19:03:36.927	2026-04-11 19:03:36.927	2026-04-11 19:03:36.933	\N	\N	\N
3215	jz92n4gau8qzru58qfm7ioq5	6	backward	f	2026-04-11 19:03:36.991	2026-04-11 19:03:36.991	\N	\N	\N	\N
3216	jz92n4gau8qzru58qfm7ioq5	6	backward	f	2026-04-11 19:03:36.991	2026-04-11 19:03:36.991	2026-04-11 19:03:36.999	\N	\N	\N
3219	dj6o19f86h95f19kixzh6iqd	8	backward	f	2026-04-11 19:03:37.06	2026-04-11 19:03:37.06	\N	\N	\N	\N
3220	dj6o19f86h95f19kixzh6iqd	8	backward	f	2026-04-11 19:03:37.06	2026-04-11 19:03:37.06	2026-04-11 19:03:37.067	\N	\N	\N
3223	udx1m0ekn1va48kqu35pnpes	10	backward	f	2026-04-11 19:03:37.15	2026-04-11 19:03:37.15	\N	\N	\N	\N
3224	udx1m0ekn1va48kqu35pnpes	10	backward	f	2026-04-11 19:03:37.15	2026-04-11 19:03:37.15	2026-04-11 19:03:37.156	\N	\N	\N
3227	x84826i8pw1kbddea8h9tg9x	12	backward	f	2026-04-11 19:03:37.235	2026-04-11 19:03:37.235	\N	\N	\N	\N
3228	x84826i8pw1kbddea8h9tg9x	12	backward	f	2026-04-11 19:03:37.235	2026-04-11 19:03:37.235	2026-04-11 19:03:37.243	\N	\N	\N
3231	kk4pne02u3hc7dbwgxlwizrh	14	backward	f	2026-04-11 19:03:37.313	2026-04-11 19:03:37.313	\N	\N	\N	\N
3232	kk4pne02u3hc7dbwgxlwizrh	14	backward	f	2026-04-11 19:03:37.313	2026-04-11 19:03:37.313	2026-04-11 19:03:37.32	\N	\N	\N
3235	og9ix0qdf0696n0ywgobnkf5	16	backward	f	2026-04-11 19:03:37.395	2026-04-11 19:03:37.395	\N	\N	\N	\N
3236	og9ix0qdf0696n0ywgobnkf5	16	backward	f	2026-04-11 19:03:37.395	2026-04-11 19:03:37.395	2026-04-11 19:03:37.407	\N	\N	\N
3365	iivbpisyig75e3xghwbgqolp	7	backward	f	2026-04-11 19:03:39.868	2026-04-11 19:03:39.868	\N	\N	\N	\N
3366	iivbpisyig75e3xghwbgqolp	7	backward	f	2026-04-11 19:03:39.868	2026-04-11 19:03:39.868	2026-04-11 19:03:39.875	\N	\N	\N
3367	u3djd3n1870ervfruw5jpj83	8	backward	f	2026-04-11 19:03:39.903	2026-04-11 19:03:39.903	\N	\N	\N	\N
3368	u3djd3n1870ervfruw5jpj83	8	backward	f	2026-04-11 19:03:39.903	2026-04-11 19:03:39.903	2026-04-11 19:03:39.91	\N	\N	\N
2735	bvdlvev03j9op12r6xvu8bn0	41	forward	f	2026-04-11 19:03:26.4	2026-04-11 19:03:26.4	\N	\N	\N	\N
2736	bvdlvev03j9op12r6xvu8bn0	41	forward	f	2026-04-11 19:03:26.4	2026-04-11 19:03:26.4	2026-04-11 19:03:26.409	\N	\N	\N
2739	ulc964mfube1lrs6779bvnhg	43	forward	f	2026-04-11 19:03:26.518	2026-04-11 19:03:26.518	\N	\N	\N	\N
2740	ulc964mfube1lrs6779bvnhg	43	forward	f	2026-04-11 19:03:26.518	2026-04-11 19:03:26.518	2026-04-11 19:03:26.529	\N	\N	\N
2745	y4d5dezj3hwhgh4uw3tjwd1x	46	forward	f	2026-04-11 19:03:26.709	2026-04-11 19:03:26.709	\N	\N	\N	\N
2746	y4d5dezj3hwhgh4uw3tjwd1x	46	forward	f	2026-04-11 19:03:26.709	2026-04-11 19:03:26.709	2026-04-11 19:03:26.719	\N	\N	\N
2751	uhaon9915q6l5bpayrisd1i2	49	forward	f	2026-04-11 19:03:26.905	2026-04-11 19:03:26.905	\N	\N	\N	\N
2752	uhaon9915q6l5bpayrisd1i2	49	forward	f	2026-04-11 19:03:26.905	2026-04-11 19:03:26.905	2026-04-11 19:03:26.914	\N	\N	\N
2755	tt4q3mnub3jltbd69k7dbp8c	51	forward	f	2026-04-11 19:03:27.019	2026-04-11 19:03:27.019	\N	\N	\N	\N
2756	tt4q3mnub3jltbd69k7dbp8c	51	forward	f	2026-04-11 19:03:27.019	2026-04-11 19:03:27.019	2026-04-11 19:03:27.026	\N	\N	\N
2759	tv45xb7xhqe00ywmkxe9p5fh	53	forward	f	2026-04-11 19:03:27.136	2026-04-11 19:03:27.136	\N	\N	\N	\N
2760	tv45xb7xhqe00ywmkxe9p5fh	53	forward	f	2026-04-11 19:03:27.136	2026-04-11 19:03:27.136	2026-04-11 19:03:27.147	\N	\N	\N
2773	npt5367rhyb6fdp8m5pdcv3q	60	forward	f	2026-04-11 19:03:27.589	2026-04-11 19:03:27.589	\N	\N	\N	\N
2774	npt5367rhyb6fdp8m5pdcv3q	60	forward	f	2026-04-11 19:03:27.589	2026-04-11 19:03:27.589	2026-04-11 19:03:27.595	\N	\N	\N
2783	jkekz01hyt7l8lac3opt1bro	65	forward	f	2026-04-11 19:03:27.849	2026-04-11 19:03:27.849	\N	\N	\N	\N
2784	jkekz01hyt7l8lac3opt1bro	65	forward	f	2026-04-11 19:03:27.849	2026-04-11 19:03:27.849	2026-04-11 19:03:27.853	\N	\N	\N
2785	v8g499x9cm47yg1drw3kvkl4	1	backward	f	2026-04-11 19:03:27.883	2026-04-11 19:03:27.883	\N	\N	\N	\N
2786	v8g499x9cm47yg1drw3kvkl4	1	backward	f	2026-04-11 19:03:27.883	2026-04-11 19:03:27.883	2026-04-11 19:03:27.889	\N	\N	\N
2789	nr5sir7nhwhk92n5ua635f7a	3	backward	f	2026-04-11 19:03:27.962	2026-04-11 19:03:27.962	\N	\N	\N	\N
2790	nr5sir7nhwhk92n5ua635f7a	3	backward	f	2026-04-11 19:03:27.962	2026-04-11 19:03:27.962	2026-04-11 19:03:27.968	\N	\N	\N
2793	jje3pajg60nu4w4r9xgk2znl	5	backward	t	2026-04-11 19:03:28.034	2026-04-11 19:03:28.034	\N	\N	\N	\N
2794	jje3pajg60nu4w4r9xgk2znl	5	backward	t	2026-04-11 19:03:28.034	2026-04-11 19:03:28.034	2026-04-11 19:03:28.041	\N	\N	\N
2795	f2lpsossspq56qa2slon1lhg	6	backward	f	2026-04-11 19:03:28.071	2026-04-11 19:03:28.071	\N	\N	\N	\N
2796	f2lpsossspq56qa2slon1lhg	6	backward	f	2026-04-11 19:03:28.071	2026-04-11 19:03:28.071	2026-04-11 19:03:28.08	\N	\N	\N
2799	egkq9inmpwhv4viqxqoe3u9u	8	backward	f	2026-04-11 19:03:28.145	2026-04-11 19:03:28.145	\N	\N	\N	\N
2800	egkq9inmpwhv4viqxqoe3u9u	8	backward	f	2026-04-11 19:03:28.145	2026-04-11 19:03:28.145	2026-04-11 19:03:28.154	\N	\N	\N
2807	c7mlb3knq0gtgy963wqnx28p	12	backward	f	2026-04-11 19:03:28.293	2026-04-11 19:03:28.293	\N	\N	\N	\N
2808	c7mlb3knq0gtgy963wqnx28p	12	backward	f	2026-04-11 19:03:28.293	2026-04-11 19:03:28.293	2026-04-11 19:03:28.299	\N	\N	\N
2813	jffbskld3cv36mp2cbuafvqm	15	backward	f	2026-04-11 19:03:28.403	2026-04-11 19:03:28.403	\N	\N	\N	\N
2814	jffbskld3cv36mp2cbuafvqm	15	backward	f	2026-04-11 19:03:28.403	2026-04-11 19:03:28.403	2026-04-11 19:03:28.411	\N	\N	\N
2817	jy4dw7h7jqgk0qxw7uogbhb3	17	backward	f	2026-04-11 19:03:28.497	2026-04-11 19:03:28.497	\N	\N	\N	\N
2818	jy4dw7h7jqgk0qxw7uogbhb3	17	backward	f	2026-04-11 19:03:28.497	2026-04-11 19:03:28.497	2026-04-11 19:03:28.502	\N	\N	\N
2863	is9qqaq9drymjep0wshvgl8o	40	backward	f	2026-04-11 19:03:29.409	2026-04-11 19:03:29.409	\N	\N	\N	\N
2864	is9qqaq9drymjep0wshvgl8o	40	backward	f	2026-04-11 19:03:29.409	2026-04-11 19:03:29.409	2026-04-11 19:03:29.417	\N	\N	\N
2865	sncxua12xfixssqgs4q3177k	41	backward	f	2026-04-11 19:03:29.449	2026-04-11 19:03:29.449	\N	\N	\N	\N
2866	sncxua12xfixssqgs4q3177k	41	backward	f	2026-04-11 19:03:29.449	2026-04-11 19:03:29.449	2026-04-11 19:03:29.456	\N	\N	\N
2867	lbf4mdrkk1edxsio45inbcpq	42	backward	f	2026-04-11 19:03:29.486	2026-04-11 19:03:29.486	\N	\N	\N	\N
2868	lbf4mdrkk1edxsio45inbcpq	42	backward	f	2026-04-11 19:03:29.486	2026-04-11 19:03:29.486	2026-04-11 19:03:29.495	\N	\N	\N
2869	vb5vcd86slr1jnjox2h0uwiz	43	backward	f	2026-04-11 19:03:29.527	2026-04-11 19:03:29.527	\N	\N	\N	\N
2870	vb5vcd86slr1jnjox2h0uwiz	43	backward	f	2026-04-11 19:03:29.527	2026-04-11 19:03:29.527	2026-04-11 19:03:29.534	\N	\N	\N
2871	mbdb125zqvnv15w4h9tpqobc	44	backward	f	2026-04-11 19:03:29.564	2026-04-11 19:03:29.564	\N	\N	\N	\N
2872	mbdb125zqvnv15w4h9tpqobc	44	backward	f	2026-04-11 19:03:29.564	2026-04-11 19:03:29.564	2026-04-11 19:03:29.571	\N	\N	\N
2877	cpdniezrxcr3a6awyg83kn5z	47	backward	f	2026-04-11 19:03:29.751	2026-04-11 19:03:29.751	\N	\N	\N	\N
2878	cpdniezrxcr3a6awyg83kn5z	47	backward	f	2026-04-11 19:03:29.751	2026-04-11 19:03:29.751	2026-04-11 19:03:29.761	\N	\N	\N
2879	wrgkzvjiesj6uoww6xg9kyoc	48	backward	f	2026-04-11 19:03:29.792	2026-04-11 19:03:29.792	\N	\N	\N	\N
2880	wrgkzvjiesj6uoww6xg9kyoc	48	backward	f	2026-04-11 19:03:29.792	2026-04-11 19:03:29.792	2026-04-11 19:03:29.8	\N	\N	\N
2885	ue4nm32mzdgm1qjncm2101ok	51	backward	f	2026-04-11 19:03:29.907	2026-04-11 19:03:29.907	\N	\N	\N	\N
2886	ue4nm32mzdgm1qjncm2101ok	51	backward	f	2026-04-11 19:03:29.907	2026-04-11 19:03:29.907	2026-04-11 19:03:29.917	\N	\N	\N
2889	wbz8dm1q3pi1spfyyyv4pp7h	53	backward	f	2026-04-11 19:03:29.991	2026-04-11 19:03:29.991	\N	\N	\N	\N
2890	wbz8dm1q3pi1spfyyyv4pp7h	53	backward	f	2026-04-11 19:03:29.991	2026-04-11 19:03:29.991	2026-04-11 19:03:29.999	\N	\N	\N
2897	gyh7qczfmrrtmnqwqx16efwd	57	backward	f	2026-04-11 19:03:30.154	2026-04-11 19:03:30.154	\N	\N	\N	\N
2898	gyh7qczfmrrtmnqwqx16efwd	57	backward	f	2026-04-11 19:03:30.154	2026-04-11 19:03:30.154	2026-04-11 19:03:30.161	\N	\N	\N
2901	rztbyvk74zvlzztsl240g3vw	59	backward	f	2026-04-11 19:03:30.242	2026-04-11 19:03:30.242	\N	\N	\N	\N
2902	rztbyvk74zvlzztsl240g3vw	59	backward	f	2026-04-11 19:03:30.242	2026-04-11 19:03:30.242	2026-04-11 19:03:30.25	\N	\N	\N
2905	nb6447ofie8ds0bdewxl832z	61	backward	f	2026-04-11 19:03:30.324	2026-04-11 19:03:30.324	\N	\N	\N	\N
2906	nb6447ofie8ds0bdewxl832z	61	backward	f	2026-04-11 19:03:30.324	2026-04-11 19:03:30.324	2026-04-11 19:03:30.331	\N	\N	\N
2907	flfa9lsimfm35uy6f4y4mddl	62	backward	f	2026-04-11 19:03:30.358	2026-04-11 19:03:30.358	\N	\N	\N	\N
2908	flfa9lsimfm35uy6f4y4mddl	62	backward	f	2026-04-11 19:03:30.358	2026-04-11 19:03:30.358	2026-04-11 19:03:30.364	\N	\N	\N
2911	w65x1qzh7ljyqktdle0fh4tq	64	backward	f	2026-04-11 19:03:30.426	2026-04-11 19:03:30.426	\N	\N	\N	\N
2912	w65x1qzh7ljyqktdle0fh4tq	64	backward	f	2026-04-11 19:03:30.426	2026-04-11 19:03:30.426	2026-04-11 19:03:30.431	\N	\N	\N
2917	yrsf5qredmccx8o6ri2eeueu	3	forward	f	2026-04-11 19:03:30.586	2026-04-11 19:03:30.586	\N	\N	\N	\N
2918	yrsf5qredmccx8o6ri2eeueu	3	forward	f	2026-04-11 19:03:30.586	2026-04-11 19:03:30.586	2026-04-11 19:03:30.593	\N	\N	\N
3005	bjhgdks4qsn07b5fnolscpdx	47	forward	f	2026-04-11 19:03:32.292	2026-04-11 19:03:32.292	\N	\N	\N	\N
3006	bjhgdks4qsn07b5fnolscpdx	47	forward	f	2026-04-11 19:03:32.292	2026-04-11 19:03:32.292	2026-04-11 19:03:32.298	\N	\N	\N
3011	m2kqasa9dpnbela4ex9poaes	50	forward	f	2026-04-11 19:03:32.459	2026-04-11 19:03:32.459	\N	\N	\N	\N
3012	m2kqasa9dpnbela4ex9poaes	50	forward	f	2026-04-11 19:03:32.459	2026-04-11 19:03:32.459	2026-04-11 19:03:32.466	\N	\N	\N
3015	fxi05ndrd404imkrm9ee2gkw	1	backward	f	2026-04-11 19:03:32.553	2026-04-11 19:03:32.553	\N	\N	\N	\N
3016	fxi05ndrd404imkrm9ee2gkw	1	backward	f	2026-04-11 19:03:32.553	2026-04-11 19:03:32.553	2026-04-11 19:03:32.562	\N	\N	\N
3019	ffu2cdvwbp326r7uyvfiexpo	3	backward	f	2026-04-11 19:03:32.627	2026-04-11 19:03:32.627	\N	\N	\N	\N
3020	ffu2cdvwbp326r7uyvfiexpo	3	backward	f	2026-04-11 19:03:32.627	2026-04-11 19:03:32.627	2026-04-11 19:03:32.635	\N	\N	\N
3023	b0tkmx3k66dhdtpp4ayhjsi1	5	backward	f	2026-04-11 19:03:32.697	2026-04-11 19:03:32.697	\N	\N	\N	\N
3024	b0tkmx3k66dhdtpp4ayhjsi1	5	backward	f	2026-04-11 19:03:32.697	2026-04-11 19:03:32.697	2026-04-11 19:03:32.703	\N	\N	\N
3027	ebo0u2uicbfx5ji3tqf83epd	7	backward	t	2026-04-11 19:03:32.776	2026-04-11 19:03:32.776	\N	\N	\N	\N
3028	ebo0u2uicbfx5ji3tqf83epd	7	backward	t	2026-04-11 19:03:32.776	2026-04-11 19:03:32.776	2026-04-11 19:03:32.784	\N	\N	\N
3029	d1jrktb7kemb7mmd0k4nhngv	8	backward	f	2026-04-11 19:03:32.814	2026-04-11 19:03:32.814	\N	\N	\N	\N
3030	d1jrktb7kemb7mmd0k4nhngv	8	backward	f	2026-04-11 19:03:32.814	2026-04-11 19:03:32.814	2026-04-11 19:03:32.821	\N	\N	\N
3031	eiigf60l7y326t3wu84rof1y	9	backward	f	2026-04-11 19:03:32.854	2026-04-11 19:03:32.854	\N	\N	\N	\N
3032	eiigf60l7y326t3wu84rof1y	9	backward	f	2026-04-11 19:03:32.854	2026-04-11 19:03:32.854	2026-04-11 19:03:32.861	\N	\N	\N
2737	ips5hgu65uubfl4k0dsancum	42	forward	f	2026-04-11 19:03:26.458	2026-04-11 19:03:26.458	\N	\N	\N	\N
2738	ips5hgu65uubfl4k0dsancum	42	forward	f	2026-04-11 19:03:26.458	2026-04-11 19:03:26.458	2026-04-11 19:03:26.467	\N	\N	\N
2743	dwcmubxw6fuzef8dqm0kh44f	45	forward	f	2026-04-11 19:03:26.652	2026-04-11 19:03:26.652	\N	\N	\N	\N
2744	dwcmubxw6fuzef8dqm0kh44f	45	forward	f	2026-04-11 19:03:26.652	2026-04-11 19:03:26.652	2026-04-11 19:03:26.661	\N	\N	\N
2749	vfk25pg29w5aseqf6fu0p7jk	48	forward	f	2026-04-11 19:03:26.835	2026-04-11 19:03:26.835	\N	\N	\N	\N
2750	vfk25pg29w5aseqf6fu0p7jk	48	forward	f	2026-04-11 19:03:26.835	2026-04-11 19:03:26.835	2026-04-11 19:03:26.846	\N	\N	\N
2757	gja5tht1w0gwiou6aetd1ekx	52	forward	f	2026-04-11 19:03:27.072	2026-04-11 19:03:27.072	\N	\N	\N	\N
2758	gja5tht1w0gwiou6aetd1ekx	52	forward	f	2026-04-11 19:03:27.072	2026-04-11 19:03:27.072	2026-04-11 19:03:27.083	\N	\N	\N
2763	usv94dhbwdt9s2ykvybzlaa2	55	forward	f	2026-04-11 19:03:27.261	2026-04-11 19:03:27.261	\N	\N	\N	\N
2764	usv94dhbwdt9s2ykvybzlaa2	55	forward	f	2026-04-11 19:03:27.261	2026-04-11 19:03:27.261	2026-04-11 19:03:27.268	\N	\N	\N
2767	hzayntok3gz861lr5ttyi6cf	57	forward	f	2026-04-11 19:03:27.379	2026-04-11 19:03:27.379	\N	\N	\N	\N
2768	hzayntok3gz861lr5ttyi6cf	57	forward	f	2026-04-11 19:03:27.379	2026-04-11 19:03:27.379	2026-04-11 19:03:27.387	\N	\N	\N
2815	u8rf190s3gjvhv71g2k58hy2	16	backward	f	2026-04-11 19:03:28.459	2026-04-11 19:03:28.459	\N	\N	\N	\N
2816	u8rf190s3gjvhv71g2k58hy2	16	backward	f	2026-04-11 19:03:28.459	2026-04-11 19:03:28.459	2026-04-11 19:03:28.468	\N	\N	\N
2821	xq71z3dzcsefmjv1itdl8f5e	19	backward	f	2026-04-11 19:03:28.587	2026-04-11 19:03:28.587	\N	\N	\N	\N
2822	xq71z3dzcsefmjv1itdl8f5e	19	backward	f	2026-04-11 19:03:28.587	2026-04-11 19:03:28.587	2026-04-11 19:03:28.593	\N	\N	\N
2823	j22ra125druuekpc4n3nrmzc	20	backward	f	2026-04-11 19:03:28.624	2026-04-11 19:03:28.624	\N	\N	\N	\N
2824	j22ra125druuekpc4n3nrmzc	20	backward	f	2026-04-11 19:03:28.624	2026-04-11 19:03:28.624	2026-04-11 19:03:28.63	\N	\N	\N
2827	s0ulq8sekaqyt3200ksfnk5b	22	backward	f	2026-04-11 19:03:28.703	2026-04-11 19:03:28.703	\N	\N	\N	\N
2828	s0ulq8sekaqyt3200ksfnk5b	22	backward	f	2026-04-11 19:03:28.703	2026-04-11 19:03:28.703	2026-04-11 19:03:28.711	\N	\N	\N
2831	a7hwsaxedhw3qvwsjcn0dtzf	24	backward	f	2026-04-11 19:03:28.789	2026-04-11 19:03:28.789	\N	\N	\N	\N
2832	a7hwsaxedhw3qvwsjcn0dtzf	24	backward	f	2026-04-11 19:03:28.789	2026-04-11 19:03:28.789	2026-04-11 19:03:28.796	\N	\N	\N
2835	zsgavdhoihcp0rv4bm1hamp3	26	backward	t	2026-04-11 19:03:28.865	2026-04-11 19:03:28.865	\N	\N	\N	\N
2836	zsgavdhoihcp0rv4bm1hamp3	26	backward	t	2026-04-11 19:03:28.865	2026-04-11 19:03:28.865	2026-04-11 19:03:28.871	\N	\N	\N
2837	l0irtdg8arft5tqbldr8nb61	27	backward	t	2026-04-11 19:03:28.9	2026-04-11 19:03:28.9	\N	\N	\N	\N
2838	l0irtdg8arft5tqbldr8nb61	27	backward	t	2026-04-11 19:03:28.9	2026-04-11 19:03:28.9	2026-04-11 19:03:28.905	\N	\N	\N
2839	fnz3iv6og86zi8d04d4vuwqr	28	backward	f	2026-04-11 19:03:28.934	2026-04-11 19:03:28.934	\N	\N	\N	\N
2840	fnz3iv6og86zi8d04d4vuwqr	28	backward	f	2026-04-11 19:03:28.934	2026-04-11 19:03:28.934	2026-04-11 19:03:28.94	\N	\N	\N
2841	a1w3ggdhgrwy3y7nmaa3533o	29	backward	f	2026-04-11 19:03:28.97	2026-04-11 19:03:28.97	\N	\N	\N	\N
2842	a1w3ggdhgrwy3y7nmaa3533o	29	backward	f	2026-04-11 19:03:28.97	2026-04-11 19:03:28.97	2026-04-11 19:03:28.979	\N	\N	\N
2843	pjy9kkd2t7cxg9uy4fvyupl6	30	backward	f	2026-04-11 19:03:29.008	2026-04-11 19:03:29.008	\N	\N	\N	\N
2844	pjy9kkd2t7cxg9uy4fvyupl6	30	backward	f	2026-04-11 19:03:29.008	2026-04-11 19:03:29.008	2026-04-11 19:03:29.016	\N	\N	\N
2845	ok28lu5keux915fz6momz1rz	31	backward	f	2026-04-11 19:03:29.042	2026-04-11 19:03:29.042	\N	\N	\N	\N
2846	ok28lu5keux915fz6momz1rz	31	backward	f	2026-04-11 19:03:29.042	2026-04-11 19:03:29.042	2026-04-11 19:03:29.049	\N	\N	\N
2849	nyeemncpeiwdal3ggwtui8gh	33	backward	f	2026-04-11 19:03:29.118	2026-04-11 19:03:29.118	\N	\N	\N	\N
2850	nyeemncpeiwdal3ggwtui8gh	33	backward	f	2026-04-11 19:03:29.118	2026-04-11 19:03:29.118	2026-04-11 19:03:29.123	\N	\N	\N
2853	qd3nh5dxrtnvdqbyyhzlivaf	35	backward	f	2026-04-11 19:03:29.201	2026-04-11 19:03:29.201	\N	\N	\N	\N
2854	qd3nh5dxrtnvdqbyyhzlivaf	35	backward	f	2026-04-11 19:03:29.201	2026-04-11 19:03:29.201	2026-04-11 19:03:29.207	\N	\N	\N
2861	zm87t6wrl03evtt06ai5cd58	39	backward	f	2026-04-11 19:03:29.354	2026-04-11 19:03:29.354	\N	\N	\N	\N
2862	zm87t6wrl03evtt06ai5cd58	39	backward	f	2026-04-11 19:03:29.354	2026-04-11 19:03:29.354	2026-04-11 19:03:29.364	\N	\N	\N
2873	i44t96esy3jfr8742fa26s8x	45	backward	f	2026-04-11 19:03:29.625	2026-04-11 19:03:29.625	\N	\N	\N	\N
2874	i44t96esy3jfr8742fa26s8x	45	backward	f	2026-04-11 19:03:29.625	2026-04-11 19:03:29.625	2026-04-11 19:03:29.636	\N	\N	\N
2875	jua3lu4tcpxjyyaxyka9cz04	46	backward	f	2026-04-11 19:03:29.679	2026-04-11 19:03:29.679	\N	\N	\N	\N
2876	jua3lu4tcpxjyyaxyka9cz04	46	backward	f	2026-04-11 19:03:29.679	2026-04-11 19:03:29.679	2026-04-11 19:03:29.692	\N	\N	\N
2881	qp0l69mdk7sj5wzmj03p9r3v	49	backward	f	2026-04-11 19:03:29.832	2026-04-11 19:03:29.832	\N	\N	\N	\N
2882	qp0l69mdk7sj5wzmj03p9r3v	49	backward	f	2026-04-11 19:03:29.832	2026-04-11 19:03:29.832	2026-04-11 19:03:29.838	\N	\N	\N
2883	sks981ffswn1era1lejprkmp	50	backward	f	2026-04-11 19:03:29.867	2026-04-11 19:03:29.867	\N	\N	\N	\N
2884	sks981ffswn1era1lejprkmp	50	backward	f	2026-04-11 19:03:29.867	2026-04-11 19:03:29.867	2026-04-11 19:03:29.874	\N	\N	\N
2887	yt89qdunm415t28w8u0f0mxl	52	backward	f	2026-04-11 19:03:29.951	2026-04-11 19:03:29.951	\N	\N	\N	\N
2888	yt89qdunm415t28w8u0f0mxl	52	backward	f	2026-04-11 19:03:29.951	2026-04-11 19:03:29.951	2026-04-11 19:03:29.959	\N	\N	\N
2891	sohfn8mnbxvzlhsshydmkuy2	54	backward	f	2026-04-11 19:03:30.032	2026-04-11 19:03:30.032	\N	\N	\N	\N
2892	sohfn8mnbxvzlhsshydmkuy2	54	backward	f	2026-04-11 19:03:30.032	2026-04-11 19:03:30.032	2026-04-11 19:03:30.037	\N	\N	\N
2893	dx68fuq2pzucvvua32f6lv3o	55	backward	f	2026-04-11 19:03:30.066	2026-04-11 19:03:30.066	\N	\N	\N	\N
2894	dx68fuq2pzucvvua32f6lv3o	55	backward	f	2026-04-11 19:03:30.066	2026-04-11 19:03:30.066	2026-04-11 19:03:30.071	\N	\N	\N
2895	xkp8kxqrl9dj67huch3mqhs5	56	backward	f	2026-04-11 19:03:30.115	2026-04-11 19:03:30.115	\N	\N	\N	\N
2896	xkp8kxqrl9dj67huch3mqhs5	56	backward	f	2026-04-11 19:03:30.115	2026-04-11 19:03:30.115	2026-04-11 19:03:30.121	\N	\N	\N
2899	k39yntr1m3eqed5n0t8vo6q6	58	backward	f	2026-04-11 19:03:30.196	2026-04-11 19:03:30.196	\N	\N	\N	\N
2900	k39yntr1m3eqed5n0t8vo6q6	58	backward	f	2026-04-11 19:03:30.196	2026-04-11 19:03:30.196	2026-04-11 19:03:30.204	\N	\N	\N
2903	c9x1m46wx1efkjjrn5j5kg5j	60	backward	f	2026-04-11 19:03:30.285	2026-04-11 19:03:30.285	\N	\N	\N	\N
2904	c9x1m46wx1efkjjrn5j5kg5j	60	backward	f	2026-04-11 19:03:30.285	2026-04-11 19:03:30.285	2026-04-11 19:03:30.291	\N	\N	\N
2909	wi690qq2rc4kspqppz3lojyn	63	backward	f	2026-04-11 19:03:30.392	2026-04-11 19:03:30.392	\N	\N	\N	\N
2910	wi690qq2rc4kspqppz3lojyn	63	backward	f	2026-04-11 19:03:30.392	2026-04-11 19:03:30.392	2026-04-11 19:03:30.397	\N	\N	\N
2915	pvrsqymrk8ir0fc4ti2pn5he	2	forward	f	2026-04-11 19:03:30.534	2026-04-11 19:03:30.534	\N	\N	\N	\N
2916	pvrsqymrk8ir0fc4ti2pn5he	2	forward	f	2026-04-11 19:03:30.534	2026-04-11 19:03:30.534	2026-04-11 19:03:30.54	\N	\N	\N
2921	b19i4ekrk8rv64eyc11q07w2	5	forward	f	2026-04-11 19:03:30.676	2026-04-11 19:03:30.676	\N	\N	\N	\N
2922	b19i4ekrk8rv64eyc11q07w2	5	forward	f	2026-04-11 19:03:30.676	2026-04-11 19:03:30.676	2026-04-11 19:03:30.685	\N	\N	\N
2925	vrz01wuu1opbz7ybrhiajq8p	7	forward	f	2026-04-11 19:03:30.751	2026-04-11 19:03:30.751	\N	\N	\N	\N
2926	vrz01wuu1opbz7ybrhiajq8p	7	forward	f	2026-04-11 19:03:30.751	2026-04-11 19:03:30.751	2026-04-11 19:03:30.761	\N	\N	\N
2929	mtws83y47zopcvjs9ajwxmec	9	forward	f	2026-04-11 19:03:30.823	2026-04-11 19:03:30.823	\N	\N	\N	\N
2930	mtws83y47zopcvjs9ajwxmec	9	forward	f	2026-04-11 19:03:30.823	2026-04-11 19:03:30.823	2026-04-11 19:03:30.832	\N	\N	\N
2933	qpmhpdi94f7hzb1qbkdgbwdw	11	forward	f	2026-04-11 19:03:30.897	2026-04-11 19:03:30.897	\N	\N	\N	\N
2934	qpmhpdi94f7hzb1qbkdgbwdw	11	forward	f	2026-04-11 19:03:30.897	2026-04-11 19:03:30.897	2026-04-11 19:03:30.903	\N	\N	\N
2937	a8lhx1kxnp885f7m70f3sqao	13	forward	f	2026-04-11 19:03:30.967	2026-04-11 19:03:30.967	\N	\N	\N	\N
2938	a8lhx1kxnp885f7m70f3sqao	13	forward	f	2026-04-11 19:03:30.967	2026-04-11 19:03:30.967	2026-04-11 19:03:30.972	\N	\N	\N
2941	sy6yycegzw0q9cawunstpmnc	15	forward	f	2026-04-11 19:03:31.038	2026-04-11 19:03:31.038	\N	\N	\N	\N
2942	sy6yycegzw0q9cawunstpmnc	15	forward	f	2026-04-11 19:03:31.038	2026-04-11 19:03:31.038	2026-04-11 19:03:31.045	\N	\N	\N
2943	yvhfvak2f7qclf9yem0tj27f	16	forward	f	2026-04-11 19:03:31.075	2026-04-11 19:03:31.075	\N	\N	\N	\N
2944	yvhfvak2f7qclf9yem0tj27f	16	forward	f	2026-04-11 19:03:31.075	2026-04-11 19:03:31.075	2026-04-11 19:03:31.083	\N	\N	\N
2753	cw2an1dh6w6b79n7gpdorxxs	50	forward	f	2026-04-11 19:03:26.961	2026-04-11 19:03:26.961	\N	\N	\N	\N
2754	cw2an1dh6w6b79n7gpdorxxs	50	forward	f	2026-04-11 19:03:26.961	2026-04-11 19:03:26.961	2026-04-11 19:03:26.97	\N	\N	\N
2761	as7h769cmoi08x70sv4p2op3	54	forward	f	2026-04-11 19:03:27.204	2026-04-11 19:03:27.204	\N	\N	\N	\N
2762	as7h769cmoi08x70sv4p2op3	54	forward	f	2026-04-11 19:03:27.204	2026-04-11 19:03:27.204	2026-04-11 19:03:27.212	\N	\N	\N
2771	w9an18dcw8yord46dkcpkuvp	59	forward	f	2026-04-11 19:03:27.538	2026-04-11 19:03:27.538	\N	\N	\N	\N
2772	w9an18dcw8yord46dkcpkuvp	59	forward	f	2026-04-11 19:03:27.538	2026-04-11 19:03:27.538	2026-04-11 19:03:27.545	\N	\N	\N
2775	p41zzcjiftb2ewla4swxws0o	61	forward	t	2026-04-11 19:03:27.639	2026-04-11 19:03:27.639	\N	\N	\N	\N
2776	p41zzcjiftb2ewla4swxws0o	61	forward	t	2026-04-11 19:03:27.639	2026-04-11 19:03:27.639	2026-04-11 19:03:27.647	\N	\N	\N
2779	wu7l4xpjglffpl13x4n24q6n	63	forward	f	2026-04-11 19:03:27.747	2026-04-11 19:03:27.747	\N	\N	\N	\N
2780	wu7l4xpjglffpl13x4n24q6n	63	forward	f	2026-04-11 19:03:27.747	2026-04-11 19:03:27.747	2026-04-11 19:03:27.753	\N	\N	\N
2781	i8cil0lobc8n82iomuglu068	64	forward	f	2026-04-11 19:03:27.797	2026-04-11 19:03:27.797	\N	\N	\N	\N
2782	i8cil0lobc8n82iomuglu068	64	forward	f	2026-04-11 19:03:27.797	2026-04-11 19:03:27.797	2026-04-11 19:03:27.803	\N	\N	\N
2787	guuqoo8c4e8o0jbsuenlqnsa	2	backward	f	2026-04-11 19:03:27.92	2026-04-11 19:03:27.92	\N	\N	\N	\N
2788	guuqoo8c4e8o0jbsuenlqnsa	2	backward	f	2026-04-11 19:03:27.92	2026-04-11 19:03:27.92	2026-04-11 19:03:27.929	\N	\N	\N
2791	pfaadnkuci9nbtbmd2rfjux5	4	backward	f	2026-04-11 19:03:27.997	2026-04-11 19:03:27.997	\N	\N	\N	\N
2792	pfaadnkuci9nbtbmd2rfjux5	4	backward	f	2026-04-11 19:03:27.997	2026-04-11 19:03:27.997	2026-04-11 19:03:28.003	\N	\N	\N
2797	yg4tiiysnf6ykx2h7xpyyq4c	7	backward	f	2026-04-11 19:03:28.11	2026-04-11 19:03:28.11	\N	\N	\N	\N
2798	yg4tiiysnf6ykx2h7xpyyq4c	7	backward	f	2026-04-11 19:03:28.11	2026-04-11 19:03:28.11	2026-04-11 19:03:28.115	\N	\N	\N
2801	j5xaae7dk8jo97c1lhgombb7	9	backward	f	2026-04-11 19:03:28.185	2026-04-11 19:03:28.185	\N	\N	\N	\N
2802	j5xaae7dk8jo97c1lhgombb7	9	backward	f	2026-04-11 19:03:28.185	2026-04-11 19:03:28.185	2026-04-11 19:03:28.193	\N	\N	\N
2803	h36030lpb7hom4jisbvurosk	10	backward	f	2026-04-11 19:03:28.223	2026-04-11 19:03:28.223	\N	\N	\N	\N
2804	h36030lpb7hom4jisbvurosk	10	backward	f	2026-04-11 19:03:28.223	2026-04-11 19:03:28.223	2026-04-11 19:03:28.228	\N	\N	\N
2805	c39mjq36lph4ras1v4qzwt6v	11	backward	f	2026-04-11 19:03:28.257	2026-04-11 19:03:28.257	\N	\N	\N	\N
2806	c39mjq36lph4ras1v4qzwt6v	11	backward	f	2026-04-11 19:03:28.257	2026-04-11 19:03:28.257	2026-04-11 19:03:28.262	\N	\N	\N
2809	wqy0wwxsw3rpvk2cfgdljh4t	13	backward	f	2026-04-11 19:03:28.331	2026-04-11 19:03:28.331	\N	\N	\N	\N
2810	wqy0wwxsw3rpvk2cfgdljh4t	13	backward	f	2026-04-11 19:03:28.331	2026-04-11 19:03:28.331	2026-04-11 19:03:28.337	\N	\N	\N
2811	pvkr1ddq4wwirk6d14iw1uj2	14	backward	f	2026-04-11 19:03:28.367	2026-04-11 19:03:28.367	\N	\N	\N	\N
2812	pvkr1ddq4wwirk6d14iw1uj2	14	backward	f	2026-04-11 19:03:28.367	2026-04-11 19:03:28.367	2026-04-11 19:03:28.373	\N	\N	\N
2919	p9k2608upwdbpr7ptdcvbkuq	4	forward	f	2026-04-11 19:03:30.638	2026-04-11 19:03:30.638	\N	\N	\N	\N
2920	p9k2608upwdbpr7ptdcvbkuq	4	forward	f	2026-04-11 19:03:30.638	2026-04-11 19:03:30.638	2026-04-11 19:03:30.647	\N	\N	\N
2923	r0m9qszd4mo5zd6y7ssbljth	6	forward	f	2026-04-11 19:03:30.716	2026-04-11 19:03:30.716	\N	\N	\N	\N
2924	r0m9qszd4mo5zd6y7ssbljth	6	forward	f	2026-04-11 19:03:30.716	2026-04-11 19:03:30.716	2026-04-11 19:03:30.721	\N	\N	\N
2927	yg98lxl661sfduzo8n4mp570	8	forward	t	2026-04-11 19:03:30.79	2026-04-11 19:03:30.79	\N	\N	\N	\N
2928	yg98lxl661sfduzo8n4mp570	8	forward	t	2026-04-11 19:03:30.79	2026-04-11 19:03:30.79	2026-04-11 19:03:30.797	\N	\N	\N
2931	dy3dy8a8a9r8w46yo5p33l9b	10	forward	t	2026-04-11 19:03:30.862	2026-04-11 19:03:30.862	\N	\N	\N	\N
2932	dy3dy8a8a9r8w46yo5p33l9b	10	forward	t	2026-04-11 19:03:30.862	2026-04-11 19:03:30.862	2026-04-11 19:03:30.867	\N	\N	\N
2935	gnj9ptptuuu0hp0oevr4ildk	12	forward	f	2026-04-11 19:03:30.932	2026-04-11 19:03:30.932	\N	\N	\N	\N
2936	gnj9ptptuuu0hp0oevr4ildk	12	forward	f	2026-04-11 19:03:30.932	2026-04-11 19:03:30.932	2026-04-11 19:03:30.937	\N	\N	\N
2939	nxz4id7c1zsqtkugnyk9mxzi	14	forward	f	2026-04-11 19:03:31.005	2026-04-11 19:03:31.005	\N	\N	\N	\N
2940	nxz4id7c1zsqtkugnyk9mxzi	14	forward	f	2026-04-11 19:03:31.005	2026-04-11 19:03:31.005	2026-04-11 19:03:31.012	\N	\N	\N
2945	l92vo6a26fyl8vwghzhfxygz	17	forward	f	2026-04-11 19:03:31.108	2026-04-11 19:03:31.108	\N	\N	\N	\N
2946	l92vo6a26fyl8vwghzhfxygz	17	forward	f	2026-04-11 19:03:31.108	2026-04-11 19:03:31.108	2026-04-11 19:03:31.117	\N	\N	\N
2949	r3keqdovezqja6q6bcgop8pn	19	forward	f	2026-04-11 19:03:31.184	2026-04-11 19:03:31.184	\N	\N	\N	\N
2950	r3keqdovezqja6q6bcgop8pn	19	forward	f	2026-04-11 19:03:31.184	2026-04-11 19:03:31.184	2026-04-11 19:03:31.189	\N	\N	\N
2955	o1hx9cso0hj7di24jmmm4n8g	22	forward	f	2026-04-11 19:03:31.298	2026-04-11 19:03:31.298	\N	\N	\N	\N
2956	o1hx9cso0hj7di24jmmm4n8g	22	forward	f	2026-04-11 19:03:31.298	2026-04-11 19:03:31.298	2026-04-11 19:03:31.306	\N	\N	\N
2959	d53fy7zgi1nxvct3s6jv7ssv	24	forward	t	2026-04-11 19:03:31.37	2026-04-11 19:03:31.37	\N	\N	\N	\N
2960	d53fy7zgi1nxvct3s6jv7ssv	24	forward	t	2026-04-11 19:03:31.37	2026-04-11 19:03:31.37	2026-04-11 19:03:31.379	\N	\N	\N
2961	eyk6ruz2infkzk5nvorusojq	25	forward	f	2026-04-11 19:03:31.406	2026-04-11 19:03:31.406	\N	\N	\N	\N
2962	eyk6ruz2infkzk5nvorusojq	25	forward	f	2026-04-11 19:03:31.406	2026-04-11 19:03:31.406	2026-04-11 19:03:31.414	\N	\N	\N
2965	snc6z43jil9vcoqrt3xi8yup	27	forward	f	2026-04-11 19:03:31.473	2026-04-11 19:03:31.473	\N	\N	\N	\N
2966	snc6z43jil9vcoqrt3xi8yup	27	forward	f	2026-04-11 19:03:31.473	2026-04-11 19:03:31.473	2026-04-11 19:03:31.481	\N	\N	\N
2969	j3zphx0qad4pw8zy3kimouih	29	forward	f	2026-04-11 19:03:31.548	2026-04-11 19:03:31.548	\N	\N	\N	\N
2970	j3zphx0qad4pw8zy3kimouih	29	forward	f	2026-04-11 19:03:31.548	2026-04-11 19:03:31.548	2026-04-11 19:03:31.553	\N	\N	\N
2973	uincuy5f658buszlgcxdrjme	31	forward	f	2026-04-11 19:03:31.662	2026-04-11 19:03:31.662	\N	\N	\N	\N
2974	uincuy5f658buszlgcxdrjme	31	forward	f	2026-04-11 19:03:31.662	2026-04-11 19:03:31.662	2026-04-11 19:03:31.669	\N	\N	\N
2977	yj1mkmki2gwe3t825pv4rexc	33	forward	f	2026-04-11 19:03:31.733	2026-04-11 19:03:31.733	\N	\N	\N	\N
2978	yj1mkmki2gwe3t825pv4rexc	33	forward	f	2026-04-11 19:03:31.733	2026-04-11 19:03:31.733	2026-04-11 19:03:31.739	\N	\N	\N
2987	cpsv06h0bgyqmeuk1f8cn0vj	38	forward	f	2026-04-11 19:03:31.914	2026-04-11 19:03:31.914	\N	\N	\N	\N
2988	cpsv06h0bgyqmeuk1f8cn0vj	38	forward	f	2026-04-11 19:03:31.914	2026-04-11 19:03:31.914	2026-04-11 19:03:31.921	\N	\N	\N
2989	mo0rho3zluu0kbaig4g6d1br	39	forward	f	2026-04-11 19:03:31.953	2026-04-11 19:03:31.953	\N	\N	\N	\N
2990	mo0rho3zluu0kbaig4g6d1br	39	forward	f	2026-04-11 19:03:31.953	2026-04-11 19:03:31.953	2026-04-11 19:03:31.961	\N	\N	\N
2995	n78795rzuk8lkvrlnl1imyot	42	forward	f	2026-04-11 19:03:32.064	2026-04-11 19:03:32.064	\N	\N	\N	\N
2996	n78795rzuk8lkvrlnl1imyot	42	forward	f	2026-04-11 19:03:32.064	2026-04-11 19:03:32.064	2026-04-11 19:03:32.071	\N	\N	\N
2999	v7nxdgw8k1zlqs5cru6jqv3z	44	forward	f	2026-04-11 19:03:32.138	2026-04-11 19:03:32.138	\N	\N	\N	\N
3000	v7nxdgw8k1zlqs5cru6jqv3z	44	forward	f	2026-04-11 19:03:32.138	2026-04-11 19:03:32.138	2026-04-11 19:03:32.147	\N	\N	\N
3003	kxe1xyagkn13kafzaq2a7uu3	46	forward	f	2026-04-11 19:03:32.235	2026-04-11 19:03:32.235	\N	\N	\N	\N
3004	kxe1xyagkn13kafzaq2a7uu3	46	forward	f	2026-04-11 19:03:32.235	2026-04-11 19:03:32.235	2026-04-11 19:03:32.243	\N	\N	\N
3009	wx6aelgtslcos84k71jmlttf	49	forward	f	2026-04-11 19:03:32.401	2026-04-11 19:03:32.401	\N	\N	\N	\N
3010	wx6aelgtslcos84k71jmlttf	49	forward	f	2026-04-11 19:03:32.401	2026-04-11 19:03:32.401	2026-04-11 19:03:32.414	\N	\N	\N
3173	ac2av4utrhabbgj9g4kv9vb9	29	forward	f	2026-04-11 19:03:36.002	2026-04-11 19:03:36.002	\N	\N	\N	\N
3174	ac2av4utrhabbgj9g4kv9vb9	29	forward	f	2026-04-11 19:03:36.002	2026-04-11 19:03:36.002	2026-04-11 19:03:36.007	\N	\N	\N
3177	qwcxpss0cszy82ykypwbbk0e	31	forward	f	2026-04-11 19:03:36.104	2026-04-11 19:03:36.104	\N	\N	\N	\N
3178	qwcxpss0cszy82ykypwbbk0e	31	forward	f	2026-04-11 19:03:36.104	2026-04-11 19:03:36.104	2026-04-11 19:03:36.114	\N	\N	\N
3185	qmq83h0nnx739n6euuxrp511	35	forward	f	2026-04-11 19:03:36.309	2026-04-11 19:03:36.309	\N	\N	\N	\N
3186	qmq83h0nnx739n6euuxrp511	35	forward	f	2026-04-11 19:03:36.309	2026-04-11 19:03:36.309	2026-04-11 19:03:36.316	\N	\N	\N
3189	h65bor4u335t2jzmuo1qjscq	37	forward	f	2026-04-11 19:03:36.417	2026-04-11 19:03:36.417	\N	\N	\N	\N
3190	h65bor4u335t2jzmuo1qjscq	37	forward	f	2026-04-11 19:03:36.417	2026-04-11 19:03:36.417	2026-04-11 19:03:36.425	\N	\N	\N
2777	e6448zqqplkyceqnikgejheo	62	forward	f	2026-04-11 19:03:27.696	2026-04-11 19:03:27.696	\N	\N	\N	\N
2778	e6448zqqplkyceqnikgejheo	62	forward	f	2026-04-11 19:03:27.696	2026-04-11 19:03:27.696	2026-04-11 19:03:27.703	\N	\N	\N
2819	ccrli8va3e3ly9tyo87lrgfe	18	backward	f	2026-04-11 19:03:28.547	2026-04-11 19:03:28.547	\N	\N	\N	\N
2820	ccrli8va3e3ly9tyo87lrgfe	18	backward	f	2026-04-11 19:03:28.547	2026-04-11 19:03:28.547	2026-04-11 19:03:28.554	\N	\N	\N
2825	biretdyun9qtid92trym799s	21	backward	f	2026-04-11 19:03:28.661	2026-04-11 19:03:28.661	\N	\N	\N	\N
2826	biretdyun9qtid92trym799s	21	backward	f	2026-04-11 19:03:28.661	2026-04-11 19:03:28.661	2026-04-11 19:03:28.669	\N	\N	\N
2829	zbsd966ugpjkfu3uvq8tl6oi	23	backward	f	2026-04-11 19:03:28.747	2026-04-11 19:03:28.747	\N	\N	\N	\N
2830	zbsd966ugpjkfu3uvq8tl6oi	23	backward	f	2026-04-11 19:03:28.747	2026-04-11 19:03:28.747	2026-04-11 19:03:28.756	\N	\N	\N
2833	ul6vq77m928m6j6p6w8q5158	25	backward	f	2026-04-11 19:03:28.824	2026-04-11 19:03:28.824	\N	\N	\N	\N
2834	ul6vq77m928m6j6p6w8q5158	25	backward	f	2026-04-11 19:03:28.824	2026-04-11 19:03:28.824	2026-04-11 19:03:28.832	\N	\N	\N
2847	hf4gb7oshu1b70v8bpor3pxr	32	backward	f	2026-04-11 19:03:29.08	2026-04-11 19:03:29.08	\N	\N	\N	\N
2848	hf4gb7oshu1b70v8bpor3pxr	32	backward	f	2026-04-11 19:03:29.08	2026-04-11 19:03:29.08	2026-04-11 19:03:29.089	\N	\N	\N
2851	lor1zymf0zpa2r6oxgaa48s2	34	backward	f	2026-04-11 19:03:29.157	2026-04-11 19:03:29.157	\N	\N	\N	\N
2852	lor1zymf0zpa2r6oxgaa48s2	34	backward	f	2026-04-11 19:03:29.157	2026-04-11 19:03:29.157	2026-04-11 19:03:29.167	\N	\N	\N
2855	q9ckreanuqyjjusqvjqxjoh3	36	backward	f	2026-04-11 19:03:29.238	2026-04-11 19:03:29.238	\N	\N	\N	\N
2856	q9ckreanuqyjjusqvjqxjoh3	36	backward	f	2026-04-11 19:03:29.238	2026-04-11 19:03:29.238	2026-04-11 19:03:29.245	\N	\N	\N
2857	zzw85q2j1tiyxbravf03d40e	37	backward	f	2026-04-11 19:03:29.275	2026-04-11 19:03:29.275	\N	\N	\N	\N
2858	zzw85q2j1tiyxbravf03d40e	37	backward	f	2026-04-11 19:03:29.275	2026-04-11 19:03:29.275	2026-04-11 19:03:29.285	\N	\N	\N
2859	odo6jh33h39lqj8bu5rlu2c0	38	backward	f	2026-04-11 19:03:29.315	2026-04-11 19:03:29.315	\N	\N	\N	\N
2860	odo6jh33h39lqj8bu5rlu2c0	38	backward	f	2026-04-11 19:03:29.315	2026-04-11 19:03:29.315	2026-04-11 19:03:29.321	\N	\N	\N
2913	gvcm4068245k9x2sszltqpss	1	forward	f	2026-04-11 19:03:30.482	2026-04-11 19:03:30.482	\N	\N	\N	\N
2914	gvcm4068245k9x2sszltqpss	1	forward	f	2026-04-11 19:03:30.482	2026-04-11 19:03:30.482	2026-04-11 19:03:30.488	\N	\N	\N
3109	xntcyx2kh2pp35ikdypkd3q6	48	backward	f	2026-04-11 19:03:34.454	2026-04-11 19:03:34.454	\N	\N	\N	\N
3110	xntcyx2kh2pp35ikdypkd3q6	48	backward	f	2026-04-11 19:03:34.454	2026-04-11 19:03:34.454	2026-04-11 19:03:34.461	\N	\N	\N
3113	bxnru0kq17ctmxqgdyvu2fys	50	backward	f	2026-04-11 19:03:34.565	2026-04-11 19:03:34.565	\N	\N	\N	\N
3114	bxnru0kq17ctmxqgdyvu2fys	50	backward	f	2026-04-11 19:03:34.565	2026-04-11 19:03:34.565	2026-04-11 19:03:34.578	\N	\N	\N
3117	sf149ts1dd94o9fwgigbpuvj	1	forward	f	2026-04-11 19:03:34.693	2026-04-11 19:03:34.693	\N	\N	\N	\N
3118	sf149ts1dd94o9fwgigbpuvj	1	forward	f	2026-04-11 19:03:34.693	2026-04-11 19:03:34.693	2026-04-11 19:03:34.701	\N	\N	\N
3123	l1j1tp197ye21xeug2btpint	4	forward	f	2026-04-11 19:03:34.9	2026-04-11 19:03:34.9	\N	\N	\N	\N
3124	l1j1tp197ye21xeug2btpint	4	forward	f	2026-04-11 19:03:34.9	2026-04-11 19:03:34.9	2026-04-11 19:03:34.91	\N	\N	\N
3127	lvsmiva5k2m52bpvfg5o07op	6	forward	f	2026-04-11 19:03:34.998	2026-04-11 19:03:34.998	\N	\N	\N	\N
3128	lvsmiva5k2m52bpvfg5o07op	6	forward	f	2026-04-11 19:03:34.998	2026-04-11 19:03:34.998	2026-04-11 19:03:35.004	\N	\N	\N
3135	wgbukgxhvrbzk0k3q1qehmo2	10	forward	t	2026-04-11 19:03:35.212	2026-04-11 19:03:35.212	\N	\N	\N	\N
3136	wgbukgxhvrbzk0k3q1qehmo2	10	forward	t	2026-04-11 19:03:35.212	2026-04-11 19:03:35.212	2026-04-11 19:03:35.219	\N	\N	\N
3141	c3gd5hxc1xhp2ldicr38hxba	13	forward	f	2026-04-11 19:03:35.335	2026-04-11 19:03:35.335	\N	\N	\N	\N
3142	c3gd5hxc1xhp2ldicr38hxba	13	forward	f	2026-04-11 19:03:35.335	2026-04-11 19:03:35.335	2026-04-11 19:03:35.343	\N	\N	\N
3145	evanxceihvw8tqxrq36ajipx	15	forward	f	2026-04-11 19:03:35.411	2026-04-11 19:03:35.411	\N	\N	\N	\N
3146	evanxceihvw8tqxrq36ajipx	15	forward	f	2026-04-11 19:03:35.411	2026-04-11 19:03:35.411	2026-04-11 19:03:35.42	\N	\N	\N
3151	d7gfd8vx9stdycvhwj8be1sm	18	forward	f	2026-04-11 19:03:35.52	2026-04-11 19:03:35.52	\N	\N	\N	\N
3152	d7gfd8vx9stdycvhwj8be1sm	18	forward	f	2026-04-11 19:03:35.52	2026-04-11 19:03:35.52	2026-04-11 19:03:35.528	\N	\N	\N
3155	s3095tflj4903c5hxy2qrz1f	20	forward	f	2026-04-11 19:03:35.602	2026-04-11 19:03:35.602	\N	\N	\N	\N
3156	s3095tflj4903c5hxy2qrz1f	20	forward	f	2026-04-11 19:03:35.602	2026-04-11 19:03:35.602	2026-04-11 19:03:35.614	\N	\N	\N
3159	epnh3xxoobn56z685kirsv9z	22	forward	f	2026-04-11 19:03:35.679	2026-04-11 19:03:35.679	\N	\N	\N	\N
3160	epnh3xxoobn56z685kirsv9z	22	forward	f	2026-04-11 19:03:35.679	2026-04-11 19:03:35.679	2026-04-11 19:03:35.685	\N	\N	\N
3163	ib5ubdzxs1lvad9x0ydt5aid	24	forward	f	2026-04-11 19:03:35.749	2026-04-11 19:03:35.749	\N	\N	\N	\N
3164	ib5ubdzxs1lvad9x0ydt5aid	24	forward	f	2026-04-11 19:03:35.749	2026-04-11 19:03:35.749	2026-04-11 19:03:35.755	\N	\N	\N
3167	lorwdhwxjiqbe881ukvjvrkp	26	forward	f	2026-04-11 19:03:35.844	2026-04-11 19:03:35.844	\N	\N	\N	\N
3168	lorwdhwxjiqbe881ukvjvrkp	26	forward	f	2026-04-11 19:03:35.844	2026-04-11 19:03:35.844	2026-04-11 19:03:35.85	\N	\N	\N
3171	l8fz4v7ej0vj6043alheueax	28	forward	f	2026-04-11 19:03:35.952	2026-04-11 19:03:35.952	\N	\N	\N	\N
3172	l8fz4v7ej0vj6043alheueax	28	forward	f	2026-04-11 19:03:35.952	2026-04-11 19:03:35.952	2026-04-11 19:03:35.962	\N	\N	\N
3179	fxuqex1vdlvind9fdbsv3a3t	32	forward	f	2026-04-11 19:03:36.162	2026-04-11 19:03:36.162	\N	\N	\N	\N
3180	fxuqex1vdlvind9fdbsv3a3t	32	forward	f	2026-04-11 19:03:36.162	2026-04-11 19:03:36.162	2026-04-11 19:03:36.168	\N	\N	\N
3183	s30ap9f25fqg6dnd1h6cai5f	34	forward	f	2026-04-11 19:03:36.259	2026-04-11 19:03:36.259	\N	\N	\N	\N
3184	s30ap9f25fqg6dnd1h6cai5f	34	forward	f	2026-04-11 19:03:36.259	2026-04-11 19:03:36.259	2026-04-11 19:03:36.265	\N	\N	\N
3221	x7x1fjamlbkgimyfkwmenhfm	9	backward	f	2026-04-11 19:03:37.109	2026-04-11 19:03:37.109	\N	\N	\N	\N
3222	x7x1fjamlbkgimyfkwmenhfm	9	backward	f	2026-04-11 19:03:37.109	2026-04-11 19:03:37.109	2026-04-11 19:03:37.116	\N	\N	\N
3225	klojw9v3bi1cl9iwin76aodt	11	backward	f	2026-04-11 19:03:37.194	2026-04-11 19:03:37.194	\N	\N	\N	\N
3226	klojw9v3bi1cl9iwin76aodt	11	backward	f	2026-04-11 19:03:37.194	2026-04-11 19:03:37.194	2026-04-11 19:03:37.202	\N	\N	\N
3229	ckyrip2tk43v1494l42f5tsn	13	backward	f	2026-04-11 19:03:37.273	2026-04-11 19:03:37.273	\N	\N	\N	\N
3230	ckyrip2tk43v1494l42f5tsn	13	backward	f	2026-04-11 19:03:37.273	2026-04-11 19:03:37.273	2026-04-11 19:03:37.283	\N	\N	\N
3233	e7r608gstq2znevgsyytp7yd	15	backward	f	2026-04-11 19:03:37.352	2026-04-11 19:03:37.352	\N	\N	\N	\N
3234	e7r608gstq2znevgsyytp7yd	15	backward	f	2026-04-11 19:03:37.352	2026-04-11 19:03:37.352	2026-04-11 19:03:37.364	\N	\N	\N
3237	vz88kh9tuxsj074pitik5qfu	17	backward	f	2026-04-11 19:03:37.443	2026-04-11 19:03:37.443	\N	\N	\N	\N
3238	vz88kh9tuxsj074pitik5qfu	17	backward	f	2026-04-11 19:03:37.443	2026-04-11 19:03:37.443	2026-04-11 19:03:37.449	\N	\N	\N
3241	rlxeu1emma0sfvfg6joidyy5	19	backward	f	2026-04-11 19:03:37.516	2026-04-11 19:03:37.516	\N	\N	\N	\N
3242	rlxeu1emma0sfvfg6joidyy5	19	backward	f	2026-04-11 19:03:37.516	2026-04-11 19:03:37.516	2026-04-11 19:03:37.522	\N	\N	\N
3245	ntds7kw8lr7h1sll3rxrwva2	21	backward	f	2026-04-11 19:03:37.592	2026-04-11 19:03:37.592	\N	\N	\N	\N
3246	ntds7kw8lr7h1sll3rxrwva2	21	backward	f	2026-04-11 19:03:37.592	2026-04-11 19:03:37.592	2026-04-11 19:03:37.599	\N	\N	\N
3251	sshzxvfqhuzk8br8oyf2nfnk	24	backward	f	2026-04-11 19:03:37.704	2026-04-11 19:03:37.704	\N	\N	\N	\N
3252	sshzxvfqhuzk8br8oyf2nfnk	24	backward	f	2026-04-11 19:03:37.704	2026-04-11 19:03:37.704	2026-04-11 19:03:37.715	\N	\N	\N
3255	f3nn6tdod7jcpw7frihvz1y3	26	backward	f	2026-04-11 19:03:37.781	2026-04-11 19:03:37.781	\N	\N	\N	\N
3256	f3nn6tdod7jcpw7frihvz1y3	26	backward	f	2026-04-11 19:03:37.781	2026-04-11 19:03:37.781	2026-04-11 19:03:37.788	\N	\N	\N
3259	ma1itx59j0auxaliap5mpaup	28	backward	f	2026-04-11 19:03:37.859	2026-04-11 19:03:37.859	\N	\N	\N	\N
3260	ma1itx59j0auxaliap5mpaup	28	backward	f	2026-04-11 19:03:37.859	2026-04-11 19:03:37.859	2026-04-11 19:03:37.866	\N	\N	\N
3263	rzqx33vpx04siu9e7q1ypr24	30	backward	f	2026-04-11 19:03:37.934	2026-04-11 19:03:37.934	\N	\N	\N	\N
3264	rzqx33vpx04siu9e7q1ypr24	30	backward	f	2026-04-11 19:03:37.934	2026-04-11 19:03:37.934	2026-04-11 19:03:37.94	\N	\N	\N
3269	lbstwzhr2v9hul041latd27t	33	backward	f	2026-04-11 19:03:38.104	2026-04-11 19:03:38.104	\N	\N	\N	\N
3270	lbstwzhr2v9hul041latd27t	33	backward	f	2026-04-11 19:03:38.104	2026-04-11 19:03:38.104	2026-04-11 19:03:38.113	\N	\N	\N
2947	yp0kl14y0vhgrv18v72e5wqp	18	forward	f	2026-04-11 19:03:31.149	2026-04-11 19:03:31.149	\N	\N	\N	\N
2948	yp0kl14y0vhgrv18v72e5wqp	18	forward	f	2026-04-11 19:03:31.149	2026-04-11 19:03:31.149	2026-04-11 19:03:31.156	\N	\N	\N
2951	eqsezv3nnnxnds9ze8svrfy6	20	forward	f	2026-04-11 19:03:31.22	2026-04-11 19:03:31.22	\N	\N	\N	\N
2952	eqsezv3nnnxnds9ze8svrfy6	20	forward	f	2026-04-11 19:03:31.22	2026-04-11 19:03:31.22	2026-04-11 19:03:31.229	\N	\N	\N
2953	c33vur558q87of3ijh32x5z7	21	forward	f	2026-04-11 19:03:31.26	2026-04-11 19:03:31.26	\N	\N	\N	\N
2954	c33vur558q87of3ijh32x5z7	21	forward	f	2026-04-11 19:03:31.26	2026-04-11 19:03:31.26	2026-04-11 19:03:31.267	\N	\N	\N
2957	qiuebz17cnbdko1qxvygdkhj	23	forward	t	2026-04-11 19:03:31.335	2026-04-11 19:03:31.335	\N	\N	\N	\N
2958	qiuebz17cnbdko1qxvygdkhj	23	forward	t	2026-04-11 19:03:31.335	2026-04-11 19:03:31.335	2026-04-11 19:03:31.341	\N	\N	\N
2963	nrvozxac84lj2i6lhni35zkt	26	forward	f	2026-04-11 19:03:31.44	2026-04-11 19:03:31.44	\N	\N	\N	\N
2964	nrvozxac84lj2i6lhni35zkt	26	forward	f	2026-04-11 19:03:31.44	2026-04-11 19:03:31.44	2026-04-11 19:03:31.448	\N	\N	\N
2967	tb3jrgn7tnup39v6lfkzlehx	28	forward	f	2026-04-11 19:03:31.511	2026-04-11 19:03:31.511	\N	\N	\N	\N
2968	tb3jrgn7tnup39v6lfkzlehx	28	forward	f	2026-04-11 19:03:31.511	2026-04-11 19:03:31.511	2026-04-11 19:03:31.518	\N	\N	\N
2971	e0ikeespw7wsz1cnfq7pch9y	30	forward	f	2026-04-11 19:03:31.606	2026-04-11 19:03:31.606	\N	\N	\N	\N
2972	e0ikeespw7wsz1cnfq7pch9y	30	forward	f	2026-04-11 19:03:31.606	2026-04-11 19:03:31.606	2026-04-11 19:03:31.621	\N	\N	\N
2975	ymf73maa2q7tgwncf9zz6q1d	32	forward	f	2026-04-11 19:03:31.699	2026-04-11 19:03:31.699	\N	\N	\N	\N
2976	ymf73maa2q7tgwncf9zz6q1d	32	forward	f	2026-04-11 19:03:31.699	2026-04-11 19:03:31.699	2026-04-11 19:03:31.704	\N	\N	\N
2979	m4ch11attwxfxm26uuzf4ido	34	forward	f	2026-04-11 19:03:31.769	2026-04-11 19:03:31.769	\N	\N	\N	\N
2980	m4ch11attwxfxm26uuzf4ido	34	forward	f	2026-04-11 19:03:31.769	2026-04-11 19:03:31.769	2026-04-11 19:03:31.778	\N	\N	\N
2981	wmrio8szt6pcvtygq2y5oikf	35	forward	f	2026-04-11 19:03:31.805	2026-04-11 19:03:31.805	\N	\N	\N	\N
2982	wmrio8szt6pcvtygq2y5oikf	35	forward	f	2026-04-11 19:03:31.805	2026-04-11 19:03:31.805	2026-04-11 19:03:31.813	\N	\N	\N
2983	tfceoem1lo6zhy9iye208sz2	36	forward	f	2026-04-11 19:03:31.839	2026-04-11 19:03:31.839	\N	\N	\N	\N
2984	tfceoem1lo6zhy9iye208sz2	36	forward	f	2026-04-11 19:03:31.839	2026-04-11 19:03:31.839	2026-04-11 19:03:31.845	\N	\N	\N
2985	n4yu4mcx7xu7z9w0q2ubl88h	37	forward	f	2026-04-11 19:03:31.874	2026-04-11 19:03:31.874	\N	\N	\N	\N
2986	n4yu4mcx7xu7z9w0q2ubl88h	37	forward	f	2026-04-11 19:03:31.874	2026-04-11 19:03:31.874	2026-04-11 19:03:31.883	\N	\N	\N
2991	nn6j4x4tra5xvjiu8ezsmb86	40	forward	f	2026-04-11 19:03:31.988	2026-04-11 19:03:31.988	\N	\N	\N	\N
2992	nn6j4x4tra5xvjiu8ezsmb86	40	forward	f	2026-04-11 19:03:31.988	2026-04-11 19:03:31.988	2026-04-11 19:03:31.995	\N	\N	\N
2993	qosth5v0gy1k5jcvn1zie2dh	41	forward	f	2026-04-11 19:03:32.027	2026-04-11 19:03:32.027	\N	\N	\N	\N
2994	qosth5v0gy1k5jcvn1zie2dh	41	forward	f	2026-04-11 19:03:32.027	2026-04-11 19:03:32.027	2026-04-11 19:03:32.035	\N	\N	\N
2997	qsb9kvzxsn1k4c4j1bcrwi14	43	forward	f	2026-04-11 19:03:32.103	2026-04-11 19:03:32.103	\N	\N	\N	\N
2998	qsb9kvzxsn1k4c4j1bcrwi14	43	forward	f	2026-04-11 19:03:32.103	2026-04-11 19:03:32.103	2026-04-11 19:03:32.11	\N	\N	\N
3001	pzy39roriwjfn21lxq1pf8hp	45	forward	t	2026-04-11 19:03:32.178	2026-04-11 19:03:32.178	\N	\N	\N	\N
3002	pzy39roriwjfn21lxq1pf8hp	45	forward	t	2026-04-11 19:03:32.178	2026-04-11 19:03:32.178	2026-04-11 19:03:32.186	\N	\N	\N
3007	ze5we98m8sr2tl4fel8x990m	48	forward	f	2026-04-11 19:03:32.346	2026-04-11 19:03:32.346	\N	\N	\N	\N
3008	ze5we98m8sr2tl4fel8x990m	48	forward	f	2026-04-11 19:03:32.346	2026-04-11 19:03:32.346	2026-04-11 19:03:32.353	\N	\N	\N
3013	egoedfcv3jsekcpy5b93pjsg	51	forward	f	2026-04-11 19:03:32.514	2026-04-11 19:03:32.514	\N	\N	\N	\N
3014	egoedfcv3jsekcpy5b93pjsg	51	forward	f	2026-04-11 19:03:32.514	2026-04-11 19:03:32.514	2026-04-11 19:03:32.521	\N	\N	\N
3017	es4cs49s336777z02hjx5dro	2	backward	f	2026-04-11 19:03:32.589	2026-04-11 19:03:32.589	\N	\N	\N	\N
3018	es4cs49s336777z02hjx5dro	2	backward	f	2026-04-11 19:03:32.589	2026-04-11 19:03:32.589	2026-04-11 19:03:32.598	\N	\N	\N
3021	syx95r9ayqhwbxrb9xqqcmnf	4	backward	f	2026-04-11 19:03:32.662	2026-04-11 19:03:32.662	\N	\N	\N	\N
3022	syx95r9ayqhwbxrb9xqqcmnf	4	backward	f	2026-04-11 19:03:32.662	2026-04-11 19:03:32.662	2026-04-11 19:03:32.669	\N	\N	\N
3025	j4p7ntp0ozv884t9qioln5mj	6	backward	f	2026-04-11 19:03:32.734	2026-04-11 19:03:32.734	\N	\N	\N	\N
3026	j4p7ntp0ozv884t9qioln5mj	6	backward	f	2026-04-11 19:03:32.734	2026-04-11 19:03:32.734	2026-04-11 19:03:32.744	\N	\N	\N
3033	o1ykkb13if7pv6m69zelzstz	10	backward	f	2026-04-11 19:03:32.887	2026-04-11 19:03:32.887	\N	\N	\N	\N
3034	o1ykkb13if7pv6m69zelzstz	10	backward	f	2026-04-11 19:03:32.887	2026-04-11 19:03:32.887	2026-04-11 19:03:32.898	\N	\N	\N
3039	n8xqu3ybi61251447774fsie	13	backward	f	2026-04-11 19:03:33.001	2026-04-11 19:03:33.001	\N	\N	\N	\N
3040	n8xqu3ybi61251447774fsie	13	backward	f	2026-04-11 19:03:33.001	2026-04-11 19:03:33.001	2026-04-11 19:03:33.01	\N	\N	\N
3043	x4r2egzg6ftopvnyd7at0vx6	15	backward	f	2026-04-11 19:03:33.078	2026-04-11 19:03:33.078	\N	\N	\N	\N
3044	x4r2egzg6ftopvnyd7at0vx6	15	backward	f	2026-04-11 19:03:33.078	2026-04-11 19:03:33.078	2026-04-11 19:03:33.085	\N	\N	\N
3047	r4910k0ybjm69publsistzl8	17	backward	f	2026-04-11 19:03:33.15	2026-04-11 19:03:33.15	\N	\N	\N	\N
3048	r4910k0ybjm69publsistzl8	17	backward	f	2026-04-11 19:03:33.15	2026-04-11 19:03:33.15	2026-04-11 19:03:33.155	\N	\N	\N
3049	l9xrt3gacbmzg0f4g8o35tiv	18	backward	f	2026-04-11 19:03:33.184	2026-04-11 19:03:33.184	\N	\N	\N	\N
3050	l9xrt3gacbmzg0f4g8o35tiv	18	backward	f	2026-04-11 19:03:33.184	2026-04-11 19:03:33.184	2026-04-11 19:03:33.189	\N	\N	\N
3055	t7cucaq9hzu5in9rlwq3z3dg	21	backward	f	2026-04-11 19:03:33.293	2026-04-11 19:03:33.293	\N	\N	\N	\N
3056	t7cucaq9hzu5in9rlwq3z3dg	21	backward	f	2026-04-11 19:03:33.293	2026-04-11 19:03:33.293	2026-04-11 19:03:33.298	\N	\N	\N
3059	w5q0wc9j8ocdxjozjyuwchqr	23	backward	f	2026-04-11 19:03:33.368	2026-04-11 19:03:33.368	\N	\N	\N	\N
3060	w5q0wc9j8ocdxjozjyuwchqr	23	backward	f	2026-04-11 19:03:33.368	2026-04-11 19:03:33.368	2026-04-11 19:03:33.38	\N	\N	\N
3065	acjnx2p6c5r2ku726jwskhcx	26	backward	f	2026-04-11 19:03:33.493	2026-04-11 19:03:33.493	\N	\N	\N	\N
3066	acjnx2p6c5r2ku726jwskhcx	26	backward	f	2026-04-11 19:03:33.493	2026-04-11 19:03:33.493	2026-04-11 19:03:33.504	\N	\N	\N
3071	k9seau6mqbvmc0o2iwb3sxrl	29	backward	t	2026-04-11 19:03:33.671	2026-04-11 19:03:33.671	\N	\N	\N	\N
3072	k9seau6mqbvmc0o2iwb3sxrl	29	backward	t	2026-04-11 19:03:33.671	2026-04-11 19:03:33.671	2026-04-11 19:03:33.687	\N	\N	\N
3075	a7fps7toejy0gt1h5otru3br	31	backward	f	2026-04-11 19:03:33.787	2026-04-11 19:03:33.787	\N	\N	\N	\N
3076	a7fps7toejy0gt1h5otru3br	31	backward	f	2026-04-11 19:03:33.787	2026-04-11 19:03:33.787	2026-04-11 19:03:33.794	\N	\N	\N
3079	xf7xrikwhc1th37h4z3hoy85	33	backward	f	2026-04-11 19:03:33.865	2026-04-11 19:03:33.865	\N	\N	\N	\N
3080	xf7xrikwhc1th37h4z3hoy85	33	backward	f	2026-04-11 19:03:33.865	2026-04-11 19:03:33.865	2026-04-11 19:03:33.871	\N	\N	\N
3087	pfkd3h6rgxz2drwezsr560vw	37	backward	f	2026-04-11 19:03:34.01	2026-04-11 19:03:34.01	\N	\N	\N	\N
3088	pfkd3h6rgxz2drwezsr560vw	37	backward	f	2026-04-11 19:03:34.01	2026-04-11 19:03:34.01	2026-04-11 19:03:34.015	\N	\N	\N
3091	lonlswu0yh3f39bsmkqgsexw	39	backward	f	2026-04-11 19:03:34.079	2026-04-11 19:03:34.079	\N	\N	\N	\N
3092	lonlswu0yh3f39bsmkqgsexw	39	backward	f	2026-04-11 19:03:34.079	2026-04-11 19:03:34.079	2026-04-11 19:03:34.086	\N	\N	\N
3095	cheeloxhe4nlzxvg386kkae7	41	backward	f	2026-04-11 19:03:34.158	2026-04-11 19:03:34.158	\N	\N	\N	\N
3096	cheeloxhe4nlzxvg386kkae7	41	backward	f	2026-04-11 19:03:34.158	2026-04-11 19:03:34.158	2026-04-11 19:03:34.167	\N	\N	\N
3099	vx1t4qfvxu766r1w88r2w2ef	43	backward	f	2026-04-11 19:03:34.25	2026-04-11 19:03:34.25	\N	\N	\N	\N
3100	vx1t4qfvxu766r1w88r2w2ef	43	backward	f	2026-04-11 19:03:34.25	2026-04-11 19:03:34.25	2026-04-11 19:03:34.256	\N	\N	\N
3107	hodukp8rfzc6ddgw3p1sqq3x	47	backward	f	2026-04-11 19:03:34.405	2026-04-11 19:03:34.405	\N	\N	\N	\N
3108	hodukp8rfzc6ddgw3p1sqq3x	47	backward	f	2026-04-11 19:03:34.405	2026-04-11 19:03:34.405	2026-04-11 19:03:34.411	\N	\N	\N
3111	ala7lh9p0ip7h5osq4kezsfe	49	backward	f	2026-04-11 19:03:34.519	2026-04-11 19:03:34.519	\N	\N	\N	\N
3112	ala7lh9p0ip7h5osq4kezsfe	49	backward	f	2026-04-11 19:03:34.519	2026-04-11 19:03:34.519	2026-04-11 19:03:34.528	\N	\N	\N
3115	aj7exxoa79fsc42tykq8cv4w	51	backward	f	2026-04-11 19:03:34.616	2026-04-11 19:03:34.616	\N	\N	\N	\N
3116	aj7exxoa79fsc42tykq8cv4w	51	backward	f	2026-04-11 19:03:34.616	2026-04-11 19:03:34.616	2026-04-11 19:03:34.63	\N	\N	\N
3035	dcdy7o0108o71li1486cx7rt	11	backward	f	2026-04-11 19:03:32.933	2026-04-11 19:03:32.933	\N	\N	\N	\N
3036	dcdy7o0108o71li1486cx7rt	11	backward	f	2026-04-11 19:03:32.933	2026-04-11 19:03:32.933	2026-04-11 19:03:32.938	\N	\N	\N
3037	qxgotminn38z5z87obt496st	12	backward	f	2026-04-11 19:03:32.967	2026-04-11 19:03:32.967	\N	\N	\N	\N
3038	qxgotminn38z5z87obt496st	12	backward	f	2026-04-11 19:03:32.967	2026-04-11 19:03:32.967	2026-04-11 19:03:32.972	\N	\N	\N
3041	an4689d4191dhlpalegfxmna	14	backward	f	2026-04-11 19:03:33.044	2026-04-11 19:03:33.044	\N	\N	\N	\N
3042	an4689d4191dhlpalegfxmna	14	backward	f	2026-04-11 19:03:33.044	2026-04-11 19:03:33.044	2026-04-11 19:03:33.052	\N	\N	\N
3045	nlobreonghptalmvlld7clol	16	backward	f	2026-04-11 19:03:33.112	2026-04-11 19:03:33.112	\N	\N	\N	\N
3046	nlobreonghptalmvlld7clol	16	backward	f	2026-04-11 19:03:33.112	2026-04-11 19:03:33.112	2026-04-11 19:03:33.12	\N	\N	\N
3051	qga5pdtbrzcqpkgmqhnqm9i9	19	backward	f	2026-04-11 19:03:33.218	2026-04-11 19:03:33.218	\N	\N	\N	\N
3052	qga5pdtbrzcqpkgmqhnqm9i9	19	backward	f	2026-04-11 19:03:33.218	2026-04-11 19:03:33.218	2026-04-11 19:03:33.226	\N	\N	\N
3053	xtbl41z3zz8k93i5rmrcfi31	20	backward	f	2026-04-11 19:03:33.253	2026-04-11 19:03:33.253	\N	\N	\N	\N
3054	xtbl41z3zz8k93i5rmrcfi31	20	backward	f	2026-04-11 19:03:33.253	2026-04-11 19:03:33.253	2026-04-11 19:03:33.26	\N	\N	\N
3057	g3lalbd85cjn5v2cjexfxyqx	22	backward	f	2026-04-11 19:03:33.332	2026-04-11 19:03:33.332	\N	\N	\N	\N
3058	g3lalbd85cjn5v2cjexfxyqx	22	backward	f	2026-04-11 19:03:33.332	2026-04-11 19:03:33.332	2026-04-11 19:03:33.338	\N	\N	\N
3061	f5l03sggykhoihla5r5bdkph	24	backward	f	2026-04-11 19:03:33.408	2026-04-11 19:03:33.408	\N	\N	\N	\N
3062	f5l03sggykhoihla5r5bdkph	24	backward	f	2026-04-11 19:03:33.408	2026-04-11 19:03:33.408	2026-04-11 19:03:33.417	\N	\N	\N
3063	k2p9hc7yltpsduqp62o8zcjz	25	backward	f	2026-04-11 19:03:33.447	2026-04-11 19:03:33.447	\N	\N	\N	\N
3064	k2p9hc7yltpsduqp62o8zcjz	25	backward	f	2026-04-11 19:03:33.447	2026-04-11 19:03:33.447	2026-04-11 19:03:33.454	\N	\N	\N
3067	ti0dk9jbs8ffmwg3gfkrc167	27	backward	f	2026-04-11 19:03:33.544	2026-04-11 19:03:33.544	\N	\N	\N	\N
3068	ti0dk9jbs8ffmwg3gfkrc167	27	backward	f	2026-04-11 19:03:33.544	2026-04-11 19:03:33.544	2026-04-11 19:03:33.571	\N	\N	\N
3069	t0zww3or6kx7j29uub5dfaam	28	backward	t	2026-04-11 19:03:33.622	2026-04-11 19:03:33.622	\N	\N	\N	\N
3070	t0zww3or6kx7j29uub5dfaam	28	backward	t	2026-04-11 19:03:33.622	2026-04-11 19:03:33.622	2026-04-11 19:03:33.632	\N	\N	\N
3073	xiaofjjkwssra7kqut38lvym	30	backward	f	2026-04-11 19:03:33.743	2026-04-11 19:03:33.743	\N	\N	\N	\N
3074	xiaofjjkwssra7kqut38lvym	30	backward	f	2026-04-11 19:03:33.743	2026-04-11 19:03:33.743	2026-04-11 19:03:33.755	\N	\N	\N
3077	qpuei2fv6m6t1mrsfcpl3sym	32	backward	f	2026-04-11 19:03:33.825	2026-04-11 19:03:33.825	\N	\N	\N	\N
3078	qpuei2fv6m6t1mrsfcpl3sym	32	backward	f	2026-04-11 19:03:33.825	2026-04-11 19:03:33.825	2026-04-11 19:03:33.834	\N	\N	\N
3081	lurhgeapwdzr37lkvwpsl1iv	34	backward	f	2026-04-11 19:03:33.905	2026-04-11 19:03:33.905	\N	\N	\N	\N
3082	lurhgeapwdzr37lkvwpsl1iv	34	backward	f	2026-04-11 19:03:33.905	2026-04-11 19:03:33.905	2026-04-11 19:03:33.911	\N	\N	\N
3083	wpfujkc076s8vk4q357oh6he	35	backward	f	2026-04-11 19:03:33.939	2026-04-11 19:03:33.939	\N	\N	\N	\N
3084	wpfujkc076s8vk4q357oh6he	35	backward	f	2026-04-11 19:03:33.939	2026-04-11 19:03:33.939	2026-04-11 19:03:33.947	\N	\N	\N
3085	limtguv3lq51vy9dg0drj719	36	backward	f	2026-04-11 19:03:33.977	2026-04-11 19:03:33.977	\N	\N	\N	\N
3086	limtguv3lq51vy9dg0drj719	36	backward	f	2026-04-11 19:03:33.977	2026-04-11 19:03:33.977	2026-04-11 19:03:33.982	\N	\N	\N
3089	jw3mp5i3d7plol2fmz9ty56e	38	backward	f	2026-04-11 19:03:34.045	2026-04-11 19:03:34.045	\N	\N	\N	\N
3090	jw3mp5i3d7plol2fmz9ty56e	38	backward	f	2026-04-11 19:03:34.045	2026-04-11 19:03:34.045	2026-04-11 19:03:34.049	\N	\N	\N
3093	viji78w2skff06g2td5g16qs	40	backward	f	2026-04-11 19:03:34.117	2026-04-11 19:03:34.117	\N	\N	\N	\N
3094	viji78w2skff06g2td5g16qs	40	backward	f	2026-04-11 19:03:34.117	2026-04-11 19:03:34.117	2026-04-11 19:03:34.123	\N	\N	\N
3097	t5jrqjafsp1crcsrevehdxw1	42	backward	f	2026-04-11 19:03:34.202	2026-04-11 19:03:34.202	\N	\N	\N	\N
3098	t5jrqjafsp1crcsrevehdxw1	42	backward	f	2026-04-11 19:03:34.202	2026-04-11 19:03:34.202	2026-04-11 19:03:34.211	\N	\N	\N
3101	iqvzu40t0i45e430cy957b0n	44	backward	f	2026-04-11 19:03:34.286	2026-04-11 19:03:34.286	\N	\N	\N	\N
3102	iqvzu40t0i45e430cy957b0n	44	backward	f	2026-04-11 19:03:34.286	2026-04-11 19:03:34.286	2026-04-11 19:03:34.295	\N	\N	\N
3103	tuex5kf4hqmdqj42f1qpvs7d	45	backward	f	2026-04-11 19:03:34.326	2026-04-11 19:03:34.326	\N	\N	\N	\N
3104	tuex5kf4hqmdqj42f1qpvs7d	45	backward	f	2026-04-11 19:03:34.326	2026-04-11 19:03:34.326	2026-04-11 19:03:34.336	\N	\N	\N
3105	o20aca01ihjpbbf07h4ymt8j	46	backward	f	2026-04-11 19:03:34.365	2026-04-11 19:03:34.365	\N	\N	\N	\N
3106	o20aca01ihjpbbf07h4ymt8j	46	backward	f	2026-04-11 19:03:34.365	2026-04-11 19:03:34.365	2026-04-11 19:03:34.373	\N	\N	\N
3119	licuh3y9hr85spevwxh8qd75	2	forward	f	2026-04-11 19:03:34.783	2026-04-11 19:03:34.783	\N	\N	\N	\N
3120	licuh3y9hr85spevwxh8qd75	2	forward	f	2026-04-11 19:03:34.783	2026-04-11 19:03:34.783	2026-04-11 19:03:34.797	\N	\N	\N
3125	r4solbz0t14nqi1jbhvmp56v	5	forward	f	2026-04-11 19:03:34.958	2026-04-11 19:03:34.958	\N	\N	\N	\N
3126	r4solbz0t14nqi1jbhvmp56v	5	forward	f	2026-04-11 19:03:34.958	2026-04-11 19:03:34.958	2026-04-11 19:03:34.966	\N	\N	\N
3129	ho1cabnp87z2r8czm7534wvg	7	forward	f	2026-04-11 19:03:35.055	2026-04-11 19:03:35.055	\N	\N	\N	\N
3130	ho1cabnp87z2r8czm7534wvg	7	forward	f	2026-04-11 19:03:35.055	2026-04-11 19:03:35.055	2026-04-11 19:03:35.064	\N	\N	\N
3133	jdkkr0jcy3wskx9318ii7u9m	9	forward	f	2026-04-11 19:03:35.158	2026-04-11 19:03:35.158	\N	\N	\N	\N
3134	jdkkr0jcy3wskx9318ii7u9m	9	forward	f	2026-04-11 19:03:35.158	2026-04-11 19:03:35.158	2026-04-11 19:03:35.166	\N	\N	\N
3137	ol1cph5bdk0qett914z5iaom	11	forward	f	2026-04-11 19:03:35.25	2026-04-11 19:03:35.25	\N	\N	\N	\N
3138	ol1cph5bdk0qett914z5iaom	11	forward	f	2026-04-11 19:03:35.25	2026-04-11 19:03:35.25	2026-04-11 19:03:35.258	\N	\N	\N
3139	h06loz2qf8cnqlzxafzboszu	12	forward	f	2026-04-11 19:03:35.295	2026-04-11 19:03:35.295	\N	\N	\N	\N
3140	h06loz2qf8cnqlzxafzboszu	12	forward	f	2026-04-11 19:03:35.295	2026-04-11 19:03:35.295	2026-04-11 19:03:35.302	\N	\N	\N
3143	s37z2h3n6no6qr785jggzhgp	14	forward	f	2026-04-11 19:03:35.372	2026-04-11 19:03:35.372	\N	\N	\N	\N
3144	s37z2h3n6no6qr785jggzhgp	14	forward	f	2026-04-11 19:03:35.372	2026-04-11 19:03:35.372	2026-04-11 19:03:35.38	\N	\N	\N
3147	w7u3x0kxzuljx4rr7g2n22kw	16	forward	f	2026-04-11 19:03:35.45	2026-04-11 19:03:35.45	\N	\N	\N	\N
3148	w7u3x0kxzuljx4rr7g2n22kw	16	forward	f	2026-04-11 19:03:35.45	2026-04-11 19:03:35.45	2026-04-11 19:03:35.456	\N	\N	\N
3149	cu3hh4x3ogd1g8xb9g678s8o	17	forward	t	2026-04-11 19:03:35.485	2026-04-11 19:03:35.485	\N	\N	\N	\N
3150	cu3hh4x3ogd1g8xb9g678s8o	17	forward	t	2026-04-11 19:03:35.485	2026-04-11 19:03:35.485	2026-04-11 19:03:35.492	\N	\N	\N
3153	n15mgig53d6cz1v6xsxv3hb3	19	forward	t	2026-04-11 19:03:35.563	2026-04-11 19:03:35.563	\N	\N	\N	\N
3154	n15mgig53d6cz1v6xsxv3hb3	19	forward	t	2026-04-11 19:03:35.563	2026-04-11 19:03:35.563	2026-04-11 19:03:35.57	\N	\N	\N
3157	pq2d3fecqxms6u1y5dxt4mnw	21	forward	f	2026-04-11 19:03:35.643	2026-04-11 19:03:35.643	\N	\N	\N	\N
3158	pq2d3fecqxms6u1y5dxt4mnw	21	forward	f	2026-04-11 19:03:35.643	2026-04-11 19:03:35.643	2026-04-11 19:03:35.65	\N	\N	\N
3161	bb459mz9p1rfizwgf9luc2ft	23	forward	f	2026-04-11 19:03:35.714	2026-04-11 19:03:35.714	\N	\N	\N	\N
3162	bb459mz9p1rfizwgf9luc2ft	23	forward	f	2026-04-11 19:03:35.714	2026-04-11 19:03:35.714	2026-04-11 19:03:35.721	\N	\N	\N
3165	z5s8y859l569bpthlz3aa821	25	forward	f	2026-04-11 19:03:35.786	2026-04-11 19:03:35.786	\N	\N	\N	\N
3166	z5s8y859l569bpthlz3aa821	25	forward	f	2026-04-11 19:03:35.786	2026-04-11 19:03:35.786	2026-04-11 19:03:35.794	\N	\N	\N
3169	ily9lku40knhkgco1mp8qvt3	27	forward	f	2026-04-11 19:03:35.889	2026-04-11 19:03:35.889	\N	\N	\N	\N
3170	ily9lku40knhkgco1mp8qvt3	27	forward	f	2026-04-11 19:03:35.889	2026-04-11 19:03:35.889	2026-04-11 19:03:35.905	\N	\N	\N
3175	fms6h4c625f59axf0rjhkkf6	30	forward	f	2026-04-11 19:03:36.048	2026-04-11 19:03:36.048	\N	\N	\N	\N
3176	fms6h4c625f59axf0rjhkkf6	30	forward	f	2026-04-11 19:03:36.048	2026-04-11 19:03:36.048	2026-04-11 19:03:36.055	\N	\N	\N
3181	zetc35rvt22j0b0aa4xronrk	33	forward	f	2026-04-11 19:03:36.211	2026-04-11 19:03:36.211	\N	\N	\N	\N
3182	zetc35rvt22j0b0aa4xronrk	33	forward	f	2026-04-11 19:03:36.211	2026-04-11 19:03:36.211	2026-04-11 19:03:36.217	\N	\N	\N
3195	xjwja2k0h6zpj7bpc0izqp4w	40	forward	f	2026-04-11 19:03:36.559	2026-04-11 19:03:36.559	\N	\N	\N	\N
3196	xjwja2k0h6zpj7bpc0izqp4w	40	forward	f	2026-04-11 19:03:36.559	2026-04-11 19:03:36.559	2026-04-11 19:03:36.569	\N	\N	\N
3121	dgyra8bjw1ciziqdln2frpe7	3	forward	f	2026-04-11 19:03:34.846	2026-04-11 19:03:34.846	\N	\N	\N	\N
3122	dgyra8bjw1ciziqdln2frpe7	3	forward	f	2026-04-11 19:03:34.846	2026-04-11 19:03:34.846	2026-04-11 19:03:34.853	\N	\N	\N
3193	qdv2ki6nh7n18okcorevhgs6	39	forward	f	2026-04-11 19:03:36.51	2026-04-11 19:03:36.51	\N	\N	\N	\N
3194	qdv2ki6nh7n18okcorevhgs6	39	forward	f	2026-04-11 19:03:36.51	2026-04-11 19:03:36.51	2026-04-11 19:03:36.516	\N	\N	\N
3197	hta9uxl6473aaaczaxuhbd43	41	forward	f	2026-04-11 19:03:36.625	2026-04-11 19:03:36.625	\N	\N	\N	\N
3198	hta9uxl6473aaaczaxuhbd43	41	forward	f	2026-04-11 19:03:36.625	2026-04-11 19:03:36.625	2026-04-11 19:03:36.634	\N	\N	\N
3203	uzbzsl3w2urlcpuw57e0myvv	44	forward	f	2026-04-11 19:03:36.777	2026-04-11 19:03:36.777	\N	\N	\N	\N
3204	uzbzsl3w2urlcpuw57e0myvv	44	forward	f	2026-04-11 19:03:36.777	2026-04-11 19:03:36.777	2026-04-11 19:03:36.783	\N	\N	\N
3207	habgqyxoqyocekknk1j5pdkg	2	backward	f	2026-04-11 19:03:36.85	2026-04-11 19:03:36.85	\N	\N	\N	\N
3208	habgqyxoqyocekknk1j5pdkg	2	backward	f	2026-04-11 19:03:36.85	2026-04-11 19:03:36.85	2026-04-11 19:03:36.854	\N	\N	\N
3209	gltegaf9mj773634io8jwubw	3	backward	f	2026-04-11 19:03:36.89	2026-04-11 19:03:36.89	\N	\N	\N	\N
3210	gltegaf9mj773634io8jwubw	3	backward	f	2026-04-11 19:03:36.89	2026-04-11 19:03:36.89	2026-04-11 19:03:36.898	\N	\N	\N
3213	c7f0621a4snf8prqy86wjp77	5	backward	f	2026-04-11 19:03:36.957	2026-04-11 19:03:36.957	\N	\N	\N	\N
3214	c7f0621a4snf8prqy86wjp77	5	backward	f	2026-04-11 19:03:36.957	2026-04-11 19:03:36.957	2026-04-11 19:03:36.965	\N	\N	\N
3217	kluqrk3w3x2ti80uv0oeiapj	7	backward	f	2026-04-11 19:03:37.026	2026-04-11 19:03:37.026	\N	\N	\N	\N
3218	kluqrk3w3x2ti80uv0oeiapj	7	backward	f	2026-04-11 19:03:37.026	2026-04-11 19:03:37.026	2026-04-11 19:03:37.033	\N	\N	\N
3239	gfmzvdohnqfws9326dm1zc8k	18	backward	f	2026-04-11 19:03:37.479	2026-04-11 19:03:37.479	\N	\N	\N	\N
3240	gfmzvdohnqfws9326dm1zc8k	18	backward	f	2026-04-11 19:03:37.479	2026-04-11 19:03:37.479	2026-04-11 19:03:37.485	\N	\N	\N
3243	ctu07p31lpbad7i75xzmagpa	20	backward	f	2026-04-11 19:03:37.554	2026-04-11 19:03:37.554	\N	\N	\N	\N
3244	ctu07p31lpbad7i75xzmagpa	20	backward	f	2026-04-11 19:03:37.554	2026-04-11 19:03:37.554	2026-04-11 19:03:37.562	\N	\N	\N
3247	q5r9r189053fzi664exqmh54	22	backward	f	2026-04-11 19:03:37.627	2026-04-11 19:03:37.627	\N	\N	\N	\N
3248	q5r9r189053fzi664exqmh54	22	backward	f	2026-04-11 19:03:37.627	2026-04-11 19:03:37.627	2026-04-11 19:03:37.634	\N	\N	\N
3249	g0j3q11t7yvf3pj4kbc9sc9q	23	backward	f	2026-04-11 19:03:37.663	2026-04-11 19:03:37.663	\N	\N	\N	\N
3250	g0j3q11t7yvf3pj4kbc9sc9q	23	backward	f	2026-04-11 19:03:37.663	2026-04-11 19:03:37.663	2026-04-11 19:03:37.67	\N	\N	\N
3253	sy76v4yq3qeq3x2tjpuk0fsr	25	backward	f	2026-04-11 19:03:37.745	2026-04-11 19:03:37.745	\N	\N	\N	\N
3254	sy76v4yq3qeq3x2tjpuk0fsr	25	backward	f	2026-04-11 19:03:37.745	2026-04-11 19:03:37.745	2026-04-11 19:03:37.752	\N	\N	\N
3257	yaoqg6cjxu7c389tn14pzqy8	27	backward	f	2026-04-11 19:03:37.819	2026-04-11 19:03:37.819	\N	\N	\N	\N
3258	yaoqg6cjxu7c389tn14pzqy8	27	backward	f	2026-04-11 19:03:37.819	2026-04-11 19:03:37.819	2026-04-11 19:03:37.827	\N	\N	\N
3261	ahy6g8ovzyq6373wpwyk0ojj	29	backward	f	2026-04-11 19:03:37.894	2026-04-11 19:03:37.894	\N	\N	\N	\N
3262	ahy6g8ovzyq6373wpwyk0ojj	29	backward	f	2026-04-11 19:03:37.894	2026-04-11 19:03:37.894	2026-04-11 19:03:37.901	\N	\N	\N
3265	kxzl4lu4q9o057yf1pjtfe22	31	backward	f	2026-04-11 19:03:37.97	2026-04-11 19:03:37.97	\N	\N	\N	\N
3266	kxzl4lu4q9o057yf1pjtfe22	31	backward	f	2026-04-11 19:03:37.97	2026-04-11 19:03:37.97	2026-04-11 19:03:37.978	\N	\N	\N
3267	df4gcjpdgkf0en59dfsm6vpt	32	backward	f	2026-04-11 19:03:38.047	2026-04-11 19:03:38.047	\N	\N	\N	\N
3268	df4gcjpdgkf0en59dfsm6vpt	32	backward	f	2026-04-11 19:03:38.047	2026-04-11 19:03:38.047	2026-04-11 19:03:38.061	\N	\N	\N
3271	vef16vm5t1n2diyup2h7oaqx	34	backward	f	2026-04-11 19:03:38.144	2026-04-11 19:03:38.144	\N	\N	\N	\N
3272	vef16vm5t1n2diyup2h7oaqx	34	backward	f	2026-04-11 19:03:38.144	2026-04-11 19:03:38.144	2026-04-11 19:03:38.151	\N	\N	\N
3275	x6sgwpqpnpbag4k6ie2xho7h	36	backward	f	2026-04-11 19:03:38.219	2026-04-11 19:03:38.219	\N	\N	\N	\N
3276	x6sgwpqpnpbag4k6ie2xho7h	36	backward	f	2026-04-11 19:03:38.219	2026-04-11 19:03:38.219	2026-04-11 19:03:38.224	\N	\N	\N
3287	ox5rosywtd0n9i61mbzuo5ap	4	forward	f	2026-04-11 19:03:38.452	2026-04-11 19:03:38.452	\N	\N	\N	\N
3288	ox5rosywtd0n9i61mbzuo5ap	4	forward	f	2026-04-11 19:03:38.452	2026-04-11 19:03:38.452	2026-04-11 19:03:38.457	\N	\N	\N
3289	hywxbg34nidao5rv8x8hcsyt	5	forward	t	2026-04-11 19:03:38.485	2026-04-11 19:03:38.485	\N	\N	\N	\N
3290	hywxbg34nidao5rv8x8hcsyt	5	forward	t	2026-04-11 19:03:38.485	2026-04-11 19:03:38.485	2026-04-11 19:03:38.491	\N	\N	\N
3291	zdxfdh215xy77n7nhjsklibm	6	forward	f	2026-04-11 19:03:38.519	2026-04-11 19:03:38.519	\N	\N	\N	\N
3292	zdxfdh215xy77n7nhjsklibm	6	forward	f	2026-04-11 19:03:38.519	2026-04-11 19:03:38.519	2026-04-11 19:03:38.526	\N	\N	\N
3295	oud6jdqd1h8h2cfmumbzsngk	8	forward	f	2026-04-11 19:03:38.588	2026-04-11 19:03:38.588	\N	\N	\N	\N
3296	oud6jdqd1h8h2cfmumbzsngk	8	forward	f	2026-04-11 19:03:38.588	2026-04-11 19:03:38.588	2026-04-11 19:03:38.596	\N	\N	\N
3297	zw3gn03k91kribz77y4z0wrp	9	forward	f	2026-04-11 19:03:38.622	2026-04-11 19:03:38.622	\N	\N	\N	\N
3298	zw3gn03k91kribz77y4z0wrp	9	forward	f	2026-04-11 19:03:38.622	2026-04-11 19:03:38.622	2026-04-11 19:03:38.628	\N	\N	\N
3299	wch8031kzumd16q0h7ybdn3y	10	forward	f	2026-04-11 19:03:38.654	2026-04-11 19:03:38.654	\N	\N	\N	\N
3300	wch8031kzumd16q0h7ybdn3y	10	forward	f	2026-04-11 19:03:38.654	2026-04-11 19:03:38.654	2026-04-11 19:03:38.661	\N	\N	\N
3301	mx5i2mrmmu0isceks9jph72u	11	forward	f	2026-04-11 19:03:38.689	2026-04-11 19:03:38.689	\N	\N	\N	\N
3302	mx5i2mrmmu0isceks9jph72u	11	forward	f	2026-04-11 19:03:38.689	2026-04-11 19:03:38.689	2026-04-11 19:03:38.697	\N	\N	\N
3311	gn2sljs12ume1a0wd8ztqpqq	16	forward	f	2026-04-11 19:03:38.864	2026-04-11 19:03:38.864	\N	\N	\N	\N
3312	gn2sljs12ume1a0wd8ztqpqq	16	forward	f	2026-04-11 19:03:38.864	2026-04-11 19:03:38.864	2026-04-11 19:03:38.869	\N	\N	\N
3317	wjoo5wn5j61f9z847s3vc3cb	19	forward	f	2026-04-11 19:03:38.969	2026-04-11 19:03:38.969	\N	\N	\N	\N
3318	wjoo5wn5j61f9z847s3vc3cb	19	forward	f	2026-04-11 19:03:38.969	2026-04-11 19:03:38.969	2026-04-11 19:03:38.976	\N	\N	\N
3321	bcsi286z9iw0w60m96q5oecq	21	forward	f	2026-04-11 19:03:39.039	2026-04-11 19:03:39.039	\N	\N	\N	\N
3322	bcsi286z9iw0w60m96q5oecq	21	forward	f	2026-04-11 19:03:39.039	2026-04-11 19:03:39.039	2026-04-11 19:03:39.046	\N	\N	\N
3323	csj15s9mls19iy6ea6otqnfm	22	forward	f	2026-04-11 19:03:39.072	2026-04-11 19:03:39.072	\N	\N	\N	\N
3324	csj15s9mls19iy6ea6otqnfm	22	forward	f	2026-04-11 19:03:39.072	2026-04-11 19:03:39.072	2026-04-11 19:03:39.078	\N	\N	\N
3331	aaa8wolt18wf8ydo6ubuhzqy	26	forward	f	2026-04-11 19:03:39.216	2026-04-11 19:03:39.216	\N	\N	\N	\N
3332	aaa8wolt18wf8ydo6ubuhzqy	26	forward	f	2026-04-11 19:03:39.216	2026-04-11 19:03:39.216	2026-04-11 19:03:39.22	\N	\N	\N
3335	s6918na2q7lueudhnokbvf5a	28	forward	f	2026-04-11 19:03:39.284	2026-04-11 19:03:39.284	\N	\N	\N	\N
3336	s6918na2q7lueudhnokbvf5a	28	forward	f	2026-04-11 19:03:39.284	2026-04-11 19:03:39.284	2026-04-11 19:03:39.289	\N	\N	\N
3339	lpexalcuwrv4mtuxroqfsdm3	30	forward	f	2026-04-11 19:03:39.348	2026-04-11 19:03:39.348	\N	\N	\N	\N
3340	lpexalcuwrv4mtuxroqfsdm3	30	forward	f	2026-04-11 19:03:39.348	2026-04-11 19:03:39.348	2026-04-11 19:03:39.352	\N	\N	\N
3347	juuqw3lwswyfkf699eaxufdt	34	forward	f	2026-04-11 19:03:39.538	2026-04-11 19:03:39.538	\N	\N	\N	\N
3348	juuqw3lwswyfkf699eaxufdt	34	forward	f	2026-04-11 19:03:39.538	2026-04-11 19:03:39.538	2026-04-11 19:03:39.548	\N	\N	\N
3349	kf806bgh0mkc6617pzx1rkrj	35	forward	f	2026-04-11 19:03:39.577	2026-04-11 19:03:39.577	\N	\N	\N	\N
3350	kf806bgh0mkc6617pzx1rkrj	35	forward	f	2026-04-11 19:03:39.577	2026-04-11 19:03:39.577	2026-04-11 19:03:39.583	\N	\N	\N
3199	cq4lihun6heepd3qxb9cry2j	42	forward	f	2026-04-11 19:03:36.665	2026-04-11 19:03:36.665	\N	\N	\N	\N
3200	cq4lihun6heepd3qxb9cry2j	42	forward	f	2026-04-11 19:03:36.665	2026-04-11 19:03:36.665	2026-04-11 19:03:36.674	\N	\N	\N
3343	nhhc3v5zsty1scqci0c1if2e	32	forward	f	2026-04-11 19:03:39.444	2026-04-11 19:03:39.444	\N	\N	\N	\N
3344	nhhc3v5zsty1scqci0c1if2e	32	forward	f	2026-04-11 19:03:39.444	2026-04-11 19:03:39.444	2026-04-11 19:03:39.451	\N	\N	\N
3351	es8dcnwbclahz3y7ahq6uxio	36	forward	f	2026-04-11 19:03:39.625	2026-04-11 19:03:39.625	\N	\N	\N	\N
3352	es8dcnwbclahz3y7ahq6uxio	36	forward	f	2026-04-11 19:03:39.625	2026-04-11 19:03:39.625	2026-04-11 19:03:39.632	\N	\N	\N
3359	oxmxz4nzka3k341vvn7nji1m	4	backward	f	2026-04-11 19:03:39.761	2026-04-11 19:03:39.761	\N	\N	\N	\N
3360	oxmxz4nzka3k341vvn7nji1m	4	backward	f	2026-04-11 19:03:39.761	2026-04-11 19:03:39.761	2026-04-11 19:03:39.768	\N	\N	\N
3363	wlpo83qavizyaw7f1rbyub2f	6	backward	f	2026-04-11 19:03:39.831	2026-04-11 19:03:39.831	\N	\N	\N	\N
3364	wlpo83qavizyaw7f1rbyub2f	6	backward	f	2026-04-11 19:03:39.831	2026-04-11 19:03:39.831	2026-04-11 19:03:39.837	\N	\N	\N
3273	r3osfoedl0iiqmhjq6jx5z7o	35	backward	f	2026-04-11 19:03:38.181	2026-04-11 19:03:38.181	\N	\N	\N	\N
3274	r3osfoedl0iiqmhjq6jx5z7o	35	backward	f	2026-04-11 19:03:38.181	2026-04-11 19:03:38.181	2026-04-11 19:03:38.186	\N	\N	\N
3279	kzhav0sl3bl9hmxp975fjl1c	38	backward	f	2026-04-11 19:03:38.3	2026-04-11 19:03:38.3	\N	\N	\N	\N
3280	kzhav0sl3bl9hmxp975fjl1c	38	backward	f	2026-04-11 19:03:38.3	2026-04-11 19:03:38.3	2026-04-11 19:03:38.307	\N	\N	\N
3283	ae27wgzrljyd88pdmw00ngm0	2	forward	f	2026-04-11 19:03:38.378	2026-04-11 19:03:38.378	\N	\N	\N	\N
3284	ae27wgzrljyd88pdmw00ngm0	2	forward	f	2026-04-11 19:03:38.378	2026-04-11 19:03:38.378	2026-04-11 19:03:38.386	\N	\N	\N
3341	grtugb37jp66ymcfnpb4p49r	31	forward	f	2026-04-11 19:03:39.396	2026-04-11 19:03:39.396	\N	\N	\N	\N
3342	grtugb37jp66ymcfnpb4p49r	31	forward	f	2026-04-11 19:03:39.396	2026-04-11 19:03:39.396	2026-04-11 19:03:39.402	\N	\N	\N
3345	yx7gg9krbczhdnmbemy943jc	33	forward	f	2026-04-11 19:03:39.492	2026-04-11 19:03:39.492	\N	\N	\N	\N
3346	yx7gg9krbczhdnmbemy943jc	33	forward	f	2026-04-11 19:03:39.492	2026-04-11 19:03:39.492	2026-04-11 19:03:39.499	\N	\N	\N
3353	li7diyrhoky6ryqcckvrrn75	1	backward	f	2026-04-11 19:03:39.659	2026-04-11 19:03:39.659	\N	\N	\N	\N
3354	li7diyrhoky6ryqcckvrrn75	1	backward	f	2026-04-11 19:03:39.659	2026-04-11 19:03:39.659	2026-04-11 19:03:39.667	\N	\N	\N
3355	w8nxg1hgbnesz1j43bnjock0	2	backward	f	2026-04-11 19:03:39.696	2026-04-11 19:03:39.696	\N	\N	\N	\N
3356	w8nxg1hgbnesz1j43bnjock0	2	backward	f	2026-04-11 19:03:39.696	2026-04-11 19:03:39.696	2026-04-11 19:03:39.702	\N	\N	\N
3357	pdryiispicje6x6fvy5rfs9u	3	backward	f	2026-04-11 19:03:39.727	2026-04-11 19:03:39.727	\N	\N	\N	\N
3358	pdryiispicje6x6fvy5rfs9u	3	backward	f	2026-04-11 19:03:39.727	2026-04-11 19:03:39.727	2026-04-11 19:03:39.733	\N	\N	\N
3361	ed6eh9bmr6laftkt5c61qi18	5	backward	f	2026-04-11 19:03:39.798	2026-04-11 19:03:39.798	\N	\N	\N	\N
3362	ed6eh9bmr6laftkt5c61qi18	5	backward	f	2026-04-11 19:03:39.798	2026-04-11 19:03:39.798	2026-04-11 19:03:39.803	\N	\N	\N
3369	w6qt6td5bqipcgp1k7hych5o	9	backward	f	2026-04-11 19:03:39.939	2026-04-11 19:03:39.939	\N	\N	\N	\N
3277	kbr3huiy5u2swa4y42wggn4h	37	backward	f	2026-04-11 19:03:38.265	2026-04-11 19:03:38.265	\N	\N	\N	\N
3278	kbr3huiy5u2swa4y42wggn4h	37	backward	f	2026-04-11 19:03:38.265	2026-04-11 19:03:38.265	2026-04-11 19:03:38.271	\N	\N	\N
3281	zwv6zfoic1c7qf0mou3w0q4l	1	forward	f	2026-04-11 19:03:38.344	2026-04-11 19:03:38.344	\N	\N	\N	\N
3282	zwv6zfoic1c7qf0mou3w0q4l	1	forward	f	2026-04-11 19:03:38.344	2026-04-11 19:03:38.344	2026-04-11 19:03:38.351	\N	\N	\N
3285	rjqzb556jvsrxkjef8rtc8n8	3	forward	f	2026-04-11 19:03:38.412	2026-04-11 19:03:38.412	\N	\N	\N	\N
3286	rjqzb556jvsrxkjef8rtc8n8	3	forward	f	2026-04-11 19:03:38.412	2026-04-11 19:03:38.412	2026-04-11 19:03:38.42	\N	\N	\N
3293	lwag64nplt6mz2rbw5z3mm2c	7	forward	t	2026-04-11 19:03:38.555	2026-04-11 19:03:38.555	\N	\N	\N	\N
3294	lwag64nplt6mz2rbw5z3mm2c	7	forward	t	2026-04-11 19:03:38.555	2026-04-11 19:03:38.555	2026-04-11 19:03:38.564	\N	\N	\N
3303	wd6oc0ad14byue6xwrqjb4dw	12	forward	f	2026-04-11 19:03:38.726	2026-04-11 19:03:38.726	\N	\N	\N	\N
3304	wd6oc0ad14byue6xwrqjb4dw	12	forward	f	2026-04-11 19:03:38.726	2026-04-11 19:03:38.726	2026-04-11 19:03:38.734	\N	\N	\N
3305	r1y6nlkmd3y4rz4hz8gb8b8t	13	forward	f	2026-04-11 19:03:38.766	2026-04-11 19:03:38.766	\N	\N	\N	\N
3306	r1y6nlkmd3y4rz4hz8gb8b8t	13	forward	f	2026-04-11 19:03:38.766	2026-04-11 19:03:38.766	2026-04-11 19:03:38.771	\N	\N	\N
3307	gb8e6zyveqd0zrznvqp8lsz8	14	forward	f	2026-04-11 19:03:38.799	2026-04-11 19:03:38.799	\N	\N	\N	\N
3308	gb8e6zyveqd0zrznvqp8lsz8	14	forward	f	2026-04-11 19:03:38.799	2026-04-11 19:03:38.799	2026-04-11 19:03:38.803	\N	\N	\N
3309	xclcd3ma47ouv8mwgbgymgxp	15	forward	f	2026-04-11 19:03:38.831	2026-04-11 19:03:38.831	\N	\N	\N	\N
3310	xclcd3ma47ouv8mwgbgymgxp	15	forward	f	2026-04-11 19:03:38.831	2026-04-11 19:03:38.831	2026-04-11 19:03:38.837	\N	\N	\N
3313	psyqazhdd0o4il7slzvhrrwd	17	forward	f	2026-04-11 19:03:38.9	2026-04-11 19:03:38.9	\N	\N	\N	\N
3314	psyqazhdd0o4il7slzvhrrwd	17	forward	f	2026-04-11 19:03:38.9	2026-04-11 19:03:38.9	2026-04-11 19:03:38.906	\N	\N	\N
3315	v99kst17i872mrsqvm0653sc	18	forward	f	2026-04-11 19:03:38.935	2026-04-11 19:03:38.935	\N	\N	\N	\N
3316	v99kst17i872mrsqvm0653sc	18	forward	f	2026-04-11 19:03:38.935	2026-04-11 19:03:38.935	2026-04-11 19:03:38.943	\N	\N	\N
3319	wipg5bf3s7xbwyx5b2jsg5dn	20	forward	f	2026-04-11 19:03:39.005	2026-04-11 19:03:39.005	\N	\N	\N	\N
3320	wipg5bf3s7xbwyx5b2jsg5dn	20	forward	f	2026-04-11 19:03:39.005	2026-04-11 19:03:39.005	2026-04-11 19:03:39.012	\N	\N	\N
3325	cdo9drrqg8m4iu4cyk03rwt9	23	forward	f	2026-04-11 19:03:39.106	2026-04-11 19:03:39.106	\N	\N	\N	\N
3326	cdo9drrqg8m4iu4cyk03rwt9	23	forward	f	2026-04-11 19:03:39.106	2026-04-11 19:03:39.106	2026-04-11 19:03:39.113	\N	\N	\N
3327	xk771krse36w5r3d6o5sqe7f	24	forward	f	2026-04-11 19:03:39.145	2026-04-11 19:03:39.145	\N	\N	\N	\N
3328	xk771krse36w5r3d6o5sqe7f	24	forward	f	2026-04-11 19:03:39.145	2026-04-11 19:03:39.145	2026-04-11 19:03:39.152	\N	\N	\N
3329	p2kws90ywr1jzo9k2ulx00rm	25	forward	f	2026-04-11 19:03:39.181	2026-04-11 19:03:39.181	\N	\N	\N	\N
3330	p2kws90ywr1jzo9k2ulx00rm	25	forward	f	2026-04-11 19:03:39.181	2026-04-11 19:03:39.181	2026-04-11 19:03:39.187	\N	\N	\N
3333	kayhyfxnzjm52unsecrobqkj	27	forward	f	2026-04-11 19:03:39.248	2026-04-11 19:03:39.248	\N	\N	\N	\N
3334	kayhyfxnzjm52unsecrobqkj	27	forward	f	2026-04-11 19:03:39.248	2026-04-11 19:03:39.248	2026-04-11 19:03:39.253	\N	\N	\N
3337	ymzfbe5kr1l86v4pf1nwkl5w	29	forward	f	2026-04-11 19:03:39.315	2026-04-11 19:03:39.315	\N	\N	\N	\N
3338	ymzfbe5kr1l86v4pf1nwkl5w	29	forward	f	2026-04-11 19:03:39.315	2026-04-11 19:03:39.315	2026-04-11 19:03:39.32	\N	\N	\N
3370	w6qt6td5bqipcgp1k7hych5o	9	backward	f	2026-04-11 19:03:39.939	2026-04-11 19:03:39.939	2026-04-11 19:03:39.948	\N	\N	\N
3371	tkxtmavrht6ktieoegbytsu2	10	backward	f	2026-04-11 19:03:39.978	2026-04-11 19:03:39.978	\N	\N	\N	\N
3372	tkxtmavrht6ktieoegbytsu2	10	backward	f	2026-04-11 19:03:39.978	2026-04-11 19:03:39.978	2026-04-11 19:03:39.986	\N	\N	\N
3373	lxl3dnq4mqzurkn18bl82erz	11	backward	f	2026-04-11 19:03:40.015	2026-04-11 19:03:40.015	\N	\N	\N	\N
3374	lxl3dnq4mqzurkn18bl82erz	11	backward	f	2026-04-11 19:03:40.015	2026-04-11 19:03:40.015	2026-04-11 19:03:40.021	\N	\N	\N
3375	rrnvov3ltaa3p2wc5jnuxsio	12	backward	f	2026-04-11 19:03:40.05	2026-04-11 19:03:40.05	\N	\N	\N	\N
3376	rrnvov3ltaa3p2wc5jnuxsio	12	backward	f	2026-04-11 19:03:40.05	2026-04-11 19:03:40.05	2026-04-11 19:03:40.056	\N	\N	\N
3377	adwl9w8f3rmquz27f72p27hk	13	backward	f	2026-04-11 19:03:40.087	2026-04-11 19:03:40.087	\N	\N	\N	\N
3378	adwl9w8f3rmquz27f72p27hk	13	backward	f	2026-04-11 19:03:40.087	2026-04-11 19:03:40.087	2026-04-11 19:03:40.096	\N	\N	\N
3379	myih2kgg9anguoge2qvfgt53	14	backward	f	2026-04-11 19:03:40.125	2026-04-11 19:03:40.125	\N	\N	\N	\N
3380	myih2kgg9anguoge2qvfgt53	14	backward	f	2026-04-11 19:03:40.125	2026-04-11 19:03:40.125	2026-04-11 19:03:40.131	\N	\N	\N
3381	ta3dhyjtd236r57djholtzdh	15	backward	f	2026-04-11 19:03:40.162	2026-04-11 19:03:40.162	\N	\N	\N	\N
3382	ta3dhyjtd236r57djholtzdh	15	backward	f	2026-04-11 19:03:40.162	2026-04-11 19:03:40.162	2026-04-11 19:03:40.169	\N	\N	\N
3383	yc3arhkzne1xmrn4z07wpyth	16	backward	f	2026-04-11 19:03:40.2	2026-04-11 19:03:40.2	\N	\N	\N	\N
3384	yc3arhkzne1xmrn4z07wpyth	16	backward	f	2026-04-11 19:03:40.2	2026-04-11 19:03:40.2	2026-04-11 19:03:40.206	\N	\N	\N
3385	kwugjry4cksr8uq0o272gg13	17	backward	f	2026-04-11 19:03:40.233	2026-04-11 19:03:40.233	\N	\N	\N	\N
3386	kwugjry4cksr8uq0o272gg13	17	backward	f	2026-04-11 19:03:40.233	2026-04-11 19:03:40.233	2026-04-11 19:03:40.239	\N	\N	\N
3387	t1dxi4ot2xbxxdz901384l34	18	backward	f	2026-04-11 19:03:40.273	2026-04-11 19:03:40.273	\N	\N	\N	\N
3388	t1dxi4ot2xbxxdz901384l34	18	backward	f	2026-04-11 19:03:40.273	2026-04-11 19:03:40.273	2026-04-11 19:03:40.288	\N	\N	\N
3389	l0nt65d4oe7f5fox69z6wjkg	19	backward	f	2026-04-11 19:03:40.33	2026-04-11 19:03:40.33	\N	\N	\N	\N
3390	l0nt65d4oe7f5fox69z6wjkg	19	backward	f	2026-04-11 19:03:40.33	2026-04-11 19:03:40.33	2026-04-11 19:03:40.346	\N	\N	\N
3391	nbe4suxvff5quxr0ewcv75et	20	backward	f	2026-04-11 19:03:40.375	2026-04-11 19:03:40.375	\N	\N	\N	\N
3392	nbe4suxvff5quxr0ewcv75et	20	backward	f	2026-04-11 19:03:40.375	2026-04-11 19:03:40.375	2026-04-11 19:03:40.384	\N	\N	\N
3393	ab9cyybunxix5nsjc6x45bz4	21	backward	f	2026-04-11 19:03:40.409	2026-04-11 19:03:40.409	\N	\N	\N	\N
3394	ab9cyybunxix5nsjc6x45bz4	21	backward	f	2026-04-11 19:03:40.409	2026-04-11 19:03:40.409	2026-04-11 19:03:40.417	\N	\N	\N
3395	jak8l6lw39zw6d704htvggsy	22	backward	f	2026-04-11 19:03:40.444	2026-04-11 19:03:40.444	\N	\N	\N	\N
3396	jak8l6lw39zw6d704htvggsy	22	backward	f	2026-04-11 19:03:40.444	2026-04-11 19:03:40.444	2026-04-11 19:03:40.449	\N	\N	\N
3397	fquuiilybrvzlfgvpc3kmmu9	23	backward	f	2026-04-11 19:03:40.475	2026-04-11 19:03:40.475	\N	\N	\N	\N
3398	fquuiilybrvzlfgvpc3kmmu9	23	backward	f	2026-04-11 19:03:40.475	2026-04-11 19:03:40.475	2026-04-11 19:03:40.481	\N	\N	\N
3399	sw46y0hlaihwpnppw89tbtar	24	backward	f	2026-04-11 19:03:40.51	2026-04-11 19:03:40.51	\N	\N	\N	\N
3400	sw46y0hlaihwpnppw89tbtar	24	backward	f	2026-04-11 19:03:40.51	2026-04-11 19:03:40.51	2026-04-11 19:03:40.516	\N	\N	\N
3401	eyet04t67viz8ld3pcllxov7	25	backward	f	2026-04-11 19:03:40.544	2026-04-11 19:03:40.544	\N	\N	\N	\N
3402	eyet04t67viz8ld3pcllxov7	25	backward	f	2026-04-11 19:03:40.544	2026-04-11 19:03:40.544	2026-04-11 19:03:40.552	\N	\N	\N
3403	m642k2qryvkl5qn7hqtt9z7h	26	backward	f	2026-04-11 19:03:40.582	2026-04-11 19:03:40.582	\N	\N	\N	\N
3404	m642k2qryvkl5qn7hqtt9z7h	26	backward	f	2026-04-11 19:03:40.582	2026-04-11 19:03:40.582	2026-04-11 19:03:40.591	\N	\N	\N
3405	ry56oo9g1znrcoa8ik3t7n2j	27	backward	f	2026-04-11 19:03:40.636	2026-04-11 19:03:40.636	\N	\N	\N	\N
3406	ry56oo9g1znrcoa8ik3t7n2j	27	backward	f	2026-04-11 19:03:40.636	2026-04-11 19:03:40.636	2026-04-11 19:03:40.646	\N	\N	\N
3407	tblwjafm0ch91rd5x52vgdk5	28	backward	f	2026-04-11 19:03:40.698	2026-04-11 19:03:40.698	\N	\N	\N	\N
3408	tblwjafm0ch91rd5x52vgdk5	28	backward	f	2026-04-11 19:03:40.698	2026-04-11 19:03:40.698	2026-04-11 19:03:40.715	\N	\N	\N
3409	is8vfdkqm1xxhi9fsa2l7wj2	29	backward	f	2026-04-11 19:03:40.771	2026-04-11 19:03:40.771	\N	\N	\N	\N
3410	is8vfdkqm1xxhi9fsa2l7wj2	29	backward	f	2026-04-11 19:03:40.771	2026-04-11 19:03:40.771	2026-04-11 19:03:40.784	\N	\N	\N
3411	vuzldpjgzi8izuhu7g75fizl	30	backward	f	2026-04-11 19:03:40.854	2026-04-11 19:03:40.854	\N	\N	\N	\N
3412	vuzldpjgzi8izuhu7g75fizl	30	backward	f	2026-04-11 19:03:40.854	2026-04-11 19:03:40.854	2026-04-11 19:03:40.88	\N	\N	\N
3413	et0va1ygbwo6dpd6c48n1kmd	31	backward	f	2026-04-11 19:03:40.957	2026-04-11 19:03:40.957	\N	\N	\N	\N
3414	et0va1ygbwo6dpd6c48n1kmd	31	backward	f	2026-04-11 19:03:40.957	2026-04-11 19:03:40.957	2026-04-11 19:03:40.985	\N	\N	\N
3415	ger3rtsyvj2hcmt9303p2mjn	32	backward	f	2026-04-11 19:03:41.072	2026-04-11 19:03:41.072	\N	\N	\N	\N
3416	ger3rtsyvj2hcmt9303p2mjn	32	backward	f	2026-04-11 19:03:41.072	2026-04-11 19:03:41.072	2026-04-11 19:03:41.107	\N	\N	\N
3419	ic6vdnsldq33g1a0q5em8mnm	34	backward	f	2026-04-11 19:03:41.303	2026-04-11 19:03:41.303	\N	\N	\N	\N
3420	ic6vdnsldq33g1a0q5em8mnm	34	backward	f	2026-04-11 19:03:41.303	2026-04-11 19:03:41.303	2026-04-11 19:03:41.319	\N	\N	\N
3471	pw2uck8g79uma5dd3n2hief6	13	backward	f	2026-04-11 19:03:43.175	2026-04-11 19:03:43.175	\N	\N	\N	\N
3472	pw2uck8g79uma5dd3n2hief6	13	backward	f	2026-04-11 19:03:43.175	2026-04-11 19:03:43.175	2026-04-11 19:03:43.185	\N	\N	\N
3417	y95khk8xhqzjkoj68ndoyrdz	33	backward	f	2026-04-11 19:03:41.21	2026-04-11 19:03:41.21	\N	\N	\N	\N
3418	y95khk8xhqzjkoj68ndoyrdz	33	backward	f	2026-04-11 19:03:41.21	2026-04-11 19:03:41.21	2026-04-11 19:03:41.231	\N	\N	\N
3421	gk5thktdq2xcbkyqt6xu180j	1	forward	f	2026-04-11 19:03:41.411	2026-04-11 19:03:41.411	\N	\N	\N	\N
3422	gk5thktdq2xcbkyqt6xu180j	1	forward	f	2026-04-11 19:03:41.411	2026-04-11 19:03:41.411	2026-04-11 19:03:41.432	\N	\N	\N
3423	qadqc8nuruugtv6bj3qv9zef	2	forward	f	2026-04-11 19:03:41.509	2026-04-11 19:03:41.509	\N	\N	\N	\N
3424	qadqc8nuruugtv6bj3qv9zef	2	forward	f	2026-04-11 19:03:41.509	2026-04-11 19:03:41.509	2026-04-11 19:03:41.548	\N	\N	\N
3425	so23ydxacyiry0e03x3gmrnu	3	forward	f	2026-04-11 19:03:41.705	2026-04-11 19:03:41.705	\N	\N	\N	\N
3426	so23ydxacyiry0e03x3gmrnu	3	forward	f	2026-04-11 19:03:41.705	2026-04-11 19:03:41.705	2026-04-11 19:03:41.886	\N	\N	\N
3427	rr5gom1pf07crv14v9gjtc80	4	forward	f	2026-04-11 19:03:42.091	2026-04-11 19:03:42.091	\N	\N	\N	\N
3428	rr5gom1pf07crv14v9gjtc80	4	forward	f	2026-04-11 19:03:42.091	2026-04-11 19:03:42.091	2026-04-11 19:03:42.104	\N	\N	\N
3429	royqxndjmuwc42920cim3l3y	5	forward	f	2026-04-11 19:03:42.175	2026-04-11 19:03:42.175	\N	\N	\N	\N
3430	royqxndjmuwc42920cim3l3y	5	forward	f	2026-04-11 19:03:42.175	2026-04-11 19:03:42.175	2026-04-11 19:03:42.199	\N	\N	\N
3431	idjrqbsphzjdda23vr46qadl	6	forward	f	2026-04-11 19:03:42.257	2026-04-11 19:03:42.257	\N	\N	\N	\N
3432	idjrqbsphzjdda23vr46qadl	6	forward	f	2026-04-11 19:03:42.257	2026-04-11 19:03:42.257	2026-04-11 19:03:42.266	\N	\N	\N
3433	drv9rk3shwcishak5p4dhkvu	7	forward	f	2026-04-11 19:03:42.333	2026-04-11 19:03:42.333	\N	\N	\N	\N
3434	drv9rk3shwcishak5p4dhkvu	7	forward	f	2026-04-11 19:03:42.333	2026-04-11 19:03:42.333	2026-04-11 19:03:42.347	\N	\N	\N
3435	abvb77dmcti7tkc6ifi1mmdu	8	forward	f	2026-04-11 19:03:42.403	2026-04-11 19:03:42.403	\N	\N	\N	\N
3436	abvb77dmcti7tkc6ifi1mmdu	8	forward	f	2026-04-11 19:03:42.403	2026-04-11 19:03:42.403	2026-04-11 19:03:42.425	\N	\N	\N
3437	ypxoc6ao6zltb9zoz884j2dm	9	forward	f	2026-04-11 19:03:42.477	2026-04-11 19:03:42.477	\N	\N	\N	\N
3438	ypxoc6ao6zltb9zoz884j2dm	9	forward	f	2026-04-11 19:03:42.477	2026-04-11 19:03:42.477	2026-04-11 19:03:42.494	\N	\N	\N
3439	o275zqvl4h67hkqu5ekxvkuh	10	forward	f	2026-04-11 19:03:42.539	2026-04-11 19:03:42.539	\N	\N	\N	\N
3440	o275zqvl4h67hkqu5ekxvkuh	10	forward	f	2026-04-11 19:03:42.539	2026-04-11 19:03:42.539	2026-04-11 19:03:42.547	\N	\N	\N
3441	f98i21hvozk22lew1c0x7okm	11	forward	f	2026-04-11 19:03:42.581	2026-04-11 19:03:42.581	\N	\N	\N	\N
3442	f98i21hvozk22lew1c0x7okm	11	forward	f	2026-04-11 19:03:42.581	2026-04-11 19:03:42.581	2026-04-11 19:03:42.589	\N	\N	\N
3443	n7q6cuvc3fpo6c3exgk3bvsu	12	forward	f	2026-04-11 19:03:42.659	2026-04-11 19:03:42.659	\N	\N	\N	\N
3444	n7q6cuvc3fpo6c3exgk3bvsu	12	forward	f	2026-04-11 19:03:42.659	2026-04-11 19:03:42.659	2026-04-11 19:03:42.665	\N	\N	\N
3445	qfs2aw1p3km67asaqzswohy7	13	forward	f	2026-04-11 19:03:42.696	2026-04-11 19:03:42.696	\N	\N	\N	\N
3446	qfs2aw1p3km67asaqzswohy7	13	forward	f	2026-04-11 19:03:42.696	2026-04-11 19:03:42.696	2026-04-11 19:03:42.704	\N	\N	\N
3447	esj1m6bya2d8qcmzo43v9lam	1	backward	f	2026-04-11 19:03:42.737	2026-04-11 19:03:42.737	\N	\N	\N	\N
3448	esj1m6bya2d8qcmzo43v9lam	1	backward	f	2026-04-11 19:03:42.737	2026-04-11 19:03:42.737	2026-04-11 19:03:42.749	\N	\N	\N
3449	pevpqs4i97j72ol8loeek6mr	2	backward	f	2026-04-11 19:03:42.782	2026-04-11 19:03:42.782	\N	\N	\N	\N
3450	pevpqs4i97j72ol8loeek6mr	2	backward	f	2026-04-11 19:03:42.782	2026-04-11 19:03:42.782	2026-04-11 19:03:42.789	\N	\N	\N
3451	f97fygwphyp89umofutfwzly	3	backward	f	2026-04-11 19:03:42.82	2026-04-11 19:03:42.82	\N	\N	\N	\N
3452	f97fygwphyp89umofutfwzly	3	backward	f	2026-04-11 19:03:42.82	2026-04-11 19:03:42.82	2026-04-11 19:03:42.828	\N	\N	\N
3453	jx128kmkcwk95fw964dkajp4	4	backward	f	2026-04-11 19:03:42.857	2026-04-11 19:03:42.857	\N	\N	\N	\N
3454	jx128kmkcwk95fw964dkajp4	4	backward	f	2026-04-11 19:03:42.857	2026-04-11 19:03:42.857	2026-04-11 19:03:42.867	\N	\N	\N
3455	reuhbgl1tv18dar8urh4x27b	5	backward	f	2026-04-11 19:03:42.896	2026-04-11 19:03:42.896	\N	\N	\N	\N
3456	reuhbgl1tv18dar8urh4x27b	5	backward	f	2026-04-11 19:03:42.896	2026-04-11 19:03:42.896	2026-04-11 19:03:42.902	\N	\N	\N
3457	cfphufp9s7i7xl39vrocr4c6	6	backward	f	2026-04-11 19:03:42.93	2026-04-11 19:03:42.93	\N	\N	\N	\N
3458	cfphufp9s7i7xl39vrocr4c6	6	backward	f	2026-04-11 19:03:42.93	2026-04-11 19:03:42.93	2026-04-11 19:03:42.936	\N	\N	\N
3459	l8mwtfiymcls8fe5e7odn3qw	7	backward	f	2026-04-11 19:03:42.964	2026-04-11 19:03:42.964	\N	\N	\N	\N
3460	l8mwtfiymcls8fe5e7odn3qw	7	backward	f	2026-04-11 19:03:42.964	2026-04-11 19:03:42.964	2026-04-11 19:03:42.972	\N	\N	\N
3461	iy3tpdtoog9m8r6mnp3hopn2	8	backward	f	2026-04-11 19:03:43	2026-04-11 19:03:43	\N	\N	\N	\N
3462	iy3tpdtoog9m8r6mnp3hopn2	8	backward	f	2026-04-11 19:03:43	2026-04-11 19:03:43	2026-04-11 19:03:43.006	\N	\N	\N
3463	dn2ngogc445n2exhxcc7hd1o	9	backward	f	2026-04-11 19:03:43.035	2026-04-11 19:03:43.035	\N	\N	\N	\N
3464	dn2ngogc445n2exhxcc7hd1o	9	backward	f	2026-04-11 19:03:43.035	2026-04-11 19:03:43.035	2026-04-11 19:03:43.041	\N	\N	\N
3465	hbtm5rlbz1avlu8391fi1ys7	10	backward	f	2026-04-11 19:03:43.068	2026-04-11 19:03:43.068	\N	\N	\N	\N
3466	hbtm5rlbz1avlu8391fi1ys7	10	backward	f	2026-04-11 19:03:43.068	2026-04-11 19:03:43.068	2026-04-11 19:03:43.073	\N	\N	\N
3467	np1zs6t2o954we7nji1e24w4	11	backward	f	2026-04-11 19:03:43.101	2026-04-11 19:03:43.101	\N	\N	\N	\N
3468	np1zs6t2o954we7nji1e24w4	11	backward	f	2026-04-11 19:03:43.101	2026-04-11 19:03:43.101	2026-04-11 19:03:43.107	\N	\N	\N
3469	yj2h9dnk5o0zt7pmcb0d9jg7	12	backward	f	2026-04-11 19:03:43.136	2026-04-11 19:03:43.136	\N	\N	\N	\N
3470	yj2h9dnk5o0zt7pmcb0d9jg7	12	backward	f	2026-04-11 19:03:43.136	2026-04-11 19:03:43.136	2026-04-11 19:03:43.144	\N	\N	\N
\.


--
-- Data for Name: route_stops_route_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.route_stops_route_lnk (id, route_stop_id, route_id, route_stop_ord) FROM stdin;
2653	2655	4	1
2654	2656	25	1
2655	2657	4	2
2656	2658	25	2
2657	2659	4	3
2658	2660	25	3
2659	2661	4	4
2660	2662	25	4
2661	2663	4	5
2662	2664	25	5
2663	2665	4	6
2664	2666	25	6
2665	2667	4	7
2666	2668	25	7
2667	2669	4	8
2668	2670	25	8
2669	2671	4	9
2670	2672	25	9
2671	2673	4	10
2672	2674	25	10
2673	2675	4	11
2674	2676	25	11
2675	2677	4	12
2676	2678	25	12
2677	2679	4	13
2678	2680	25	13
2679	2681	4	14
2680	2682	25	14
2681	2683	4	15
2682	2684	25	15
2683	2685	4	16
2684	2686	25	16
2685	2687	4	17
2686	2688	25	17
2687	2689	4	18
2688	2690	25	18
2689	2691	4	19
2690	2692	25	19
2691	2693	4	20
2692	2694	25	20
2693	2695	4	21
2694	2696	25	21
2695	2697	4	22
2696	2698	25	22
2697	2699	4	23
2698	2700	25	23
2699	2701	4	24
2700	2702	25	24
2701	2703	4	25
2702	2704	25	25
2703	2705	4	26
2704	2706	25	26
2705	2707	4	27
2706	2708	25	27
2707	2709	4	28
2708	2710	25	28
2709	2711	4	29
2710	2712	25	29
2711	2713	4	30
2712	2714	25	30
2713	2715	4	31
2714	2716	25	31
2715	2717	4	32
2716	2718	25	32
2717	2719	4	33
2718	2720	25	33
2719	2721	4	34
2720	2722	25	34
2721	2723	4	35
2722	2724	25	35
2723	2725	4	36
2724	2726	25	36
2725	2727	4	37
2726	2728	25	37
2727	2729	4	38
2728	2730	25	38
2729	2731	4	39
2730	2732	25	39
2731	2733	4	40
2732	2734	25	40
2733	2735	4	41
2734	2736	25	41
2735	2737	4	42
2736	2738	25	42
2737	2739	4	43
2738	2740	25	43
2739	2741	4	44
2740	2742	25	44
2741	2743	4	45
2742	2744	25	45
2743	2745	4	46
2744	2746	25	46
2745	2747	4	47
2746	2748	25	47
2747	2749	4	48
2748	2750	25	48
2749	2751	4	49
2750	2752	25	49
2751	2753	4	50
2752	2754	25	50
2753	2755	4	51
2754	2756	25	51
2755	2757	4	52
2756	2758	25	52
2757	2759	4	53
2758	2760	25	53
2759	2761	4	54
2760	2762	25	54
2761	2763	4	55
2762	2764	25	55
2763	2765	4	56
2764	2766	25	56
2765	2767	4	57
2766	2768	25	57
2767	2769	4	58
2768	2770	25	58
2769	2771	4	59
2770	2772	25	59
2771	2773	4	60
2772	2774	25	60
2773	2775	4	61
2774	2776	25	61
2775	2777	4	62
2776	2778	25	62
2777	2779	4	63
2778	2780	25	63
2779	2781	4	64
2780	2782	25	64
2781	2783	4	65
2782	2784	25	65
2783	2785	4	66
2784	2786	25	66
2785	2787	4	67
2786	2788	25	67
2787	2789	4	68
2788	2790	25	68
2789	2791	4	69
2790	2792	25	69
2791	2793	4	70
2792	2794	25	70
2793	2795	4	71
2794	2796	25	71
2795	2797	4	72
2796	2798	25	72
2797	2799	4	73
2798	2800	25	73
2799	2801	4	74
2800	2802	25	74
2801	2803	4	75
2802	2804	25	75
2803	2805	4	76
2804	2806	25	76
2807	2809	4	78
2808	2810	25	78
2809	2811	4	79
2810	2812	25	79
2917	2919	23	4
2918	2920	32	4
2921	2923	23	6
2922	2924	32	6
2925	2927	23	8
2926	2928	32	8
2929	2931	23	10
2930	2932	32	10
2933	2935	23	12
2934	2936	32	12
2937	2939	23	14
2938	2940	32	14
2943	2945	23	17
2944	2946	32	17
2947	2949	23	19
2948	2950	32	19
2953	2955	23	22
2954	2956	32	22
2957	2959	23	24
2958	2960	32	24
2959	2961	23	25
2960	2962	32	25
2963	2965	23	27
2964	2966	32	27
2967	2969	23	29
2968	2970	32	29
2971	2973	23	31
2972	2974	32	31
2975	2977	23	33
2976	2978	32	33
2985	2987	23	38
2986	2988	32	38
2987	2989	23	39
2988	2990	32	39
2993	2995	23	42
2994	2996	32	42
2997	2999	23	44
2998	3000	32	44
3001	3003	23	46
3002	3004	32	46
3007	3009	23	49
3008	3010	32	49
3171	3173	18	29
3172	3174	28	29
3175	3177	18	31
3176	3178	28	31
3183	3185	18	35
3184	3186	28	35
3187	3189	18	37
3188	3190	28	37
3275	3277	18	81
3276	3278	28	81
3279	3281	16	1
3280	3282	27	1
3283	3285	16	3
3284	3286	27	3
3291	3293	16	7
3292	3294	27	7
3301	3303	16	12
3302	3304	27	12
3303	3305	16	13
3304	3306	27	13
3305	3307	16	14
3306	3308	27	14
3307	3309	16	15
3308	3310	27	15
3311	3313	16	17
3312	3314	27	17
3313	3315	16	18
3314	3316	27	18
3317	3319	16	20
3318	3320	27	20
3323	3325	16	23
3324	3326	27	23
3325	3327	16	24
3326	3328	27	24
3327	3329	16	25
3328	3330	27	25
3331	3333	16	27
3332	3334	27	27
3335	3337	16	29
3336	3338	27	29
3369	3371	16	46
3370	3372	27	46
3377	3379	16	50
3378	3380	27	50
3383	3385	16	53
3384	3386	27	53
3387	3389	16	55
3388	3390	27	55
3391	3393	16	57
3392	3394	27	57
3397	3399	16	60
3398	3400	27	60
3401	3403	16	62
3402	3404	27	62
3405	3407	16	64
3406	3408	27	64
3409	3411	16	66
3410	3412	27	66
3415	3417	16	69
3416	3418	27	69
3419	3421	8	1
3420	3422	26	1
3421	3423	8	2
3422	3424	26	2
3423	3425	8	3
3424	3426	26	3
3465	3467	8	24
3466	3468	26	24
2805	2807	4	77
2806	2808	25	77
2811	2813	4	80
2812	2814	25	80
2815	2817	4	82
2816	2818	25	82
2861	2863	4	105
2862	2864	25	105
2863	2865	4	106
2864	2866	25	106
2865	2867	4	107
2866	2868	25	107
2867	2869	4	108
2868	2870	25	108
2869	2871	4	109
2870	2872	25	109
2875	2877	4	112
2876	2878	25	112
2877	2879	4	113
2878	2880	25	113
2883	2885	4	116
2884	2886	25	116
2887	2889	4	118
2888	2890	25	118
2895	2897	4	122
2896	2898	25	122
2899	2901	4	124
2900	2902	25	124
2903	2905	4	126
2904	2906	25	126
2905	2907	4	127
2906	2908	25	127
2909	2911	4	129
2910	2912	25	129
2915	2917	23	3
2916	2918	32	3
3003	3005	23	47
3004	3006	32	47
3009	3011	23	50
3010	3012	32	50
3013	3015	23	52
3014	3016	32	52
3017	3019	23	54
3018	3020	32	54
3021	3023	23	56
3022	3024	32	56
3025	3027	23	58
3026	3028	32	58
3027	3029	23	59
3028	3030	32	59
3029	3031	23	60
3030	3032	32	60
3033	3035	23	62
3034	3036	32	62
3035	3037	23	63
3036	3038	32	63
3039	3041	23	65
3040	3042	32	65
3043	3045	23	67
3044	3046	32	67
3049	3051	23	70
3050	3052	32	70
3051	3053	23	71
3052	3054	32	71
3055	3057	23	73
3056	3058	32	73
3059	3061	23	75
3060	3062	32	75
3061	3063	23	76
3062	3064	32	76
3065	3067	23	78
3066	3068	32	78
3067	3069	23	79
3068	3070	32	79
3071	3073	23	81
3072	3074	32	81
3075	3077	23	83
3076	3078	32	83
3079	3081	23	85
3080	3082	32	85
3081	3083	23	86
3082	3084	32	86
3083	3085	23	87
3084	3086	32	87
3087	3089	23	89
3088	3090	32	89
3091	3093	23	91
3092	3094	32	91
3095	3097	23	93
3096	3098	32	93
3099	3101	23	95
3100	3102	32	95
3101	3103	23	96
3102	3104	32	96
3103	3105	23	97
3104	3106	32	97
3117	3119	18	2
3118	3120	28	2
3123	3125	18	5
3124	3126	28	5
3127	3129	18	7
3128	3130	28	7
3131	3133	18	9
3132	3134	28	9
3135	3137	18	11
3136	3138	28	11
3137	3139	18	12
3138	3140	28	12
3141	3143	18	14
3142	3144	28	14
3145	3147	18	16
3146	3148	28	16
3147	3149	18	17
3148	3150	28	17
3151	3153	18	19
3152	3154	28	19
3155	3157	18	21
3156	3158	28	21
3159	3161	18	23
3160	3162	28	23
3163	3165	18	25
3164	3166	28	25
3167	3169	18	27
3168	3170	28	27
3173	3175	18	30
3174	3176	28	30
3179	3181	18	33
3180	3182	28	33
3193	3195	18	40
3194	3196	28	40
3197	3199	18	42
3198	3200	28	42
3341	3343	16	32
3342	3344	27	32
3349	3351	16	36
3350	3352	27	36
3357	3359	16	40
3358	3360	27	40
3361	3363	16	42
3362	3364	27	42
3371	3373	16	47
3372	3374	27	47
3373	3375	16	48
3374	3376	27	48
3375	3377	16	49
3376	3378	27	49
3379	3381	16	51
3380	3382	27	51
3381	3383	16	52
3382	3384	27	52
3385	3387	16	54
2813	2815	4	81
2814	2816	25	81
2819	2821	4	84
2820	2822	25	84
2821	2823	4	85
2822	2824	25	85
2825	2827	4	87
2826	2828	25	87
2829	2831	4	89
2830	2832	25	89
2833	2835	4	91
2834	2836	25	91
2835	2837	4	92
2836	2838	25	92
2837	2839	4	93
2838	2840	25	93
2839	2841	4	94
2840	2842	25	94
2841	2843	4	95
2842	2844	25	95
2843	2845	4	96
2844	2846	25	96
2847	2849	4	98
2848	2850	25	98
2851	2853	4	100
2852	2854	25	100
2859	2861	4	104
2860	2862	25	104
2871	2873	4	110
2872	2874	25	110
2873	2875	4	111
2874	2876	25	111
2879	2881	4	114
2880	2882	25	114
2881	2883	4	115
2882	2884	25	115
2885	2887	4	117
2886	2888	25	117
2889	2891	4	119
2890	2892	25	119
2891	2893	4	120
2892	2894	25	120
2893	2895	4	121
2894	2896	25	121
2897	2899	4	123
2898	2900	25	123
2901	2903	4	125
2902	2904	25	125
2907	2909	4	128
2908	2910	25	128
2913	2915	23	2
2914	2916	32	2
2919	2921	23	5
2920	2922	32	5
2923	2925	23	7
2924	2926	32	7
2927	2929	23	9
2928	2930	32	9
2931	2933	23	11
2932	2934	32	11
2935	2937	23	13
2936	2938	32	13
2939	2941	23	15
2940	2942	32	15
2941	2943	23	16
2942	2944	32	16
2945	2947	23	18
2946	2948	32	18
2949	2951	23	20
2950	2952	32	20
2951	2953	23	21
2952	2954	32	21
2955	2957	23	23
2956	2958	32	23
2961	2963	23	26
2962	2964	32	26
2965	2967	23	28
2966	2968	32	28
2969	2971	23	30
2970	2972	32	30
2973	2975	23	32
2974	2976	32	32
2977	2979	23	34
2978	2980	32	34
2979	2981	23	35
2980	2982	32	35
2981	2983	23	36
2982	2984	32	36
2983	2985	23	37
2984	2986	32	37
2989	2991	23	40
2990	2992	32	40
2991	2993	23	41
2992	2994	32	41
2995	2997	23	43
2996	2998	32	43
2999	3001	23	45
3000	3002	32	45
3005	3007	23	48
3006	3008	32	48
3011	3013	23	51
3012	3014	32	51
3015	3017	23	53
3016	3018	32	53
3019	3021	23	55
3020	3022	32	55
3023	3025	23	57
3024	3026	32	57
3031	3033	23	61
3032	3034	32	61
3037	3039	23	64
3038	3040	32	64
3041	3043	23	66
3042	3044	32	66
3045	3047	23	68
3046	3048	32	68
3047	3049	23	69
3048	3050	32	69
3053	3055	23	72
3054	3056	32	72
3057	3059	23	74
3058	3060	32	74
3063	3065	23	77
3064	3066	32	77
3069	3071	23	80
3070	3072	32	80
3073	3075	23	82
3074	3076	32	82
3077	3079	23	84
3078	3080	32	84
3085	3087	23	88
3086	3088	32	88
3089	3091	23	90
3090	3092	32	90
3093	3095	23	92
3094	3096	32	92
3097	3099	23	94
3098	3100	32	94
3105	3107	23	98
3106	3108	32	98
3109	3111	23	100
3110	3112	32	100
3113	3115	23	102
3114	3116	32	102
3119	3121	18	3
3120	3122	28	3
3191	3193	18	39
3192	3194	28	39
3195	3197	18	41
3196	3198	28	41
3201	3203	18	44
2817	2819	4	83
2818	2820	25	83
2823	2825	4	86
2824	2826	25	86
2827	2829	4	88
2828	2830	25	88
2831	2833	4	90
2832	2834	25	90
2845	2847	4	97
2846	2848	25	97
2849	2851	4	99
2850	2852	25	99
2853	2855	4	101
2854	2856	25	101
2855	2857	4	102
2856	2858	25	102
2857	2859	4	103
2858	2860	25	103
2911	2913	23	1
2912	2914	32	1
3107	3109	23	99
3108	3110	32	99
3111	3113	23	101
3112	3114	32	101
3115	3117	18	1
3116	3118	28	1
3121	3123	18	4
3122	3124	28	4
3125	3127	18	6
3126	3128	28	6
3133	3135	18	10
3134	3136	28	10
3139	3141	18	13
3140	3142	28	13
3143	3145	18	15
3144	3146	28	15
3149	3151	18	18
3150	3152	28	18
3153	3155	18	20
3154	3156	28	20
3157	3159	18	22
3158	3160	28	22
3161	3163	18	24
3162	3164	28	24
3165	3167	18	26
3166	3168	28	26
3169	3171	18	28
3170	3172	28	28
3177	3179	18	32
3178	3180	28	32
3181	3183	18	34
3182	3184	28	34
3219	3221	18	53
3220	3222	28	53
3223	3225	18	55
3224	3226	28	55
3227	3229	18	57
3228	3230	28	57
3231	3233	18	59
3232	3234	28	59
3235	3237	18	61
3236	3238	28	61
3239	3241	18	63
3240	3242	28	63
3243	3245	18	65
3244	3246	28	65
3249	3251	18	68
3250	3252	28	68
3253	3255	18	70
3254	3256	28	70
3257	3259	18	72
3258	3260	28	72
3261	3263	18	74
3262	3264	28	74
3267	3269	18	77
3268	3270	28	77
3271	3273	18	79
3272	3274	28	79
3277	3279	18	82
3278	3280	28	82
3281	3283	16	2
3282	3284	27	2
3339	3341	16	31
3340	3342	27	31
3343	3345	16	33
3344	3346	27	33
3351	3353	16	37
3352	3354	27	37
3353	3355	16	38
3354	3356	27	38
3355	3357	16	39
3356	3358	27	39
3359	3361	16	41
3360	3362	27	41
3367	3369	16	45
3368	3370	27	45
3386	3388	27	54
3389	3391	16	56
3390	3392	27	56
3393	3395	16	58
3394	3396	27	58
3425	3427	8	4
3426	3428	26	4
3429	3431	8	6
3430	3432	26	6
3439	3441	8	11
3440	3442	26	11
3441	3443	8	12
3442	3444	26	12
3445	3447	8	14
3446	3448	26	14
3451	3453	8	17
3452	3454	26	17
3457	3459	8	20
3458	3460	26	20
3459	3461	8	21
3460	3462	26	21
3463	3465	8	23
3464	3466	26	23
3467	3469	8	25
3468	3470	26	25
3129	3131	18	8
3130	3132	28	8
3185	3187	18	36
3186	3188	28	36
3189	3191	18	38
3190	3192	28	38
3199	3201	18	43
3200	3202	28	43
3203	3205	18	45
3204	3206	28	45
3209	3211	18	48
3210	3212	28	48
3213	3215	18	50
3214	3216	28	50
3217	3219	18	52
3218	3220	28	52
3221	3223	18	54
3222	3224	28	54
3225	3227	18	56
3226	3228	28	56
3229	3231	18	58
3230	3232	28	58
3233	3235	18	60
3234	3236	28	60
3363	3365	16	43
3364	3366	27	43
3365	3367	16	44
3366	3368	27	44
3395	3397	16	59
3396	3398	27	59
3399	3401	16	61
3400	3402	27	61
3403	3405	16	63
3404	3406	27	63
3407	3409	16	65
3408	3410	27	65
3411	3413	16	67
3412	3414	27	67
3413	3415	16	68
3414	3416	27	68
3417	3419	16	70
3418	3420	27	70
3469	3471	8	26
3470	3472	26	26
3202	3204	28	44
3205	3207	18	46
3206	3208	28	46
3207	3209	18	47
3208	3210	28	47
3211	3213	18	49
3212	3214	28	49
3215	3217	18	51
3216	3218	28	51
3237	3239	18	62
3238	3240	28	62
3241	3243	18	64
3242	3244	28	64
3245	3247	18	66
3246	3248	28	66
3247	3249	18	67
3248	3250	28	67
3251	3253	18	69
3252	3254	28	69
3255	3257	18	71
3256	3258	28	71
3259	3261	18	73
3260	3262	28	73
3263	3265	18	75
3264	3266	28	75
3265	3267	18	76
3266	3268	28	76
3269	3271	18	78
3270	3272	28	78
3273	3275	18	80
3274	3276	28	80
3285	3287	16	4
3286	3288	27	4
3287	3289	16	5
3288	3290	27	5
3289	3291	16	6
3290	3292	27	6
3293	3295	16	8
3294	3296	27	8
3295	3297	16	9
3296	3298	27	9
3297	3299	16	10
3298	3300	27	10
3299	3301	16	11
3300	3302	27	11
3309	3311	16	16
3310	3312	27	16
3315	3317	16	19
3316	3318	27	19
3319	3321	16	21
3320	3322	27	21
3321	3323	16	22
3322	3324	27	22
3329	3331	16	26
3330	3332	27	26
3333	3335	16	28
3334	3336	27	28
3337	3339	16	30
3338	3340	27	30
3345	3347	16	34
3346	3348	27	34
3347	3349	16	35
3348	3350	27	35
3427	3429	8	5
3428	3430	26	5
3431	3433	8	7
3432	3434	26	7
3433	3435	8	8
3434	3436	26	8
3435	3437	8	9
3436	3438	26	9
3437	3439	8	10
3438	3440	26	10
3443	3445	8	13
3444	3446	26	13
3447	3449	8	15
3448	3450	26	15
3449	3451	8	16
3450	3452	26	16
3453	3455	8	18
3454	3456	26	18
3455	3457	8	19
3456	3458	26	19
3461	3463	8	22
3462	3464	26	22
\.


--
-- Data for Name: route_stops_stop_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.route_stops_stop_lnk (id, route_stop_id, stop_id, route_stop_ord) FROM stdin;
2655	2655	992	1
2656	2656	993	1
2657	2657	994	1
2658	2658	995	1
2659	2659	996	1
2660	2660	997	1
2661	2661	998	1
2662	2662	999	1
2663	2663	1000	1
2664	2664	1001	1
2665	2665	1002	1
2666	2666	1003	1
2667	2667	1004	1
2668	2668	1005	1
2669	2669	1006	1
2670	2670	1007	1
2671	2671	1008	1
2672	2672	1009	1
2673	2673	1010	1
2674	2674	1011	1
2675	2675	1012	1
2676	2676	1013	1
2677	2677	1014	1
2678	2678	1015	1
2679	2679	1016	1
2680	2680	1017	1
2681	2681	1018	1
2682	2682	1019	1
2683	2683	1020	1
2684	2684	1021	1
2685	2685	1022	1
2686	2686	1023	1
2687	2687	1024	1
2688	2688	1025	1
2689	2689	1026	1
2690	2690	1027	1
2691	2691	1028	1
2692	2692	1029	1
2693	2693	1030	1
2694	2694	1031	1
2695	2695	1032	1
2696	2696	1033	1
2697	2697	1034	1
2698	2698	1035	1
2699	2699	1036	1
2700	2700	1037	1
2701	2701	1038	1
2702	2702	1039	1
2703	2703	1040	1
2704	2704	1041	1
2705	2705	1042	1
2706	2706	1043	1
2707	2707	1044	1
2708	2708	1045	1
2709	2709	1046	1
2710	2710	1047	1
2711	2711	1048	1
2712	2712	1049	1
2713	2713	1050	1
2714	2714	1051	1
2715	2715	1052	1
2716	2716	1053	1
2717	2717	1054	1
2718	2718	1055	1
2719	2719	1056	1
2720	2720	1057	1
2721	2721	1058	1
2722	2722	1059	1
2723	2723	1060	1
2724	2724	1061	1
2725	2725	1062	1
2726	2726	1063	1
2727	2727	1064	1
2728	2728	1065	1
2729	2729	1066	1
2730	2730	1067	1
2731	2731	1068	1
2732	2732	1069	1
2733	2733	1070	1
2734	2734	1071	1
2735	2735	1072	1
2736	2736	1073	1
2737	2737	1074	1
2738	2738	1075	1
2739	2739	1076	1
2740	2740	1077	1
2741	2741	1078	1
2742	2742	1079	1
2743	2743	1080	1
2744	2744	1081	1
2745	2745	1082	1
2746	2746	1083	1
2747	2747	1084	1
2748	2748	1085	1
2749	2749	1086	1
2750	2750	1087	1
2751	2751	1088	1
2752	2752	1089	1
2753	2753	1090	1
2754	2754	1091	1
2755	2755	1092	1
2756	2756	1093	1
2757	2757	1094	1
2758	2758	1095	1
2759	2759	1096	1
2760	2760	1097	1
2761	2761	1098	1
2762	2762	1099	1
2763	2763	1100	1
2764	2764	1101	1
2765	2765	1102	1
2766	2766	1103	1
2767	2767	1104	1
2768	2768	1105	1
2769	2769	1106	1
2770	2770	1107	1
2771	2771	1108	1
2772	2772	1109	1
2773	2773	1110	1
2774	2774	1111	1
2775	2775	1112	1
2776	2776	1113	1
2777	2777	1114	1
2778	2778	1115	1
2779	2779	1116	1
2780	2780	1117	1
2781	2781	1118	1
2782	2782	1119	1
2783	2783	1120	1
2784	2784	1121	1
2785	2785	1120	2
2786	2786	1121	2
2787	2787	1118	2
2788	2788	1119	2
2789	2789	1116	2
2790	2790	1117	2
2791	2791	1114	2
2792	2792	1115	2
2793	2793	1112	2
2794	2794	1113	2
2795	2795	1110	2
2796	2796	1111	2
2797	2797	1108	2
2798	2798	1109	2
2799	2799	1106	2
2800	2800	1107	2
2801	2801	1104	2
2802	2802	1105	2
2803	2803	1102	2
2804	2804	1103	2
2805	2805	1100	2
2806	2806	1101	2
2809	2809	1096	2
2810	2810	1097	2
2811	2811	1094	2
2812	2812	1095	2
2919	2919	1136	1
2920	2920	1137	1
2923	2923	1034	3
2924	2924	1035	3
2927	2927	1038	2
2928	2928	1039	2
2931	2931	1042	2
2932	2932	1043	2
2935	2935	1046	3
2936	2936	1047	3
2939	2939	1050	3
2940	2940	1051	3
2945	2945	1056	3
2946	2946	1057	3
2949	2949	1060	3
2950	2950	1061	3
2955	2955	1066	3
2956	2956	1067	3
2959	2959	1070	3
2960	2960	1071	3
2961	2961	1072	3
2962	2962	1073	3
2965	2965	1076	3
2966	2966	1077	3
2969	2969	1080	3
2970	2970	1081	3
2973	2973	1084	3
2974	2974	1085	3
2977	2977	1088	3
2978	2978	1089	3
2987	2987	1098	3
2988	2988	1099	3
2989	2989	1100	3
2990	2990	1101	3
2995	2995	1106	3
2996	2996	1107	3
2999	2999	1110	3
3000	3000	1111	3
3003	3003	1138	1
3004	3004	1139	1
3009	3009	1144	1
3010	3010	1145	1
3173	3173	1172	1
3174	3174	1173	1
3177	3177	1176	1
3178	3178	1177	1
3185	3185	1184	1
3186	3186	1185	1
3189	3189	1188	1
3190	3190	1189	1
3277	3277	1204	1
3278	3278	1205	1
3281	3281	1136	5
3282	3282	1137	5
3285	3285	1034	7
3286	3286	1035	7
3293	3293	1042	4
3294	3294	1043	4
3303	3303	1052	7
3304	3304	1053	7
3305	3305	1054	7
3306	3306	1055	7
3307	3307	1170	3
3308	3308	1171	3
3309	3309	1058	7
3310	3310	1059	7
3313	3313	1172	3
3314	3314	1173	3
3315	3315	1174	3
3316	3316	1175	3
3319	3319	1178	3
3320	3320	1179	3
3325	3325	1184	2
3326	3326	1185	2
3327	3327	1186	3
3328	3328	1187	3
3329	3329	1188	5
3330	3330	1189	5
3333	3333	1190	3
3334	3334	1191	3
3337	3337	1194	3
3338	3338	1195	3
3370	3370	1191	4
3429	3429	1180	5
3430	3430	1181	5
3433	3433	1184	3
3434	3434	1185	3
3435	3435	1186	5
3436	3436	1187	5
3437	3437	1188	9
3438	3438	1189	9
3439	3439	1154	8
3440	3440	1155	8
3445	3445	1214	3
3446	3446	1215	3
3449	3449	1216	2
3450	3450	1217	2
3451	3451	1190	6
3452	3452	1191	6
3455	3455	1188	10
3456	3456	1189	10
3457	3457	1186	6
3458	3458	1187	6
3463	3463	1180	6
3464	3464	1181	6
2807	2807	1098	2
2808	2808	1099	2
2813	2813	1092	2
2814	2814	1093	2
2817	2817	1088	2
2818	2818	1089	2
2863	2863	1126	1
2864	2864	1127	1
2865	2865	1040	2
2866	2866	1041	2
2867	2867	1036	2
2868	2868	1037	2
2869	2869	1034	2
2870	2870	1035	2
2871	2871	1032	2
2872	2872	1033	2
2877	2877	1026	2
2878	2878	1027	2
2879	2879	1024	2
2880	2880	1025	2
2885	2885	1018	2
2886	2886	1019	2
2889	2889	1014	2
2890	2890	1015	2
2897	2897	1006	2
2898	2898	1007	2
2901	2901	1002	2
2902	2902	1003	2
2905	2905	998	2
2906	2906	999	2
2907	2907	996	2
2908	2908	997	2
2911	2911	992	2
2912	2912	993	2
2917	2917	1134	1
2918	2918	1135	1
3005	3005	1140	1
3006	3006	1141	1
3011	3011	1146	1
3012	3012	1147	1
3015	3015	1148	2
3016	3016	1149	2
3019	3019	1144	2
3020	3020	1145	2
3023	3023	1140	2
3024	3024	1141	2
3027	3027	1112	4
3028	3028	1113	4
3029	3029	1110	4
3030	3030	1111	4
3031	3031	1108	4
3032	3032	1109	4
3035	3035	1104	4
3036	3036	1105	4
3037	3037	1102	4
3038	3038	1103	4
3041	3041	1098	4
3042	3042	1099	4
3045	3045	1094	4
3046	3046	1095	4
3051	3051	1088	4
3052	3052	1089	4
3053	3053	1124	2
3054	3054	1125	2
3057	3057	1082	4
3058	3058	1083	4
3061	3061	1078	4
3062	3062	1079	4
3063	3063	1076	4
3064	3064	1077	4
3067	3067	1072	4
3068	3068	1073	4
3069	3069	1070	4
3070	3070	1071	4
3073	3073	1066	4
3074	3074	1067	4
3077	3077	1062	4
3078	3078	1063	4
3081	3081	1058	4
3082	3082	1059	4
3083	3083	1056	4
3084	3084	1057	4
3085	3085	1054	4
3086	3086	1055	4
3089	3089	1050	4
3090	3090	1051	4
3093	3093	1046	4
3094	3094	1047	4
3097	3097	1126	2
3098	3098	1127	2
3101	3101	1036	4
3102	3102	1037	4
3103	3103	1034	4
3104	3104	1035	4
3105	3105	1032	4
3106	3106	1033	4
3119	3119	1154	1
3120	3120	1155	1
3125	3125	1160	1
3126	3126	1161	1
3129	3129	1162	1
3130	3130	1163	1
3133	3133	1166	1
3134	3134	1167	1
3137	3137	1132	3
3138	3138	1133	3
3139	3139	1134	3
3140	3140	1135	3
3143	3143	1032	5
3144	3144	1033	5
3147	3147	1036	5
3148	3148	1037	5
3149	3149	1038	3
3150	3150	1039	3
3153	3153	1042	3
3154	3154	1043	3
3157	3157	1046	5
3158	3158	1047	5
3161	3161	1050	5
3162	3162	1051	5
3165	3165	1054	5
3166	3166	1055	5
3169	3169	1058	5
3170	3170	1059	5
3175	3175	1174	1
3176	3176	1175	1
3181	3181	1180	1
3182	3182	1181	1
3195	3195	1192	1
3196	3196	1193	1
3199	3199	1188	2
3200	3200	1189	2
3343	3343	1208	1
3344	3344	1209	1
3351	3351	1214	1
3352	3352	1215	1
3359	3359	1212	2
3360	3360	1213	2
3363	3363	1208	2
3364	3364	1209	2
3371	3371	1154	7
3372	3372	1155	7
3379	3379	1182	4
3380	3380	1183	4
3385	3385	1176	4
3386	3386	1177	4
3389	3389	1172	4
3390	3390	1173	4
3393	3393	1058	8
3394	3394	1059	8
3399	3399	1052	8
2815	2815	1122	1
2816	2816	1123	1
2821	2821	1084	2
2822	2822	1085	2
2823	2823	1082	2
2824	2824	1083	2
2827	2827	1078	2
2828	2828	1079	2
2831	2831	1074	2
2832	2832	1075	2
2835	2835	1070	2
2836	2836	1071	2
2837	2837	1068	2
2838	2838	1069	2
2839	2839	1066	2
2840	2840	1067	2
2841	2841	1064	2
2842	2842	1065	2
2843	2843	1062	2
2844	2844	1063	2
2845	2845	1060	2
2846	2846	1061	2
2849	2849	1056	2
2850	2850	1057	2
2853	2853	1052	2
2854	2854	1053	2
2861	2861	1044	2
2862	2862	1045	2
2873	2873	1030	2
2874	2874	1031	2
2875	2875	1028	2
2876	2876	1029	2
2881	2881	1022	2
2882	2882	1023	2
2883	2883	1020	2
2884	2884	1021	2
2887	2887	1016	2
2888	2888	1017	2
2891	2891	1012	2
2892	2892	1013	2
2893	2893	1010	2
2894	2894	1011	2
2895	2895	1128	1
2896	2896	1129	1
2899	2899	1004	2
2900	2900	1005	2
2903	2903	1000	2
2904	2904	1001	2
2909	2909	994	2
2910	2910	995	2
2915	2915	1132	1
2916	2916	1133	1
2921	2921	1032	3
2922	2922	1033	3
2925	2925	1036	3
2926	2926	1037	3
2929	2929	1040	3
2930	2930	1041	3
2933	2933	1044	3
2934	2934	1045	3
2937	2937	1048	3
2938	2938	1049	3
2941	2941	1052	3
2942	2942	1053	3
2943	2943	1054	3
2944	2944	1055	3
2947	2947	1058	3
2948	2948	1059	3
2951	2951	1062	3
2952	2952	1063	3
2953	2953	1064	3
2954	2954	1065	3
2957	2957	1068	3
2958	2958	1069	3
2963	2963	1074	3
2964	2964	1075	3
2967	2967	1078	3
2968	2968	1079	3
2971	2971	1082	3
2972	2972	1083	3
2975	2975	1086	2
2976	2976	1087	2
2979	2979	1090	2
2980	2980	1091	2
2981	2981	1092	3
2982	2982	1093	3
2983	2983	1094	3
2984	2984	1095	3
2985	2985	1096	3
2986	2986	1097	3
2991	2991	1102	3
2992	2992	1103	3
2993	2993	1104	3
2994	2994	1105	3
2997	2997	1108	3
2998	2998	1109	3
3001	3001	1112	3
3002	3002	1113	3
3007	3007	1142	1
3008	3008	1143	1
3013	3013	1148	1
3014	3014	1149	1
3017	3017	1146	2
3018	3018	1147	2
3021	3021	1142	2
3022	3022	1143	2
3025	3025	1138	2
3026	3026	1139	2
3033	3033	1106	4
3034	3034	1107	4
3039	3039	1100	4
3040	3040	1101	4
3043	3043	1096	4
3044	3044	1097	4
3047	3047	1092	4
3048	3048	1093	4
3049	3049	1122	2
3050	3050	1123	2
3055	3055	1084	4
3056	3056	1085	4
3059	3059	1080	4
3060	3060	1081	4
3065	3065	1074	4
3066	3066	1075	4
3071	3071	1068	4
3072	3072	1069	4
3075	3075	1064	4
3076	3076	1065	4
3079	3079	1060	4
3080	3080	1061	4
3087	3087	1052	4
3088	3088	1053	4
3091	3091	1048	4
3092	3092	1049	4
3095	3095	1044	4
3096	3096	1045	4
3099	3099	1040	4
3100	3100	1041	4
3107	3107	1136	2
3108	3108	1137	2
3111	3111	1134	2
3112	3112	1135	2
3115	3115	1130	2
3116	3116	1131	2
3121	3121	1156	1
3122	3122	1157	1
3193	3193	1190	1
3194	3194	1191	1
3197	3197	1194	1
3198	3198	1195	1
3203	3203	1198	1
2819	2819	1124	1
2820	2820	1125	1
2825	2825	1080	2
2826	2826	1081	2
2829	2829	1076	2
2830	2830	1077	2
2833	2833	1072	2
2834	2834	1073	2
2847	2847	1058	2
2848	2848	1059	2
2851	2851	1054	2
2852	2852	1055	2
2855	2855	1050	2
2856	2856	1051	2
2857	2857	1048	2
2858	2858	1049	2
2859	2859	1046	2
2860	2860	1047	2
2913	2913	1130	1
2914	2914	1131	1
3109	3109	1150	1
3110	3110	1151	1
3113	3113	1132	2
3114	3114	1133	2
3117	3117	1152	1
3118	3118	1153	1
3123	3123	1158	1
3124	3124	1159	1
3127	3127	1030	3
3128	3128	1031	3
3135	3135	1168	1
3136	3136	1169	1
3141	3141	1136	3
3142	3142	1137	3
3145	3145	1034	5
3146	3146	1035	5
3151	3151	1040	5
3152	3152	1041	5
3155	3155	1044	5
3156	3156	1045	5
3159	3159	1048	5
3160	3160	1049	5
3163	3163	1052	5
3164	3164	1053	5
3167	3167	1170	1
3168	3168	1171	1
3171	3171	1060	5
3172	3172	1061	5
3179	3179	1178	1
3180	3180	1179	1
3183	3183	1182	1
3184	3184	1183	1
3221	3221	1200	1
3222	3222	1201	1
3225	3225	1180	2
3226	3226	1181	2
3229	3229	1176	2
3230	3230	1177	2
3233	3233	1172	2
3234	3234	1173	2
3237	3237	1058	6
3238	3238	1059	6
3241	3241	1054	6
3242	3242	1055	6
3245	3245	1050	6
3246	3246	1051	6
3251	3251	1044	6
3252	3252	1045	6
3255	3255	1040	6
3256	3256	1041	6
3259	3259	1034	6
3260	3260	1035	6
3263	3263	1136	4
3264	3264	1137	4
3269	3269	1162	2
3270	3270	1163	2
3273	3273	1160	2
3274	3274	1161	2
3279	3279	1152	2
3280	3280	1153	2
3283	3283	1032	7
3284	3284	1033	7
3341	3341	1206	1
3342	3342	1207	1
3345	3345	1210	1
3346	3346	1211	1
3353	3353	1214	2
3354	3354	1215	2
3355	3355	1154	6
3356	3356	1155	6
3357	3357	1206	2
3358	3358	1207	2
3361	3361	1210	2
3362	3362	1211	2
3369	3369	1190	4
3373	3373	1188	8
3374	3374	1189	8
3375	3375	1186	4
3376	3376	1187	4
3377	3377	1200	2
3378	3378	1201	2
3381	3381	1180	4
3382	3382	1181	4
3383	3383	1178	4
3384	3384	1179	4
3387	3387	1174	4
3388	3388	1175	4
3391	3391	1060	8
3392	3392	1061	8
3395	3395	1170	4
3396	3396	1171	4
3427	3427	1178	5
3428	3428	1179	5
3431	3431	1182	5
3432	3432	1183	5
3441	3441	1190	5
3442	3442	1191	5
3443	3443	1216	1
3444	3444	1217	1
3447	3447	1214	4
3448	3448	1215	4
3453	3453	1154	9
3454	3454	1155	9
3459	3459	1200	3
3460	3460	1201	3
3461	3461	1182	6
3462	3462	1183	6
3465	3465	1178	6
3466	3466	1179	6
3467	3467	1176	6
3468	3468	1177	6
3469	3469	1174	6
3470	3470	1175	6
3131	3131	1164	1
3132	3132	1165	1
3187	3187	1186	1
3188	3188	1187	1
3191	3191	1154	2
3192	3192	1155	2
3201	3201	1196	1
3202	3202	1197	1
3205	3205	1198	2
3206	3206	1199	2
3211	3211	1194	2
3212	3212	1195	2
3215	3215	1154	3
3216	3216	1155	3
3219	3219	1186	2
3220	3220	1187	2
3223	3223	1182	2
3224	3224	1183	2
3227	3227	1178	2
3228	3228	1179	2
3231	3231	1174	2
3232	3232	1175	2
3235	3235	1060	6
3236	3236	1061	6
3365	3365	1188	7
3366	3366	1189	7
3367	3367	1194	4
3368	3368	1195	4
3397	3397	1054	8
3398	3398	1055	8
3401	3401	1050	8
3402	3402	1051	8
3405	3405	1046	8
3406	3406	1047	8
3409	3409	1126	4
3410	3410	1127	4
3413	3413	1036	8
3414	3414	1037	8
3415	3415	1034	8
3416	3416	1035	8
3419	3419	1136	6
3420	3420	1137	6
3471	3471	1172	6
3472	3472	1173	6
3204	3204	1199	1
3207	3207	1196	2
3208	3208	1197	2
3209	3209	1188	3
3210	3210	1189	3
3213	3213	1190	2
3214	3214	1191	2
3217	3217	1188	4
3218	3218	1189	4
3239	3239	1170	2
3240	3240	1171	2
3243	3243	1052	6
3244	3244	1053	6
3247	3247	1048	6
3248	3248	1049	6
3249	3249	1046	6
3250	3250	1047	6
3253	3253	1126	3
3254	3254	1127	3
3257	3257	1036	6
3258	3258	1037	6
3261	3261	1032	6
3262	3262	1033	6
3265	3265	1134	4
3266	3266	1135	4
3267	3267	1202	1
3268	3268	1203	1
3271	3271	1030	4
3272	3272	1031	4
3275	3275	1158	2
3276	3276	1159	2
3287	3287	1036	7
3288	3288	1037	7
3289	3289	1038	4
3290	3290	1039	4
3291	3291	1040	7
3292	3292	1041	7
3295	3295	1044	7
3296	3296	1045	7
3297	3297	1046	7
3298	3298	1047	7
3299	3299	1048	7
3300	3300	1049	7
3301	3301	1050	7
3302	3302	1051	7
3311	3311	1060	7
3312	3312	1061	7
3317	3317	1176	3
3318	3318	1177	3
3321	3321	1180	3
3322	3322	1181	3
3323	3323	1182	3
3324	3324	1183	3
3331	3331	1154	4
3332	3332	1155	4
3335	3335	1192	2
3336	3336	1193	2
3339	3339	1188	6
3340	3340	1189	6
3347	3347	1212	1
3348	3348	1213	1
3349	3349	1154	5
3350	3350	1155	5
3400	3400	1053	8
3403	3403	1048	8
3404	3404	1049	8
3407	3407	1044	8
3408	3408	1045	8
3411	3411	1040	8
3412	3412	1041	8
3417	3417	1032	8
3418	3418	1033	8
3421	3421	1172	5
3422	3422	1173	5
3423	3423	1174	5
3424	3424	1175	5
3425	3425	1176	5
3426	3426	1177	5
\.


--
-- Data for Name: routes; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.routes (id, document_id, number, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, interval_time) FROM stdin;
16	zik450x9seiv5fou3dgh6w5h	48	Центральний ринок – Кладовище	2026-04-08 11:02:58.783	2026-04-09 19:35:41.428	\N	1	1	\N	160 хв
27	zik450x9seiv5fou3dgh6w5h	48	Центральний ринок – Кладовище	2026-04-08 11:02:58.783	2026-04-09 19:35:41.428	2026-04-09 19:35:41.455	1	1	\N	160 хв
18	wk6bg7im6dm3dg3zi5074vp4	79	Варварівка – ВТФ «Велам»	2026-04-08 11:24:27.906	2026-04-09 19:35:53.904	\N	1	1	\N	15 – 20 хв
28	wk6bg7im6dm3dg3zi5074vp4	79	Варварівка – ВТФ «Велам»	2026-04-08 11:24:27.906	2026-04-09 19:35:53.904	2026-04-09 19:35:54.022	1	1	\N	15 – 20 хв
1	o40hk9s0xbti51d7aiohscn5	81	Намив — Ракетне Урочище	2026-03-23 08:06:49.38	2026-04-09 19:36:08.857	\N	1	1	\N	20 – 40 хв
29	o40hk9s0xbti51d7aiohscn5	81	Намив — Ракетне Урочище	2026-03-23 08:06:49.38	2026-04-09 19:36:08.857	2026-04-09 19:36:08.904	1	1	\N	20 – 40 хв
23	nh3bbxmhiobv5qjezeaja1yd	91	Центральний стадіон – Балабанівка	2026-04-08 12:10:44.649	2026-04-09 19:40:17.559	\N	1	1	\N	15 – 20 хв
32	nh3bbxmhiobv5qjezeaja1yd	91	Центральний стадіон – Балабанівка	2026-04-08 12:10:44.649	2026-04-09 19:40:17.559	2026-04-09 19:40:17.61	1	1	\N	15 – 20 хв
4	v2avrepqslwze4jt4xgzrhkj	1	Завод «Океан» — Мкр. Тернівка	2026-03-23 09:23:17.779	2026-04-09 19:33:03.744	\N	1	1	\N	15 – 20 хв
25	v2avrepqslwze4jt4xgzrhkj	1	Завод «Океан» — Мкр. Тернівка	2026-03-23 09:23:17.779	2026-04-09 19:33:03.744	2026-04-09 19:33:03.81	1	1	\N	15 – 20 хв
8	s8kmi5y6ro41ob3y8euca5ps	46	пл. Перемоги – Кладовище (військова частина)	2026-04-08 10:19:24.485	2026-04-09 19:33:26.786	\N	1	1	\N	50 хв
26	s8kmi5y6ro41ob3y8euca5ps	46	пл. Перемоги – Кладовище (військова частина)	2026-04-08 10:19:24.485	2026-04-09 19:33:26.786	2026-04-09 19:33:26.819	1	1	\N	50 хв
\.


--
-- Data for Name: routes_cmps; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.routes_cmps (id, entity_id, cmp_id, component_type, field, "order") FROM stdin;
7	4	6	schedule.bus-direction	schedule	1
8	4	7	schedule.bus-direction	schedule	2
109	25	61	schedule.bus-direction	schedule	1
110	25	62	schedule.bus-direction	schedule	2
101	23	57	schedule.bus-direction	schedule	1
104	23	58	schedule.bus-direction	schedule	2
145	32	79	schedule.bus-direction	schedule	1
146	32	80	schedule.bus-direction	schedule	2
25	8	14	schedule.bus-direction	schedule	1
26	8	15	schedule.bus-direction	schedule	2
54	8	27	schedule.bus-direction	schedule	3
55	8	28	schedule.bus-direction	schedule	4
115	26	63	schedule.bus-direction	schedule	1
116	26	64	schedule.bus-direction	schedule	2
117	26	65	schedule.bus-direction	schedule	3
118	26	66	schedule.bus-direction	schedule	4
68	16	37	schedule.bus-direction	schedule	1
69	16	38	schedule.bus-direction	schedule	2
70	16	39	schedule.bus-direction	schedule	3
71	16	40	schedule.bus-direction	schedule	4
123	27	67	schedule.bus-direction	schedule	1
124	27	68	schedule.bus-direction	schedule	2
125	27	69	schedule.bus-direction	schedule	3
126	27	70	schedule.bus-direction	schedule	4
76	18	45	schedule.bus-direction	schedule	1
78	18	46	schedule.bus-direction	schedule	2
129	28	71	schedule.bus-direction	schedule	1
130	28	72	schedule.bus-direction	schedule	2
1	1	1	schedule.bus-direction	schedule	1
4	1	3	schedule.bus-direction	schedule	2
133	29	73	schedule.bus-direction	schedule	1
134	29	74	schedule.bus-direction	schedule	2
\.


--
-- Data for Name: stops; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.stops (id, document_id, name, note, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
992	xnv4myyyla5yusnadw5kmwzm	ПАТ "Трансамміак"	\N	2026-04-11 19:03:23.685	2026-04-11 19:03:23.685	\N	\N	\N	\N
993	xnv4myyyla5yusnadw5kmwzm	ПАТ "Трансамміак"	\N	2026-04-11 19:03:23.685	2026-04-11 19:03:23.685	2026-04-11 19:03:23.694	\N	\N	\N
994	f4ankp13ygskpkrkmvoadauw	вул. Ветеранів	\N	2026-04-11 19:03:23.775	2026-04-11 19:03:23.775	\N	\N	\N	\N
995	f4ankp13ygskpkrkmvoadauw	вул. Ветеранів	\N	2026-04-11 19:03:23.775	2026-04-11 19:03:23.775	2026-04-11 19:03:23.782	\N	\N	\N
996	sz3ek1cobkkdqtchea3el60d	Консервний завод	\N	2026-04-11 19:03:23.867	2026-04-11 19:03:23.867	\N	\N	\N	\N
997	sz3ek1cobkkdqtchea3el60d	Консервний завод	\N	2026-04-11 19:03:23.867	2026-04-11 19:03:23.867	2026-04-11 19:03:23.873	\N	\N	\N
998	dn2ojpqp25hjdypdgylrnt2u	вул. Староболгарська	Школа	2026-04-11 19:03:23.946	2026-04-11 19:03:23.946	\N	\N	\N	\N
999	dn2ojpqp25hjdypdgylrnt2u	вул. Староболгарська	Школа	2026-04-11 19:03:23.946	2026-04-11 19:03:23.946	2026-04-11 19:03:23.951	\N	\N	\N
1000	oldofh50uzpk4rngp2g4edk4	вул. Горького (Нижня)	\N	2026-04-11 19:03:24.019	2026-04-11 19:03:24.019	\N	\N	\N	\N
1001	oldofh50uzpk4rngp2g4edk4	вул. Горького (Нижня)	\N	2026-04-11 19:03:24.019	2026-04-11 19:03:24.019	2026-04-11 19:03:24.024	\N	\N	\N
1002	azwiqau7ioh69kwnhhn5qdbk	вул. Сергія Цвєтка	\N	2026-04-11 19:03:24.128	2026-04-11 19:03:24.128	\N	\N	\N	\N
1003	azwiqau7ioh69kwnhhn5qdbk	вул. Сергія Цвєтка	\N	2026-04-11 19:03:24.128	2026-04-11 19:03:24.128	2026-04-11 19:03:24.135	\N	\N	\N
1004	cotsqh4keer0x268zrtmyrzf	вул. Іванова	\N	2026-04-11 19:03:24.203	2026-04-11 19:03:24.203	\N	\N	\N	\N
1005	cotsqh4keer0x268zrtmyrzf	вул. Іванова	\N	2026-04-11 19:03:24.203	2026-04-11 19:03:24.203	2026-04-11 19:03:24.209	\N	\N	\N
1006	ux1emr7o9jhqzr3lfd998s9s	вул. Першотравнева	\N	2026-04-11 19:03:24.271	2026-04-11 19:03:24.271	\N	\N	\N	\N
1007	ux1emr7o9jhqzr3lfd998s9s	вул. Першотравнева	\N	2026-04-11 19:03:24.271	2026-04-11 19:03:24.271	2026-04-11 19:03:24.278	\N	\N	\N
1008	ekf8hxvs7xzdsrthf9ssvriq	вул. Малко-Тирнівська	з однієї сторони	2026-04-11 19:03:24.338	2026-04-11 19:03:24.338	\N	\N	\N	\N
1009	ekf8hxvs7xzdsrthf9ssvriq	вул. Малко-Тирнівська	з однієї сторони	2026-04-11 19:03:24.338	2026-04-11 19:03:24.338	2026-04-11 19:03:24.343	\N	\N	\N
1010	q5j503j1otenatkksy1jo3h6	Автостанція "Оріон"	\N	2026-04-11 19:03:24.405	2026-04-11 19:03:24.405	\N	\N	\N	\N
1011	q5j503j1otenatkksy1jo3h6	Автостанція "Оріон"	\N	2026-04-11 19:03:24.405	2026-04-11 19:03:24.405	2026-04-11 19:03:24.412	\N	\N	\N
1012	wdc3iqnk9xs87z89jvswbvqr	Ательє	\N	2026-04-11 19:03:24.466	2026-04-11 19:03:24.466	\N	\N	\N	\N
1013	wdc3iqnk9xs87z89jvswbvqr	Ательє	\N	2026-04-11 19:03:24.466	2026-04-11 19:03:24.466	2026-04-11 19:03:24.47	\N	\N	\N
1014	oqg4js8zltqx7epslllezjee	Гвардійська	\N	2026-04-11 19:03:24.532	2026-04-11 19:03:24.532	\N	\N	\N	\N
1015	oqg4js8zltqx7epslllezjee	Гвардійська	\N	2026-04-11 19:03:24.532	2026-04-11 19:03:24.532	2026-04-11 19:03:24.536	\N	\N	\N
1016	pxreel04i2u9aysq1nhfthzh	Шкільна	\N	2026-04-11 19:03:24.597	2026-04-11 19:03:24.597	\N	\N	\N	\N
1017	pxreel04i2u9aysq1nhfthzh	Шкільна	\N	2026-04-11 19:03:24.597	2026-04-11 19:03:24.597	2026-04-11 19:03:24.603	\N	\N	\N
1018	obngv31eot20v8ftc0tynkom	Млинна	\N	2026-04-11 19:03:24.662	2026-04-11 19:03:24.662	\N	\N	\N	\N
1019	obngv31eot20v8ftc0tynkom	Млинна	\N	2026-04-11 19:03:24.662	2026-04-11 19:03:24.662	2026-04-11 19:03:24.666	\N	\N	\N
1020	acao1nct4soip9gfm78j85c3	Плавбасейн	\N	2026-04-11 19:03:24.724	2026-04-11 19:03:24.724	\N	\N	\N	\N
1021	acao1nct4soip9gfm78j85c3	Плавбасейн	\N	2026-04-11 19:03:24.724	2026-04-11 19:03:24.724	2026-04-11 19:03:24.729	\N	\N	\N
1022	s9js4sqpffu8b6752knyozms	Супермаркет "Метро"	\N	2026-04-11 19:03:24.786	2026-04-11 19:03:24.786	\N	\N	\N	\N
1023	s9js4sqpffu8b6752knyozms	Супермаркет "Метро"	\N	2026-04-11 19:03:24.786	2026-04-11 19:03:24.786	2026-04-11 19:03:24.79	\N	\N	\N
1024	slyvig4pfzgp5lggh8jk38zj	НУК імені адмірала Макарова	\N	2026-04-11 19:03:24.857	2026-04-11 19:03:24.857	\N	\N	\N	\N
1025	slyvig4pfzgp5lggh8jk38zj	НУК імені адмірала Макарова	\N	2026-04-11 19:03:24.857	2026-04-11 19:03:24.857	2026-04-11 19:03:24.863	\N	\N	\N
1026	l8m16q6zrwh1o13ioedhbxx2	Парк Перемоги	\N	2026-04-11 19:03:24.922	2026-04-11 19:03:24.922	\N	\N	\N	\N
1027	l8m16q6zrwh1o13ioedhbxx2	Парк Перемоги	\N	2026-04-11 19:03:24.922	2026-04-11 19:03:24.922	2026-04-11 19:03:24.927	\N	\N	\N
1028	fyeykw2xoha7qey6f0ktnijr	вул. Адміральська	\N	2026-04-11 19:03:24.983	2026-04-11 19:03:24.983	\N	\N	\N	\N
1029	fyeykw2xoha7qey6f0ktnijr	вул. Адміральська	\N	2026-04-11 19:03:24.983	2026-04-11 19:03:24.983	2026-04-11 19:03:24.988	\N	\N	\N
1030	odjwnwomvfah9fvf90jkm6qb	вул. Кропивницького	\N	2026-04-11 19:03:25.048	2026-04-11 19:03:25.048	\N	\N	\N	\N
1031	odjwnwomvfah9fvf90jkm6qb	вул. Кропивницького	\N	2026-04-11 19:03:25.048	2026-04-11 19:03:25.048	2026-04-11 19:03:25.052	\N	\N	\N
1032	b5n1pctcnjqxo7ccizxswa97	вул. Аркасівська	\N	2026-04-11 19:03:25.104	2026-04-11 19:03:25.104	\N	\N	\N	\N
1033	b5n1pctcnjqxo7ccizxswa97	вул. Аркасівська	\N	2026-04-11 19:03:25.104	2026-04-11 19:03:25.104	2026-04-11 19:03:25.11	\N	\N	\N
1034	j3n83z6q55wfst7ktoksaqm9	вул. Захисників Миколаєва	\N	2026-04-11 19:03:25.168	2026-04-11 19:03:25.168	\N	\N	\N	\N
1035	j3n83z6q55wfst7ktoksaqm9	вул. Захисників Миколаєва	\N	2026-04-11 19:03:25.168	2026-04-11 19:03:25.168	2026-04-11 19:03:25.172	\N	\N	\N
1036	muyz5g4f1bevtph1gv5wij04	вул. Соборна	\N	2026-04-11 19:03:25.223	2026-04-11 19:03:25.223	\N	\N	\N	\N
1037	muyz5g4f1bevtph1gv5wij04	вул. Соборна	\N	2026-04-11 19:03:25.223	2026-04-11 19:03:25.223	2026-04-11 19:03:25.227	\N	\N	\N
1038	yy5iqob5xiruz4ogiaswqob7	вул. Маріупольська	\N	2026-04-11 19:03:25.28	2026-04-11 19:03:25.28	\N	\N	\N	\N
1039	yy5iqob5xiruz4ogiaswqob7	вул. Маріупольська	\N	2026-04-11 19:03:25.28	2026-04-11 19:03:25.28	2026-04-11 19:03:25.284	\N	\N	\N
1040	edver6x28cn7s4u5s0vjbub8	вул. Мала Морська	\N	2026-04-11 19:03:25.336	2026-04-11 19:03:25.336	\N	\N	\N	\N
1041	edver6x28cn7s4u5s0vjbub8	вул. Мала Морська	\N	2026-04-11 19:03:25.336	2026-04-11 19:03:25.336	2026-04-11 19:03:25.34	\N	\N	\N
1042	jbzrbq4mtk2h3orx7acahxzm	вул. Інженерна	\N	2026-04-11 19:03:25.392	2026-04-11 19:03:25.392	\N	\N	\N	\N
1043	jbzrbq4mtk2h3orx7acahxzm	вул. Інженерна	\N	2026-04-11 19:03:25.392	2026-04-11 19:03:25.392	2026-04-11 19:03:25.398	\N	\N	\N
1044	ax98nttkh5lcij9qfguap4pt	вул. Садова	\N	2026-04-11 19:03:25.454	2026-04-11 19:03:25.454	\N	\N	\N	\N
1045	ax98nttkh5lcij9qfguap4pt	вул. Садова	\N	2026-04-11 19:03:25.454	2026-04-11 19:03:25.454	2026-04-11 19:03:25.461	\N	\N	\N
1046	brp4dtwicuqnneswny9voapj	вул. 3-я Слобідська	\N	2026-04-11 19:03:25.517	2026-04-11 19:03:25.517	\N	\N	\N	\N
1047	brp4dtwicuqnneswny9voapj	вул. 3-я Слобідська	\N	2026-04-11 19:03:25.517	2026-04-11 19:03:25.517	2026-04-11 19:03:25.52	\N	\N	\N
1048	vbbiy1zsru7bidb1i0bc6wv0	вул. 6-а Слобідська	\N	2026-04-11 19:03:25.616	2026-04-11 19:03:25.616	\N	\N	\N	\N
1049	vbbiy1zsru7bidb1i0bc6wv0	вул. 6-а Слобідська	\N	2026-04-11 19:03:25.616	2026-04-11 19:03:25.616	2026-04-11 19:03:25.621	\N	\N	\N
1050	cbzocweuvpwl06xfyhnav6wu	вул. 9-а Слобідська	\N	2026-04-11 19:03:25.682	2026-04-11 19:03:25.682	\N	\N	\N	\N
1051	cbzocweuvpwl06xfyhnav6wu	вул. 9-а Слобідська	\N	2026-04-11 19:03:25.682	2026-04-11 19:03:25.682	2026-04-11 19:03:25.685	\N	\N	\N
1052	k6hmovr9gxkuu6e2oh717nhx	вул. 10-а Слобідська	\N	2026-04-11 19:03:25.735	2026-04-11 19:03:25.735	\N	\N	\N	\N
1053	k6hmovr9gxkuu6e2oh717nhx	вул. 10-а Слобідська	\N	2026-04-11 19:03:25.735	2026-04-11 19:03:25.735	2026-04-11 19:03:25.739	\N	\N	\N
1054	tpf89ogknn6pacudwrxi04ym	Міжміський автовокзал	\N	2026-04-11 19:03:25.793	2026-04-11 19:03:25.793	\N	\N	\N	\N
1055	tpf89ogknn6pacudwrxi04ym	Міжміський автовокзал	\N	2026-04-11 19:03:25.793	2026-04-11 19:03:25.793	2026-04-11 19:03:25.809	\N	\N	\N
1056	rc6t0rxy7645owz2j9z7zdd7	вул. Авангардна	\N	2026-04-11 19:03:25.899	2026-04-11 19:03:25.899	\N	\N	\N	\N
1057	rc6t0rxy7645owz2j9z7zdd7	вул. Авангардна	\N	2026-04-11 19:03:25.899	2026-04-11 19:03:25.899	2026-04-11 19:03:25.901	\N	\N	\N
1058	vb76mmgqh9sg8sp3eknko3oa	вул. Південна	\N	2026-04-11 19:03:25.953	2026-04-11 19:03:25.953	\N	\N	\N	\N
1059	vb76mmgqh9sg8sp3eknko3oa	вул. Південна	\N	2026-04-11 19:03:25.953	2026-04-11 19:03:25.953	2026-04-11 19:03:25.958	\N	\N	\N
1062	wnd61kfs1haizy2crlmc4nxa	вул. Дмитра Кременя	\N	2026-04-11 19:03:26.07	2026-04-11 19:03:26.07	\N	\N	\N	\N
1063	wnd61kfs1haizy2crlmc4nxa	вул. Дмитра Кременя	\N	2026-04-11 19:03:26.07	2026-04-11 19:03:26.07	2026-04-11 19:03:26.075	\N	\N	\N
1068	gl3wyiu0d8ieu80elf9ronfl	вул. Виноградна	\N	2026-04-11 19:03:26.248	2026-04-11 19:03:26.248	\N	\N	\N	\N
1069	gl3wyiu0d8ieu80elf9ronfl	вул. Виноградна	\N	2026-04-11 19:03:26.248	2026-04-11 19:03:26.248	2026-04-11 19:03:26.252	\N	\N	\N
1076	h8ld0y2vcbqu83fl5y807yly	вул. Маячна	\N	2026-04-11 19:03:26.494	2026-04-11 19:03:26.494	\N	\N	\N	\N
1077	h8ld0y2vcbqu83fl5y807yly	вул. Маячна	\N	2026-04-11 19:03:26.494	2026-04-11 19:03:26.494	2026-04-11 19:03:26.499	\N	\N	\N
1082	xkpjlr0x5h7gu6z9y7c50gph	ТЦ "Таврія-В"	\N	2026-04-11 19:03:26.689	2026-04-11 19:03:26.689	\N	\N	\N	\N
1083	xkpjlr0x5h7gu6z9y7c50gph	ТЦ "Таврія-В"	\N	2026-04-11 19:03:26.689	2026-04-11 19:03:26.689	2026-04-11 19:03:26.693	\N	\N	\N
1088	fxi41m40rvto485f7fnznvnl	вул. Горіхова	\N	2026-04-11 19:03:26.885	2026-04-11 19:03:26.885	\N	\N	\N	\N
1089	fxi41m40rvto485f7fnznvnl	вул. Горіхова	\N	2026-04-11 19:03:26.885	2026-04-11 19:03:26.885	2026-04-11 19:03:26.888	\N	\N	\N
1106	fs5pw23p8z00lmere7xewnxq	ПК "Корабельний"	\N	2026-04-11 19:03:27.421	2026-04-11 19:03:27.421	\N	\N	\N	\N
1107	fs5pw23p8z00lmere7xewnxq	ПК "Корабельний"	\N	2026-04-11 19:03:27.421	2026-04-11 19:03:27.421	2026-04-11 19:03:27.427	\N	\N	\N
1112	wamflvkno28539r03ldw02nt	ТЦ "Фуршет"	\N	2026-04-11 19:03:27.621	2026-04-11 19:03:27.621	\N	\N	\N	\N
1113	wamflvkno28539r03ldw02nt	ТЦ "Фуршет"	\N	2026-04-11 19:03:27.621	2026-04-11 19:03:27.621	2026-04-11 19:03:27.625	\N	\N	\N
1168	o9pbqrmxhhqrun7v3cpazzkh	Стадіон	\N	2026-04-11 19:03:35.191	2026-04-11 19:03:35.191	\N	\N	\N	\N
1169	o9pbqrmxhhqrun7v3cpazzkh	Стадіон	\N	2026-04-11 19:03:35.191	2026-04-11 19:03:35.191	2026-04-11 19:03:35.195	\N	\N	\N
1194	k7yljzsq9ns321h8gj1su3b1	Лісгосп	\N	2026-04-11 19:03:36.597	2026-04-11 19:03:36.597	\N	\N	\N	\N
1195	k7yljzsq9ns321h8gj1su3b1	Лісгосп	\N	2026-04-11 19:03:36.597	2026-04-11 19:03:36.597	2026-04-11 19:03:36.602	\N	\N	\N
1060	opcumduez5xqhdhokohucja5	вул. Театральна	\N	2026-04-11 19:03:26.012	2026-04-11 19:03:26.012	\N	\N	\N	\N
1061	opcumduez5xqhdhokohucja5	вул. Театральна	\N	2026-04-11 19:03:26.012	2026-04-11 19:03:26.012	2026-04-11 19:03:26.016	\N	\N	\N
1064	oj944pxw5d6r72ua2gmtyyie	вул. Космонавтів	\N	2026-04-11 19:03:26.131	2026-04-11 19:03:26.131	\N	\N	\N	\N
1065	oj944pxw5d6r72ua2gmtyyie	вул. Космонавтів	\N	2026-04-11 19:03:26.131	2026-04-11 19:03:26.131	2026-04-11 19:03:26.136	\N	\N	\N
1070	r44mm9v1s0zeo63ear3kuglw	вул. Старофортечна	\N	2026-04-11 19:03:26.305	2026-04-11 19:03:26.305	\N	\N	\N	\N
1071	r44mm9v1s0zeo63ear3kuglw	вул. Старофортечна	\N	2026-04-11 19:03:26.305	2026-04-11 19:03:26.305	2026-04-11 19:03:26.31	\N	\N	\N
1094	h4bevv4gr5nl6nvwa0w5rtoz	вул. Гліба Григороша	\N	2026-04-11 19:03:27.052	2026-04-11 19:03:27.052	\N	\N	\N	\N
1095	h4bevv4gr5nl6nvwa0w5rtoz	вул. Гліба Григороша	\N	2026-04-11 19:03:27.052	2026-04-11 19:03:27.052	2026-04-11 19:03:27.057	\N	\N	\N
1104	wjt5uv7oyd08xqgu4ifxibih	Універсам	\N	2026-04-11 19:03:27.354	2026-04-11 19:03:27.354	\N	\N	\N	\N
1105	wjt5uv7oyd08xqgu4ifxibih	Універсам	\N	2026-04-11 19:03:27.354	2026-04-11 19:03:27.354	2026-04-11 19:03:27.36	\N	\N	\N
1110	vmjwk1i2kpvs9dz878ujlj8k	вул. Океанівська	\N	2026-04-11 19:03:27.57	2026-04-11 19:03:27.57	\N	\N	\N	\N
1111	vmjwk1i2kpvs9dz878ujlj8k	вул. Океанівська	\N	2026-04-11 19:03:27.57	2026-04-11 19:03:27.57	2026-04-11 19:03:27.574	\N	\N	\N
1116	r99z0oksqkef6hqh8eko0lst	пр. Корабелів	\N	2026-04-11 19:03:27.727	2026-04-11 19:03:27.727	\N	\N	\N	\N
1117	r99z0oksqkef6hqh8eko0lst	пр. Корабелів	\N	2026-04-11 19:03:27.727	2026-04-11 19:03:27.727	2026-04-11 19:03:27.731	\N	\N	\N
1118	whuvvxpqzy7cjg06b2n77lj7	вул. Айвазовського	\N	2026-04-11 19:03:27.777	2026-04-11 19:03:27.777	\N	\N	\N	\N
1119	whuvvxpqzy7cjg06b2n77lj7	вул. Айвазовського	\N	2026-04-11 19:03:27.777	2026-04-11 19:03:27.777	2026-04-11 19:03:27.782	\N	\N	\N
1122	p9tguydfdn4itsrbk73m5icp	пр. Богоявленський	з однієї сторони	2026-04-11 19:03:28.438	2026-04-11 19:03:28.438	\N	\N	\N	\N
1123	p9tguydfdn4itsrbk73m5icp	пр. Богоявленський	з однієї сторони	2026-04-11 19:03:28.438	2026-04-11 19:03:28.438	2026-04-11 19:03:28.442	\N	\N	\N
1138	iksg92l8slcwln988x3ncnu3	БК "Металургів"	\N	2026-04-11 19:03:32.215	2026-04-11 19:03:32.215	\N	\N	\N	\N
1139	iksg92l8slcwln988x3ncnu3	БК "Металургів"	\N	2026-04-11 19:03:32.215	2026-04-11 19:03:32.215	2026-04-11 19:03:32.219	\N	\N	\N
1142	eppzykf7xrg5twhdkplnl6b1	вул. Ленінградська	\N	2026-04-11 19:03:32.324	2026-04-11 19:03:32.324	\N	\N	\N	\N
1143	eppzykf7xrg5twhdkplnl6b1	вул. Ленінградська	\N	2026-04-11 19:03:32.324	2026-04-11 19:03:32.324	2026-04-11 19:03:32.33	\N	\N	\N
1148	ic28f9mqfai7cb00l526xtbu	вул. Костянтина Сергієнка	\N	2026-04-11 19:03:32.493	2026-04-11 19:03:32.493	\N	\N	\N	\N
1149	ic28f9mqfai7cb00l526xtbu	вул. Костянтина Сергієнка	\N	2026-04-11 19:03:32.493	2026-04-11 19:03:32.493	2026-04-11 19:03:32.497	\N	\N	\N
1176	lal93t76h5scw847j595ncor	Будринок	\N	2026-04-11 19:03:36.083	2026-04-11 19:03:36.083	\N	\N	\N	\N
1177	lal93t76h5scw847j595ncor	Будринок	\N	2026-04-11 19:03:36.083	2026-04-11 19:03:36.083	2026-04-11 19:03:36.087	\N	\N	\N
1180	t0xcj7lrfwppdmf8ran60baa	Завод мастильних систем	\N	2026-04-11 19:03:36.19	2026-04-11 19:03:36.19	\N	\N	\N	\N
1181	t0xcj7lrfwppdmf8ran60baa	Завод мастильних систем	\N	2026-04-11 19:03:36.19	2026-04-11 19:03:36.19	2026-04-11 19:03:36.196	\N	\N	\N
1186	sfn2w6vxn147skk8ke59iq6l	НЗСФО	\N	2026-04-11 19:03:36.341	2026-04-11 19:03:36.341	\N	\N	\N	\N
1187	sfn2w6vxn147skk8ke59iq6l	НЗСФО	\N	2026-04-11 19:03:36.341	2026-04-11 19:03:36.341	2026-04-11 19:03:36.346	\N	\N	\N
1190	m4u0tcn0fp6l706qf44x5mov	ш. Баштаньське	\N	2026-04-11 19:03:36.488	2026-04-11 19:03:36.488	\N	\N	\N	\N
1191	m4u0tcn0fp6l706qf44x5mov	ш. Баштаньське	\N	2026-04-11 19:03:36.488	2026-04-11 19:03:36.488	2026-04-11 19:03:36.493	\N	\N	\N
1206	jhrs4sbb43sw6zjngwze3qfk	вул. Східна	\N	2026-04-11 19:03:39.373	2026-04-11 19:03:39.373	\N	\N	\N	\N
1207	jhrs4sbb43sw6zjngwze3qfk	вул. Східна	\N	2026-04-11 19:03:39.373	2026-04-11 19:03:39.373	2026-04-11 19:03:39.378	\N	\N	\N
1066	vlswuev9zczudu0789ugd235	Заводоуправління	\N	2026-04-11 19:03:26.193	2026-04-11 19:03:26.193	\N	\N	\N	\N
1067	vlswuev9zczudu0789ugd235	Заводоуправління	\N	2026-04-11 19:03:26.193	2026-04-11 19:03:26.193	2026-04-11 19:03:26.197	\N	\N	\N
1072	kwhh41eegjbiapefskxv30iq	вул. Прибузька	\N	2026-04-11 19:03:26.37	2026-04-11 19:03:26.37	\N	\N	\N	\N
1073	kwhh41eegjbiapefskxv30iq	вул. Прибузька	\N	2026-04-11 19:03:26.37	2026-04-11 19:03:26.37	2026-04-11 19:03:26.375	\N	\N	\N
1074	kgprp92gtpho9gwu7nue4rjx	Кульбакинський поворот	\N	2026-04-11 19:03:26.438	2026-04-11 19:03:26.438	\N	\N	\N	\N
1075	kgprp92gtpho9gwu7nue4rjx	Кульбакинський поворот	\N	2026-04-11 19:03:26.438	2026-04-11 19:03:26.438	2026-04-11 19:03:26.441	\N	\N	\N
1080	f88tu1p3mh9f1fhmhmzwsiyf	ТЦ "Мій Дім"	\N	2026-04-11 19:03:26.626	2026-04-11 19:03:26.626	\N	\N	\N	\N
1081	f88tu1p3mh9f1fhmhmzwsiyf	ТЦ "Мій Дім"	\N	2026-04-11 19:03:26.626	2026-04-11 19:03:26.626	2026-04-11 19:03:26.63	\N	\N	\N
1086	k7x70uqvqzej1uef4v3kmuls	вул. Липова	з однієї сторони	2026-04-11 19:03:26.81	2026-04-11 19:03:26.81	\N	\N	\N	\N
1087	k7x70uqvqzej1uef4v3kmuls	вул. Липова	з однієї сторони	2026-04-11 19:03:26.81	2026-04-11 19:03:26.81	2026-04-11 19:03:26.817	\N	\N	\N
1090	xe1x5oumey9pq6wc6timxfmm	вул. Леся Курбаса	з однієї сторони	2026-04-11 19:03:26.938	2026-04-11 19:03:26.938	\N	\N	\N	\N
1091	xe1x5oumey9pq6wc6timxfmm	вул. Леся Курбаса	з однієї сторони	2026-04-11 19:03:26.938	2026-04-11 19:03:26.938	2026-04-11 19:03:26.942	\N	\N	\N
1096	zpjucndfywvtqjc1vror8blk	Молодіжний парк	\N	2026-04-11 19:03:27.108	2026-04-11 19:03:27.108	\N	\N	\N	\N
1097	zpjucndfywvtqjc1vror8blk	Молодіжний парк	\N	2026-04-11 19:03:27.108	2026-04-11 19:03:27.108	2026-04-11 19:03:27.113	\N	\N	\N
1100	quouh2unj6nwv2mat62c0blv	вул. Янтарна	\N	2026-04-11 19:03:27.238	2026-04-11 19:03:27.238	\N	\N	\N	\N
1101	quouh2unj6nwv2mat62c0blv	вул. Янтарна	\N	2026-04-11 19:03:27.238	2026-04-11 19:03:27.238	2026-04-11 19:03:27.245	\N	\N	\N
1114	s43p8bt0co3bu4dg8scko819	Арка	\N	2026-04-11 19:03:27.675	2026-04-11 19:03:27.675	\N	\N	\N	\N
1115	s43p8bt0co3bu4dg8scko819	Арка	\N	2026-04-11 19:03:27.675	2026-04-11 19:03:27.675	2026-04-11 19:03:27.68	\N	\N	\N
1124	rljjzmzivmrdr9oqqai3u2x2	вул. Богоявленська	з однієї сторони	2026-04-11 19:03:28.529	2026-04-11 19:03:28.529	\N	\N	\N	\N
1125	rljjzmzivmrdr9oqqai3u2x2	вул. Богоявленська	з однієї сторони	2026-04-11 19:03:28.529	2026-04-11 19:03:28.529	2026-04-11 19:03:28.531	\N	\N	\N
1132	yr5xzccjbzrkw8di9if354gd	вул. Водопровідна	\N	2026-04-11 19:03:30.516	2026-04-11 19:03:30.516	\N	\N	\N	\N
1133	yr5xzccjbzrkw8di9if354gd	вул. Водопровідна	\N	2026-04-11 19:03:30.516	2026-04-11 19:03:30.516	2026-04-11 19:03:30.519	\N	\N	\N
1136	snw2ggnq76qd0ljjaqk8dumf	Центральний ринок	\N	2026-04-11 19:03:30.62	2026-04-11 19:03:30.62	\N	\N	\N	\N
1137	snw2ggnq76qd0ljjaqk8dumf	Центральний ринок	\N	2026-04-11 19:03:30.62	2026-04-11 19:03:30.62	2026-04-11 19:03:30.623	\N	\N	\N
1144	pl40ehja86rm207dx1up1gcr	Магазин	\N	2026-04-11 19:03:32.382	2026-04-11 19:03:32.382	\N	\N	\N	\N
1145	pl40ehja86rm207dx1up1gcr	Магазин	\N	2026-04-11 19:03:32.382	2026-04-11 19:03:32.382	2026-04-11 19:03:32.386	\N	\N	\N
1150	k4fo3r9ckws5ocdrlvjoknq8	Торгівельний центр	з однієї сторони	2026-04-11 19:03:34.435	2026-04-11 19:03:34.435	\N	\N	\N	\N
1151	k4fo3r9ckws5ocdrlvjoknq8	Торгівельний центр	з однієї сторони	2026-04-11 19:03:34.435	2026-04-11 19:03:34.435	2026-04-11 19:03:34.439	\N	\N	\N
1158	t4ska3n9v5w2ndqlo6f8vs9f	вул. Очаківська	\N	2026-04-11 19:03:34.879	2026-04-11 19:03:34.879	\N	\N	\N	\N
1159	t4ska3n9v5w2ndqlo6f8vs9f	вул. Очаківська	\N	2026-04-11 19:03:34.879	2026-04-11 19:03:34.879	2026-04-11 19:03:34.882	\N	\N	\N
1162	bd65fqah7oio50in0av2d592	БК "Будівельників"	\N	2026-04-11 19:03:35.034	2026-04-11 19:03:35.034	\N	\N	\N	\N
1163	bd65fqah7oio50in0av2d592	БК "Будівельників"	\N	2026-04-11 19:03:35.034	2026-04-11 19:03:35.034	2026-04-11 19:03:35.038	\N	\N	\N
1166	zd5go4jxnnny2duuq4om3ir8	вул. Олега Григор'єва	\N	2026-04-11 19:03:35.135	2026-04-11 19:03:35.135	\N	\N	\N	\N
1167	zd5go4jxnnny2duuq4om3ir8	вул. Олега Григор'єва	\N	2026-04-11 19:03:35.135	2026-04-11 19:03:35.135	2026-04-11 19:03:35.142	\N	\N	\N
1172	lybw78uhw6m1kmqa1czlk9av	пл. Перемоги	\N	2026-04-11 19:03:35.984	2026-04-11 19:03:35.984	\N	\N	\N	\N
1173	lybw78uhw6m1kmqa1czlk9av	пл. Перемоги	\N	2026-04-11 19:03:35.984	2026-04-11 19:03:35.984	2026-04-11 19:03:35.987	\N	\N	\N
1178	fdu5mfi9h2sdqlb4tdhrdbzf	Магазин "Світанок"	\N	2026-04-11 19:03:36.139	2026-04-11 19:03:36.139	\N	\N	\N	\N
1179	fdu5mfi9h2sdqlb4tdhrdbzf	Магазин "Світанок"	\N	2026-04-11 19:03:36.139	2026-04-11 19:03:36.139	2026-04-11 19:03:36.147	\N	\N	\N
1184	g37vyvfrxydbfcv5jwfmhgc6	вул. Винграновського	\N	2026-04-11 19:03:36.287	2026-04-11 19:03:36.287	\N	\N	\N	\N
1185	g37vyvfrxydbfcv5jwfmhgc6	вул. Винграновського	\N	2026-04-11 19:03:36.287	2026-04-11 19:03:36.287	2026-04-11 19:03:36.291	\N	\N	\N
1198	xiya0xvsspj0netrhwlij4ls	ВТФ «ВЕЛАМ»	\N	2026-04-11 19:03:36.755	2026-04-11 19:03:36.755	\N	\N	\N	\N
1199	xiya0xvsspj0netrhwlij4ls	ВТФ «ВЕЛАМ»	\N	2026-04-11 19:03:36.755	2026-04-11 19:03:36.755	2026-04-11 19:03:36.76	\N	\N	\N
1212	tpv8k2n4y1bzr18zppjk4qow	вул. Довженка	\N	2026-04-11 19:03:39.52	2026-04-11 19:03:39.52	\N	\N	\N	\N
1213	tpv8k2n4y1bzr18zppjk4qow	вул. Довженка	\N	2026-04-11 19:03:39.52	2026-04-11 19:03:39.52	2026-04-11 19:03:39.523	\N	\N	\N
1078	dif8zfcpkogk30xckfi3i5f5	Вірменська церква	\N	2026-04-11 19:03:26.559	2026-04-11 19:03:26.559	\N	\N	\N	\N
1079	dif8zfcpkogk30xckfi3i5f5	Вірменська церква	\N	2026-04-11 19:03:26.559	2026-04-11 19:03:26.559	2026-04-11 19:03:26.563	\N	\N	\N
1084	zlld9ywpxxhem5j15e6qw5bx	ТЦ "Епіцентр"	\N	2026-04-11 19:03:26.748	2026-04-11 19:03:26.748	\N	\N	\N	\N
1085	zlld9ywpxxhem5j15e6qw5bx	ТЦ "Епіцентр"	\N	2026-04-11 19:03:26.748	2026-04-11 19:03:26.748	2026-04-11 19:03:26.752	\N	\N	\N
1092	xdtb0ya32viz3qbde4f1ni27	вул. Антонюка	\N	2026-04-11 19:03:26.998	2026-04-11 19:03:26.998	\N	\N	\N	\N
1093	xdtb0ya32viz3qbde4f1ni27	вул. Антонюка	\N	2026-04-11 19:03:26.998	2026-04-11 19:03:26.998	2026-04-11 19:03:27.002	\N	\N	\N
1098	zy621cwl0kc8ohhzncyuickh	вул. Торгова	\N	2026-04-11 19:03:27.183	2026-04-11 19:03:27.183	\N	\N	\N	\N
1099	zy621cwl0kc8ohhzncyuickh	вул. Торгова	\N	2026-04-11 19:03:27.183	2026-04-11 19:03:27.183	2026-04-11 19:03:27.186	\N	\N	\N
1102	hf8sd7upphevhc23akhw98ra	вул. Ольшанців	\N	2026-04-11 19:03:27.297	2026-04-11 19:03:27.297	\N	\N	\N	\N
1103	hf8sd7upphevhc23akhw98ra	вул. Ольшанців	\N	2026-04-11 19:03:27.297	2026-04-11 19:03:27.297	2026-04-11 19:03:27.3	\N	\N	\N
1108	k9pixwhrqlkvtkp5cfn4unal	Ринок	\N	2026-04-11 19:03:27.517	2026-04-11 19:03:27.517	\N	\N	\N	\N
1109	k9pixwhrqlkvtkp5cfn4unal	Ринок	\N	2026-04-11 19:03:27.517	2026-04-11 19:03:27.517	2026-04-11 19:03:27.523	\N	\N	\N
1128	b4szf7s59o5503t4uod6i8b3	м/н Північний	з однієї сторони	2026-04-11 19:03:30.097	2026-04-11 19:03:30.097	\N	\N	\N	\N
1129	b4szf7s59o5503t4uod6i8b3	м/н Північний	з однієї сторони	2026-04-11 19:03:30.097	2026-04-11 19:03:30.097	2026-04-11 19:03:30.101	\N	\N	\N
1130	e0m6f3cb4mn6q7p8rwutrq77	Центральний стадіон	\N	2026-04-11 19:03:30.463	2026-04-11 19:03:30.463	\N	\N	\N	\N
1131	e0m6f3cb4mn6q7p8rwutrq77	Центральний стадіон	\N	2026-04-11 19:03:30.463	2026-04-11 19:03:30.463	2026-04-11 19:03:30.466	\N	\N	\N
1140	kjpw2dns0ayhjt0tgb5lkcj6	Аквапарк "Водолій"	\N	2026-04-11 19:03:32.268	2026-04-11 19:03:32.268	\N	\N	\N	\N
1141	kjpw2dns0ayhjt0tgb5lkcj6	Аквапарк "Водолій"	\N	2026-04-11 19:03:32.268	2026-04-11 19:03:32.268	2026-04-11 19:03:32.275	\N	\N	\N
1146	m91npr3xfujg4aci5jgdosqm	Балка	\N	2026-04-11 19:03:32.437	2026-04-11 19:03:32.437	\N	\N	\N	\N
1147	m91npr3xfujg4aci5jgdosqm	Балка	\N	2026-04-11 19:03:32.437	2026-04-11 19:03:32.437	2026-04-11 19:03:32.441	\N	\N	\N
1154	uuaxs6fkkpk23d0guvin2o5f	АТП	з однієї сторони	2026-04-11 19:03:34.739	2026-04-11 19:03:34.739	\N	\N	\N	\N
1155	uuaxs6fkkpk23d0guvin2o5f	АТП	з однієї сторони	2026-04-11 19:03:34.739	2026-04-11 19:03:34.739	2026-04-11 19:03:34.75	\N	\N	\N
1160	th7jwew192xyqyq0b4a5uvty	бул. Бузький	\N	2026-04-11 19:03:34.937	2026-04-11 19:03:34.937	\N	\N	\N	\N
1161	th7jwew192xyqyq0b4a5uvty	бул. Бузький	\N	2026-04-11 19:03:34.937	2026-04-11 19:03:34.937	2026-04-11 19:03:34.942	\N	\N	\N
1192	jktkl7s1j3lwjxovable1ec3	вул. Троїцька	з однієї сторони	2026-04-11 19:03:36.538	2026-04-11 19:03:36.538	\N	\N	\N	\N
1193	jktkl7s1j3lwjxovable1ec3	вул. Троїцька	з однієї сторони	2026-04-11 19:03:36.538	2026-04-11 19:03:36.538	2026-04-11 19:03:36.543	\N	\N	\N
1196	lbk1pezu2lyh77ethbdt71g7	вул. Андрія Шептицького	\N	2026-04-11 19:03:36.702	2026-04-11 19:03:36.702	\N	\N	\N	\N
1197	lbk1pezu2lyh77ethbdt71g7	вул. Андрія Шептицького	\N	2026-04-11 19:03:36.702	2026-04-11 19:03:36.702	2026-04-11 19:03:36.705	\N	\N	\N
1200	wsshfspcjpg3rw441nu317r5	вул. Вінграновського	\N	2026-04-11 19:03:37.089	2026-04-11 19:03:37.089	\N	\N	\N	\N
1201	wsshfspcjpg3rw441nu317r5	вул. Вінграновського	\N	2026-04-11 19:03:37.089	2026-04-11 19:03:37.089	2026-04-11 19:03:37.094	\N	\N	\N
1202	z1105gsh4qt8gje103t9680e	вул. Галини Петрової	\N	2026-04-11 19:03:38.006	2026-04-11 19:03:38.006	\N	\N	\N	\N
1203	z1105gsh4qt8gje103t9680e	вул. Галини Петрової	\N	2026-04-11 19:03:38.006	2026-04-11 19:03:38.006	2026-04-11 19:03:38.015	\N	\N	\N
1204	xcf8sioro0dtfave1d9o4m8q	пров. Веселинівський	з однієї сторони	2026-04-11 19:03:38.248	2026-04-11 19:03:38.248	\N	\N	\N	\N
1205	xcf8sioro0dtfave1d9o4m8q	пров. Веселинівський	з однієї сторони	2026-04-11 19:03:38.248	2026-04-11 19:03:38.248	2026-04-11 19:03:38.25	\N	\N	\N
1208	e2wgdd85anm6c2bmzeuneq4x	Школа	\N	2026-04-11 19:03:39.426	2026-04-11 19:03:39.426	\N	\N	\N	\N
1209	e2wgdd85anm6c2bmzeuneq4x	Школа	\N	2026-04-11 19:03:39.426	2026-04-11 19:03:39.426	2026-04-11 19:03:39.43	\N	\N	\N
1214	ktyugss0uibwa4w9tijbldtg	Кладовище	\N	2026-04-11 19:03:39.605	2026-04-11 19:03:39.605	\N	\N	\N	\N
1215	ktyugss0uibwa4w9tijbldtg	Кладовище	\N	2026-04-11 19:03:39.605	2026-04-11 19:03:39.605	2026-04-11 19:03:39.609	\N	\N	\N
1120	la4seciel8o4nc1t1m7qol56	Завод "Океан"	\N	2026-04-11 19:03:27.83	2026-04-11 19:03:27.83	\N	\N	\N	\N
1121	la4seciel8o4nc1t1m7qol56	Завод "Океан"	\N	2026-04-11 19:03:27.83	2026-04-11 19:03:27.83	2026-04-11 19:03:27.833	\N	\N	\N
1126	sad793czsdz7cm4kv5kiigul	ТЦ "Сіті Центр"	з однієї сторони	2026-04-11 19:03:29.391	2026-04-11 19:03:29.391	\N	\N	\N	\N
1127	sad793czsdz7cm4kv5kiigul	ТЦ "Сіті Центр"	з однієї сторони	2026-04-11 19:03:29.391	2026-04-11 19:03:29.391	2026-04-11 19:03:29.394	\N	\N	\N
1134	j9b27b6z1nfm65y6a56xak1c	вул. Шосейна	\N	2026-04-11 19:03:30.568	2026-04-11 19:03:30.568	\N	\N	\N	\N
1135	j9b27b6z1nfm65y6a56xak1c	вул. Шосейна	\N	2026-04-11 19:03:30.568	2026-04-11 19:03:30.568	2026-04-11 19:03:30.57	\N	\N	\N
1152	bp4pt9qc45xqo04tgcs1toa7	вул. Олексія Кваші	\N	2026-04-11 19:03:34.671	2026-04-11 19:03:34.671	\N	\N	\N	\N
1153	bp4pt9qc45xqo04tgcs1toa7	вул. Олексія Кваші	\N	2026-04-11 19:03:34.671	2026-04-11 19:03:34.671	2026-04-11 19:03:34.676	\N	\N	\N
1156	cl3xuswpworf74fjvhf40i05	вул. Якова Бутовича	з однієї сторони	2026-04-11 19:03:34.825	2026-04-11 19:03:34.825	\N	\N	\N	\N
1157	cl3xuswpworf74fjvhf40i05	вул. Якова Бутовича	з однієї сторони	2026-04-11 19:03:34.825	2026-04-11 19:03:34.825	2026-04-11 19:03:34.829	\N	\N	\N
1164	dimc612jlhhicudz893ehz7v	Річковий вокзал	\N	2026-04-11 19:03:35.086	2026-04-11 19:03:35.086	\N	\N	\N	\N
1165	dimc612jlhhicudz893ehz7v	Річковий вокзал	\N	2026-04-11 19:03:35.086	2026-04-11 19:03:35.086	2026-04-11 19:03:35.089	\N	\N	\N
1170	k7jvnwh4xsfp21ziavz6gowm	вул. Будівельників	\N	2026-04-11 19:03:35.822	2026-04-11 19:03:35.822	\N	\N	\N	\N
1171	k7jvnwh4xsfp21ziavz6gowm	вул. Будівельників	\N	2026-04-11 19:03:35.822	2026-04-11 19:03:35.822	2026-04-11 19:03:35.827	\N	\N	\N
1174	uvonlktj6f8oqizy81zemav1	вул. 12-а Повздовжня	\N	2026-04-11 19:03:36.031	2026-04-11 19:03:36.031	\N	\N	\N	\N
1175	uvonlktj6f8oqizy81zemav1	вул. 12-а Повздовжня	\N	2026-04-11 19:03:36.031	2026-04-11 19:03:36.031	2026-04-11 19:03:36.034	\N	\N	\N
1182	tt766c0hv9zvzkgmxz0pfbrz	Кінотеатр "Космос"	\N	2026-04-11 19:03:36.241	2026-04-11 19:03:36.241	\N	\N	\N	\N
1183	tt766c0hv9zvzkgmxz0pfbrz	Кінотеатр "Космос"	\N	2026-04-11 19:03:36.241	2026-04-11 19:03:36.241	2026-04-11 19:03:36.245	\N	\N	\N
1188	pibj2zisq15teme94nvjq8uw	вул. Електронна	\N	2026-04-11 19:03:36.399	2026-04-11 19:03:36.399	\N	\N	\N	\N
1189	pibj2zisq15teme94nvjq8uw	вул. Електронна	\N	2026-04-11 19:03:36.399	2026-04-11 19:03:36.399	2026-04-11 19:03:36.402	\N	\N	\N
1210	k6cbg361wyzigp26cp292a38	вул. Олександра Янати	\N	2026-04-11 19:03:39.473	2026-04-11 19:03:39.473	\N	\N	\N	\N
1211	k6cbg361wyzigp26cp292a38	вул. Олександра Янати	\N	2026-04-11 19:03:39.473	2026-04-11 19:03:39.473	2026-04-11 19:03:39.478	\N	\N	\N
1216	wn7vqrl51hyong45rt33f51m	Авторинок	\N	2026-04-11 19:03:42.622	2026-04-11 19:03:42.622	\N	\N	\N	\N
1217	wn7vqrl51hyong45rt33f51m	Авторинок	\N	2026-04-11 19:03:42.622	2026-04-11 19:03:42.622	2026-04-11 19:03:42.632	\N	\N	\N
\.


--
-- Data for Name: strapi_ai_localization_jobs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_ai_localization_jobs (id, content_type, related_document_id, source_locale, target_locales, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_ai_metadata_jobs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_ai_metadata_jobs (id, status, created_at, completed_at) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	bojn6aj9lq6dlcew7glerrg5	Read Only	A default API token with read-only permissions, only used for accessing resources	read-only	487cdcba79c9a2f5647749fb2136665efd9100bc95a1c825834be41987077356b6f2eaaf425a11377af4cda09c8aabf66873ca07851e773982adc3c14f999e63	v1:d082d044b5016de616c68bf259ed815d:4a8309f2dee29661dd62884bf3f88c3bac0638d4891d3de9ac7b1076f3820926c0951dcaf21e89eae6b2e3e28aaea128d91c89cb22b3ba390b3f6000340e704dc4563c107fd6d45c445144b6e18a9876624c1fcd500b9ad1fad95b8b2fded06ae8ce5e82705dcb67f38b94f6046df333e9590b7ec58cadc556b3d5ff34dab9001899f0ec929c2c61f2ed8a02084f21b966a1faef9504a7491662b2c477ba9a35cd847d6da481221b4006d77b87314700800aaf448c5be1ff586b333deb10d89d7601ef1c77629404da2bb466b419b0181b770d24bf69663473c0c9704931da8f95101ed576a377444dd91967d3bbea40d166a36669fb732c55a3cfe5afdd8b16:90e1fb341f5b4df94ab013d6b525494c	\N	\N	\N	2026-01-26 14:36:49.078	2026-01-26 14:36:49.078	2026-01-26 14:36:49.078	\N	\N	\N
2	gwquefykbr2khezkyupr9i02	Full Access	A default API token with full access permissions, used for accessing or modifying resources	full-access	592e126bc570d4013735e2dad486a4ba021e1bd227db1b41aed54c8752a45f847addddbf23edc4d0ca2e23d77bd8acddb2231eeab60290077222a82572634156	v1:1b4db26d9a2431e1356add1030e3ed4e:5bf2df453aa09cd30243dad436edbb3f5c97cff2467398fe2c8f7d757c770a700b1ccf196ca3d39061c47c4183a12070481818376366fdb5e1abcd6c808ab2e6ca7163972b7b124207b4e95a7161e5e77fc3d26cc3df2dc4db218a65c1d5a6c325d58e10a30260c325ae40d6feb49faac70d9e034e664fa6bfbe0e76bfefa4e43f336f33a5f9150859bb9c3e11bf457c3238fc9cc620c9875f113563755312f44b075b9793bb9f512c0a45c731460c2f28bf2abf9db6b16eb30792e00c147712381fb160df29d2a401bd9cd9049517a319a3afb3f40d41d83df4ee6594cfd54b615ee568ce54b709fc34341f79043e132269a549762630b28dedd0befcfdf643:adfa4349aed1ef223ab5857fa190c556	\N	\N	\N	2026-01-26 14:36:49.084	2026-01-26 14:36:49.084	2026-01-26 14:36:49.085	\N	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_unidirectional-join-table-repair-ran	true	boolean	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
31	plugin_content_manager_configuration_content_types::admin::session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"userId","defaultSortBy":"userId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"userId":{"edit":{"label":"userId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"userId","searchable":true,"sortable":true}},"sessionId":{"edit":{"label":"sessionId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessionId","searchable":true,"sortable":true}},"childId":{"edit":{"label":"childId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"childId","searchable":true,"sortable":true}},"deviceId":{"edit":{"label":"deviceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deviceId","searchable":true,"sortable":true}},"origin":{"edit":{"label":"origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"origin","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"absoluteExpiresAt":{"edit":{"label":"absoluteExpiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"absoluteExpiresAt","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","userId","sessionId","childId"],"edit":[[{"name":"userId","size":6},{"name":"sessionId","size":6}],[{"name":"childId","size":6},{"name":"deviceId","size":6}],[{"name":"origin","size":6},{"name":"expiresAt","size":6}],[{"name":"absoluteExpiresAt","size":6},{"name":"status","size":6}],[{"name":"type","size":6}]]},"uid":"admin::session"}	object	\N	\N
33	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false,"aiMetadata":true}	object	\N	\N
34	core_persisted_tables	[{"name":"strapi_history_versions"}]	object	\N	\N
35	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
37	plugin_i18n_default_locale	"en"	string	\N	\N
38	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
39	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
24	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"encryptedKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
43	type_setup_initHasRun	true	boolean	development	\N
41	ee_disabled_users	[]	object	\N	\N
18	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
36	plugin_upload_metrics	{"weeklySchedule":"54 17 9 * * 1","lastWeeklyUpdate":1775456274803}	object	\N	\N
42	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
27	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
29	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
30	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
40	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
2	ee_information	{"lastCheckAt":1769518377596,"license":"RWdXaWJMRlFkUDVsbEllSWRZL0dCeENLNFFMWS9FMFh2TmJ1TnBta25qWWNKRjU0a0JnK2drMkpoTDJQQmQvWENSVmp3c3d4ZUtoWHd0NzE4RGowSGdoTndKSWloSzc1RURiaFkzbThEY05WVzRJUW8xWnRjVnc3eVUvL1FFU2c2eTBiT0JHQnd0eXJ3dDJLbXFFUDh6aVBmdXp1S3ZuOFFsd3FPeDhNTngyOUtENkpHMHF4ck1qWU9EaDlGUEd0RUtDa2lSQTlhVzRpT0o1MHlGZVEza3g2U1E4WmRZQjdieUx0Vnp2Tm9nUUFPWFpodHFjR1doaExBYzZHYWtqeTBmZHpyaGFTOFF0MTZCZjFWay8yUC8zOGNYek5NQi9ueXluZ3hZbHFNMU52SFMyTS85cmlyV3pOK0xhNEZJZDBTczJjWFFuMnZJWFJzYWkzd3drcjRnPT0KZXlKc2FXTmxibk5sUzJWNUlqb2lNV1ZtTmpOaFlUUXRZbU01TUMwME9EWXlMV0l3WVdFdFpEYzNaamczWXpCaE9USTFJaXdpZEhsd1pTSTZJbk5wYkhabGNpSXNJbWx6VkhKcFlXd2lPblJ5ZFdVc0ltVjRjR2x5WlVGMElqb3hOelk1TmpreE1UYzRNVEEzTENKelpXRjBjeUk2TVRBd01Dd2labVZoZEhWeVpYTWlPbHQ3SW01aGJXVWlPaUp6YzI4aWZTeDdJbTVoYldVaU9pSmpiWE10WVdraUxDSnZjSFJwYjI1eklqcDdJbU55WldScGRITkNZWE5sSWpveE1Dd2lZM0psWkdsMGMwMWhlRlZ6WVdkbElqb3hNSDE5TEhzaWJtRnRaU0k2SW1OdGN5MWpiMjUwWlc1MExXaHBjM1J2Y25raUxDSnZjSFJwYjI1eklqcDdJbkpsZEdWdWRHbHZia1JoZVhNaU9qTXdmWDBzZXlKdVlXMWxJam9pWTIxekxXRmtkbUZ1WTJWa0xYQnlaWFpwWlhjaWZTeDdJbTVoYldVaU9pSmpiWE10WTI5dWRHVnVkQzF5Wld4bFlYTmxjeUlzSW05d2RHbHZibk1pT25zaWJXRjRhVzExYlZKbGJHVmhjMlZ6SWpvNU9UazVPVGw5ZlYwc0ltTjFjM1J2YldWeVNXUWlPaUkyYjJ0TldGWTJXblpGTkZvMFNWZExJaXdpYzNWaWMyTnlhWEIwYVc5dVNXUWlPaUkyYjNCUmFsWTVVR0ZrUzJSRFFsUlBJaXdpY0d4aGJsQnlhV05sU1dRaU9pSm5jbTkzZEdndGMzTnZMV05zYVMxMk1pMVZVMFF0VFc5dWRHaHNlU0o5"}	\N	\N	\N
44	plugin_content_manager_configuration_content_types::api::contact-message.contact-message	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"phone_number":{"edit":{"label":"phone_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"phone_number","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"message":{"edit":{"label":"message","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"message","searchable":true,"sortable":true}},"status_field":{"edit":{"label":"status_field","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status_field","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","email","phone_number"],"edit":[[{"name":"name","size":6}],[{"name":"email","size":6},{"name":"subject","size":6}],[{"name":"message","size":6},{"name":"status_field","size":6}],[{"name":"phone_number","size":6}]]},"uid":"api::contact-message.contact-message"}	object	\N	\N
54	plugin_content_manager_configuration_components::schedule.bus-trip	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"time","defaultSortBy":"time","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"time":{"edit":{"label":"time","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"time","searchable":true,"sortable":true}},"note":{"edit":{"label":"note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"note","searchable":true,"sortable":true}},"is_short":{"edit":{"label":"is_short","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"is_short","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","time","note","is_short"],"edit":[[{"name":"time","size":6},{"name":"note","size":6}],[{"name":"is_short","size":4}]]},"uid":"schedule.bus-trip","isComponent":true}	object	\N	\N
60	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","slug","createdAt"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}]]},"uid":"api::category.category"}	object	\N	\N
56	plugin_content_manager_configuration_content_types::api::route.route	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"number","defaultSortBy":"number","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"number":{"edit":{"label":"number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"number","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"schedule":{"edit":{"label":"schedule","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"schedule","searchable":false,"sortable":false}},"intervalTime":{"edit":{"label":"intervalTime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"intervalTime","searchable":true,"sortable":true}},"stops":{"edit":{"label":"stops","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"stops","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","number","title","schedule"],"edit":[[{"name":"number","size":6},{"name":"title","size":6}],[{"name":"schedule","size":12}],[{"name":"intervalTime","size":6},{"name":"stops","size":6}]]},"uid":"api::route.route"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"focalPoint":{"edit":{"label":"focalPoint","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"focalPoint","searchable":false,"sortable":false}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}],[{"name":"focalPoint","size":12}]]},"uid":"plugin::upload.file"}	object	\N	\N
3	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true,"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","uid":"plugin::users-permissions.user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::article-new.article-new":{"kind":"collectionType","collectionName":"article_news","info":{"singularName":"article-new","pluralName":"article-news","displayName":"article-new"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"content":{"type":"blocks"},"cover":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"excerpt":{"type":"string"},"slug":{"type":"uid","targetField":"title"},"category":{"type":"relation","relation":"oneToOne","target":"api::category.category"},"timePublishedAt":{"type":"datetime"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::article-new.article-new","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"article_news"}}},"apiName":"article-new","globalId":"ArticleNew","uid":"api::article-new.article-new","modelType":"contentType","__schema__":{"collectionName":"article_news","info":{"singularName":"article-new","pluralName":"article-news","displayName":"article-new"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"content":{"type":"blocks"},"cover":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"excerpt":{"type":"string"},"slug":{"type":"uid","targetField":"title"},"category":{"type":"relation","relation":"oneToOne","target":"api::category.category"},"timePublishedAt":{"type":"datetime"}},"kind":"collectionType"},"modelName":"article-new","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"category"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid","targetField":"name"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::category.category","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"categories"}}},"apiName":"category","globalId":"Category","uid":"api::category.category","modelType":"contentType","__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"category"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"slug":{"type":"uid","targetField":"name"}},"kind":"collectionType"},"modelName":"category","actions":{},"lifecycles":{}},"api::contact-message.contact-message":{"kind":"collectionType","collectionName":"contact_messages","info":{"singularName":"contact-message","pluralName":"contact-messages","displayName":"contact-message"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"phone_number":{"type":"string","required":true},"email":{"type":"email","required":true,"unique":false},"subject":{"type":"string","required":true},"message":{"type":"text","required":true},"status_field":{"type":"enumeration","required":true,"default":"new","enum":["new","in_progress","resolved"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::contact-message.contact-message","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"contact_messages"}}},"apiName":"contact-message","globalId":"ContactMessage","uid":"api::contact-message.contact-message","modelType":"contentType","__schema__":{"collectionName":"contact_messages","info":{"singularName":"contact-message","pluralName":"contact-messages","displayName":"contact-message"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"phone_number":{"type":"string","required":true},"email":{"type":"email","required":true,"unique":false},"subject":{"type":"string","required":true},"message":{"type":"text","required":true},"status_field":{"type":"enumeration","required":true,"default":"new","enum":["new","in_progress","resolved"]}},"kind":"collectionType"},"modelName":"contact-message","actions":{},"lifecycles":{}},"api::route.route":{"kind":"collectionType","collectionName":"routes","info":{"singularName":"route","pluralName":"routes","displayName":"Route"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"number":{"type":"string"},"title":{"type":"string"},"schedule":{"type":"component","component":"schedule.bus-direction","repeatable":true},"intervalTime":{"type":"string"},"stops":{"type":"relation","relation":"oneToMany","target":"api::route-stop.route-stop","mappedBy":"route"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::route.route","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"routes"}}},"apiName":"route","globalId":"Route","uid":"api::route.route","modelType":"contentType","__schema__":{"collectionName":"routes","info":{"singularName":"route","pluralName":"routes","displayName":"Route"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"number":{"type":"string"},"title":{"type":"string"},"schedule":{"type":"component","component":"schedule.bus-direction","repeatable":true},"intervalTime":{"type":"string"},"stops":{"type":"relation","relation":"oneToMany","target":"api::route-stop.route-stop","mappedBy":"route"}},"kind":"collectionType"},"modelName":"route","actions":{},"lifecycles":{}},"api::route-stop.route-stop":{"kind":"collectionType","collectionName":"route_stops","info":{"singularName":"route-stop","pluralName":"route-stops","displayName":"Route Stop"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Order":{"type":"integer"},"direction":{"type":"enumeration","enum":["forward","backward"]},"onDemand":{"type":"boolean"},"route":{"type":"relation","relation":"manyToOne","target":"api::route.route","inversedBy":"stops"},"stop":{"type":"relation","relation":"manyToOne","target":"api::stop.stop","inversedBy":"route_stops"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::route-stop.route-stop","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"route_stops"}}},"apiName":"route-stop","globalId":"RouteStop","uid":"api::route-stop.route-stop","modelType":"contentType","__schema__":{"collectionName":"route_stops","info":{"singularName":"route-stop","pluralName":"route-stops","displayName":"Route Stop"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"Order":{"type":"integer"},"direction":{"type":"enumeration","enum":["forward","backward"]},"onDemand":{"type":"boolean"},"route":{"type":"relation","relation":"manyToOne","target":"api::route.route","inversedBy":"stops"},"stop":{"type":"relation","relation":"manyToOne","target":"api::stop.stop","inversedBy":"route_stops"}},"kind":"collectionType"},"modelName":"route-stop","actions":{},"lifecycles":{}},"api::stop.stop":{"kind":"collectionType","collectionName":"stops","info":{"singularName":"stop","pluralName":"stops","displayName":"stop"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"note":{"type":"string"},"route_stops":{"type":"relation","relation":"oneToMany","target":"api::route-stop.route-stop","mappedBy":"stop"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::stop.stop","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"stops"}}},"apiName":"stop","globalId":"Stop","uid":"api::stop.stop","modelType":"contentType","__schema__":{"collectionName":"stops","info":{"singularName":"stop","pluralName":"stops","displayName":"stop"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"note":{"type":"string"},"route_stops":{"type":"relation","relation":"oneToMany","target":"api::route-stop.route-stop","mappedBy":"stop"}},"kind":"collectionType"},"modelName":"stop","actions":{},"lifecycles":{}},"api::vacancy.vacancy":{"kind":"collectionType","collectionName":"vacancies","info":{"singularName":"vacancy","pluralName":"vacancies","displayName":"vacancy"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"blocks"},"timePublishedAt":{"type":"datetime"},"contactNumber":{"type":"string"},"slug":{"type":"uid","targetField":"title"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::vacancy.vacancy","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"vacancies"}}},"apiName":"vacancy","globalId":"Vacancy","uid":"api::vacancy.vacancy","modelType":"contentType","__schema__":{"collectionName":"vacancies","info":{"singularName":"vacancy","pluralName":"vacancies","displayName":"vacancy"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"blocks"},"timePublishedAt":{"type":"datetime"},"contactNumber":{"type":"string"},"slug":{"type":"uid","targetField":"title"}},"kind":"collectionType"},"modelName":"vacancy","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
59	plugin_content_manager_configuration_content_types::api::article-new.article-new	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"cover":{"edit":{"label":"cover","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cover","searchable":false,"sortable":false}},"excerpt":{"edit":{"label":"excerpt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"excerpt","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"category","searchable":true,"sortable":true}},"timePublishedAt":{"edit":{"label":"timePublishedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timePublishedAt","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","cover","excerpt"],"edit":[[{"name":"title","size":6},{"name":"cover","size":6}],[{"name":"excerpt","size":6},{"name":"slug","size":6}],[{"name":"category","size":6},{"name":"timePublishedAt","size":6}],[{"name":"content","size":12}]]},"uid":"api::article-new.article-new"}	object	\N	\N
55	plugin_content_manager_configuration_components::schedule.bus-direction	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"endpoint_name","defaultSortBy":"endpoint_name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"endpoint_name":{"edit":{"label":"endpoint_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"endpoint_name","searchable":true,"sortable":true}},"trips":{"edit":{"label":"trips","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"trips","searchable":false,"sortable":false}},"isWeekend":{"edit":{"label":"isWeekend","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isWeekend","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","endpoint_name","trips","isWeekend"],"edit":[[{"name":"endpoint_name","size":6}],[{"name":"trips","size":12}],[{"name":"isWeekend","size":4}]]},"uid":"schedule.bus-direction","isComponent":true}	object	\N	\N
61	plugin_content_manager_configuration_content_types::api::vacancy.vacancy	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"timePublishedAt":{"edit":{"label":"timePublishedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timePublishedAt","searchable":true,"sortable":true}},"contactNumber":{"edit":{"label":"contactNumber","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contactNumber","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","timePublishedAt","createdAt"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}],[{"name":"timePublishedAt","size":6},{"name":"contactNumber","size":6}],[{"name":"slug","size":6}]]},"uid":"api::vacancy.vacancy"}	object	\N	\N
63	plugin_content_manager_configuration_content_types::api::route-stop.route-stop	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Order":{"edit":{"label":"Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Order","searchable":true,"sortable":true}},"direction":{"edit":{"label":"direction","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"direction","searchable":true,"sortable":true}},"onDemand":{"edit":{"label":"onDemand","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"onDemand","searchable":true,"sortable":true}},"route":{"edit":{"label":"route","description":"","placeholder":"","visible":true,"editable":true,"mainField":"number"},"list":{"label":"route","searchable":true,"sortable":true}},"stop":{"edit":{"label":"stop","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stop","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","Order","direction","onDemand"],"edit":[[{"name":"Order","size":4},{"name":"direction","size":6}],[{"name":"onDemand","size":4}],[{"name":"stop","size":6},{"name":"route","size":6}]]},"uid":"api::route-stop.route-stop"}	object	\N	\N
62	plugin_content_manager_configuration_content_types::api::stop.stop	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"note":{"edit":{"label":"note","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"note","searchable":true,"sortable":true}},"route_stops":{"edit":{"label":"route_stops","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"route_stops","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","note","createdAt"],"edit":[[{"name":"name","size":6},{"name":"note","size":6}],[{"name":"route_stops","size":6}]]},"uid":"api::stop.stop"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
37	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"focal_point","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"article_news","indexes":[{"name":"article_news_documents_idx","columns":["document_id","locale","published_at"]},{"name":"article_news_created_by_id_fk","columns":["created_by_id"]},{"name":"article_news_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"article_news_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"article_news_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"excerpt","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"time_published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_documents_idx","columns":["document_id","locale","published_at"]},{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"contact_messages","indexes":[{"name":"contact_messages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"contact_messages_created_by_id_fk","columns":["created_by_id"]},{"name":"contact_messages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contact_messages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contact_messages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"phone_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"message","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status_field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"routes_cmps","indexes":[{"name":"routes_field_idx","columns":["field"]},{"name":"routes_component_type_idx","columns":["component_type"]},{"name":"routes_entity_fk","columns":["entity_id"]},{"name":"routes_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"routes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"routes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"routes","indexes":[{"name":"routes_documents_idx","columns":["document_id","locale","published_at"]},{"name":"routes_created_by_id_fk","columns":["created_by_id"]},{"name":"routes_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"routes_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"routes_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"interval_time","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"route_stops","indexes":[{"name":"route_stops_documents_idx","columns":["document_id","locale","published_at"]},{"name":"route_stops_created_by_id_fk","columns":["created_by_id"]},{"name":"route_stops_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"route_stops_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"route_stops_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"direction","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"on_demand","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"stops","indexes":[{"name":"stops_documents_idx","columns":["document_id","locale","published_at"]},{"name":"stops_created_by_id_fk","columns":["created_by_id"]},{"name":"stops_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"stops_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"stops_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"vacancies","indexes":[{"name":"vacancies_documents_idx","columns":["document_id","locale","published_at"]},{"name":"vacancies_created_by_id_fk","columns":["created_by_id"]},{"name":"vacancies_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"vacancies_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"vacancies_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"time_published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"contact_number","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_schedule_bus_trips","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"time","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"note","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_short","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_schedule_bus_directions_cmps","indexes":[{"name":"components_schedule_bus_directions_field_idx","columns":["field"]},{"name":"components_schedule_bus_directions_component_type_idx","columns":["component_type"]},{"name":"components_schedule_bus_directions_entity_fk","columns":["entity_id"]},{"name":"components_schedule_bus_directions_uq","columns":["entity_id","cmp_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_schedule_bus_directions_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_schedule_bus_directions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"cmp_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_schedule_bus_directions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"endpoint_name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_weekend","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_metadata_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"completed_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"article_news_category_lnk","indexes":[{"name":"article_news_category_lnk_fk","columns":["article_new_id"]},{"name":"article_news_category_lnk_ifk","columns":["category_id"]},{"name":"article_news_category_lnk_uq","columns":["article_new_id","category_id"],"type":"unique"}],"foreignKeys":[{"name":"article_news_category_lnk_fk","columns":["article_new_id"],"referencedColumns":["id"],"referencedTable":"article_news","onDelete":"CASCADE"},{"name":"article_news_category_lnk_ifk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_new_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"route_stops_route_lnk","indexes":[{"name":"route_stops_route_lnk_fk","columns":["route_stop_id"]},{"name":"route_stops_route_lnk_ifk","columns":["route_id"]},{"name":"route_stops_route_lnk_uq","columns":["route_stop_id","route_id"],"type":"unique"},{"name":"route_stops_route_lnk_oifk","columns":["route_stop_ord"]}],"foreignKeys":[{"name":"route_stops_route_lnk_fk","columns":["route_stop_id"],"referencedColumns":["id"],"referencedTable":"route_stops","onDelete":"CASCADE"},{"name":"route_stops_route_lnk_ifk","columns":["route_id"],"referencedColumns":["id"],"referencedTable":"routes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"route_stop_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"route_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"route_stop_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"route_stops_stop_lnk","indexes":[{"name":"route_stops_stop_lnk_fk","columns":["route_stop_id"]},{"name":"route_stops_stop_lnk_ifk","columns":["stop_id"]},{"name":"route_stops_stop_lnk_uq","columns":["route_stop_id","stop_id"],"type":"unique"},{"name":"route_stops_stop_lnk_oifk","columns":["route_stop_ord"]}],"foreignKeys":[{"name":"route_stops_stop_lnk_fk","columns":["route_stop_id"],"referencedColumns":["id"],"referencedTable":"route_stops","onDelete":"CASCADE"},{"name":"route_stops_stop_lnk_ifk","columns":["stop_id"],"referencedColumns":["id"],"referencedTable":"stops","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"route_stop_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"stop_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"route_stop_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-04-11 13:08:08.883	5eea9e65a979ad74f1181e3f754d847e1e52e7df8cabe9f653371381f42e0ab6
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2026-01-26 14:36:43.075
2	5.0.0-02-created-document-id	2026-01-26 14:36:43.138
3	5.0.0-03-created-locale	2026-01-26 14:36:43.194
4	5.0.0-04-created-published-at	2026-01-26 14:36:43.254
5	5.0.0-05-drop-slug-fields-index	2026-01-26 14:36:43.303
6	core::5.0.0-discard-drafts	2026-01-26 14:36:43.354
7	content-releases::5.0.0-add-entry-document-id-to-release-actions	2026-01-26 14:36:43.359
8	5.0.0-06-add-document-id-indexes	2026-03-29 22:13:06.089
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_sessions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
39	tj0iaai929ye8k5jic43ac9j	1	83a81b3d696106c6bcff5164fbdcc278	5965f1c3f63e8894439e59812a214b9e	2eab0aed-2a62-47e2-a76b-ddf3a1f1f941	admin	2026-04-11 19:26:19.818	2026-05-11 17:26:19.818	rotated	session	2026-04-11 17:26:19.818	2026-04-11 18:14:53.935	2026-04-11 17:26:19.818	\N	\N	\N
41	kbarnwon4rljo8bdy5czdgn7	1	169a0ad25de5d3a99b01503c880ae0ab	\N	2eab0aed-2a62-47e2-a76b-ddf3a1f1f941	admin	2026-04-11 20:54:19.708	2026-05-11 17:26:19.818	active	session	2026-04-11 18:54:19.709	2026-04-11 18:54:19.709	2026-04-11 18:54:19.709	\N	\N	\N
40	sleh7x0lhck1ekv6s5zj4lka	1	5965f1c3f63e8894439e59812a214b9e	169a0ad25de5d3a99b01503c880ae0ab	2eab0aed-2a62-47e2-a76b-ddf3a1f1f941	admin	2026-04-11 20:14:53.929	2026-05-11 17:26:19.818	rotated	session	2026-04-11 18:14:53.929	2026-04-11 18:54:19.714	2026-04-11 18:14:53.93	\N	\N	\N
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	cosshij4qxc5re1bt7mj6zol	plugin::users-permissions.auth.logout	2026-01-26 14:36:48.071	2026-01-26 14:36:48.071	2026-01-26 14:36:48.072	\N	\N	\N
2	ov2aniuzviy58rq6u1ls6f13	plugin::users-permissions.user.me	2026-01-26 14:36:48.072	2026-01-26 14:36:48.072	2026-01-26 14:36:48.072	\N	\N	\N
3	yc1hh4dnimsseib7jryjyejm	plugin::users-permissions.auth.changePassword	2026-01-26 14:36:48.072	2026-01-26 14:36:48.072	2026-01-26 14:36:48.073	\N	\N	\N
4	ffn90fpzn9dsyfyhit1cg3go	plugin::users-permissions.auth.callback	2026-01-26 14:36:48.1	2026-01-26 14:36:48.1	2026-01-26 14:36:48.101	\N	\N	\N
5	fcype56pdhfyy1nq8zpjmhov	plugin::users-permissions.auth.connect	2026-01-26 14:36:48.1	2026-01-26 14:36:48.1	2026-01-26 14:36:48.101	\N	\N	\N
6	antlguabweh3uz25k2d61e1n	plugin::users-permissions.auth.forgotPassword	2026-01-26 14:36:48.1	2026-01-26 14:36:48.1	2026-01-26 14:36:48.101	\N	\N	\N
7	e6ptfrbsj2epj2rjh77s3a47	plugin::users-permissions.auth.register	2026-01-26 14:36:48.101	2026-01-26 14:36:48.101	2026-01-26 14:36:48.102	\N	\N	\N
8	ak0u9rhzic0as3s9hddz9jsm	plugin::users-permissions.auth.resetPassword	2026-01-26 14:36:48.101	2026-01-26 14:36:48.101	2026-01-26 14:36:48.102	\N	\N	\N
9	mjb6e5lod3aw9c401l17k0nl	plugin::users-permissions.auth.emailConfirmation	2026-01-26 14:36:48.101	2026-01-26 14:36:48.101	2026-01-26 14:36:48.102	\N	\N	\N
10	wlbkheg5x3j1gwbr1i9yvzzv	plugin::users-permissions.auth.sendEmailConfirmation	2026-01-26 14:36:48.101	2026-01-26 14:36:48.101	2026-01-26 14:36:48.102	\N	\N	\N
11	vkbanz8lq9m64hzn844ybrrd	plugin::users-permissions.auth.refresh	2026-01-26 14:36:48.101	2026-01-26 14:36:48.101	2026-01-26 14:36:48.102	\N	\N	\N
22	noksub7670lh4llzpesinkun	api::contact-message.contact-message.find	2026-03-11 10:32:19.715	2026-03-11 10:32:19.715	2026-03-11 10:32:19.715	\N	\N	\N
23	ea3fwdp40qwh6vf3662i711s	api::contact-message.contact-message.create	2026-03-11 10:32:19.715	2026-03-11 10:32:19.715	2026-03-11 10:32:19.717	\N	\N	\N
24	x2elb1shfmavfc47e9f6h2wu	api::contact-message.contact-message.findOne	2026-03-11 10:32:19.715	2026-03-11 10:32:19.715	2026-03-11 10:32:19.716	\N	\N	\N
25	j8qhib4vovsr33l1ffmhhazx	api::contact-message.contact-message.update	2026-03-11 10:32:19.715	2026-03-11 10:32:19.715	2026-03-11 10:32:19.717	\N	\N	\N
26	ltizr12sjc4rbz0ay2o830i2	api::contact-message.contact-message.delete	2026-03-11 10:32:19.715	2026-03-11 10:32:19.715	2026-03-11 10:32:19.717	\N	\N	\N
27	uttemo91pizy586wwhczyfup	api::route.route.find	2026-03-23 08:05:07.507	2026-03-23 08:05:07.507	2026-03-23 08:05:07.509	\N	\N	\N
28	gg5o9z9inuc6578wr0g23k4c	api::route.route.findOne	2026-03-23 08:05:07.507	2026-03-23 08:05:07.507	2026-03-23 08:05:07.51	\N	\N	\N
31	dub9hb433lutdmo5gks0187d	api::article-new.article-new.find	2026-04-07 21:41:45.907	2026-04-07 21:41:45.907	2026-04-07 21:41:45.908	\N	\N	\N
32	i0df0myw1acia0kndyxxkd0h	api::article-new.article-new.findOne	2026-04-07 21:41:45.907	2026-04-07 21:41:45.907	2026-04-07 21:41:45.909	\N	\N	\N
33	ox3tgeusb3vgdxq3dg83pwzf	api::category.category.find	2026-04-07 21:44:17.954	2026-04-07 21:44:17.954	2026-04-07 21:44:17.955	\N	\N	\N
34	cjikhlzdpbpf9jyxh0fks7wy	api::category.category.findOne	2026-04-07 21:44:17.954	2026-04-07 21:44:17.954	2026-04-07 21:44:17.955	\N	\N	\N
35	l5sdbjkdyduse2q967cfb4lp	api::vacancy.vacancy.find	2026-04-10 13:06:30.882	2026-04-10 13:06:30.882	2026-04-10 13:06:30.882	\N	\N	\N
36	il1j3aag5wlrbm21qhqojc6g	api::vacancy.vacancy.findOne	2026-04-10 13:06:30.882	2026-04-10 13:06:30.882	2026-04-10 13:06:30.883	\N	\N	\N
37	logy4z9d7z0wqxfeyf4gvu30	api::route-stop.route-stop.find	2026-04-11 13:00:30.122	2026-04-11 13:00:30.122	2026-04-11 13:00:30.123	\N	\N	\N
39	oim7p0o0xcgxjyuc4suvbtbo	api::stop.stop.findOne	2026-04-11 13:00:30.122	2026-04-11 13:00:30.122	2026-04-11 13:00:30.123	\N	\N	\N
38	a3v1ayynvthten2gmqdpb7bd	api::route-stop.route-stop.findOne	2026-04-11 13:00:30.122	2026-04-11 13:00:30.122	2026-04-11 13:00:30.123	\N	\N	\N
40	sdpx21phk86r3m8nh8lwhk67	api::stop.stop.find	2026-04-11 13:00:30.122	2026-04-11 13:00:30.122	2026-04-11 13:00:30.123	\N	\N	\N
41	np5yv7fcjaobqkwuquglyyio	api::route.route.create	2026-04-11 13:54:58.542	2026-04-11 13:54:58.542	2026-04-11 13:54:58.543	\N	\N	\N
42	gnjfr29psu686aghiywed9ab	api::route.route.update	2026-04-11 13:54:58.542	2026-04-11 13:54:58.542	2026-04-11 13:54:58.543	\N	\N	\N
43	ra0wglh9t6qyqlc40ee15kg8	api::route.route.delete	2026-04-11 13:54:58.542	2026-04-11 13:54:58.542	2026-04-11 13:54:58.544	\N	\N	\N
44	vtbg5yoaunliuvslqbowi9qb	api::route-stop.route-stop.create	2026-04-11 13:54:58.542	2026-04-11 13:54:58.542	2026-04-11 13:54:58.544	\N	\N	\N
45	or6v5bwu3i5sraa96u4lvlla	api::route-stop.route-stop.update	2026-04-11 13:54:58.542	2026-04-11 13:54:58.542	2026-04-11 13:54:58.545	\N	\N	\N
46	newoibth2ikkp5arhhwzndf5	api::route-stop.route-stop.delete	2026-04-11 13:54:58.542	2026-04-11 13:54:58.542	2026-04-11 13:54:58.545	\N	\N	\N
47	y77s3ggo5e98qr2wjry79be2	api::stop.stop.create	2026-04-11 13:54:58.542	2026-04-11 13:54:58.542	2026-04-11 13:54:58.545	\N	\N	\N
48	ls2hf1xtxsx89vwcbvaoao36	api::stop.stop.update	2026-04-11 13:54:58.542	2026-04-11 13:54:58.542	2026-04-11 13:54:58.545	\N	\N	\N
49	qu8x7el1f0nmdgjkyg3rxnsz	api::stop.stop.delete	2026-04-11 13:54:58.542	2026-04-11 13:54:58.542	2026-04-11 13:54:58.545	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	3	1	1
3	2	1	1
4	4	2	1
5	5	2	1
6	6	2	1
7	8	2	1
8	7	2	1
9	10	2	1
10	9	2	1
11	11	2	2
22	24	2	3
23	23	2	3
24	22	2	3
25	26	2	3
26	25	2	4
27	27	2	5
28	28	2	5
31	31	2	6
32	32	2	6
33	33	2	7
34	34	2	7
35	35	2	8
36	36	2	8
37	37	2	9
38	39	2	9
39	40	2	9
40	38	2	9
41	42	2	10
42	41	2	10
43	44	2	10
44	45	2	10
45	43	2	10
46	49	2	11
47	48	2	11
48	46	2	11
49	47	2	11
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	m2hgtyj02oczxec5c90rv91r	Authenticated	Default role given to authenticated user.	authenticated	2026-01-26 14:36:48.046	2026-01-26 14:36:48.046	2026-01-26 14:36:48.047	\N	\N	\N
2	xs6fxvuu7tlggmm7xb6vrbbm	Public	Default role given to unauthenticated user.	public	2026-01-26 14:36:48.055	2026-04-11 13:54:58.538	2026-01-26 14:36:48.056	\N	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Data for Name: vacancies; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.vacancies (id, document_id, title, description, time_published_at, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, contact_number, slug) FROM stdin;
1	jffqp5m51cn9p4pi47jt8jbr	Бухгалтер	[{"type": "paragraph", "children": [{"text": "Запрошуємо на роботу бухалтера на наше підприємство. Деталі за номером телефону.", "type": "text"}]}]	2026-04-06 17:45:00	2026-04-10 13:03:28.252	2026-04-10 14:14:28.533	\N	1	1	\N	0508180771	buhgalter
3	jffqp5m51cn9p4pi47jt8jbr	Бухгалтер	[{"type": "paragraph", "children": [{"text": "Запрошуємо на роботу бухалтера на наше підприємство. Деталі за номером телефону.", "type": "text"}]}]	2026-04-06 17:45:00	2026-04-10 13:03:28.252	2026-04-10 14:14:28.533	2026-04-10 14:14:28.55	1	1	\N	0508180771	buhgalter
4	hk0gkfmyqw06m7a26ykyub9n	Секретар	\N	\N	2026-04-10 14:26:03.708	2026-04-10 14:26:03.708	\N	1	1	\N	0508180771	sekretar
5	hk0gkfmyqw06m7a26ykyub9n	Секретар	\N	\N	2026-04-10 14:26:03.708	2026-04-10 14:26:03.708	2026-04-10 14:26:03.722	1	1	\N	0508180771	sekretar
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 278, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 278, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 4, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 1, true);


--
-- Name: article_news_category_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_news_category_lnk_id_seq', 9, true);


--
-- Name: article_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_news_id_seq', 10, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.categories_id_seq', 6, true);


--
-- Name: components_schedule_bus_directions_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_schedule_bus_directions_cmps_id_seq', 3229, true);


--
-- Name: components_schedule_bus_directions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_schedule_bus_directions_id_seq', 80, true);


--
-- Name: components_schedule_bus_trips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_schedule_bus_trips_id_seq', 1842, true);


--
-- Name: contact_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.contact_messages_id_seq', 14, true);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_id_seq', 15, true);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 48, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);


--
-- Name: route_stops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.route_stops_id_seq', 3472, true);


--
-- Name: route_stops_route_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.route_stops_route_lnk_id_seq', 3470, true);


--
-- Name: route_stops_stop_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.route_stops_stop_lnk_id_seq', 3472, true);


--
-- Name: routes_cmps_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.routes_cmps_id_seq', 146, true);


--
-- Name: routes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.routes_id_seq', 32, true);


--
-- Name: stops_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.stops_id_seq', 1217, true);


--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_ai_localization_jobs_id_seq', 1, false);


--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_ai_metadata_jobs_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 2, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 63, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 37, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 8, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 41, true);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 49, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 49, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: vacancies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.vacancies_id_seq', 5, true);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: article_news_category_lnk article_news_category_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_news_category_lnk
    ADD CONSTRAINT article_news_category_lnk_pkey PRIMARY KEY (id);


--
-- Name: article_news_category_lnk article_news_category_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_news_category_lnk
    ADD CONSTRAINT article_news_category_lnk_uq UNIQUE (article_new_id, category_id);


--
-- Name: article_news article_news_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_news
    ADD CONSTRAINT article_news_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: components_schedule_bus_directions_cmps components_schedule_bus_directions_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_schedule_bus_directions_cmps
    ADD CONSTRAINT components_schedule_bus_directions_cmps_pkey PRIMARY KEY (id);


--
-- Name: components_schedule_bus_directions components_schedule_bus_directions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_schedule_bus_directions
    ADD CONSTRAINT components_schedule_bus_directions_pkey PRIMARY KEY (id);


--
-- Name: components_schedule_bus_directions_cmps components_schedule_bus_directions_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_schedule_bus_directions_cmps
    ADD CONSTRAINT components_schedule_bus_directions_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: components_schedule_bus_trips components_schedule_bus_trips_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_schedule_bus_trips
    ADD CONSTRAINT components_schedule_bus_trips_pkey PRIMARY KEY (id);


--
-- Name: contact_messages contact_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_messages
    ADD CONSTRAINT contact_messages_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: route_stops route_stops_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops
    ADD CONSTRAINT route_stops_pkey PRIMARY KEY (id);


--
-- Name: route_stops_route_lnk route_stops_route_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops_route_lnk
    ADD CONSTRAINT route_stops_route_lnk_pkey PRIMARY KEY (id);


--
-- Name: route_stops_route_lnk route_stops_route_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops_route_lnk
    ADD CONSTRAINT route_stops_route_lnk_uq UNIQUE (route_stop_id, route_id);


--
-- Name: route_stops_stop_lnk route_stops_stop_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops_stop_lnk
    ADD CONSTRAINT route_stops_stop_lnk_pkey PRIMARY KEY (id);


--
-- Name: route_stops_stop_lnk route_stops_stop_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops_stop_lnk
    ADD CONSTRAINT route_stops_stop_lnk_uq UNIQUE (route_stop_id, stop_id);


--
-- Name: routes_cmps routes_cmps_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.routes_cmps
    ADD CONSTRAINT routes_cmps_pkey PRIMARY KEY (id);


--
-- Name: routes routes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.routes
    ADD CONSTRAINT routes_pkey PRIMARY KEY (id);


--
-- Name: routes_cmps routes_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.routes_cmps
    ADD CONSTRAINT routes_uq UNIQUE (entity_id, cmp_id, field, component_type);


--
-- Name: stops stops_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.stops
    ADD CONSTRAINT stops_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_localization_jobs strapi_ai_localization_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs
    ADD CONSTRAINT strapi_ai_localization_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_metadata_jobs strapi_ai_metadata_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs
    ADD CONSTRAINT strapi_ai_metadata_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_sessions strapi_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: vacancies vacancies_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.vacancies
    ADD CONSTRAINT vacancies_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_document_id_idx ON public.admin_permissions USING btree (document_id);


--
-- Name: admin_permissions_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_document_id_locale_published_at_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_document_id_idx ON public.admin_roles USING btree (document_id);


--
-- Name: admin_roles_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_document_id_locale_published_at_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_document_id_idx ON public.admin_users USING btree (document_id);


--
-- Name: admin_users_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_document_id_locale_published_at_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: article_news_category_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_news_category_lnk_fk ON public.article_news_category_lnk USING btree (article_new_id);


--
-- Name: article_news_category_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_news_category_lnk_ifk ON public.article_news_category_lnk USING btree (category_id);


--
-- Name: article_news_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_news_created_by_id_fk ON public.article_news USING btree (created_by_id);


--
-- Name: article_news_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_news_documents_idx ON public.article_news USING btree (document_id, locale, published_at);


--
-- Name: article_news_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_news_updated_by_id_fk ON public.article_news USING btree (updated_by_id);


--
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- Name: categories_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_documents_idx ON public.categories USING btree (document_id, locale, published_at);


--
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- Name: components_schedule_bus_directions_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_schedule_bus_directions_component_type_idx ON public.components_schedule_bus_directions_cmps USING btree (component_type);


--
-- Name: components_schedule_bus_directions_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_schedule_bus_directions_entity_fk ON public.components_schedule_bus_directions_cmps USING btree (entity_id);


--
-- Name: components_schedule_bus_directions_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_schedule_bus_directions_field_idx ON public.components_schedule_bus_directions_cmps USING btree (field);


--
-- Name: contact_messages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_messages_created_by_id_fk ON public.contact_messages USING btree (created_by_id);


--
-- Name: contact_messages_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_messages_document_id_idx ON public.contact_messages USING btree (document_id);


--
-- Name: contact_messages_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_messages_document_id_locale_published_at_idx ON public.contact_messages USING btree (document_id, locale, published_at);


--
-- Name: contact_messages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_messages_documents_idx ON public.contact_messages USING btree (document_id, locale, published_at);


--
-- Name: contact_messages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX contact_messages_updated_by_id_fk ON public.contact_messages USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_document_id_idx ON public.files USING btree (document_id);


--
-- Name: files_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_document_id_locale_published_at_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_document_id_idx ON public.i18n_locale USING btree (document_id);


--
-- Name: i18n_locale_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_document_id_locale_published_at_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: route_stops_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX route_stops_created_by_id_fk ON public.route_stops USING btree (created_by_id);


--
-- Name: route_stops_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX route_stops_documents_idx ON public.route_stops USING btree (document_id, locale, published_at);


--
-- Name: route_stops_route_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX route_stops_route_lnk_fk ON public.route_stops_route_lnk USING btree (route_stop_id);


--
-- Name: route_stops_route_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX route_stops_route_lnk_ifk ON public.route_stops_route_lnk USING btree (route_id);


--
-- Name: route_stops_route_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX route_stops_route_lnk_oifk ON public.route_stops_route_lnk USING btree (route_stop_ord);


--
-- Name: route_stops_stop_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX route_stops_stop_lnk_fk ON public.route_stops_stop_lnk USING btree (route_stop_id);


--
-- Name: route_stops_stop_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX route_stops_stop_lnk_ifk ON public.route_stops_stop_lnk USING btree (stop_id);


--
-- Name: route_stops_stop_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX route_stops_stop_lnk_oifk ON public.route_stops_stop_lnk USING btree (route_stop_ord);


--
-- Name: route_stops_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX route_stops_updated_by_id_fk ON public.route_stops USING btree (updated_by_id);


--
-- Name: routes_component_type_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX routes_component_type_idx ON public.routes_cmps USING btree (component_type);


--
-- Name: routes_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX routes_created_by_id_fk ON public.routes USING btree (created_by_id);


--
-- Name: routes_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX routes_document_id_idx ON public.routes USING btree (document_id);


--
-- Name: routes_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX routes_document_id_locale_published_at_idx ON public.routes USING btree (document_id, locale, published_at);


--
-- Name: routes_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX routes_documents_idx ON public.routes USING btree (document_id, locale, published_at);


--
-- Name: routes_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX routes_entity_fk ON public.routes_cmps USING btree (entity_id);


--
-- Name: routes_field_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX routes_field_idx ON public.routes_cmps USING btree (field);


--
-- Name: routes_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX routes_updated_by_id_fk ON public.routes USING btree (updated_by_id);


--
-- Name: stops_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX stops_created_by_id_fk ON public.stops USING btree (created_by_id);


--
-- Name: stops_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX stops_documents_idx ON public.stops USING btree (document_id, locale, published_at);


--
-- Name: stops_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX stops_updated_by_id_fk ON public.stops USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_document_id_idx ON public.strapi_api_token_permissions USING btree (document_id);


--
-- Name: strapi_api_token_permissions_document_id_locale_published_at_id; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_document_id_locale_published_at_id ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_document_id_idx ON public.strapi_api_tokens USING btree (document_id);


--
-- Name: strapi_api_tokens_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_document_id_locale_published_at_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_document_id_idx ON public.strapi_release_actions USING btree (document_id);


--
-- Name: strapi_release_actions_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_document_id_locale_published_at_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_document_id_idx ON public.strapi_releases USING btree (document_id);


--
-- Name: strapi_releases_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_document_id_locale_published_at_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_created_by_id_fk ON public.strapi_sessions USING btree (created_by_id);


--
-- Name: strapi_sessions_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_document_id_idx ON public.strapi_sessions USING btree (document_id);


--
-- Name: strapi_sessions_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_document_id_locale_published_at_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_documents_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_sessions_updated_by_id_fk ON public.strapi_sessions USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_document_id_idx ON public.strapi_transfer_token_permissions USING btree (document_id);


--
-- Name: strapi_transfer_token_permissions_document_id_locale_published_; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_document_id_locale_published_ ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_document_id_idx ON public.strapi_transfer_tokens USING btree (document_id);


--
-- Name: strapi_transfer_tokens_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_document_id_locale_published_at_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_document_id_idx ON public.strapi_workflows USING btree (document_id);


--
-- Name: strapi_workflows_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_document_id_locale_published_at_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_document_id_idx ON public.strapi_workflows_stages USING btree (document_id);


--
-- Name: strapi_workflows_stages_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_document_id_locale_published_at_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_document_id_idx ON public.up_permissions USING btree (document_id);


--
-- Name: up_permissions_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_document_id_locale_published_at_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_document_id_idx ON public.up_roles USING btree (document_id);


--
-- Name: up_roles_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_document_id_locale_published_at_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_document_id_idx ON public.up_users USING btree (document_id);


--
-- Name: up_users_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_document_id_locale_published_at_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_document_id_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_document_id_idx ON public.upload_folders USING btree (document_id);


--
-- Name: upload_folders_document_id_locale_published_at_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_document_id_locale_published_at_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: vacancies_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX vacancies_created_by_id_fk ON public.vacancies USING btree (created_by_id);


--
-- Name: vacancies_documents_idx; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX vacancies_documents_idx ON public.vacancies USING btree (document_id, locale, published_at);


--
-- Name: vacancies_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX vacancies_updated_by_id_fk ON public.vacancies USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: article_news_category_lnk article_news_category_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_news_category_lnk
    ADD CONSTRAINT article_news_category_lnk_fk FOREIGN KEY (article_new_id) REFERENCES public.article_news(id) ON DELETE CASCADE;


--
-- Name: article_news_category_lnk article_news_category_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_news_category_lnk
    ADD CONSTRAINT article_news_category_lnk_ifk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: article_news article_news_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_news
    ADD CONSTRAINT article_news_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: article_news article_news_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_news
    ADD CONSTRAINT article_news_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_schedule_bus_directions_cmps components_schedule_bus_directions_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_schedule_bus_directions_cmps
    ADD CONSTRAINT components_schedule_bus_directions_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_schedule_bus_directions(id) ON DELETE CASCADE;


--
-- Name: contact_messages contact_messages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_messages
    ADD CONSTRAINT contact_messages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contact_messages contact_messages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.contact_messages
    ADD CONSTRAINT contact_messages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: route_stops route_stops_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops
    ADD CONSTRAINT route_stops_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: route_stops_route_lnk route_stops_route_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops_route_lnk
    ADD CONSTRAINT route_stops_route_lnk_fk FOREIGN KEY (route_stop_id) REFERENCES public.route_stops(id) ON DELETE CASCADE;


--
-- Name: route_stops_route_lnk route_stops_route_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops_route_lnk
    ADD CONSTRAINT route_stops_route_lnk_ifk FOREIGN KEY (route_id) REFERENCES public.routes(id) ON DELETE CASCADE;


--
-- Name: route_stops_stop_lnk route_stops_stop_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops_stop_lnk
    ADD CONSTRAINT route_stops_stop_lnk_fk FOREIGN KEY (route_stop_id) REFERENCES public.route_stops(id) ON DELETE CASCADE;


--
-- Name: route_stops_stop_lnk route_stops_stop_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops_stop_lnk
    ADD CONSTRAINT route_stops_stop_lnk_ifk FOREIGN KEY (stop_id) REFERENCES public.stops(id) ON DELETE CASCADE;


--
-- Name: route_stops route_stops_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.route_stops
    ADD CONSTRAINT route_stops_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: routes routes_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.routes
    ADD CONSTRAINT routes_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: routes_cmps routes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.routes_cmps
    ADD CONSTRAINT routes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.routes(id) ON DELETE CASCADE;


--
-- Name: routes routes_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.routes
    ADD CONSTRAINT routes_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stops stops_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.stops
    ADD CONSTRAINT stops_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stops stops_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.stops
    ADD CONSTRAINT stops_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: vacancies vacancies_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.vacancies
    ADD CONSTRAINT vacancies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: vacancies vacancies_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.vacancies
    ADD CONSTRAINT vacancies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict aqQNKT8ahunInee8U9BZ12qow2oSgwk40AARiJQuUtLqXMyOac7rMygQAWfhena

