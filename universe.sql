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
    description text NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    distance_from_earth numeric NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    galaxy_type text NOT NULL,
    year_of_discovery integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: identity; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.identity (
    identity_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.identity OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    description text NOT NULL,
    name character varying NOT NULL,
    distance_from_earth numeric NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    is_spherical boolean NOT NULL,
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    description text NOT NULL,
    planet_type text NOT NULL,
    distance_from_earth numeric NOT NULL,
    year_of_discovery integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth numeric NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('The galaxy containing our Solar System', 13600, 0, 'Milky Way', 1, 'Spiral', 1610);
INSERT INTO public.galaxy VALUES ('The nearest major galaxy to the Milky Way', 10000, 2500000, 'Andromeda Galaxy', 2, 'Spiral', 964);
INSERT INTO public.galaxy VALUES ('A spiral galaxy approximately 3 million light-years from Earth', 13000, 3000000, 'Triangulum Galaxy', 3, 'Spiral', 1654);
INSERT INTO public.galaxy VALUES ('A prominent galaxy in the constellation of Centaurus', 10000, 11000000, 'Centaurus A', 4, 'Elliptical', 1826);
INSERT INTO public.galaxy VALUES ('A famous spiral galaxy known for its detailed structure', 400, 31000000, 'Whirlpool Galaxy', 5, 'Spiral', 1773);
INSERT INTO public.galaxy VALUES ('A galaxy with a prominent dust lane, giving it the appearance of a sombrero', 13000, 31100000, 'Sombrero Galaxy', 6, 'Spiral', 1781);


--
-- Data for Name: identity; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.identity VALUES (1, 'Samuel', 'Person who built this db');
INSERT INTO public.identity VALUES (2, 'Daniel', 'The one who told me about htis course');
INSERT INTO public.identity VALUES (3, 'FreeCodeCamp', 'An amazing platform built by true legends');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 4500, 'Our only natural satellite is a stabilizing force that makes the planet a more pleasant place for life', 'Earth_s Moon', 384400, 1);
INSERT INTO public.moon VALUES (2, 4500, 'The innermost and larger of the two natural satellites of Mars', 'Mars_s Moon - Phobos', 77790000, 2);
INSERT INTO public.moon VALUES (3, 4500, 'The smaller and outer of the two natural satellites of Mars', 'Mars_s Moon - Deimos', 77790000, 2);
INSERT INTO public.moon VALUES (4, 4500, 'Smallest of Jupiter_s four major moons', 'Europa', 628730000, 5);
INSERT INTO public.moon VALUES (5, 4500, 'Most volcanically active body in the solar system', 'Io', 628730000, 5);
INSERT INTO public.moon VALUES (6, 4500, 'Largest moon in the solar system, larger than Mercury', 'Ganymede', 628730000, 5);
INSERT INTO public.moon VALUES (7, 4500, 'Second largest and most heavily cratered moon in the solar system', 'Callisto', 628730000, 5);
INSERT INTO public.moon VALUES (8, 4500, 'Largest moon of Uranus', 'Titania', 2870990000, 7);
INSERT INTO public.moon VALUES (9, 4500, 'Second largest and outermost major moon of Uranus', 'Oberon', 2870990000, 7);
INSERT INTO public.moon VALUES (10, 4500, 'Third largest and darkest major moon of Uranus', 'Umbriel', 2870990000, 7);
INSERT INTO public.moon VALUES (11, 4500, 'Fourth largest and second brightest major moon of Uranus', 'Ariel', 2870990000, 7);
INSERT INTO public.moon VALUES (12, 4500, 'Largest moon of Saturn and second largest moon in the solar system', 'Titan', 1275060000, 6);
INSERT INTO public.moon VALUES (13, 4500, 'Second largest moon of Saturn', 'Rhea', 1275060000, 6);
INSERT INTO public.moon VALUES (14, 4500, 'Third largest moon of Saturn', 'Iapetus', 1275060000, 6);
INSERT INTO public.moon VALUES (15, 4500, 'Fourth largest moon of Saturn', 'Dione', 1275060000, 6);
INSERT INTO public.moon VALUES (16, 4500, 'Largest moon of Neptune and the seventh largest moon in the solar system', 'Triton', 4495060000, 8);
INSERT INTO public.moon VALUES (17, 4500, 'Third largest moon of Neptune', 'Nereid', 4495060000, 8);
INSERT INTO public.moon VALUES (18, 4500, 'Second largest moon of Neptune', 'Proteus', 4495060000, 8);
INSERT INTO public.moon VALUES (19, 4500, 'Largest moon of Pluto, about half the diameter of Pluto', 'Charon', 5900000000, 9);
INSERT INTO public.moon VALUES (20, 4500, 'Second largest moon of Pluto', 'Hydra', 5900000000, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (true, 'Earth', 1, true, 4000, 'The planet that we live on', 'Ordinary', 0, 7000, 1);
INSERT INTO public.planet VALUES (true, 'Mercury', 2, false, 4503, 'The closest planet to the Sun, a small, rocky world', 'Terrestrial', 77.3, 1631, 1);
INSERT INTO public.planet VALUES (true, 'Venus', 3, false, 4503, 'The second planet from the Sun, often called Earth_s twin', 'Terrestrial', 107.5, 1610, 1);
INSERT INTO public.planet VALUES (true, 'Mars', 4, false, 4603, 'The fourth planet from the Sun, often called the Red Planet', 'Terrestrial', 225.0, 1659, 1);
INSERT INTO public.planet VALUES (true, 'Jupiter', 5, false, 4603, 'The largest planet in the Solar System, a gas giant', 'Gas Giant', 778.5, 1610, 1);
INSERT INTO public.planet VALUES (true, 'Saturn', 6, false, 4503, 'The second-largest planet in the Solar System, a gas giant', 'Gas Giant', 1433.5, 1610, 1);
INSERT INTO public.planet VALUES (true, 'Uranus', 7, false, 4503, 'The seventh planet from the Sun, a gas giant', 'Gas Giant', 2872.5, 1781, 1);
INSERT INTO public.planet VALUES (true, 'Neptune', 8, false, 4503, 'The eighth planet from the Sun, a gas giant', 'Gas Giant', 4495.1, 1846, 1);
INSERT INTO public.planet VALUES (true, 'Pluto', 9, false, 4503, 'A dwarf planet in the Kuiper Belt, formerly classified as a planet', 'Dwarf Planet', 5900.0, 1930, 1);
INSERT INTO public.planet VALUES (true, 'Ceres', 10, false, 4603, 'The largest object in the asteroid belt, a dwarf planet', 'Dwarf Planet', 413.0, 1801, 1);
INSERT INTO public.planet VALUES (true, 'Eris', 11, false, 4603, 'A dwarf planet in the outer Solar System, slightly more massive than Pluto', 'Dwarf Planet', 96000.0, 2005, 1);
INSERT INTO public.planet VALUES (false, 'Haumea', 12, false, 4603, 'A dwarf planet in the Kuiper Belt, with a unique elongated shape', 'Dwarf Planet', 6450.0, 2004, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 'The star at the center of the Solar System', 4600, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.2, 'The closest known star to the Sun', 4850, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 4.3, 'The brightest component of the Alpha Centauri triple star system', 6000, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 8.6, 'The brightest star in the night sky', 225, 1);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 650, 'A red supergiant star in the constellation Orion', 10, 1);
INSERT INTO public.star VALUES (6, 'Vega', 25, 'A main-sequence star in the constellation Lyra', 455, 1);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: identity identity_identity_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.identity
    ADD CONSTRAINT identity_identity_id_key UNIQUE (identity_id);


--
-- Name: identity identity_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.identity
    ADD CONSTRAINT identity_pkey PRIMARY KEY (identity_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

