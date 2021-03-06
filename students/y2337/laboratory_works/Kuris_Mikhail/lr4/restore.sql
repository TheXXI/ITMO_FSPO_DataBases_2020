PGDMP         $        
    
    x            Hotel    13.0    13.0 3    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    Hotel    DATABASE     R   CREATE DATABASE "Hotel" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "Hotel";
                postgres    false            �            1259    16400    Администратор    TABLE     �   CREATE TABLE public."Администратор" (
    "ФИО_администратора" character varying(60) NOT NULL,
    "Стаж" integer NOT NULL,
    "Пол" character varying(7) NOT NULL
);
 0   DROP TABLE public."Администратор";
       public         heap    postgres    false            �            1259    16453 
   Заказ    TABLE     S  CREATE TABLE public."Заказ" (
    "Номер_паспорта" integer NOT NULL,
    "id_номера" integer NOT NULL,
    "ФИО_администратора" character varying(60) NOT NULL,
    "Время" time with time zone NOT NULL,
    "id_продукта" integer NOT NULL,
    "Количество" integer NOT NULL
);
     DROP TABLE public."Заказ";
       public         heap    postgres    false            �            1259    16406    Заселение    TABLE       CREATE TABLE public."Заселение" (
    "Номер_паспорта" integer NOT NULL,
    "Id_номера" integer NOT NULL,
    "ФИО_администратора" character varying(60) NOT NULL,
    "Дата" date NOT NULL,
    "Кол-во_дней" integer NOT NULL
);
 (   DROP TABLE public."Заселение";
       public         heap    postgres    false            �            1259    16409 #   Исполнитель заказа    TABLE     (  CREATE TABLE public."Исполнитель заказа" (
    "Фио_исполнителя" character varying(60) NOT NULL,
    "Номер_паспорта" integer NOT NULL,
    "Id_номера" integer NOT NULL,
    "ФИО_администратора" character varying(60) NOT NULL
);
 9   DROP TABLE public."Исполнитель заказа";
       public         heap    postgres    false            �            1259    16412 
   Номер    TABLE     �   CREATE TABLE public."Номер" (
    "Id_номера" integer NOT NULL,
    "Этаж" integer NOT NULL,
    "Цена" integer NOT NULL,
    "Тип" character varying(30) NOT NULL
);
     DROP TABLE public."Номер";
       public         heap    postgres    false            �            1259    16415    Продукты    TABLE     '  CREATE TABLE public."Продукты" (
    "id_продукта" integer NOT NULL,
    "Наименование" character varying(40) NOT NULL,
    "Категория" character varying(30) NOT NULL,
    "Стоимость" integer NOT NULL,
    "Количество" integer NOT NULL
);
 &   DROP TABLE public."Продукты";
       public         heap    postgres    false            �            1259    16418    Уборка    TABLE       CREATE TABLE public."Уборка" (
    "Id_номера" integer NOT NULL,
    "ФИО_администратора" character varying(60) NOT NULL,
    "ФИО_уборщика" character varying(60) NOT NULL,
    "Время" time with time zone NOT NULL
);
 "   DROP TABLE public."Уборка";
       public         heap    postgres    false            �            1259    16421    Уборщик    TABLE       CREATE TABLE public."Уборщик" (
    "ФИО_уборщика" character varying(60) NOT NULL,
    "ФИО_Администратора" character varying(60) NOT NULL,
    "Национальность" character varying(30) NOT NULL,
    "Возраст" integer NOT NULL
);
 $   DROP TABLE public."Уборщик";
       public         heap    postgres    false            �            1259    16424    Человек    TABLE     �   CREATE TABLE public."Человек" (
    "Номер_паспорта" integer NOT NULL,
    "ФИО_человека" character varying(60) NOT NULL,
    "Город" character varying(30) NOT NULL
);
 $   DROP TABLE public."Человек";
       public         heap    postgres    false            �          0    16400    Администратор 
   TABLE DATA           s   COPY public."Администратор" ("ФИО_администратора", "Стаж", "Пол") FROM stdin;
    public          postgres    false    200   �L       �          0    16453 
   Заказ 
   TABLE DATA           �   COPY public."Заказ" ("Номер_паспорта", "id_номера", "ФИО_администратора", "Время", "id_продукта", "Количество") FROM stdin;
    public          postgres    false    208   CM       �          0    16406    Заселение 
   TABLE DATA           �   COPY public."Заселение" ("Номер_паспорта", "Id_номера", "ФИО_администратора", "Дата", "Кол-во_дней") FROM stdin;
    public          postgres    false    201   �M       �          0    16409 #   Исполнитель заказа 
   TABLE DATA           �   COPY public."Исполнитель заказа" ("Фио_исполнителя", "Номер_паспорта", "Id_номера", "ФИО_администратора") FROM stdin;
    public          postgres    false    202   �M       �          0    16412 
   Номер 
   TABLE DATA           [   COPY public."Номер" ("Id_номера", "Этаж", "Цена", "Тип") FROM stdin;
    public          postgres    false    203   vN       �          0    16415    Продукты 
   TABLE DATA           �   COPY public."Продукты" ("id_продукта", "Наименование", "Категория", "Стоимость", "Количество") FROM stdin;
    public          postgres    false    204   �N       �          0    16418    Уборка 
   TABLE DATA           �   COPY public."Уборка" ("Id_номера", "ФИО_администратора", "ФИО_уборщика", "Время") FROM stdin;
    public          postgres    false    205   EO       �          0    16421    Уборщик 
   TABLE DATA           �   COPY public."Уборщик" ("ФИО_уборщика", "ФИО_Администратора", "Национальность", "Возраст") FROM stdin;
    public          postgres    false    206   �O       �          0    16424    Человек 
   TABLE DATA           r   COPY public."Человек" ("Номер_паспорта", "ФИО_человека", "Город") FROM stdin;
    public          postgres    false    207   7P       L           2606    16428 :   Администратор Администратор_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Администратор"
    ADD CONSTRAINT "Администратор_pkey" PRIMARY KEY ("ФИО_администратора");
 h   ALTER TABLE ONLY public."Администратор" DROP CONSTRAINT "Администратор_pkey";
       public            postgres    false    200            a           2606    16457    Заказ Заказ_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."Заказ"
    ADD CONSTRAINT "Заказ_pkey" PRIMARY KEY ("Номер_паспорта");
 H   ALTER TABLE ONLY public."Заказ" DROP CONSTRAINT "Заказ_pkey";
       public            postgres    false    208            R           2606    16432 L   Исполнитель заказа Исполнитель заказа_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Исполнитель заказа"
    ADD CONSTRAINT "Исполнитель заказа_pkey" PRIMARY KEY ("Фио_исполнителя");
 z   ALTER TABLE ONLY public."Исполнитель заказа" DROP CONSTRAINT "Исполнитель заказа_pkey";
       public            postgres    false    202            T           2606    16434    Номер Номер_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."Номер"
    ADD CONSTRAINT "Номер_pkey" PRIMARY KEY ("Id_номера");
 H   ALTER TABLE ONLY public."Номер" DROP CONSTRAINT "Номер_pkey";
       public            postgres    false    203            V           2606    16436 &   Продукты Продукты_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public."Продукты"
    ADD CONSTRAINT "Продукты_pkey" PRIMARY KEY ("id_продукта");
 T   ALTER TABLE ONLY public."Продукты" DROP CONSTRAINT "Продукты_pkey";
       public            postgres    false    204            [           2606    16438 "   Уборщик Уборщик_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public."Уборщик"
    ADD CONSTRAINT "Уборщик_pkey" PRIMARY KEY ("ФИО_уборщика");
 P   ALTER TABLE ONLY public."Уборщик" DROP CONSTRAINT "Уборщик_pkey";
       public            postgres    false    206            ]           2606    16440 "   Человек Человек_pkey 
   CONSTRAINT        ALTER TABLE ONLY public."Человек"
    ADD CONSTRAINT "Человек_pkey" PRIMARY KEY ("Номер_паспорта");
 P   ALTER TABLE ONLY public."Человек" DROP CONSTRAINT "Человек_pkey";
       public            postgres    false    207            W           1259    16446 	   fki_Idnum    INDEX     S   CREATE INDEX "fki_Idnum" ON public."Уборка" USING btree ("Id_номера");
    DROP INDEX public."fki_Idnum";
       public            postgres    false    205            ^           1259    16463    fki_id_номера    INDEX     [   CREATE INDEX "fki_id_номера" ON public."Заказ" USING btree ("id_номера");
 )   DROP INDEX public."fki_id_номера";
       public            postgres    false    208            _           1259    16469    fki_id_продкута    INDEX     c   CREATE INDEX "fki_id_продкута" ON public."Заказ" USING btree ("id_продукта");
 -   DROP INDEX public."fki_id_продкута";
       public            postgres    false    208            M           1259    16452 	   fki_idnum    INDEX     W   CREATE INDEX fki_idnum ON public."Заселение" USING btree ("Id_номера");
    DROP INDEX public.fki_idnum;
       public            postgres    false    201            O           1259    16475 '   fki_Исполнитель заказа    INDEX     �   CREATE INDEX "fki_Исполнитель заказа" ON public."Исполнитель заказа" USING btree ("Номер_паспорта");
 =   DROP INDEX public."fki_Исполнитель заказа";
       public            postgres    false    202            N           1259    16481    fki_Номер_паспорта    INDEX     {   CREATE INDEX "fki_Номер_паспорта" ON public."Заселение" USING btree ("Номер_паспорта");
 5   DROP INDEX public."fki_Номер_паспорта";
       public            postgres    false    201            Y           1259    16492 '   fki_ФИО_администратора    INDEX     �   CREATE INDEX "fki_ФИО_администратора" ON public."Уборщик" USING btree ("ФИО_Администратора");
 =   DROP INDEX public."fki_ФИО_администратора";
       public            postgres    false    206            P           1259    16513 (   fki_ФИО_администратора3    INDEX     �   CREATE INDEX "fki_ФИО_администратора3" ON public."Исполнитель заказа" USING btree ("ФИО_администратора");
 >   DROP INDEX public."fki_ФИО_администратора3";
       public            postgres    false    202            X           1259    16519    fki_ФИО_уборщика3    INDEX     n   CREATE INDEX "fki_ФИО_уборщика3" ON public."Уборка" USING btree ("ФИО_уборщика");
 2   DROP INDEX public."fki_ФИО_уборщика3";
       public            postgres    false    205            g           2606    16441    Уборка id_номера    FK CONSTRAINT     �   ALTER TABLE ONLY public."Уборка"
    ADD CONSTRAINT "id_номера" FOREIGN KEY ("Id_номера") REFERENCES public."Номер"("Id_номера") NOT VALID;
 J   ALTER TABLE ONLY public."Уборка" DROP CONSTRAINT "id_номера";
       public          postgres    false    203    205    3156            b           2606    16447 "   Заселение id_номера    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заселение"
    ADD CONSTRAINT "id_номера" FOREIGN KEY ("Id_номера") REFERENCES public."Номер"("Id_номера") NOT VALID;
 P   ALTER TABLE ONLY public."Заселение" DROP CONSTRAINT "id_номера";
       public          postgres    false    201    3156    203            k           2606    16458    Заказ id_номера    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заказ"
    ADD CONSTRAINT "id_номера" FOREIGN KEY ("id_номера") REFERENCES public."Номер"("Id_номера") NOT VALID;
 H   ALTER TABLE ONLY public."Заказ" DROP CONSTRAINT "id_номера";
       public          postgres    false    3156    208    203            l           2606    16464    Заказ id_продкута    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заказ"
    ADD CONSTRAINT "id_продкута" FOREIGN KEY ("id_продукта") REFERENCES public."Продукты"("id_продукта") NOT VALID;
 L   ALTER TABLE ONLY public."Заказ" DROP CONSTRAINT "id_продкута";
       public          postgres    false    208    3158    204            e           2606    16470 G   Исполнитель заказа Исполнитель заказа    FK CONSTRAINT     �   ALTER TABLE ONLY public."Исполнитель заказа"
    ADD CONSTRAINT "Исполнитель заказа" FOREIGN KEY ("Номер_паспорта") REFERENCES public."Заказ"("Номер_паспорта") NOT VALID;
 u   ALTER TABLE ONLY public."Исполнитель заказа" DROP CONSTRAINT "Исполнитель заказа";
       public          postgres    false    3169    202    208            c           2606    16476 .   Заселение Номер_паспорта    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заселение"
    ADD CONSTRAINT "Номер_паспорта" FOREIGN KEY ("Номер_паспорта") REFERENCES public."Человек"("Номер_паспорта") NOT VALID;
 \   ALTER TABLE ONLY public."Заселение" DROP CONSTRAINT "Номер_паспорта";
       public          postgres    false    201    207    3165            m           2606    16482 &   Заказ Номер_паспорта    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заказ"
    ADD CONSTRAINT "Номер_паспорта" FOREIGN KEY ("Номер_паспорта") REFERENCES public."Человек"("Номер_паспорта") NOT VALID;
 T   ALTER TABLE ONLY public."Заказ" DROP CONSTRAINT "Номер_паспорта";
       public          postgres    false    208    3165    207            j           2606    16487 2   Уборщик ФИО_администратора    FK CONSTRAINT     �   ALTER TABLE ONLY public."Уборщик"
    ADD CONSTRAINT "ФИО_администратора" FOREIGN KEY ("ФИО_Администратора") REFERENCES public."Администратор"("ФИО_администратора") NOT VALID;
 `   ALTER TABLE ONLY public."Уборщик" DROP CONSTRAINT "ФИО_администратора";
       public          postgres    false    206    200    3148            h           2606    16493 0   Уборка ФИО_администратора    FK CONSTRAINT     �   ALTER TABLE ONLY public."Уборка"
    ADD CONSTRAINT "ФИО_администратора" FOREIGN KEY ("ФИО_администратора") REFERENCES public."Администратор"("ФИО_администратора") NOT VALID;
 ^   ALTER TABLE ONLY public."Уборка" DROP CONSTRAINT "ФИО_администратора";
       public          postgres    false    3148    200    205            d           2606    16498 6   Заселение ФИО_администратора    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заселение"
    ADD CONSTRAINT "ФИО_администратора" FOREIGN KEY ("ФИО_администратора") REFERENCES public."Администратор"("ФИО_администратора") NOT VALID;
 d   ALTER TABLE ONLY public."Заселение" DROP CONSTRAINT "ФИО_администратора";
       public          postgres    false    201    200    3148            n           2606    16503 .   Заказ ФИО_администратора    FK CONSTRAINT     �   ALTER TABLE ONLY public."Заказ"
    ADD CONSTRAINT "ФИО_администратора" FOREIGN KEY ("ФИО_администратора") REFERENCES public."Администратор"("ФИО_администратора") NOT VALID;
 \   ALTER TABLE ONLY public."Заказ" DROP CONSTRAINT "ФИО_администратора";
       public          postgres    false    200    3148    208            f           2606    16508 G   Исполнитель заказа ФИО_администратора    FK CONSTRAINT       ALTER TABLE ONLY public."Исполнитель заказа"
    ADD CONSTRAINT "ФИО_администратора" FOREIGN KEY ("ФИО_администратора") REFERENCES public."Администратор"("ФИО_администратора") NOT VALID;
 u   ALTER TABLE ONLY public."Исполнитель заказа" DROP CONSTRAINT "ФИО_администратора";
       public          postgres    false    202    200    3148            i           2606    16514 $   Уборка ФИО_уборщика    FK CONSTRAINT     �   ALTER TABLE ONLY public."Уборка"
    ADD CONSTRAINT "ФИО_уборщика" FOREIGN KEY ("ФИО_уборщика") REFERENCES public."Уборщик"("ФИО_уборщика") NOT VALID;
 R   ALTER TABLE ONLY public."Уборка" DROP CONSTRAINT "ФИО_уборщика";
       public          postgres    false    205    3163    206            �   W   x��0�¦.콰��&�P����b;�9�9�/l��xaPp'ׅ��^l�� ӷ�b��~�K.l��"
�g��/F��� >�K8      �   H   x�342615�4�0�¦.콰��&GY���V`�m`�dh�enaihd�iD�� b���� f?�      �   S   x�342615�4�0�¦.콰��&GY���FF�ƺF��\���FƜ���07351�4"C�1W� 9r]�      �   h   x������{�x�}6)\�a�Ŧ�
&]�}aÅ-v ew\l ��vNC#cS3NC�3�"`��dQ�z���`*��7���h6�1���qqq �^x�      �   B   x�3�4�450༰�®�.��=\F�F��`щv\��z��˘Ә�,:�b߅]@�=... �:      �   m   x�U�1�PD�z�b��ո�j
�����#k�oG>�(�:7S��ݯ��]L޳��HIe�R�A-/��?Wb`񎝏x��[U��v�hs��;~���wޫI��df_]�A]      �   s   x�3�0�¦.콰��&GY���&]��raǅ=@���)`N����N�/l27_�
�m&V�Vf��\F���a�1��24C�e8��a8�0F��� ��g      �   _   x��0���.l���;.6\�wa�)`N����N�/l27_�
����f .�(�r�E!�\l��x���.�A���\1z\\\ �L�      �   �   x�m�K
�@D�ӧ�(���a���q�ʅ �И������F�� .��_�� ��$58�E�Q��-Nl��b�~�Ýo��h�b���&Y���P����w�y�PZN�7��<�u�ο�<K���	�2��gy�tMҝ�_SZ������V��     