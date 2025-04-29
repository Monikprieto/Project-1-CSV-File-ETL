--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1
-- Dumped by pg_dump version 17.1

-- Started on 2025-04-28 22:47:54

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
-- TOC entry 217 (class 1259 OID 25092)
-- Name: flight_delays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flight_delays (
    "FlightID" bigint,
    "Airline" text,
    "FlightNumber" bigint,
    "Origin" text,
    "Destination" text,
    "ScheduledDeparture" text,
    "ActualDeparture" text,
    "ScheduledArrival" text,
    "ActualArrival" text,
    "DelayMinutes" bigint,
    "DelayReason" text,
    "Cancelled" boolean,
    "Diverted" boolean,
    "AircraftType" text,
    "TailNumber" text,
    "Distance" bigint,
    "ArrivalDelayMinutes" double precision
);


ALTER TABLE public.flight_delays OWNER TO postgres;

-- Completed on 2025-04-28 22:47:54

--
-- PostgreSQL database dump complete
--

