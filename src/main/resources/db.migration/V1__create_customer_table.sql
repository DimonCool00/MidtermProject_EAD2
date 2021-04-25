CREATE TABLE public.customers(
    id BIGINT generated ALWAYS AS IDENTITY,
    name varchar,
    password varchar,
    email varchar,
    reppassword varchar,
    phone varchar,
    PRIMARY KEY (id)
);
ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: cust_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cust_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
