
SELECT apellido FROM Emp 
WHERE apellido LIKE 'm%'

SELECT apellido  
FROM Emp  
WHERE Apellido LIKE '%Z'  

SELECT apellido  
FROM Emp  
WHERE Apellido LIKE '%er%'

SELECT Emp_No, AVG(ALL salario) from emp where oficio = 'analista' 
GROUP BY Emp_No

SELECT MAX(salario) max_salario,  MIN(salario) min_salario,  MAX(salario) - MIN(salario) AS 'Diferencia de salario'
FROM emp where oficio = 'empleado';

SELECT MAX (salario), oficio from emp
GROUP BY oficio

SELECT COUNT (Emp_No), oficio, dept_No from emp 
GROUP BY oficio, dept_No

SELECT COUNT (Emp_No), dept_No from emp 
GROUP BY dept_No
HAVING
    COUNT( Emp_No ) > 4

SELECT COUNT (Emp_No), oficio, dept_No from emp where oficio = 'Director'
GROUP BY oficio, dept_No

SELECT COUNT (Emp_No), dept_No, oficio from emp 
GROUP BY oficio, dept_No
HAVING
    COUNT( Emp_No ) > 2

SELECT COUNT (Emp_No), oficio, MAX(salario) max_salario,  MIN(salario) min_salario,  MAX(salario) - MIN(salario) AS 'Diferencia de salario'
FROM emp 
GROUP BY oficio

SELECT AVG(ALL Num_Cama) Camas, Nombre from Sala 
GROUP BY Nombre

SELECT COUNT (Empleado_No), AVG(ALL Salario) SalarioMedio, Funcion from Plantilla where Sala_Cod = 6
GROUP BY Funcion 

SELECT TOP 5 * from Emp
ORDER BY Fecha_Alt desc ; 

SELECT COUNT (S), S from Enfermo 
GROUP BY S

SELECT SUM (Salario) SumaSalario, Funcion, T from Plantilla
GROUP BY Funcion, T

SELECT COUNT (Sala_Cod), Hospital_Cod from Sala 
GROUP BY Hospital_Cod 

SELECT COUNT (Funcion)Enfermeras, Sala_Cod from Plantilla where funcion = 'Enfermera' 
GROUP BY Sala_Cod

SELECT Apellido from emp where Dept_No IS NOT NULL

SELECT Apellido, Oficio, Salario, Dept_No from emp where Salario > 300000

SELECT
  H.Nombre as 'Hospital',
  S.Nombre as 'Sala'
FROM Hospital H
LEFT JOIN Sala S
ON H.Hospital_Cod = S.Hospital_Cod

SELECT COUNT (Emp_No)Empleados, Loc
FROM Emp E
LEFT JOIN Dept D
ON E.Dept_no = D.Dept_no
GROUP BY Loc

SELECT COUNT (Emp_No)Empleados, Oficio, DNombre 
FROM Emp E
LEFT JOIN Dept D
ON E.Dept_no = D.Dept_no
GROUP BY Oficio, DNombre 

SELECT COUNT (Sala_Cod) Salas, S.Nombre, H.Nombre 
FROM Hospital H
LEFT JOIN Sala S
ON H.Hospital_Cod = S.Hospital_Cod
GROUP BY S.Nombre, H.Nombre 

SELECT COUNT (Emp_No) Trabajadores, D.DNombre 
FROM Emp E
LEFT JOIN Dept D
ON E.Dept_No = D.Dept_No
GROUP BY D.DNombre

SELECT COUNT (Emp_No) Trabajadores, D.DNombre 
FROM Emp E
LEFT JOIN Dept D
ON E.Dept_No = D.Dept_No
GROUP BY D.DNombre
HAVING
    COUNT( Emp_No ) >= 4

SELECT AVG (Num_Cama) Camas, Nombre, Sala_Cod from Sala 
GROUP BY Nombre, Sala_Cod

SELECT AVG (Salario) SalarioMedio, D.Loc
FROM Emp E
LEFT JOIN Dept D
ON E.Dept_No = D.Dept_No
GROUP BY D.Loc

SELECT D.Apellido, H.Nombre, H.Direccion, H.Telefono
FROM Doctor D
LEFT JOIN Hospital H
ON D.Hospital_Cod = H.Hospital_Cod

SELECT P.Apellido, S.Nombre, H.Nombre, S.Num_Cama
FROM Plantilla P
LEFT JOIN Sala S
ON P.Hospital_Cod = S.Hospital_Cod
LEFT JOIN Hospital H
ON P.Hospital_Cod = H.Hospital_Cod

SELECT H.Nombre NombreHospital, S.Nombre NombreSala
FROM Hospital H
LEFT JOIN Sala S
ON H.Hospital_Cod = S.Hospital_Cod

select apellido, salario, oficio, fecha_Alt from emp where dept_no = 10 or dept_no =30

select apellido, salario, oficio, fecha_Alt from emp where dept_no != 10 and dept_no !=30

SELECT Emp_No, Apellido, Oficio, Fecha_Alt, Salario 
FROM Emp 

select E.apellido, E.salario, E.oficio,DNombre Departamento, D.Loc 
from Emp E 
LEFT JOIN Dept D
ON E.Dept_No = D.Dept_No
where loc = 'Barcelona'

select E.apellido, E.salario, E.oficio, DNombre Departamento, D.Loc 
from Emp E 
LEFT JOIN Dept D
ON E.Dept_No = D.Dept_No
where loc != 'Barcelona'

SELECT TOP 1 Emp_No, Apellido, Fecha_Alt from Emp
ORDER BY Fecha_Alt asc ;

SELECT TOP 1 Emp_No, Apellido, Fecha_Alt from Emp
ORDER BY Fecha_Alt desc ;

select P.apellido, P.salario, P.Funcion, H.Nombre 
from Plantilla P
LEFT JOIN Hospital H
ON P.Hospital_Cod = H.Hospital_Cod
where H.Nombre = 'Provincial' or H.Nombre ='General'

select apellido, oficio from emp where oficio = (select oficio from emp where apellido = 'Jimenez')

select apellido, oficio, salario, dept_No from emp where salario > (select top 1 salario from emp where Dept_No = 30 order by salario desc)

