--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO bank;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO bank;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO bank;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO bank;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO bank;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO bank;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO bank;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO bank;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO bank;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO bank;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO bank;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO bank;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO bank;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO bank;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO bank;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO bank;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO bank;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO bank;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO bank;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO bank;

--
-- Name: mhbank_account; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_account (
    id integer NOT NULL,
    phone_number character varying(20) NOT NULL,
    scientific_rate integer NOT NULL,
    contribution_rate integer NOT NULL,
    email character varying(200) NOT NULL,
    role character varying(1) NOT NULL,
    user_id integer,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL
);


ALTER TABLE public.mhbank_account OWNER TO bank;

--
-- Name: mhbank_account_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_account_id_seq OWNER TO bank;

--
-- Name: mhbank_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_account_id_seq OWNED BY public.mhbank_account.id;


--
-- Name: mhbank_answer; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_answer (
    id integer NOT NULL,
    text text NOT NULL,
    account_id integer NOT NULL,
    question_id integer,
    change_date timestamp with time zone,
    publish_date timestamp with time zone
);


ALTER TABLE public.mhbank_answer OWNER TO bank;

--
-- Name: mhbank_answer_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_answer_id_seq OWNER TO bank;

--
-- Name: mhbank_answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_answer_id_seq OWNED BY public.mhbank_answer.id;


