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
-- Name: games_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games_info (
    player_id integer NOT NULL,
    games_played integer DEFAULT 1 NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games_info OWNER TO freecodecamp;

--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games_info VALUES (40, 1, 9);
INSERT INTO public.games_info VALUES (41, 1, 99);
INSERT INTO public.games_info VALUES (41, 1, 904);
INSERT INTO public.games_info VALUES (42, 1, 639);
INSERT INTO public.games_info VALUES (42, 1, 69);
INSERT INTO public.games_info VALUES (41, 1, 433);
INSERT INTO public.games_info VALUES (41, 1, 640);
INSERT INTO public.games_info VALUES (41, 1, 711);
INSERT INTO public.games_info VALUES (43, 1, 142);
INSERT INTO public.games_info VALUES (43, 1, 541);
INSERT INTO public.games_info VALUES (44, 1, 540);
INSERT INTO public.games_info VALUES (44, 1, 561);
INSERT INTO public.games_info VALUES (43, 1, 703);
INSERT INTO public.games_info VALUES (43, 1, 621);
INSERT INTO public.games_info VALUES (43, 1, 581);
INSERT INTO public.games_info VALUES (45, 1, 165);
INSERT INTO public.games_info VALUES (45, 1, 309);
INSERT INTO public.games_info VALUES (46, 1, 289);
INSERT INTO public.games_info VALUES (46, 1, 489);
INSERT INTO public.games_info VALUES (45, 1, 353);
INSERT INTO public.games_info VALUES (45, 1, 804);
INSERT INTO public.games_info VALUES (45, 1, 536);
INSERT INTO public.games_info VALUES (47, 1, 218);
INSERT INTO public.games_info VALUES (47, 1, 297);
INSERT INTO public.games_info VALUES (48, 1, 798);
INSERT INTO public.games_info VALUES (48, 1, 261);
INSERT INTO public.games_info VALUES (47, 1, 8);
INSERT INTO public.games_info VALUES (47, 1, 448);
INSERT INTO public.games_info VALUES (47, 1, 275);
INSERT INTO public.games_info VALUES (49, 1, 621);
INSERT INTO public.games_info VALUES (49, 1, 795);
INSERT INTO public.games_info VALUES (50, 1, 73);
INSERT INTO public.games_info VALUES (50, 1, 995);
INSERT INTO public.games_info VALUES (49, 1, 270);
INSERT INTO public.games_info VALUES (49, 1, 920);
INSERT INTO public.games_info VALUES (49, 1, 934);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (40, 'Pedro');
INSERT INTO public.players VALUES (41, 'user_1713468468757');
INSERT INTO public.players VALUES (42, 'user_1713468468756');
INSERT INTO public.players VALUES (43, 'user_1713468578442');
INSERT INTO public.players VALUES (44, 'user_1713468578441');
INSERT INTO public.players VALUES (45, 'user_1713468609149');
INSERT INTO public.players VALUES (46, 'user_1713468609148');
INSERT INTO public.players VALUES (47, 'user_1713468642390');
INSERT INTO public.players VALUES (48, 'user_1713468642389');
INSERT INTO public.players VALUES (49, 'user_1713468649087');
INSERT INTO public.players VALUES (50, 'user_1713468649086');


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 50, true);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: games_info games_info_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_info
    ADD CONSTRAINT games_info_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

