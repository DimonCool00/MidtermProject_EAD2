CREATE TABLE public.rooms12(
            id BIGINT generated ALWAYS AS IDENTITY,
            roomname varchar,
            description varchar,
            price varchar,
            phone varchar,
            roomtype varchar,
            PRIMARY KEY (id)
);
ALTER TABLE public.rooms12 OWNER TO postgres;

--
-- Name: room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.rooms12 ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.room_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
