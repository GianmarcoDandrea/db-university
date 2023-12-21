-- 1.Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `degrees`.`name`as `Corso di Laurea`, `students`.`name` as `Nome`, `students`.`surname` as `Cognome`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name`= 'Corso di Laurea in Economia';

-- 2.Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT `departments`.`name`as `Dipartimento`, `degrees`.`name`as `Corso di Laurea`, `degrees`.`level` as `Livello`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name`= 'Dipartimento di Neuroscienze' AND `degrees`.`level` = "magistrale";

-- 3.Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `teachers`.`name` as `Nome`, `teachers`.`surname` as `Cognome`, `courses`.`name` as `Corso`
FROM `teachers`
INNER JOIN `course_teacher`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
INNER JOIN `courses`
ON `course_teacher`.`course_id` = `courses`.`id`
WHERE `teachers`.`id` = 44;

-- 4.Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`surname`, `students`.`name`, `degrees`.`name`, `degrees`.`level`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname` ASC, `students`.`name` ASC;

-- 5.Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti


-- 6.Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)


-- 7.BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami

