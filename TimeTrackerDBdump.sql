PGDMP             
            {            TimeTrackerDB    15.1    15.1 P    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16398    TimeTrackerDB    DATABASE     ?   CREATE DATABASE "TimeTrackerDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "TimeTrackerDB";
                postgres    false                        2615    16400    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                postgres    false                        2615    16399    main    SCHEMA        CREATE SCHEMA main;
    DROP SCHEMA main;
                postgres    false            ?           0    0    SCHEMA main    COMMENT     L   COMMENT ON SCHEMA main IS 'Основная схема для Timetracker';
                   postgres    false    6            ?            1259    16566 	   auth_data    TABLE     s   CREATE TABLE auth.auth_data (
    user_id integer NOT NULL,
    login text NOT NULL,
    password text NOT NULL
);
    DROP TABLE auth.auth_data;
       auth         heap    postgres    false    7            ?            1259    16580    role    TABLE     l   CREATE TABLE auth.role (
    role_id integer NOT NULL,
    role_name text NOT NULL,
    description text
);
    DROP TABLE auth.role;
       auth         heap    postgres    false    7            ?            1259    16561    session    TABLE     ?   CREATE TABLE auth.session (
    session_id integer NOT NULL,
    user_id integer NOT NULL,
    date_time_session_start timestamp with time zone NOT NULL,
    date_time_session_end timestamp with time zone NOT NULL
);
    DROP TABLE auth.session;
       auth         heap    postgres    false    7            ?            1259    16573    user    TABLE     ?   CREATE TABLE auth."user" (
    user_id integer NOT NULL,
    firstname text NOT NULL,
    lastname text NOT NULL,
    middlename text NOT NULL,
    phone text NOT NULL,
    email text NOT NULL,
    disabled boolean,
    role_id integer NOT NULL
);
    DROP TABLE auth."user";
       auth         heap    postgres    false    7            ?            1259    16587    user_in_role    TABLE     _   CREATE TABLE auth.user_in_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE auth.user_in_role;
       auth         heap    postgres    false    7            ?            1259    16443 
   change_log    TABLE     Y  CREATE TABLE main.change_log (
    event_id integer NOT NULL,
    event_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    change_user_id integer NOT NULL,
    event_type_id integer NOT NULL,
    event_object_id integer NOT NULL,
    object_id integer NOT NULL,
    object_name text,
    new_object_id integer NOT NULL
);
    DROP TABLE main.change_log;
       main         heap    postgres    false    6            ?            1259    16436 	   directory    TABLE     ?   CREATE TABLE main.directory (
    directory_id integer NOT NULL,
    timer_id integer NOT NULL,
    user_id integer NOT NULL,
    directory_name text
);
    DROP TABLE main.directory;
       main         heap    postgres    false    6            ?            1259    16464    event_object    TABLE     n   CREATE TABLE main.event_object (
    event_object_id integer NOT NULL,
    event_object_name text NOT NULL
);
    DROP TABLE main.event_object;
       main         heap    postgres    false    6            ?            1259    16457 
   event_type    TABLE     h   CREATE TABLE main.event_type (
    event_type_id integer NOT NULL,
    event_type_name text NOT NULL
);
    DROP TABLE main.event_type;
       main         heap    postgres    false    6            ?            1259    16429    graphic    TABLE     ?   CREATE TABLE main.graphic (
    graphic_id integer NOT NULL,
    create_user_id integer NOT NULL,
    time_id integer NOT NULL,
    type text NOT NULL,
    graphic_name text,
    object_id integer NOT NULL
);
    DROP TABLE main.graphic;
       main         heap    postgres    false    6            ?            1259    16450    object    TABLE     t   CREATE TABLE main.object (
    object_id integer NOT NULL,
    obejct_json text NOT NULL,
    is_archvie boolean
);
    DROP TABLE main.object;
       main         heap    postgres    false    6            ?            1259    16408    report    TABLE     ?   CREATE TABLE main.report (
    report_id integer NOT NULL,
    timer_id integer,
    create_user_id integer NOT NULL,
    date_formation timestamp with time zone NOT NULL,
    reportname text,
    object_id integer NOT NULL
);
    DROP TABLE main.report;
       main         heap    postgres    false    6            ?            1259    16422    role    TABLE     l   CREATE TABLE main.role (
    role_id integer NOT NULL,
    role_name text NOT NULL,
    description text
);
    DROP TABLE main.role;
       main         heap    postgres    false    6            ?            1259    16415    timer    TABLE     ?   CREATE TABLE main.timer (
    timer_id integer NOT NULL,
    user_id integer NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time time with time zone NOT NULL,
    description text,
    app_name text,
    object_id integer NOT NULL
);
    DROP TABLE main.timer;
       main         heap    postgres    false    6            ?            1259    16528    timer_graphic    TABLE     d   CREATE TABLE main.timer_graphic (
    timer_id integer NOT NULL,
    graphic_id integer NOT NULL
);
    DROP TABLE main.timer_graphic;
       main         heap    postgres    false    6            ?            1259    16502    timer_report    TABLE     b   CREATE TABLE main.timer_report (
    timer_id integer NOT NULL,
    report_id integer NOT NULL
);
    DROP TABLE main.timer_report;
       main         heap    postgres    false    6            ?            1259    16401    user    TABLE     ?   CREATE TABLE main."user" (
    user_id integer NOT NULL,
    firstname text NOT NULL,
    lastname text NOT NULL,
    middlename text NOT NULL,
    phone text,
    email text,
    disabled boolean,
    object_id integer NOT NULL
);
    DROP TABLE main."user";
       main         heap    postgres    false    6            ?            1259    16515    user_graphic    TABLE     b   CREATE TABLE main.user_graphic (
    user_id integer NOT NULL,
    graphic_id integer NOT NULL
);
    DROP TABLE main.user_graphic;
       main         heap    postgres    false    6            ?            1259    16471    user_in_role    TABLE     _   CREATE TABLE main.user_in_role (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE main.user_in_role;
       main         heap    postgres    false    6            ?            1259    16489    user_report    TABLE     `   CREATE TABLE main.user_report (
    user_id integer NOT NULL,
    report_id integer NOT NULL
);
    DROP TABLE main.user_report;
       main         heap    postgres    false    6                      0    16566 	   auth_data 
   TABLE DATA           ;   COPY auth.auth_data (user_id, login, password) FROM stdin;
    auth          postgres    false    232   fZ       ?          0    16580    role 
   TABLE DATA           =   COPY auth.role (role_id, role_name, description) FROM stdin;
    auth          postgres    false    234   ?Z       ~          0    16561    session 
   TABLE DATA           d   COPY auth.session (session_id, user_id, date_time_session_start, date_time_session_end) FROM stdin;
    auth          postgres    false    231   ?Z       ?          0    16573    user 
   TABLE DATA           i   COPY auth."user" (user_id, firstname, lastname, middlename, phone, email, disabled, role_id) FROM stdin;
    auth          postgres    false    233   ?Z       ?          0    16587    user_in_role 
   TABLE DATA           6   COPY auth.user_in_role (user_id, role_id) FROM stdin;
    auth          postgres    false    235   ?Z       u          0    16443 
   change_log 
   TABLE DATA           ?   COPY main.change_log (event_id, event_time, user_id, change_user_id, event_type_id, event_object_id, object_id, object_name, new_object_id) FROM stdin;
    main          postgres    false    222   ?Z       t          0    16436 	   directory 
   TABLE DATA           R   COPY main.directory (directory_id, timer_id, user_id, directory_name) FROM stdin;
    main          postgres    false    221   [       x          0    16464    event_object 
   TABLE DATA           H   COPY main.event_object (event_object_id, event_object_name) FROM stdin;
    main          postgres    false    225   1[       w          0    16457 
   event_type 
   TABLE DATA           B   COPY main.event_type (event_type_id, event_type_name) FROM stdin;
    main          postgres    false    224   N[       s          0    16429    graphic 
   TABLE DATA           c   COPY main.graphic (graphic_id, create_user_id, time_id, type, graphic_name, object_id) FROM stdin;
    main          postgres    false    220   k[       v          0    16450    object 
   TABLE DATA           B   COPY main.object (object_id, obejct_json, is_archvie) FROM stdin;
    main          postgres    false    223   ?[       p          0    16408    report 
   TABLE DATA           j   COPY main.report (report_id, timer_id, create_user_id, date_formation, reportname, object_id) FROM stdin;
    main          postgres    false    217   ?[       r          0    16422    role 
   TABLE DATA           =   COPY main.role (role_id, role_name, description) FROM stdin;
    main          postgres    false    219   ?[       q          0    16415    timer 
   TABLE DATA           h   COPY main.timer (timer_id, user_id, start_time, end_time, description, app_name, object_id) FROM stdin;
    main          postgres    false    218   ?[       }          0    16528    timer_graphic 
   TABLE DATA           ;   COPY main.timer_graphic (timer_id, graphic_id) FROM stdin;
    main          postgres    false    230   ?[       {          0    16502    timer_report 
   TABLE DATA           9   COPY main.timer_report (timer_id, report_id) FROM stdin;
    main          postgres    false    228   \       o          0    16401    user 
   TABLE DATA           k   COPY main."user" (user_id, firstname, lastname, middlename, phone, email, disabled, object_id) FROM stdin;
    main          postgres    false    216   6\       |          0    16515    user_graphic 
   TABLE DATA           9   COPY main.user_graphic (user_id, graphic_id) FROM stdin;
    main          postgres    false    229   S\       y          0    16471    user_in_role 
   TABLE DATA           6   COPY main.user_in_role (user_id, role_id) FROM stdin;
    main          postgres    false    226   p\       z          0    16489    user_report 
   TABLE DATA           7   COPY main.user_report (user_id, report_id) FROM stdin;
    main          postgres    false    227   ?\       ?           2606    16565    session Session_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY auth.session
    ADD CONSTRAINT "Session_pkey" PRIMARY KEY (session_id);
 >   ALTER TABLE ONLY auth.session DROP CONSTRAINT "Session_pkey";
       auth            postgres    false    231            ?           2606    16572    auth_data auth_data_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY auth.auth_data
    ADD CONSTRAINT auth_data_pkey PRIMARY KEY (user_id);
 @   ALTER TABLE ONLY auth.auth_data DROP CONSTRAINT auth_data_pkey;
       auth            postgres    false    232            ?           2606    16586    role role_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);
 6   ALTER TABLE ONLY auth.role DROP CONSTRAINT role_pkey;
       auth            postgres    false    234            ?           2606    16579    user user_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY auth."user" DROP CONSTRAINT user_pkey;
       auth            postgres    false    233            ?           2606    16449    change_log change_log_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY main.change_log
    ADD CONSTRAINT change_log_pkey PRIMARY KEY (event_id);
 B   ALTER TABLE ONLY main.change_log DROP CONSTRAINT change_log_pkey;
       main            postgres    false    222            ?           2606    16442    directory directory_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY main.directory
    ADD CONSTRAINT directory_pkey PRIMARY KEY (directory_id);
 @   ALTER TABLE ONLY main.directory DROP CONSTRAINT directory_pkey;
       main            postgres    false    221            ?           2606    16470    event_object event_object_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY main.event_object
    ADD CONSTRAINT event_object_pkey PRIMARY KEY (event_object_id);
 F   ALTER TABLE ONLY main.event_object DROP CONSTRAINT event_object_pkey;
       main            postgres    false    225            ?           2606    16463    event_type event_type_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY main.event_type
    ADD CONSTRAINT event_type_pkey PRIMARY KEY (event_type_id);
 B   ALTER TABLE ONLY main.event_type DROP CONSTRAINT event_type_pkey;
       main            postgres    false    224            ?           2606    16435    graphic graphic_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY main.graphic
    ADD CONSTRAINT graphic_pkey PRIMARY KEY (graphic_id);
 <   ALTER TABLE ONLY main.graphic DROP CONSTRAINT graphic_pkey;
       main            postgres    false    220            ?           2606    16456    object object_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY main.object
    ADD CONSTRAINT object_pkey PRIMARY KEY (object_id);
 :   ALTER TABLE ONLY main.object DROP CONSTRAINT object_pkey;
       main            postgres    false    223            ?           2606    16414    report report_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY main.report
    ADD CONSTRAINT report_pkey PRIMARY KEY (report_id);
 :   ALTER TABLE ONLY main.report DROP CONSTRAINT report_pkey;
       main            postgres    false    217            ?           2606    16428    role role_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY main.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);
 6   ALTER TABLE ONLY main.role DROP CONSTRAINT role_pkey;
       main            postgres    false    219            ?           2606    16421    timer timer_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY main.timer
    ADD CONSTRAINT timer_pkey PRIMARY KEY (timer_id);
 8   ALTER TABLE ONLY main.timer DROP CONSTRAINT timer_pkey;
       main            postgres    false    218            ?           2606    16407    user user_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY main."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 8   ALTER TABLE ONLY main."user" DROP CONSTRAINT user_pkey;
       main            postgres    false    216            ?           2606    16590    user_in_role role_id    FK CONSTRAINT     s   ALTER TABLE ONLY auth.user_in_role
    ADD CONSTRAINT role_id FOREIGN KEY (role_id) REFERENCES auth.role(role_id);
 <   ALTER TABLE ONLY auth.user_in_role DROP CONSTRAINT role_id;
       auth          postgres    false    234    235    3277            ?           2606    16595    user_in_role user_id    FK CONSTRAINT     u   ALTER TABLE ONLY auth.user_in_role
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES auth."user"(user_id);
 <   ALTER TABLE ONLY auth.user_in_role DROP CONSTRAINT user_id;
       auth          postgres    false    235    233    3275            ?           2606    16601    auth_data user_id    FK CONSTRAINT     |   ALTER TABLE ONLY auth.auth_data
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES auth."user"(user_id) NOT VALID;
 9   ALTER TABLE ONLY auth.auth_data DROP CONSTRAINT user_id;
       auth          postgres    false    3275    233    232            ?           2606    16606    session user_id    FK CONSTRAINT     z   ALTER TABLE ONLY auth.session
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES auth."user"(user_id) NOT VALID;
 7   ALTER TABLE ONLY auth.session DROP CONSTRAINT user_id;
       auth          postgres    false    233    231    3275            ?           2606    16546    change_log event_object    FK CONSTRAINT     ?   ALTER TABLE ONLY main.change_log
    ADD CONSTRAINT event_object FOREIGN KEY (event_object_id) REFERENCES main.event_object(event_object_id) NOT VALID;
 ?   ALTER TABLE ONLY main.change_log DROP CONSTRAINT event_object;
       main          postgres    false    222    3269    225            ?           2606    16541    change_log event_type    FK CONSTRAINT     ?   ALTER TABLE ONLY main.change_log
    ADD CONSTRAINT event_type FOREIGN KEY (event_type_id) REFERENCES main.event_type(event_type_id) NOT VALID;
 =   ALTER TABLE ONLY main.change_log DROP CONSTRAINT event_type;
       main          postgres    false    224    222    3267            ?           2606    16523    user_graphic graphic_id    FK CONSTRAINT        ALTER TABLE ONLY main.user_graphic
    ADD CONSTRAINT graphic_id FOREIGN KEY (graphic_id) REFERENCES main.graphic(graphic_id);
 ?   ALTER TABLE ONLY main.user_graphic DROP CONSTRAINT graphic_id;
       main          postgres    false    3259    220    229            ?           2606    16536    timer_graphic graphic_id    FK CONSTRAINT     ?   ALTER TABLE ONLY main.timer_graphic
    ADD CONSTRAINT graphic_id FOREIGN KEY (graphic_id) REFERENCES main.graphic(graphic_id);
 @   ALTER TABLE ONLY main.timer_graphic DROP CONSTRAINT graphic_id;
       main          postgres    false    220    3259    230            ?           2606    16556    change_log object_id    FK CONSTRAINT     ?   ALTER TABLE ONLY main.change_log
    ADD CONSTRAINT object_id FOREIGN KEY (object_id) REFERENCES main.object(object_id) NOT VALID;
 <   ALTER TABLE ONLY main.change_log DROP CONSTRAINT object_id;
       main          postgres    false    222    3265    223            ?           2606    16497    user_report report_id    FK CONSTRAINT     z   ALTER TABLE ONLY main.user_report
    ADD CONSTRAINT report_id FOREIGN KEY (report_id) REFERENCES main.report(report_id);
 =   ALTER TABLE ONLY main.user_report DROP CONSTRAINT report_id;
       main          postgres    false    217    227    3253            ?           2606    16510    timer_report report_id    FK CONSTRAINT     {   ALTER TABLE ONLY main.timer_report
    ADD CONSTRAINT report_id FOREIGN KEY (report_id) REFERENCES main.report(report_id);
 >   ALTER TABLE ONLY main.timer_report DROP CONSTRAINT report_id;
       main          postgres    false    228    3253    217            ?           2606    16479    user_in_role role_id    FK CONSTRAINT     s   ALTER TABLE ONLY main.user_in_role
    ADD CONSTRAINT role_id FOREIGN KEY (role_id) REFERENCES main.role(role_id);
 <   ALTER TABLE ONLY main.user_in_role DROP CONSTRAINT role_id;
       main          postgres    false    3257    226    219            ?           2606    16505    timer_report timer_id    FK CONSTRAINT     w   ALTER TABLE ONLY main.timer_report
    ADD CONSTRAINT timer_id FOREIGN KEY (timer_id) REFERENCES main.timer(timer_id);
 =   ALTER TABLE ONLY main.timer_report DROP CONSTRAINT timer_id;
       main          postgres    false    3255    228    218            ?           2606    16531    timer_graphic timer_id    FK CONSTRAINT     x   ALTER TABLE ONLY main.timer_graphic
    ADD CONSTRAINT timer_id FOREIGN KEY (timer_id) REFERENCES main.timer(timer_id);
 >   ALTER TABLE ONLY main.timer_graphic DROP CONSTRAINT timer_id;
       main          postgres    false    230    218    3255            ?           2606    16474    user_in_role user_id    FK CONSTRAINT     u   ALTER TABLE ONLY main.user_in_role
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES main."user"(user_id);
 <   ALTER TABLE ONLY main.user_in_role DROP CONSTRAINT user_id;
       main          postgres    false    226    3251    216            ?           2606    16484    timer user_id    FK CONSTRAINT     x   ALTER TABLE ONLY main.timer
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES main."user"(user_id) NOT VALID;
 5   ALTER TABLE ONLY main.timer DROP CONSTRAINT user_id;
       main          postgres    false    3251    218    216            ?           2606    16492    user_report user_id    FK CONSTRAINT     t   ALTER TABLE ONLY main.user_report
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES main."user"(user_id);
 ;   ALTER TABLE ONLY main.user_report DROP CONSTRAINT user_id;
       main          postgres    false    216    227    3251            ?           2606    16518    user_graphic user_id    FK CONSTRAINT     u   ALTER TABLE ONLY main.user_graphic
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES main."user"(user_id);
 <   ALTER TABLE ONLY main.user_graphic DROP CONSTRAINT user_id;
       main          postgres    false    229    216    3251            ?           2606    16551    change_log user_id    FK CONSTRAINT     }   ALTER TABLE ONLY main.change_log
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES main."user"(user_id) NOT VALID;
 :   ALTER TABLE ONLY main.change_log DROP CONSTRAINT user_id;
       main          postgres    false    216    222    3251                  x?????? ? ?      ?      x?????? ? ?      ~      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      u      x?????? ? ?      t      x?????? ? ?      x      x?????? ? ?      w      x?????? ? ?      s      x?????? ? ?      v      x?????? ? ?      p      x?????? ? ?      r      x?????? ? ?      q      x?????? ? ?      }      x?????? ? ?      {      x?????? ? ?      o      x?????? ? ?      |      x?????? ? ?      y      x?????? ? ?      z      x?????? ? ?     