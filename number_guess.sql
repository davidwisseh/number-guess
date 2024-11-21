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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 13, 252);
INSERT INTO public.games VALUES (2, 14, 381);
INSERT INTO public.games VALUES (3, 15, 527);
INSERT INTO public.games VALUES (4, 16, 276);
INSERT INTO public.games VALUES (5, 1, 1);
INSERT INTO public.games VALUES (6, 18, 929);
INSERT INTO public.games VALUES (7, 19, 350);
INSERT INTO public.games VALUES (8, 20, 1);
INSERT INTO public.games VALUES (9, 1, 10);
INSERT INTO public.games VALUES (10, 21, 698);
INSERT INTO public.games VALUES (11, 22, 180);
INSERT INTO public.games VALUES (12, 1, 1);
INSERT INTO public.games VALUES (13, 1, 1);
INSERT INTO public.games VALUES (14, 1, 2);
INSERT INTO public.games VALUES (15, 25, 76);
INSERT INTO public.games VALUES (16, 25, 744);
INSERT INTO public.games VALUES (17, 26, 458);
INSERT INTO public.games VALUES (18, 26, 149);
INSERT INTO public.games VALUES (19, 25, 35);
INSERT INTO public.games VALUES (20, 25, 574);
INSERT INTO public.games VALUES (21, 25, 316);
INSERT INTO public.games VALUES (22, 27, 622);
INSERT INTO public.games VALUES (23, 27, 671);
INSERT INTO public.games VALUES (24, 28, 336);
INSERT INTO public.games VALUES (25, 28, 613);
INSERT INTO public.games VALUES (26, 27, 172);
INSERT INTO public.games VALUES (27, 27, 706);
INSERT INTO public.games VALUES (28, 27, 829);
INSERT INTO public.games VALUES (29, 29, 686);
INSERT INTO public.games VALUES (30, 29, 597);
INSERT INTO public.games VALUES (31, 30, 4);
INSERT INTO public.games VALUES (32, 30, 659);
INSERT INTO public.games VALUES (33, 29, 612);
INSERT INTO public.games VALUES (34, 29, 408);
INSERT INTO public.games VALUES (35, 29, 512);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'david');
INSERT INTO public.users VALUES (2, 'DAVID');
INSERT INTO public.users VALUES (3, 'user_1732166730722');
INSERT INTO public.users VALUES (4, 'user_1732166730721');
INSERT INTO public.users VALUES (5, 'user_1732166880349');
INSERT INTO public.users VALUES (6, 'user_1732166880348');
INSERT INTO public.users VALUES (7, 'user_1732168748576');
INSERT INTO public.users VALUES (8, 'user_1732168748575');
INSERT INTO public.users VALUES (9, 'user_1732169255218');
INSERT INTO public.users VALUES (10, 'user_1732169255217');
INSERT INTO public.users VALUES (11, 'user_1732169485531');
INSERT INTO public.users VALUES (12, 'user_1732169485530');
INSERT INTO public.users VALUES (13, 'user_1732169536031');
INSERT INTO public.users VALUES (14, 'user_1732169536030');
INSERT INTO public.users VALUES (15, 'user_1732169612450');
INSERT INTO public.users VALUES (16, 'user_1732169612449');
INSERT INTO public.users VALUES (17, 'davdi');
INSERT INTO public.users VALUES (18, 'user_1732170979454');
INSERT INTO public.users VALUES (19, 'user_1732170979453');
INSERT INTO public.users VALUES (20, 'davud');
INSERT INTO public.users VALUES (21, 'user_1732171324748');
INSERT INTO public.users VALUES (22, 'user_1732171324747');
INSERT INTO public.users VALUES (23, 'davi');
INSERT INTO public.users VALUES (24, '[A');
INSERT INTO public.users VALUES (25, 'user_1732205541829');
INSERT INTO public.users VALUES (26, 'user_1732205541828');
INSERT INTO public.users VALUES (27, 'user_1732205590930');
INSERT INTO public.users VALUES (28, 'user_1732205590929');
INSERT INTO public.users VALUES (29, 'user_1732205634111');
INSERT INTO public.users VALUES (30, 'user_1732205634110');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id, user_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

