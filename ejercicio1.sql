
--Create table todo

CREATE TABLE public.todo
(
    todo_id uuid NOT NULL,
    name text,
    categories character varying(50) NOT NULL,
    is_completed boolean NOT NULL DEFAULT false,
    remember_me date,
    created timestamp(2) without time zone NOT NULL,
    notes text,
    is_archived boolean,
    expiration date,
    PRIMARY KEY (todo_id)
);

ALTER TABLE IF EXISTS public.todo
    OWNER to postgres;


INSERT INTO public.todo(
	todo_id, name, categories, is_completed, remember_me, created, notes, is_archived, expiration)
	VALUES (uuid_generate_v4(), 
			'Hacer la asignación del profe', 
			'General', false, '2022-09-21', '2022-09-21', 'Sin notas', false, '2022-09-22');


INSERT INTO public.todo(
	todo_id, name, categories, is_completed, remember_me, created, notes, is_archived, expiration)
	VALUES (uuid_generate_v4(), 
			'Estudiar PosgreSQL', 
			'General', false, '2022-09-22', '2022-09-21', 'Sin descripcion', false, '2022-09-22');

INSERT INTO public.todo(
	todo_id, name, categories, is_completed, remember_me, created, notes, is_archived, expiration)
	VALUES (uuid_generate_v4(), 
			'Estudiar REACT', 
			'General', true, '2022-09-22', '2022-09-21', 'Sin descripcion', false, '2022-09-22');


SELECT todo_id, name, categories, is_completed, remember_me, created, notes, is_archived, expiration
	FROM public.todo;

SELECT * FROM public.todo WHERE is_completed=true;