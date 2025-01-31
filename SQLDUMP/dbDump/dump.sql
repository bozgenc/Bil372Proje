PGDMP     !                    x            CoffeDB    13.1    13.1 /    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    CoffeDB    DATABASE     f   CREATE DATABASE "CoffeDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "CoffeDB";
                postgres    false            �            1259    16470    Alici    TABLE     x   CREATE TABLE public."Alici" (
    "Sirket_Adi" character varying(50),
    "Sirket_ID" character varying(50) NOT NULL
);
    DROP TABLE public."Alici";
       public         heap    postgres    false            �            1259    16414    Arac    TABLE     �   CREATE TABLE public."Arac" (
    "Kapasite" integer,
    "Plaka" character varying(20) NOT NULL,
    "Sofor_TCKN" character varying(20)
);
    DROP TABLE public."Arac";
       public         heap    postgres    false            �            1259    16400    Cekirdek    TABLE     �   CREATE TABLE public."Cekirdek" (
    "Koken" character varying(50),
    "Miktar" integer,
    "Tur" character varying(50) NOT NULL
);
    DROP TABLE public."Cekirdek";
       public         heap    postgres    false            �            1259    16432 
   Islem_Turu    TABLE     z   CREATE TABLE public."Islem_Turu" (
    "Sorumlu_Koordinator_TCKN" character varying(20),
    "Tur_ID" integer NOT NULL
);
     DROP TABLE public."Islem_Turu";
       public         heap    postgres    false            �            1259    16461    Kavurma    TABLE     �   CREATE TABLE public."Kavurma" (
    "Tur_ID" integer,
    "Giren_Miktar" integer,
    "Cikan_Miktar" integer,
    "İslem_Suresi" integer
);
    DROP TABLE public."Kavurma";
       public         heap    postgres    false            �            1259    16452    Ogutme    TABLE     �   CREATE TABLE public."Ogutme" (
    "Tur_ID" integer,
    "Giren_Miktar" integer,
    "Cikan_Miktar" integer,
    "İslem_Suresi" integer
);
    DROP TABLE public."Ogutme";
       public         heap    postgres    false            �            1259    16405    Paket_Kahve    TABLE     m   CREATE TABLE public."Paket_Kahve" (
    "Gramaj" integer,
    "SKT" date,
    "Tur" character varying(50)
);
 !   DROP TABLE public."Paket_Kahve";
       public         heap    postgres    false            �            1259    16395    Personel    TABLE     5  CREATE TABLE public."Personel" (
    "Tur" integer,
    "TCKN" character varying(20) NOT NULL,
    "Soyad" character varying(50),
    "Nakliyeci_TCKN" character varying(20) NOT NULL,
    "Koordinatör_TCKN" character varying(20) NOT NULL,
    "Ad" character varying(50),
    "Tel_No" character varying(20)
);
    DROP TABLE public."Personel";
       public         heap    postgres    false            �            1259    16443 
   Satin_Alir    TABLE     �   CREATE TABLE public."Satin_Alir" (
    "Odeme_Tarihi" date,
    "Odeme_Miktari" integer,
    "Aciklama" character varying(200),
    "Uretici_TCKN" character varying(20),
    "Urun_Miktari" integer
);
     DROP TABLE public."Satin_Alir";
       public         heap    postgres    false            �            1259    16475    Satis    TABLE     �   CREATE TABLE public."Satis" (
    "Ucret" integer,
    "Tarih" date,
    "Miktar" integer,
    "Alici_Sirket_ID" character varying(50)
);
    DROP TABLE public."Satis";
       public         heap    postgres    false            �            1259    16427    Uretici    TABLE     �   CREATE TABLE public."Uretici" (
    "Ad" character varying(50),
    "Soyad" character varying(50),
    "TCKN" character varying(20) NOT NULL,
    "Koy" character varying(50),
    "Tel_No" character varying(20)
);
    DROP TABLE public."Uretici";
       public         heap    postgres    false            �          0    16470    Alici 
   TABLE DATA           <   COPY public."Alici" ("Sirket_Adi", "Sirket_ID") FROM stdin;
    public          postgres    false    209   �5       �          0    16414    Arac 
   TABLE DATA           C   COPY public."Arac" ("Kapasite", "Plaka", "Sofor_TCKN") FROM stdin;
    public          postgres    false    203   �5       �          0    16400    Cekirdek 
   TABLE DATA           >   COPY public."Cekirdek" ("Koken", "Miktar", "Tur") FROM stdin;
    public          postgres    false    201   �5       �          0    16432 
   Islem_Turu 
   TABLE DATA           L   COPY public."Islem_Turu" ("Sorumlu_Koordinator_TCKN", "Tur_ID") FROM stdin;
    public          postgres    false    205   6       �          0    16461    Kavurma 
   TABLE DATA           ^   COPY public."Kavurma" ("Tur_ID", "Giren_Miktar", "Cikan_Miktar", "İslem_Suresi") FROM stdin;
    public          postgres    false    208   96       �          0    16452    Ogutme 
   TABLE DATA           ]   COPY public."Ogutme" ("Tur_ID", "Giren_Miktar", "Cikan_Miktar", "İslem_Suresi") FROM stdin;
    public          postgres    false    207   V6       �          0    16405    Paket_Kahve 
   TABLE DATA           ?   COPY public."Paket_Kahve" ("Gramaj", "SKT", "Tur") FROM stdin;
    public          postgres    false    202   s6       �          0    16395    Personel 
   TABLE DATA           s   COPY public."Personel" ("Tur", "TCKN", "Soyad", "Nakliyeci_TCKN", "Koordinatör_TCKN", "Ad", "Tel_No") FROM stdin;
    public          postgres    false    200   �6       �          0    16443 
   Satin_Alir 
   TABLE DATA           s   COPY public."Satin_Alir" ("Odeme_Tarihi", "Odeme_Miktari", "Aciklama", "Uretici_TCKN", "Urun_Miktari") FROM stdin;
    public          postgres    false    206   �6       �          0    16475    Satis 
   TABLE DATA           P   COPY public."Satis" ("Ucret", "Tarih", "Miktar", "Alici_Sirket_ID") FROM stdin;
    public          postgres    false    210   �6       �          0    16427    Uretici 
   TABLE DATA           K   COPY public."Uretici" ("Ad", "Soyad", "TCKN", "Koy", "Tel_No") FROM stdin;
    public          postgres    false    204   �6       [           2606    16474    Alici Alici_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Alici"
    ADD CONSTRAINT "Alici_pkey" PRIMARY KEY ("Sirket_ID");
 >   ALTER TABLE ONLY public."Alici" DROP CONSTRAINT "Alici_pkey";
       public            postgres    false    209            P           2606    16418    Arac Arac_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Arac"
    ADD CONSTRAINT "Arac_pkey" PRIMARY KEY ("Plaka");
 <   ALTER TABLE ONLY public."Arac" DROP CONSTRAINT "Arac_pkey";
       public            postgres    false    203            M           2606    16404    Cekirdek Cekirdek_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Cekirdek"
    ADD CONSTRAINT "Cekirdek_pkey" PRIMARY KEY ("Tur");
 D   ALTER TABLE ONLY public."Cekirdek" DROP CONSTRAINT "Cekirdek_pkey";
       public            postgres    false    201            U           2606    16436    Islem_Turu Islem_Turu_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Islem_Turu"
    ADD CONSTRAINT "Islem_Turu_pkey" PRIMARY KEY ("Tur_ID");
 H   ALTER TABLE ONLY public."Islem_Turu" DROP CONSTRAINT "Islem_Turu_pkey";
       public            postgres    false    205            I           2606    16420    Personel Personel_TCKN_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Personel"
    ADD CONSTRAINT "Personel_TCKN_key" UNIQUE ("TCKN");
 H   ALTER TABLE ONLY public."Personel" DROP CONSTRAINT "Personel_TCKN_key";
       public            postgres    false    200            K           2606    16399    Personel Personel_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Personel"
    ADD CONSTRAINT "Personel_pkey" PRIMARY KEY ("TCKN", "Nakliyeci_TCKN", "Koordinatör_TCKN");
 D   ALTER TABLE ONLY public."Personel" DROP CONSTRAINT "Personel_pkey";
       public            postgres    false    200    200    200            S           2606    16431    Uretici Uretici_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Uretici"
    ADD CONSTRAINT "Uretici_pkey" PRIMARY KEY ("TCKN");
 B   ALTER TABLE ONLY public."Uretici" DROP CONSTRAINT "Uretici_pkey";
       public            postgres    false    204            N           1259    16413    Tur    INDEX     @   CREATE INDEX "Tur" ON public."Paket_Kahve" USING btree ("Tur");
    DROP INDEX public."Tur";
       public            postgres    false    202            X           1259    16460    islem_turu_fkey    INDEX     H   CREATE INDEX islem_turu_fkey ON public."Ogutme" USING btree ("Tur_ID");
 #   DROP INDEX public.islem_turu_fkey;
       public            postgres    false    207            \           1259    16483    sirket_id_fk    INDEX     M   CREATE INDEX sirket_id_fk ON public."Satis" USING btree ("Alici_Sirket_ID");
     DROP INDEX public.sirket_id_fk;
       public            postgres    false    210            Q           1259    16426    sofor_tckn_fkey    INDEX     J   CREATE INDEX sofor_tckn_fkey ON public."Arac" USING btree ("Sofor_TCKN");
 #   DROP INDEX public.sofor_tckn_fkey;
       public            postgres    false    203            V           1259    16442    sorumlu_koordinator_tckn_fkey    INDEX     l   CREATE INDEX sorumlu_koordinator_tckn_fkey ON public."Islem_Turu" USING btree ("Sorumlu_Koordinator_TCKN");
 1   DROP INDEX public.sorumlu_koordinator_tckn_fkey;
       public            postgres    false    205            Y           1259    16469 
   turid_fkey    INDEX     D   CREATE INDEX turid_fkey ON public."Kavurma" USING btree ("Tur_ID");
    DROP INDEX public.turid_fkey;
       public            postgres    false    208            W           1259    16451    uretici_tckn_fkey    INDEX     T   CREATE INDEX uretici_tckn_fkey ON public."Satin_Alir" USING btree ("Uretici_TCKN");
 %   DROP INDEX public.uretici_tckn_fkey;
       public            postgres    false    206            ^           2606    16421    Arac Arac_Sofor_TCKN_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Arac"
    ADD CONSTRAINT "Arac_Sofor_TCKN_fkey" FOREIGN KEY ("Sofor_TCKN") REFERENCES public."Personel"("TCKN") NOT VALID;
 G   ALTER TABLE ONLY public."Arac" DROP CONSTRAINT "Arac_Sofor_TCKN_fkey";
       public          postgres    false    200    203    2889            _           2606    16437 3   Islem_Turu Islem_Turu_Sorumlu_Koordinator_TCKN_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Islem_Turu"
    ADD CONSTRAINT "Islem_Turu_Sorumlu_Koordinator_TCKN_fkey" FOREIGN KEY ("Sorumlu_Koordinator_TCKN") REFERENCES public."Personel"("TCKN");
 a   ALTER TABLE ONLY public."Islem_Turu" DROP CONSTRAINT "Islem_Turu_Sorumlu_Koordinator_TCKN_fkey";
       public          postgres    false    200    205    2889            b           2606    16464    Kavurma Kavurma_Tur_ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Kavurma"
    ADD CONSTRAINT "Kavurma_Tur_ID_fkey" FOREIGN KEY ("Tur_ID") REFERENCES public."Islem_Turu"("Tur_ID");
 I   ALTER TABLE ONLY public."Kavurma" DROP CONSTRAINT "Kavurma_Tur_ID_fkey";
       public          postgres    false    2901    205    208            a           2606    16455    Ogutme Ogutme_Tur_ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ogutme"
    ADD CONSTRAINT "Ogutme_Tur_ID_fkey" FOREIGN KEY ("Tur_ID") REFERENCES public."Islem_Turu"("Tur_ID");
 G   ALTER TABLE ONLY public."Ogutme" DROP CONSTRAINT "Ogutme_Tur_ID_fkey";
       public          postgres    false    205    2901    207            ]           2606    16408     Paket_Kahve Paket_Kahve_Tur_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Paket_Kahve"
    ADD CONSTRAINT "Paket_Kahve_Tur_fkey" FOREIGN KEY ("Tur") REFERENCES public."Cekirdek"("Tur");
 N   ALTER TABLE ONLY public."Paket_Kahve" DROP CONSTRAINT "Paket_Kahve_Tur_fkey";
       public          postgres    false    2893    202    201            `           2606    16446 '   Satin_Alir Satin_Alir_Uretici_TCKN_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Satin_Alir"
    ADD CONSTRAINT "Satin_Alir_Uretici_TCKN_fkey" FOREIGN KEY ("Uretici_TCKN") REFERENCES public."Uretici"("TCKN");
 U   ALTER TABLE ONLY public."Satin_Alir" DROP CONSTRAINT "Satin_Alir_Uretici_TCKN_fkey";
       public          postgres    false    2899    206    204            c           2606    16478     Satis Satis_Alici_Sirket_ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Satis"
    ADD CONSTRAINT "Satis_Alici_Sirket_ID_fkey" FOREIGN KEY ("Alici_Sirket_ID") REFERENCES public."Alici"("Sirket_ID");
 N   ALTER TABLE ONLY public."Satis" DROP CONSTRAINT "Satis_Alici_Sirket_ID_fkey";
       public          postgres    false    210    2907    209            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     