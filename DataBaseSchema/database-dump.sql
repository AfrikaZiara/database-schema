--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: activity_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE activity_logs (
    activity_id integer NOT NULL,
    activity character varying(255),
    user_id integer,
    date_time date
);


ALTER TABLE activity_logs OWNER TO postgres;

--
-- Name: activity_logs_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE activity_logs_activity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE activity_logs_activity_id_seq OWNER TO postgres;

--
-- Name: activity_logs_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE activity_logs_activity_id_seq OWNED BY activity_logs.activity_id;


--
-- Name: az_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE az_users (
    user_id integer NOT NULL,
    username character varying(255),
    fname character varying(255),
    last_name character varying(255),
    role character varying(255),
    registration_date date,
    email character varying(255),
    password character varying(255)
);


ALTER TABLE az_users OWNER TO postgres;

--
-- Name: az_users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE az_users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE az_users_user_id_seq OWNER TO postgres;

--
-- Name: az_users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE az_users_user_id_seq OWNED BY az_users.user_id;


--
-- Name: tour_bookings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tour_bookings (
    booking_id integer NOT NULL,
    tourist_id integer,
    tour_package_id integer,
    booking_date date,
    prefered_travel_date date,
    number_of_adults integer,
    number_of_kids integer,
    preffered_hotel character varying(255),
    number_of_rooms integer
);


ALTER TABLE tour_bookings OWNER TO postgres;

--
-- Name: tour_bookings_booking_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tour_bookings_booking_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tour_bookings_booking_id_seq OWNER TO postgres;

--
-- Name: tour_bookings_booking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tour_bookings_booking_id_seq OWNED BY tour_bookings.booking_id;


--
-- Name: tour_operators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tour_operators (
    tour_operator_id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    packages_id character varying(255),
    website_url character varying(255),
    registration_date date,
    phone character varying(255),
    email character varying(255),
    facebook_url character varying(255),
    twitter_url character varying(255)
);


ALTER TABLE tour_operators OWNER TO postgres;

--
-- Name: tour_operators_tour_operator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tour_operators_tour_operator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tour_operators_tour_operator_id_seq OWNER TO postgres;

--
-- Name: tour_operators_tour_operator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tour_operators_tour_operator_id_seq OWNED BY tour_operators.tour_operator_id;


--
-- Name: tour_packages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tour_packages (
    tour_package_id integer NOT NULL,
    title character varying(255),
    image_url character varying(255),
    description character varying(255),
    video_url character varying(255),
    itenerary character varying(255),
    from_date date
);


ALTER TABLE tour_packages OWNER TO postgres;

--
-- Name: tour_packages_tour_package_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tour_packages_tour_package_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tour_packages_tour_package_id_seq OWNER TO postgres;

--
-- Name: tour_packages_tour_package_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tour_packages_tour_package_id_seq OWNED BY tour_packages.tour_package_id;


--
-- Name: tourists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tourists (
    tourist_id integer NOT NULL,
    first_name character varying(255),
    other_names character varying(255),
    host_country character varying(255),
    destination character varying(255),
    tour_package_id character varying(255),
    registration_date date,
    nationality character varying(255)
);


ALTER TABLE tourists OWNER TO postgres;

--
-- Name: tourists_tourist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tourists_tourist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tourists_tourist_id_seq OWNER TO postgres;

--
-- Name: tourists_tourist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tourists_tourist_id_seq OWNED BY tourists.tourist_id;


--
-- Name: activity_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activity_logs ALTER COLUMN activity_id SET DEFAULT nextval('activity_logs_activity_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY az_users ALTER COLUMN user_id SET DEFAULT nextval('az_users_user_id_seq'::regclass);


--
-- Name: booking_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tour_bookings ALTER COLUMN booking_id SET DEFAULT nextval('tour_bookings_booking_id_seq'::regclass);


--
-- Name: tour_operator_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tour_operators ALTER COLUMN tour_operator_id SET DEFAULT nextval('tour_operators_tour_operator_id_seq'::regclass);


--
-- Name: tour_package_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tour_packages ALTER COLUMN tour_package_id SET DEFAULT nextval('tour_packages_tour_package_id_seq'::regclass);


--
-- Name: tourist_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tourists ALTER COLUMN tourist_id SET DEFAULT nextval('tourists_tourist_id_seq'::regclass);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

