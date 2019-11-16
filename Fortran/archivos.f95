Program archivos
!Alumno: Lugo García Julio César
implicit none

!Declaración de las variables
integer::num_cta_mto, num_cta_mov
character(10) ::name_mto, name_mov
integer::num_cred_mto, num_cred_mov
integer:: j,i
10 format (i4,a10,I4)
11 format (i4,a10,I4,a1)

!Abriendo los archivos
open (unit=4, file='Maestro1.txt')
open (unit=5, file='Movimientos.txt')
open (unit=3, file='Maestro2.txt',action='write')
open (unit=6, file='Error.txt',action='write')


endprogram archivos
