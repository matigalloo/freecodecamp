--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    number_planters integer,
    distance numeric(3,1),
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_name text NOT NULL,
    solar_system text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_name text NOT NULL,
    has_life boolean,
    solar_system text,
    star_id integer,
    visible_stars text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: sol; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sol (
    sol_id integer NOT NULL,
    name character varying(20) NOT NULL,
    forma text NOT NULL
);


ALTER TABLE public.sol OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    description text,
    has_life boolean,
    galaxy_name text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(20) NOT NULL,
    idioma text NOT NULL,
    colegio text
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky', 150, 6, 12.5, 'hola', true);
INSERT INTO public.galaxy VALUES (2, 'andro', 700, 50, 20.6, 'perro', false);
INSERT INTO public.galaxy VALUES (3, 'triangu', 850, 93, 42.4, 'gato', false);
INSERT INTO public.galaxy VALUES (4, 'milasdasky', 150, 6, 12.5, 'hola', true);
INSERT INTO public.galaxy VALUES (5, 'andrsso', 700, 50, 20.6, 'perro', false);
INSERT INTO public.galaxy VALUES (6, 'tuuuuu', 150, 6, 12.5, 'hola', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lunaris', 'triangu', 'camioneta', 4);
INSERT INTO public.moon VALUES (2, 'eclipson', 'triangu', 'camioneta', 4);
INSERT INTO public.moon VALUES (3, 'aethra', 'milky', 'avion', 1);
INSERT INTO public.moon VALUES (4, 'morpheus', 'milky', 'auto', 2);
INSERT INTO public.moon VALUES (5, 'f', 'triangu', 'camioneta', 4);
INSERT INTO public.moon VALUES (6, 'd', 'triangu', 'camioneta', 4);
INSERT INTO public.moon VALUES (7, 'j', 'milky', 'avion', 1);
INSERT INTO public.moon VALUES (8, 'jj', 'milky', 'auto', 2);
INSERT INTO public.moon VALUES (9, 'hh', 'triangu', 'camioneta', 4);
INSERT INTO public.moon VALUES (10, 'ttt', 'triangu', 'camioneta', 4);
INSERT INTO public.moon VALUES (11, 'tt', 'milky', 'avion', 1);
INSERT INTO public.moon VALUES (12, 't', 'milky', 'auto', 2);
INSERT INTO public.moon VALUES (13, 'hhmm', 'triangu', 'camioneta', 4);
INSERT INTO public.moon VALUES (14, 'tttm', 'triangu', 'camioneta', 4);
INSERT INTO public.moon VALUES (15, 'tm', 'milky', 'avion', 1);
INSERT INTO public.moon VALUES (16, 'm', 'milky', 'auto', 2);
INSERT INTO public.moon VALUES (17, 'hhmmv', 'triangu', 'camioneta', 4);
INSERT INTO public.moon VALUES (18, 'tttmv', 'triangu', 'camioneta', 4);
INSERT INTO public.moon VALUES (19, 'tmv', 'milky', 'avion', 1);
INSERT INTO public.moon VALUES (20, 'v', 'milky', 'auto', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'nex', 'milky', false, 'avion', 1, 'juan');
INSERT INTO public.planet VALUES (2, 'veg', 'milky', false, 'auto', 1, 'juan');
INSERT INTO public.planet VALUES (3, 'ecl', 'andro', false, 'avion', 2, 'pedro');
INSERT INTO public.planet VALUES (4, 'zep', 'triangu', false, 'camioneta', 4, 'maria');
INSERT INTO public.planet VALUES (5, 'and', 'triangu', false, 'camioneta', 4, 'maria');
INSERT INTO public.planet VALUES (6, 'nexgg', 'milky', false, 'avion', 1, 'juan');
INSERT INTO public.planet VALUES (7, 'veghh', 'milky', false, 'auto', 1, 'juan');
INSERT INTO public.planet VALUES (8, 'nexgddg', 'milky', false, 'avion', 1, 'juan');
INSERT INTO public.planet VALUES (9, 'veghhdddd', 'milky', false, 'auto', 1, 'juan');
INSERT INTO public.planet VALUES (10, 'rftg', 'milky', false, 'avion', 1, 'juan');
INSERT INTO public.planet VALUES (11, 'vegsd', 'milky', false, 'auto', 1, 'juan');
INSERT INTO public.planet VALUES (12, 'zsdfep', 'triangu', false, 'camioneta', 4, 'maria');
INSERT INTO public.planet VALUES (13, 'andsdf', 'triangu', false, 'camioneta', 4, 'maria');


--
-- Data for Name: sol; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sol VALUES (1, '12', 'ingles');
INSERT INTO public.sol VALUES (2, '100', 'espanol');
INSERT INTO public.sol VALUES (3, '29', 'french');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'juan', 12, 'jj', false, 'andro', 2);
INSERT INTO public.star VALUES (2, 'pedro', 5, 'rr', false, 'triangu', 3);
INSERT INTO public.star VALUES (3, 'jose', 30, 'gg', false, 'milky', 1);
INSERT INTO public.star VALUES (4, 'maria', 2, 'ee', false, 'milky', 1);
INSERT INTO public.star VALUES (5, 'juanjo', 12, 'jj', false, 'andro', 2);
INSERT INTO public.star VALUES (6, 'martin', 5, 'rr', false, 'triangu', 3);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, '12', 'ingles', NULL);
INSERT INTO public.sun VALUES (2, '100', 'espanol', NULL);
INSERT INTO public.sun VALUES (3, '29', 'french', NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: sol sol_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sol
    ADD CONSTRAINT sol_color_key UNIQUE (name);


--
-- Name: sol sol_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sol
    ADD CONSTRAINT sol_pkey PRIMARY KEY (sol_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_columntemperatura_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_columntemperatura_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