--
-- Name: mhbank_attempt; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_attempt (
    id integer NOT NULL,
    "time" integer NOT NULL,
    date timestamp with time zone NOT NULL,
    account_id integer NOT NULL,
    event_id integer NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.mhbank_attempt OWNER TO bank;

--
-- Name: mhbank_attempt_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_attempt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_attempt_id_seq OWNER TO bank;

--
-- Name: mhbank_attempt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_attempt_id_seq OWNED BY public.mhbank_attempt.id;


--
-- Name: mhbank_event; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_event (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.mhbank_event OWNER TO bank;

--
-- Name: mhbank_event_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_event_id_seq OWNER TO bank;

--
-- Name: mhbank_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_event_id_seq OWNED BY public.mhbank_event.id;


--
-- Name: mhbank_guidance; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_guidance (
    id integer NOT NULL,
    text text NOT NULL,
    answer_id integer NOT NULL,
    change_date timestamp with time zone,
    publish_date timestamp with time zone
);


ALTER TABLE public.mhbank_guidance OWNER TO bank;

--
-- Name: mhbank_guidance_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_guidance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_guidance_id_seq OWNER TO bank;

--
-- Name: mhbank_guidance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_guidance_id_seq OWNED BY public.mhbank_guidance.id;


--
-- Name: mhbank_hardness; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_hardness (
    id integer NOT NULL,
    level integer NOT NULL,
    appropriate_grades_min integer NOT NULL,
    appropriate_grades_max integer NOT NULL,
    question_id integer
);


ALTER TABLE public.mhbank_hardness OWNER TO bank;

--
-- Name: mhbank_hardness_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_hardness_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_hardness_id_seq OWNER TO bank;

--
-- Name: mhbank_hardness_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_hardness_id_seq OWNED BY public.mhbank_hardness.id;


--
-- Name: mhbank_question; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_question (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    verification_status character varying(50) NOT NULL,
    text text NOT NULL,
    publish_date timestamp with time zone NOT NULL,
    question_maker_id integer NOT NULL,
    source_id integer,
    verification_comment character varying(1000),
    change_date timestamp with time zone
);


ALTER TABLE public.mhbank_question OWNER TO bank;

--
-- Name: mhbank_question_events; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_question_events (
    id integer NOT NULL,
    question_id integer NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE public.mhbank_question_events OWNER TO bank;

--
-- Name: mhbank_question_events_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_question_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_question_events_id_seq OWNER TO bank;

--
-- Name: mhbank_question_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_question_events_id_seq OWNED BY public.mhbank_question_events.id;


--
-- Name: mhbank_question_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_question_id_seq OWNER TO bank;

--
-- Name: mhbank_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_question_id_seq OWNED BY public.mhbank_question.id;


--
-- Name: mhbank_question_sub_tags; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_question_sub_tags (
    id integer NOT NULL,
    question_id integer NOT NULL,
    sub_tag_id integer NOT NULL
);


ALTER TABLE public.mhbank_question_sub_tags OWNER TO bank;

--
-- Name: mhbank_question_sub_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_question_sub_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_question_sub_tags_id_seq OWNER TO bank;

--
-- Name: mhbank_question_sub_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_question_sub_tags_id_seq OWNED BY public.mhbank_question_sub_tags.id;


--
-- Name: mhbank_question_tags; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_question_tags (
    id integer NOT NULL,
    question_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.mhbank_question_tags OWNER TO bank;

--
-- Name: mhbank_question_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_question_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_question_tags_id_seq OWNER TO bank;

--
-- Name: mhbank_question_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_question_tags_id_seq OWNED BY public.mhbank_question_tags.id;


--
-- Name: mhbank_source; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_source (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.mhbank_source OWNER TO bank;

--
-- Name: mhbank_source_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_source_id_seq OWNER TO bank;

--
-- Name: mhbank_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_source_id_seq OWNED BY public.mhbank_source.id;


--
-- Name: mhbank_sub_tag; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_sub_tag (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    parent_id integer NOT NULL
);


ALTER TABLE public.mhbank_sub_tag OWNER TO bank;

--
-- Name: mhbank_sub_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_sub_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_sub_tag_id_seq OWNER TO bank;

--
-- Name: mhbank_sub_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_sub_tag_id_seq OWNED BY public.mhbank_sub_tag.id;


--
-- Name: mhbank_tag; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_tag (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.mhbank_tag OWNER TO bank;

--
-- Name: mhbank_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_tag_id_seq OWNER TO bank;

--
-- Name: mhbank_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_tag_id_seq OWNED BY public.mhbank_tag.id;


--
-- Name: mhbank_teach_box; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_teach_box (
    id integer NOT NULL,
    goal character varying(1000),
    expectations character varying(1000),
    "time" time without time zone,
    "generalـprocess" character varying(3000) NOT NULL,
    answer_id integer NOT NULL,
    change_date timestamp with time zone,
    publish_date timestamp with time zone
);


ALTER TABLE public.mhbank_teach_box OWNER TO bank;

--
-- Name: mhbank_teach_box_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_teach_box_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_teach_box_id_seq OWNER TO bank;

--
-- Name: mhbank_teach_box_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_teach_box_id_seq OWNED BY public.mhbank_teach_box.id;


--
-- Name: mhbank_themed_q; Type: TABLE; Schema: public; Owner: bank
--

CREATE TABLE public.mhbank_themed_q (
    id integer NOT NULL,
    theme character varying(200) NOT NULL,
    text text NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.mhbank_themed_q OWNER TO bank;

--
-- Name: mhbank_themed_q_id_seq; Type: SEQUENCE; Schema: public; Owner: bank
--

CREATE SEQUENCE public.mhbank_themed_q_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mhbank_themed_q_id_seq OWNER TO bank;

--
-- Name: mhbank_themed_q_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bank
--

ALTER SEQUENCE public.mhbank_themed_q_id_seq OWNED BY public.mhbank_themed_q.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: mhbank_account id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_account ALTER COLUMN id SET DEFAULT nextval('public.mhbank_account_id_seq'::regclass);


--
-- Name: mhbank_answer id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_answer ALTER COLUMN id SET DEFAULT nextval('public.mhbank_answer_id_seq'::regclass);


--
-- Name: mhbank_attempt id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_attempt ALTER COLUMN id SET DEFAULT nextval('public.mhbank_attempt_id_seq'::regclass);


--
-- Name: mhbank_event id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_event ALTER COLUMN id SET DEFAULT nextval('public.mhbank_event_id_seq'::regclass);


--
-- Name: mhbank_guidance id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_guidance ALTER COLUMN id SET DEFAULT nextval('public.mhbank_guidance_id_seq'::regclass);


--
-- Name: mhbank_hardness id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_hardness ALTER COLUMN id SET DEFAULT nextval('public.mhbank_hardness_id_seq'::regclass);


--
-- Name: mhbank_question id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question ALTER COLUMN id SET DEFAULT nextval('public.mhbank_question_id_seq'::regclass);


--
-- Name: mhbank_question_events id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_events ALTER COLUMN id SET DEFAULT nextval('public.mhbank_question_events_id_seq'::regclass);


--
-- Name: mhbank_question_sub_tags id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_sub_tags ALTER COLUMN id SET DEFAULT nextval('public.mhbank_question_sub_tags_id_seq'::regclass);


--
-- Name: mhbank_question_tags id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_tags ALTER COLUMN id SET DEFAULT nextval('public.mhbank_question_tags_id_seq'::regclass);


--
-- Name: mhbank_source id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_source ALTER COLUMN id SET DEFAULT nextval('public.mhbank_source_id_seq'::regclass);


--
-- Name: mhbank_sub_tag id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_sub_tag ALTER COLUMN id SET DEFAULT nextval('public.mhbank_sub_tag_id_seq'::regclass);


--
-- Name: mhbank_tag id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_tag ALTER COLUMN id SET DEFAULT nextval('public.mhbank_tag_id_seq'::regclass);


--
-- Name: mhbank_teach_box id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_teach_box ALTER COLUMN id SET DEFAULT nextval('public.mhbank_teach_box_id_seq'::regclass);


--
-- Name: mhbank_themed_q id; Type: DEFAULT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_themed_q ALTER COLUMN id SET DEFAULT nextval('public.mhbank_themed_q_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add account	7	add_account
26	Can change account	7	change_account
27	Can delete account	7	delete_account
28	Can view account	7	view_account
29	Can add event	8	add_event
30	Can change event	8	change_event
31	Can delete event	8	delete_event
32	Can view event	8	view_event
33	Can add question	9	add_question
34	Can change question	9	change_question
35	Can delete question	9	delete_question
36	Can view question	9	view_question
37	Can add source	10	add_source
38	Can change source	10	change_source
39	Can delete source	10	delete_source
40	Can view source	10	view_source
41	Can add tag	11	add_tag
42	Can change tag	11	change_tag
43	Can delete tag	11	delete_tag
44	Can view tag	11	view_tag
45	Can add themed_q	12	add_themed_q
46	Can change themed_q	12	change_themed_q
47	Can delete themed_q	12	delete_themed_q
48	Can view themed_q	12	view_themed_q
49	Can add sub_tag	13	add_sub_tag
50	Can change sub_tag	13	change_sub_tag
51	Can delete sub_tag	13	delete_sub_tag
52	Can view sub_tag	13	view_sub_tag
53	Can add attempt	14	add_attempt
54	Can change attempt	14	change_attempt
55	Can delete attempt	14	delete_attempt
56	Can view attempt	14	view_attempt
57	Can add hardness	15	add_hardness
58	Can change hardness	15	change_hardness
59	Can delete hardness	15	delete_hardness
60	Can view hardness	15	view_hardness
61	Can add answer	16	add_answer
62	Can change answer	16	change_answer
63	Can delete answer	16	delete_answer
64	Can view answer	16	view_answer
65	Can add teach_box	17	add_teach_box
66	Can change teach_box	17	change_teach_box
67	Can delete teach_box	17	delete_teach_box
68	Can view teach_box	17	view_teach_box
69	Can add guidance	18	add_guidance
70	Can change guidance	18	change_guidance
71	Can delete guidance	18	delete_guidance
72	Can view guidance	18	view_guidance
73	Can add Token	19	add_token
74	Can change Token	19	change_token
75	Can delete Token	19	delete_token
76	Can view Token	19	view_token
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$5bzVzQni2eD0$2l2sSr6yfqDtfQ2kDp7HagwJuoz5k2gi+oD0INL97OI=	\N	f	emoeini				f	t	2020-12-11 19:54:05.733651+00
3	pbkdf2_sha256$180000$p2d1QwcARDxd$2dsXEDEHWlXqiZEb9bkebbji5wToZZf9wMpZaIdaDBY=	\N	f	AmooHashem				f	t	2020-12-11 20:10:10.706496+00
4	pbkdf2_sha256$180000$UuW15NOPJzcc$njOaLUOsQU5WFwRWgoTmHwthfbfz9udYSE+yTOxeGZY=	\N	f	er				f	t	2020-12-11 20:22:35.929643+00
8	pbkdf2_sha256$180000$lqXlp9ZrnVTu$cuwfKxz1IOcCebY+SY/M9W3ae4jN18qpgncBbfp6P2k=	\N	f	Zahra.ra				t	t	2020-12-13 19:35:00+00
9	pbkdf2_sha256$180000$IC0ErhssKz7U$3FJavhuGq3XhEf6+Z1azWvSfHpu47B0uKlWFYbckrjg=	\N	f	arshiamoeini				f	t	2020-12-13 20:43:10.873024+00
10	pbkdf2_sha256$180000$ELUOFv87vN27$enKUx/Wug04GOqXHnrjjJANQ3w20E/9Bsxu1xR6az1k=	\N	f	arghavan99				f	t	2020-12-13 21:15:38.798075+00
11	pbkdf2_sha256$180000$DTLngmTNV66g$IPxDZlclv8dEriEkeiIfu0MDSiu1BtTwfw4ZoqtpVEM=	\N	f	Ali				f	t	2020-12-14 07:58:36.92313+00
12	pbkdf2_sha256$180000$hO4JDQsblLyY$gFo+IY0WIdzECfVTFk+/2J7pBPU3wu5gBjFOG2Pcij8=	\N	f	parisa				f	t	2020-12-14 08:04:14.883923+00
13	pbkdf2_sha256$180000$luVA7octZA73$/MwkGMGV+VYv3OH1KmgmDcUTV9WN48UkR8hHt6mPEIw=	\N	f	Mahdi_Esmailiyan				f	t	2020-12-14 08:05:18.032144+00
14	pbkdf2_sha256$180000$BOyBLvrV4LHo$Yb41ryPnwG0kbvwHqXHSqk5pk4aNQtVIFRUTA3w72ag=	\N	f	mahdi_ebr				f	t	2020-12-14 08:09:33.554082+00
15	pbkdf2_sha256$180000$ks7Zg8U18kwi$aukgBzgMDGBuEADZabrKb1/lMCs79ivGnSsCKG2/Sq8=	\N	f	mehrshad1991				f	t	2020-12-14 08:19:20.257072+00
16	pbkdf2_sha256$180000$5u1xcOVEwr3E$qXrb/amoqabnnMw7qYPNMj9mHQIEOxz6as0pzWb1oTk=	\N	f	nasi_khm				f	t	2020-12-14 15:00:33.396805+00
17	pbkdf2_sha256$180000$vgdWRxslK8jw$WccLcUJvqJ9/9CA9u6SAO5kg7BelcvNPwEhYbjcrVlU=	\N	f	Amoo.Mehran				f	t	2020-12-14 16:29:08.027713+00
18	pbkdf2_sha256$180000$sBQqN5v3k9SI$V4DnHX/Nh0iQy2kvqlEQhOOb8ZIC3iu3RuEQc4W8nvI=	\N	f	aryantr				f	t	2020-12-14 16:55:04.555443+00
19	pbkdf2_sha256$180000$auJY8wHFpQtZ$jVTqVqk6cH6WOe8igpidduTdCMR8N3cvEqllAwH9w/A=	\N	f	tr				f	t	2020-12-14 18:51:04.159503+00
20	pbkdf2_sha256$180000$iHXAMbtWFyDA$IgknaNHLWchMh1xm+mJBiCVGmgQh6+H1phbeK9w6sdg=	\N	f	ali				f	t	2020-12-15 01:06:21.804231+00
2	pbkdf2_sha256$180000$IdB1iBJ0su7U$4s+BcrVJ0CR18MQ8AATWe8+CMBhVtS/En6duPzpQdiw=	2020-12-15 07:59:23.400328+00	t	erfanmotnt			moeini.erfan@gmail.com	t	t	2020-12-11 20:05:29.956326+00
21	pbkdf2_sha256$180000$iCoj4f3rfcn6$q/u/b4d305s/accXt1Zx2OFmknOP8Pd+wMkMniYaMA8=	\N	f	هومن				f	t	2020-12-15 17:29:34.531253+00
22	pbkdf2_sha256$180000$vwGOVYci7q2A$4B8CMfmyk2Vs90Hd+JAjPKfxNxLypJASZB5bHWo7cQw=	\N	f	م				f	t	2020-12-15 20:37:03.799286+00
23	pbkdf2_sha256$180000$IE9AhCS4ER8k$FWQYX5SQhdB8O3ClBGiL/pBEVrZT98H27NaOHYuWQyc=	\N	f	rorschach01101				f	t	2020-12-16 06:50:37.502427+00
24	pbkdf2_sha256$180000$X9KWau7yDGQp$vc54c5RchaHph+H63qYQjGHpvQwiTz3NM+S8bR5h1Ko=	\N	f	negar_ndn				f	t	2020-12-16 08:25:58.594586+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
305d283fdc32f4f6d220483175169efba61d9557	2020-12-13 21:15:38.951183+00	10
02b8cb73413dcaea4191c7c9cda078d39a09b4d3	2020-12-14 07:58:59.928742+00	11
cf2e0758fc501de9c0772749d6386a1c71be3910	2020-12-14 08:04:15.049799+00	12
1639a68093f0adc4f91e171121e35882f7aa59ba	2020-12-14 08:05:18.229074+00	13
537726ba8c9115524061ea72d7832dbc31e97a4b	2020-12-14 08:09:33.886382+00	14
d508d3153903686f588cd5ec8621493b0e409a39	2020-12-14 08:19:20.745316+00	15
6a1ddc15c39055086d366b7212c59987662e15ce	2020-12-14 16:29:08.195944+00	17
cdfbd45625a639c721e7558c6aab7b972beb5cd5	2020-12-14 16:55:04.864411+00	18
8814cac70f56961194e73cb1eb3b02e9a3685250	2020-12-14 17:02:42.843889+00	8
627021ddf1ea9a19d6c87105113dd1604a146867	2020-12-14 17:12:47.258271+00	9
87898d410d5bebd911e3dad9b4627a957a769f6b	2020-12-14 18:51:04.32703+00	19
7e39391d01e71776e367fb24c5f9963e04522dff	2020-12-15 01:16:26.046519+00	20
b191e1aae2ea25e6a92a9c395dfdd4ed07d67bcd	2020-12-15 17:29:34.724757+00	21
1b6abb2f8c20ea2abff38eca5df5fa9715f8b12c	2020-12-15 20:37:04.060268+00	22
115419084161d9130edb889e244107d989495591	2020-12-16 06:50:37.684584+00	23
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-12-11 20:06:26.003431+00	2	erfanmotnt	1	[{"added": {}}]	7	2
2	2020-12-11 20:08:10.573093+00	1	emoeini	3		7	2
3	2020-12-11 20:09:24.773363+00	1	ترکیبیات	1	[{"added": {}}, {"added": {"name": "sub_tag", "object": "\\u0644\\u0627\\u0646\\u0647 \\u06a9\\u0628\\u0648\\u062a\\u0631\\u06cc"}}, {"added": {"name": "sub_tag", "object": "\\u0627\\u0633\\u062a\\u0642\\u0631\\u0627"}}]	11	2
4	2020-12-11 20:13:22.753374+00	3	AmooHashem	2	[{"changed": {"fields": ["role"]}}]	7	2
5	2020-12-11 20:22:01.63506+00	1	hashem	2	[{"changed": {"fields": ["verification_status"]}}]	9	2
6	2020-12-11 20:23:55.624483+00	1	کاباراآمادالاپسته	1	[{"added": {}}]	8	2
7	2020-12-11 20:24:25.576931+00	1	آنالیز ترکیبی	1	[{"added": {}}]	10	2
8	2020-12-11 20:30:04.572954+00	4	er	2	[{"changed": {"fields": ["role"]}}]	7	2
9	2020-12-11 20:30:36.335769+00	4	er	2	[{"changed": {"fields": ["role"]}}]	7	2
10	2020-12-13 19:16:46.064279+00	5	Ab	2	[{"changed": {"fields": ["role"]}}]	7	2
11	2020-12-13 19:20:30.560636+00	5	Ab	2	[{"changed": {"fields": ["role"]}}]	7	2
12	2020-12-13 19:21:46.156745+00	6	as	1	[{"added": {}}, {"added": {"name": "account", "object": "as"}}]	4	2
13	2020-12-13 19:22:27.983948+00	6	as	2	[]	4	2
14	2020-12-13 19:22:52.335417+00	6	as	2	[]	7	2
15	2020-12-13 19:24:28.39395+00	7	tq	3		7	2
16	2020-12-13 19:24:28.400705+00	6	as	3		7	2
17	2020-12-13 19:24:28.405145+00	5	Ab	3		7	2
18	2020-12-13 19:24:57.76723+00	5	Ab	3		4	2
19	2020-12-13 19:24:57.779173+00	6	as	3		4	2
20	2020-12-13 19:24:57.791317+00	7	tq	3		4	2
21	2020-12-13 20:35:13.891993+00	8	Zahra.ra	2	[{"changed": {"fields": ["role"]}}]	7	2
22	2020-12-13 20:35:43.374457+00	3	AmooHashem	2	[{"changed": {"fields": ["role"]}}]	7	2
23	2020-12-13 20:35:51.054893+00	3	AmooHashem	2	[{"changed": {"fields": ["role"]}}]	7	2
24	2020-12-13 20:37:35.013256+00	2	هندسه	1	[{"added": {}}, {"added": {"name": "sub_tag", "object": "\\u0647\\u0645\\u0646\\u0647\\u0634\\u062a\\u06cc"}}, {"added": {"name": "sub_tag", "object": "\\u062a\\u0634\\u0627\\u0628\\u0647"}}, {"added": {"name": "sub_tag", "object": "\\u0645\\u06a9\\u0627\\u0646 \\u0647\\u0646\\u062f\\u0633\\u06cc"}}]	11	2
25	2020-12-13 20:39:48.350891+00	3	متفرقه	1	[{"added": {}}, {"added": {"name": "sub_tag", "object": "\\u0645\\u0646\\u0637\\u0642\\u06cc"}}, {"added": {"name": "sub_tag", "object": "\\u062e\\u0644\\u0627\\u0642\\u06cc\\u062a\\u06cc"}}, {"added": {"name": "sub_tag", "object": "\\u062f\\u0627\\u0646\\u0634\\u06cc"}}, {"added": {"name": "sub_tag", "object": "\\u0633\\u062e\\u062a \\u0646\\u0648\\u06cc\\u0633"}}, {"added": {"name": "sub_tag", "object": "\\u0633\\u062e\\u062a \\u0641\\u0647\\u0645"}}]	11	2
26	2020-12-13 20:40:36.737496+00	2	هاشمی و معینی	2	[{"changed": {"fields": ["verification_status", "verification_comment"]}}]	9	2
27	2020-12-13 20:41:16.351523+00	8	Zahra.ra	2	[{"changed": {"fields": ["Staff status"]}}]	4	2
28	2020-12-13 20:45:14.901436+00	2	هاشمی و معینی	2	[{"changed": {"fields": ["verification_status"]}}]	9	2
29	2020-12-13 20:45:43.195131+00	2	هاشمی و معینی	2	[{"changed": {"fields": ["verification_status"]}}]	9	2
30	2020-12-13 20:48:29.690642+00	2	غیره	1	[{"added": {}}]	10	2
31	2020-12-13 20:48:47.053262+00	1	کاباراآمادالاپسته	3		8	2
32	2020-12-13 20:49:29.022148+00	2	پیشنهادی مرحله اول کارسوق 99	1	[{"added": {}}]	8	2
33	2020-12-13 20:49:53.993344+00	1	مرحله اول المپیاد کامپیوتر	2	[{"changed": {"fields": ["Name"]}}]	10	2
34	2020-12-13 20:50:04.392147+00	3	مرحله اول المپیاد ریاضی	1	[{"added": {}}]	10	2
35	2020-12-13 20:51:18.041597+00	1	ترکیبیات	2	[{"added": {"name": "sub_tag", "object": "\\u0634\\u0645\\u0627\\u0631\\u0634"}}]	11	2
36	2020-12-13 21:00:15.832798+00	2	پیشنهادی مرحله اول کارسوق 99	3		8	2
37	2020-12-13 21:07:25.643907+00	2	erfanmotnt	2	[]	7	2
38	2020-12-14 08:31:03.596842+00	2	هاشمی و معینی	2	[{"changed": {"fields": ["verification_status"]}}]	9	2
39	2020-12-14 08:39:46.209057+00	3	شاه اول	2	[{"changed": {"fields": ["verification_status"]}}]	9	2
40	2020-12-14 08:40:26.564679+00	2	هاشمی و معینی	2	[{"changed": {"fields": ["verification_status", "text"]}}]	9	2
41	2020-12-14 18:48:44.147874+00	13	شاه دوم	2	[{"changed": {"fields": ["verification_status"]}}]	9	2
42	2020-12-14 20:01:22.068425+00	14	سطح	2	[{"changed": {"fields": ["verification_status"]}}]	9	2
43	2020-12-14 21:44:29.71982+00	12	.	3		9	2
44	2020-12-14 21:44:29.769772+00	4	..	3		9	2
45	2020-12-15 02:21:54.751266+00	2	هاشمی و معینی	3		9	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	mhbank	account
8	mhbank	event
9	mhbank	question
10	mhbank	source
11	mhbank	tag
12	mhbank	themed_q
13	mhbank	sub_tag
14	mhbank	attempt
15	mhbank	hardness
16	mhbank	answer
17	mhbank	teach_box
18	mhbank	guidance
19	authtoken	token
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-12-11 19:49:46.267413+00
2	auth	0001_initial	2020-12-11 19:49:46.486094+00
3	admin	0001_initial	2020-12-11 19:49:47.252869+00
4	admin	0002_logentry_remove_auto_add	2020-12-11 19:49:47.327813+00
5	admin	0003_logentry_add_action_flag_choices	2020-12-11 19:49:47.350186+00
6	contenttypes	0002_remove_content_type_name	2020-12-11 19:49:47.386889+00
7	auth	0002_alter_permission_name_max_length	2020-12-11 19:49:47.400238+00
8	auth	0003_alter_user_email_max_length	2020-12-11 19:49:47.441214+00
9	auth	0004_alter_user_username_opts	2020-12-11 19:49:47.460161+00
10	auth	0005_alter_user_last_login_null	2020-12-11 19:49:47.494574+00
11	auth	0006_require_contenttypes_0002	2020-12-11 19:49:47.50127+00
12	auth	0007_alter_validators_add_error_messages	2020-12-11 19:49:47.533997+00
13	auth	0008_alter_user_username_max_length	2020-12-11 19:49:47.578082+00
14	auth	0009_alter_user_last_name_max_length	2020-12-11 19:49:47.597989+00
15	auth	0010_alter_group_name_max_length	2020-12-11 19:49:47.618232+00
16	auth	0011_update_proxy_permissions	2020-12-11 19:49:47.641227+00
17	authtoken	0001_initial	2020-12-11 19:49:47.705599+00
18	authtoken	0002_auto_20160226_1747	2020-12-11 19:49:47.783549+00
19	mhbank	0001_initial	2020-12-11 19:49:48.1545+00
20	mhbank	0002_auto_20200422_2131	2020-12-11 19:49:48.479309+00
21	mhbank	0003_auto_20200422_2335	2020-12-11 19:49:48.597291+00
22	mhbank	0004_auto_20200422_2356	2020-12-11 19:49:48.701559+00
23	mhbank	0005_auto_20200423_0041	2020-12-11 19:49:48.744946+00
24	mhbank	0006_auto_20200423_0101	2020-12-11 19:49:48.787972+00
25	mhbank	0007_auto_20200423_0102	2020-12-11 19:49:48.893323+00
26	mhbank	0008_auto_20200423_0106	2020-12-11 19:49:48.93185+00
27	mhbank	0009_auto_20200423_1558	2020-12-11 19:49:49.016973+00
28	mhbank	0010_auto_20200423_1640	2020-12-11 19:49:49.107382+00
29	mhbank	0011_auto_20200423_1643	2020-12-11 19:49:49.141584+00
30	mhbank	0012_auto_20200423_1644	2020-12-11 19:49:49.177169+00
31	mhbank	0013_account_last_added_question	2020-12-11 19:49:49.211645+00
32	mhbank	0014_remove_account_last_added_question	2020-12-11 19:49:49.271226+00
33	mhbank	0015_auto_20200504_1630	2020-12-11 19:49:49.321675+00
34	mhbank	0016_auto_20200504_1942	2020-12-11 19:49:49.377143+00
35	mhbank	0017_auto_20200505_0136	2020-12-11 19:49:49.405233+00
36	mhbank	0018_auto_20200505_0249	2020-12-11 19:49:49.43831+00
37	mhbank	0019_auto_20200505_0256	2020-12-11 19:49:49.469651+00
38	mhbank	0020_auto_20200520_1347	2020-12-11 19:49:49.501216+00
39	mhbank	0021_auto_20200520_1355	2020-12-11 19:49:49.526336+00
40	mhbank	0022_auto_20200520_1404	2020-12-11 19:49:49.602556+00
41	mhbank	0023_auto_20200520_1411	2020-12-11 19:49:49.861158+00
42	mhbank	0024_auto_20200520_1422	2020-12-11 19:49:49.933694+00
43	mhbank	0025_auto_20200520_1436	2020-12-11 19:49:50.03632+00
44	mhbank	0026_auto_20200520_1503	2020-12-11 19:49:50.063921+00
45	mhbank	0027_auto_20200520_2237	2020-12-11 19:49:50.157207+00
46	mhbank	0028_auto_20200721_1725	2020-12-11 19:49:50.472426+00
47	mhbank	0029_auto_20200721_1825	2020-12-11 19:49:50.622226+00
48	mhbank	0030_auto_20200721_1829	2020-12-11 19:49:50.710362+00
49	mhbank	0031_question_test	2020-12-11 19:49:50.738943+00
50	mhbank	0032_question_change_date	2020-12-11 19:49:50.769418+00
51	mhbank	0033_remove_question_test	2020-12-11 19:49:50.797058+00
52	mhbank	0034_auto_20200721_1834	2020-12-11 19:49:50.852504+00
53	mhbank	0035_auto_20200730_1426	2020-12-11 19:49:50.909086+00
54	mhbank	0036_remove_answer_publish_date	2020-12-11 19:49:50.942085+00
55	mhbank	0037_answer_publish_date	2020-12-11 19:49:50.973885+00
56	mhbank	0038_auto_20201013_0122	2020-12-11 19:49:51.031143+00
57	sessions	0001_initial	2020-12-11 19:49:51.067879+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
igqn5yyqn1ikbdcvqvg1ef0j7m7szo18	YTQyNTUxNjg5ZDkxOTM2OGUzYTE0YTY5OTc4ZGMwNTUyMWEwOTQzNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRjYjcyYWJmOTMzYzY1NGZjMDRiMDM4MDE3ZTRlMzEzNGQ4ZmIzIn0=	2020-12-27 19:20:19.189233+00
8zpmklvdr9qyokyw3lj9o16o9slublva	YTQyNTUxNjg5ZDkxOTM2OGUzYTE0YTY5OTc4ZGMwNTUyMWEwOTQzNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRjYjcyYWJmOTMzYzY1NGZjMDRiMDM4MDE3ZTRlMzEzNGQ4ZmIzIn0=	2020-12-27 20:34:55.88668+00
gy69kh8ljh1oemmpl2rmrr4xm0d0xgsh	YTQyNTUxNjg5ZDkxOTM2OGUzYTE0YTY5OTc4ZGMwNTUyMWEwOTQzNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRjYjcyYWJmOTMzYzY1NGZjMDRiMDM4MDE3ZTRlMzEzNGQ4ZmIzIn0=	2020-12-27 22:24:00.709221+00
6ie9sayocr0lu0lmv1fnnqk6mu6ueryi	YTQyNTUxNjg5ZDkxOTM2OGUzYTE0YTY5OTc4ZGMwNTUyMWEwOTQzNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZDRjYjcyYWJmOTMzYzY1NGZjMDRiMDM4MDE3ZTRlMzEzNGQ4ZmIzIn0=	2020-12-29 07:59:23.416921+00
\.


--
-- Data for Name: mhbank_account; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_account (id, phone_number, scientific_rate, contribution_rate, email, role, user_id, first_name, last_name) FROM stdin;
4	09	0	0	er	s	4	er	er
8	09376618590	0	0	zaahra.ramezanii@gmail.com	m	8	زهرا	رمضانی
3	09140436478	0	0	amoo.hashem.mehraban@gmail.com	a	3	سیدعلیرضا	هاشمی
9	09336050462	0	0	arshiamoeini82@gmail.com	a	9	ارشیا	معینی
2	09336050463	0	0	moeini.erfan@gmail.com	s	2	erfan	moeini
10	09101449425	0	0	rezvani.arghavan@gmail.com	a	10	ارغوان	رضوانی
11	09031799548	0	0	ali.ghane.313@gmail.com	a	11	علی	قانعیان
12	09140209755	0	0	mousaviparisa5@yahoo.com	a	12	پریساسادات	موسوی
13	09931148831	0	0	esmailiyan.mahdi@gmail.com	a	13	محمدمهدی	اسماعلیلیان
14	09380953913	0	0	mahdi.modafe.15@gmail.com	a	14	مهدی	ابراهیمیان
15	09918496100	0	0	mehrshadmohammadian18@gmail.com	a	15	مهرشاد	محمدیان
16	09137949206	0	0	nastarankhayambashi0@gmail.com	a	16	نسترن	خیام باشی
17	09134104710	0	0	mehmandoust324@gmail.com	a	17	مهران	مهماندوست
18	09140043706	0	0	artajmir3@yahoo.com	a	18	آرین	تاجمیرریاحی
19	0	0	0	tr	a	19	tr	tr
20	a	0	0	a	a	20	a	a
21	09131234465	0	0	zngktld@hi2.in	a	21	هومن	سعیدی
22	09034895132	0	0	shahpoorymohammadhossein@gmail.com	a	22	محمدحسین	شاه پوری
23	09134420816	0	0	proso01101@gmail	a	23	روژینا	شهبازی
24	9339849431	0	0	Nnadian79@gmail.com	a	24	نگار	نادیان
\.


--
-- Data for Name: mhbank_answer; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_answer (id, text, account_id, question_id, change_date, publish_date) FROM stdin;
\.


--
-- Data for Name: mhbank_attempt; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_attempt (id, "time", date, account_id, event_id, question_id) FROM stdin;
\.


--
-- Data for Name: mhbank_event; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_event (id, name) FROM stdin;
\.


--
-- Data for Name: mhbank_guidance; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_guidance (id, text, answer_id, change_date, publish_date) FROM stdin;
\.


--
-- Data for Name: mhbank_hardness; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_hardness (id, level, appropriate_grades_min, appropriate_grades_max, question_id) FROM stdin;
1	100	3	10	1
3	44	10	12	3
11	4	7	10	11
13	54	7	10	13
14	1	6	9	14
15	1	6	10	15
16	8	6	10	16
17	90	6	10	17
\.


--
-- Data for Name: mhbank_question; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_question (id, name, verification_status, text, publish_date, question_maker_id, source_id, verification_comment, change_date) FROM stdin;
3	شاه اول	c	<p>ثابت کنید هر گراف حداقل یک شاه دارد.</p>	2020-12-11 20:24:22.202998+00	3	1		2020-12-12 16:13:14.351996+00
1	hashem	w	<p>hoooooooooooooraaaaaaaa</p>	2020-12-11 20:07:01.87052+00	2	\N		2020-12-12 16:12:03.627404+00
11	تست	w	<p>تستتتت?</p>	2020-12-13 19:35:55.279891+00	8	\N		2020-12-13 20:33:20.263635+00
13	شاه دوم	c	<p>ثابت کنید که یک گراف جهت&zwnj;دار نمی&zwnj;تواند دقیقا ۲ تا شاه داشته باشد.</p>	2020-12-14 14:07:22.26576+00	4	2		\N
14	سطح	c	<p><span style="font-weight: 400;">آیا می&zwnj;توان هفت خانه از یک جدول خالی سودوکو را طوری تعیین کرد که بقیه جدول به طور یکتا تعیین شود؟</span></p>	2020-12-14 16:59:16.426886+00	18	2		\N
15	۱	w	<p>تست</p>	2020-12-15 02:36:22.144706+00	20	\N		\N
16	تست ۲	w	<p>تست ۲۲</p>	2020-12-15 02:37:57.340948+00	20	\N		2020-12-15 02:47:16.80613+00
17	۳	w	<p>تست ۳</p>	2020-12-15 02:48:50.553318+00	20	\N		2020-12-15 02:49:09.937862+00
\.


--
-- Data for Name: mhbank_question_events; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_question_events (id, question_id, event_id) FROM stdin;
\.


--
-- Data for Name: mhbank_question_sub_tags; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_question_sub_tags (id, question_id, sub_tag_id) FROM stdin;
2	3	2
\.


--
-- Data for Name: mhbank_question_tags; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_question_tags (id, question_id, tag_id) FROM stdin;
2	3	1
4	13	1
5	14	3
\.


--
-- Data for Name: mhbank_source; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_source (id, name) FROM stdin;
2	غیره
1	مرحله اول المپیاد کامپیوتر
3	مرحله اول المپیاد ریاضی
\.


--
-- Data for Name: mhbank_sub_tag; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_sub_tag (id, name, parent_id) FROM stdin;
1	لانه کبوتری	1
2	استقرا	1
3	همنهشتی	2
4	تشابه	2
5	مکان هندسی	2
6	منطقی	3
7	خلاقیتی	3
8	دانشی	3
9	سخت نویس	3
10	سخت فهم	3
11	شمارش	1
\.


--
-- Data for Name: mhbank_tag; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_tag (id, name) FROM stdin;
2	هندسه
3	متفرقه
1	ترکیبیات
\.


--
-- Data for Name: mhbank_teach_box; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_teach_box (id, goal, expectations, "time", "generalـprocess", answer_id, change_date, publish_date) FROM stdin;
\.


--
-- Data for Name: mhbank_themed_q; Type: TABLE DATA; Schema: public; Owner: bank
--

COPY public.mhbank_themed_q (id, theme, text, question_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 24, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 45, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 57, true);


--
-- Name: mhbank_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_account_id_seq', 24, true);


--
-- Name: mhbank_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_answer_id_seq', 1, false);


--
-- Name: mhbank_attempt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_attempt_id_seq', 1, false);


--
-- Name: mhbank_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_event_id_seq', 2, true);


--
-- Name: mhbank_guidance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_guidance_id_seq', 1, false);


--
-- Name: mhbank_hardness_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_hardness_id_seq', 17, true);


--
-- Name: mhbank_question_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_question_events_id_seq', 1, false);


--
-- Name: mhbank_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_question_id_seq', 17, true);


--
-- Name: mhbank_question_sub_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_question_sub_tags_id_seq', 3, true);


--
-- Name: mhbank_question_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_question_tags_id_seq', 5, true);


--
-- Name: mhbank_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_source_id_seq', 3, true);


--
-- Name: mhbank_sub_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_sub_tag_id_seq', 11, true);


--
-- Name: mhbank_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_tag_id_seq', 3, true);


--
-- Name: mhbank_teach_box_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_teach_box_id_seq', 1, false);


--
-- Name: mhbank_themed_q_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bank
--

SELECT pg_catalog.setval('public.mhbank_themed_q_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: mhbank_account mhbank_account_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_account
    ADD CONSTRAINT mhbank_account_pkey PRIMARY KEY (id);


--
-- Name: mhbank_account mhbank_account_user_id_key; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_account
    ADD CONSTRAINT mhbank_account_user_id_key UNIQUE (user_id);


--
-- Name: mhbank_answer mhbank_answer_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_answer
    ADD CONSTRAINT mhbank_answer_pkey PRIMARY KEY (id);


--
-- Name: mhbank_attempt mhbank_attempt_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_attempt
    ADD CONSTRAINT mhbank_attempt_pkey PRIMARY KEY (id);


--
-- Name: mhbank_event mhbank_event_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_event
    ADD CONSTRAINT mhbank_event_pkey PRIMARY KEY (id);


--
-- Name: mhbank_guidance mhbank_guidance_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_guidance
    ADD CONSTRAINT mhbank_guidance_pkey PRIMARY KEY (id);


--
-- Name: mhbank_hardness mhbank_hardness_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_hardness
    ADD CONSTRAINT mhbank_hardness_pkey PRIMARY KEY (id);


--
-- Name: mhbank_hardness mhbank_hardness_question_id_key; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_hardness
    ADD CONSTRAINT mhbank_hardness_question_id_key UNIQUE (question_id);


--
-- Name: mhbank_question_events mhbank_question_events_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_events
    ADD CONSTRAINT mhbank_question_events_pkey PRIMARY KEY (id);


--
-- Name: mhbank_question_events mhbank_question_events_question_id_event_id_e31ed86f_uniq; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_events
    ADD CONSTRAINT mhbank_question_events_question_id_event_id_e31ed86f_uniq UNIQUE (question_id, event_id);


--
-- Name: mhbank_question mhbank_question_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question
    ADD CONSTRAINT mhbank_question_pkey PRIMARY KEY (id);


--
-- Name: mhbank_question_sub_tags mhbank_question_sub_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_sub_tags
    ADD CONSTRAINT mhbank_question_sub_tags_pkey PRIMARY KEY (id);


--
-- Name: mhbank_question_sub_tags mhbank_question_sub_tags_question_id_sub_tag_id_7f7dbcc3_uniq; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_sub_tags
    ADD CONSTRAINT mhbank_question_sub_tags_question_id_sub_tag_id_7f7dbcc3_uniq UNIQUE (question_id, sub_tag_id);


--
-- Name: mhbank_question_tags mhbank_question_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_tags
    ADD CONSTRAINT mhbank_question_tags_pkey PRIMARY KEY (id);


--
-- Name: mhbank_question_tags mhbank_question_tags_question_id_tag_id_f238b802_uniq; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_tags
    ADD CONSTRAINT mhbank_question_tags_question_id_tag_id_f238b802_uniq UNIQUE (question_id, tag_id);


--
-- Name: mhbank_source mhbank_source_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_source
    ADD CONSTRAINT mhbank_source_pkey PRIMARY KEY (id);


--
-- Name: mhbank_sub_tag mhbank_sub_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_sub_tag
    ADD CONSTRAINT mhbank_sub_tag_pkey PRIMARY KEY (id);


--
-- Name: mhbank_tag mhbank_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_tag
    ADD CONSTRAINT mhbank_tag_pkey PRIMARY KEY (id);


--
-- Name: mhbank_teach_box mhbank_teach_box_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_teach_box
    ADD CONSTRAINT mhbank_teach_box_pkey PRIMARY KEY (id);


--
-- Name: mhbank_themed_q mhbank_themed_q_pkey; Type: CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_themed_q
    ADD CONSTRAINT mhbank_themed_q_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: mhbank_answer_account_id_c950067d; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_answer_account_id_c950067d ON public.mhbank_answer USING btree (account_id);


--
-- Name: mhbank_answer_question_id_f0b14a5d; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_answer_question_id_f0b14a5d ON public.mhbank_answer USING btree (question_id);


--
-- Name: mhbank_attempt_account_id_16561f62; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_attempt_account_id_16561f62 ON public.mhbank_attempt USING btree (account_id);


--
-- Name: mhbank_attempt_event_id_16b1e781; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_attempt_event_id_16b1e781 ON public.mhbank_attempt USING btree (event_id);


--
-- Name: mhbank_attempt_question_id_64aa202a; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_attempt_question_id_64aa202a ON public.mhbank_attempt USING btree (question_id);


--
-- Name: mhbank_guidance_answer_id_efe93dcc; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_guidance_answer_id_efe93dcc ON public.mhbank_guidance USING btree (answer_id);


--
-- Name: mhbank_question_events_event_id_e5542799; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_question_events_event_id_e5542799 ON public.mhbank_question_events USING btree (event_id);


--
-- Name: mhbank_question_events_question_id_4077b542; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_question_events_question_id_4077b542 ON public.mhbank_question_events USING btree (question_id);


--
-- Name: mhbank_question_question_maker_id_3fa74f84; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_question_question_maker_id_3fa74f84 ON public.mhbank_question USING btree (question_maker_id);


--
-- Name: mhbank_question_source_id_f775f6c0; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_question_source_id_f775f6c0 ON public.mhbank_question USING btree (source_id);


--
-- Name: mhbank_question_sub_tags_question_id_8034ef3f; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_question_sub_tags_question_id_8034ef3f ON public.mhbank_question_sub_tags USING btree (question_id);


--
-- Name: mhbank_question_sub_tags_sub_tag_id_819176fd; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_question_sub_tags_sub_tag_id_819176fd ON public.mhbank_question_sub_tags USING btree (sub_tag_id);


--
-- Name: mhbank_question_tags_question_id_dd123c98; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_question_tags_question_id_dd123c98 ON public.mhbank_question_tags USING btree (question_id);


--
-- Name: mhbank_question_tags_tag_id_6da16a95; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_question_tags_tag_id_6da16a95 ON public.mhbank_question_tags USING btree (tag_id);


--
-- Name: mhbank_sub_tag_parent_id_347a231e; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_sub_tag_parent_id_347a231e ON public.mhbank_sub_tag USING btree (parent_id);


--
-- Name: mhbank_teach_box_answer_id_f3b98886; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_teach_box_answer_id_f3b98886 ON public.mhbank_teach_box USING btree (answer_id);


--
-- Name: mhbank_themed_q_question_id_a7ae1151; Type: INDEX; Schema: public; Owner: bank
--

CREATE INDEX mhbank_themed_q_question_id_a7ae1151 ON public.mhbank_themed_q USING btree (question_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_account mhbank_account_user_id_51c567b6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_account
    ADD CONSTRAINT mhbank_account_user_id_51c567b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_answer mhbank_answer_account_id_c950067d_fk_mhbank_account_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_answer
    ADD CONSTRAINT mhbank_answer_account_id_c950067d_fk_mhbank_account_id FOREIGN KEY (account_id) REFERENCES public.mhbank_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_answer mhbank_answer_question_id_f0b14a5d_fk_mhbank_question_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_answer
    ADD CONSTRAINT mhbank_answer_question_id_f0b14a5d_fk_mhbank_question_id FOREIGN KEY (question_id) REFERENCES public.mhbank_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_attempt mhbank_attempt_account_id_16561f62_fk_mhbank_account_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_attempt
    ADD CONSTRAINT mhbank_attempt_account_id_16561f62_fk_mhbank_account_id FOREIGN KEY (account_id) REFERENCES public.mhbank_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_attempt mhbank_attempt_event_id_16b1e781_fk_mhbank_event_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_attempt
    ADD CONSTRAINT mhbank_attempt_event_id_16b1e781_fk_mhbank_event_id FOREIGN KEY (event_id) REFERENCES public.mhbank_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_attempt mhbank_attempt_question_id_64aa202a_fk_mhbank_question_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_attempt
    ADD CONSTRAINT mhbank_attempt_question_id_64aa202a_fk_mhbank_question_id FOREIGN KEY (question_id) REFERENCES public.mhbank_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_guidance mhbank_guidance_answer_id_efe93dcc_fk_mhbank_answer_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_guidance
    ADD CONSTRAINT mhbank_guidance_answer_id_efe93dcc_fk_mhbank_answer_id FOREIGN KEY (answer_id) REFERENCES public.mhbank_answer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_hardness mhbank_hardness_question_id_c4c6fa32_fk_mhbank_question_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_hardness
    ADD CONSTRAINT mhbank_hardness_question_id_c4c6fa32_fk_mhbank_question_id FOREIGN KEY (question_id) REFERENCES public.mhbank_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_question_events mhbank_question_even_question_id_4077b542_fk_mhbank_qu; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_events
    ADD CONSTRAINT mhbank_question_even_question_id_4077b542_fk_mhbank_qu FOREIGN KEY (question_id) REFERENCES public.mhbank_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_question_events mhbank_question_events_event_id_e5542799_fk_mhbank_event_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_events
    ADD CONSTRAINT mhbank_question_events_event_id_e5542799_fk_mhbank_event_id FOREIGN KEY (event_id) REFERENCES public.mhbank_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_question mhbank_question_question_maker_id_3fa74f84_fk_mhbank_account_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question
    ADD CONSTRAINT mhbank_question_question_maker_id_3fa74f84_fk_mhbank_account_id FOREIGN KEY (question_maker_id) REFERENCES public.mhbank_account(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_question mhbank_question_source_id_f775f6c0_fk_mhbank_source_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question
    ADD CONSTRAINT mhbank_question_source_id_f775f6c0_fk_mhbank_source_id FOREIGN KEY (source_id) REFERENCES public.mhbank_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_question_sub_tags mhbank_question_sub__question_id_8034ef3f_fk_mhbank_qu; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_sub_tags
    ADD CONSTRAINT mhbank_question_sub__question_id_8034ef3f_fk_mhbank_qu FOREIGN KEY (question_id) REFERENCES public.mhbank_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_question_sub_tags mhbank_question_sub__sub_tag_id_819176fd_fk_mhbank_su; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_sub_tags
    ADD CONSTRAINT mhbank_question_sub__sub_tag_id_819176fd_fk_mhbank_su FOREIGN KEY (sub_tag_id) REFERENCES public.mhbank_sub_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_question_tags mhbank_question_tags_question_id_dd123c98_fk_mhbank_question_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_tags
    ADD CONSTRAINT mhbank_question_tags_question_id_dd123c98_fk_mhbank_question_id FOREIGN KEY (question_id) REFERENCES public.mhbank_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_question_tags mhbank_question_tags_tag_id_6da16a95_fk_mhbank_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_question_tags
    ADD CONSTRAINT mhbank_question_tags_tag_id_6da16a95_fk_mhbank_tag_id FOREIGN KEY (tag_id) REFERENCES public.mhbank_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_sub_tag mhbank_sub_tag_parent_id_347a231e_fk_mhbank_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_sub_tag
    ADD CONSTRAINT mhbank_sub_tag_parent_id_347a231e_fk_mhbank_tag_id FOREIGN KEY (parent_id) REFERENCES public.mhbank_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_teach_box mhbank_teach_box_answer_id_f3b98886_fk_mhbank_answer_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_teach_box
    ADD CONSTRAINT mhbank_teach_box_answer_id_f3b98886_fk_mhbank_answer_id FOREIGN KEY (answer_id) REFERENCES public.mhbank_answer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mhbank_themed_q mhbank_themed_q_question_id_a7ae1151_fk_mhbank_question_id; Type: FK CONSTRAINT; Schema: public; Owner: bank
--

ALTER TABLE ONLY public.mhbank_themed_q
    ADD CONSTRAINT mhbank_themed_q_question_id_a7ae1151_fk_mhbank_question_id FOREIGN KEY (question_id) REFERENCES public.mhbank_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

