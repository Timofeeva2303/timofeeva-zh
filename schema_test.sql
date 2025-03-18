PGDMP      /                }            postgres    14.17 (Homebrew)    17.0     _           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            `           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            a           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            b           1262    14118    postgres    DATABASE     j   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE postgres;
                  
   ilaartemev    false            c           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                     
   ilaartemev    false    3682                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                  
   ilaartemev    false            d           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                     
   ilaartemev    false    4            �            1259    16391    sales    TABLE     0  CREATE TABLE public.sales (
    sale_id character varying(50) NOT NULL,
    branch_id character varying(50) NOT NULL,
    user_id character varying(50) NOT NULL,
    sku character varying(255),
    quantity integer,
    price integer,
    total integer GENERATED ALWAYS AS ((quantity * price)) STORED
);
    DROP TABLE public.sales;
       public         heap r       postgres    false    4            �            1259    16385    users    TABLE       CREATE TABLE public.users (
    user_id character varying(50) NOT NULL,
    name character varying(255) NOT NULL,
    "position" character varying(50) NOT NULL,
    skill integer,
    CONSTRAINT users_skill_check CHECK (((skill >= 1) AND (skill <= 10)))
);
    DROP TABLE public.users;
       public         heap r       postgres    false    4            �           2606    16395    sales sales_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (sale_id);
 :   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_pkey;
       public                 postgres    false    210            �           2606    16390    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    209            �           2606    16396    sales sales_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.sales DROP CONSTRAINT sales_user_id_fkey;
       public               postgres    false    210    209    3534           