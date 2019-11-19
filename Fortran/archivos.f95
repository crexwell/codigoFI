Program archivos
!Alumno: Lugo García Julio César
implicit none

!Declaración de las variables
integer::num_cta_mto, num_cta_mov
character(10) ::name_mto, name_mov
integer::num_cred_mto, num_cred_mov
character(1)::type_mov
integer:: j,i
10 format (i4,a10,I4)
11 format (i4,a10,I4,a1)

!Abriendo los archivos
open (unit=4, file='Maestro1.txt')
open (unit=5, file='Movimientos.txt')
open (unit=3, file='Maestro2.txt',action='write')
open (unit=6, file='Error.txt',action='write')


!Comienzo de las iteraciones
do j = 1, 100, 1

    write (*.*) "Comparando ",num_cta_mto, name_mto, num_cred_mto, "con ", num_cta_mov, name_mov, num_cred_mov, type_mov

    if (num_cta_mto == 0 .and. num_cta_mov) then
      goto 100
    end if

    if (j <= 100 )then
      if (num_cta_mto > num_cta_mov) then
        i = 1
        goto 30
      end if

      if (num_cta_mto < num_cta_mov) then
        if (type_mov == "A") then
          i=2
          goto 30
        end if
        if (type_mov == "B") then
          i=3
          goto 30
        end if
        if (type_mov == "C") then
          i=4
          goto 30
        end if
      end if

      if (num_cta_mto == num_cta_mov) then
        if (type_mov == "A") then
          i=5
          goto 30
        end if
        if (type_mov == "B") then
          i=6
          goto 30
        end if
        if (type_mov == "C") then
          i=7
          goto 30
        end if

      end if
    end if

    30 write (*,*) i, "Es el numero de caso"

    !Operaciones a realizar

    select case (i)
    case(1)
      write(*,*) "Se ha conservado el registro sin cambios"
      write(*,*) num_cta_mto, name_mto, num_cred_mto
      write(3,*) num_cta_mto, name_mto, num_cred_mto
      read(4,10) num_cta_mto, name_mto, num_cred_mto
    case(2)
      write(*,*) "Se ha dado de alta exitosamente"
      write(*,*) num_cta_mov, name_mov, num_cred_mov
      write(3,*) num_cta_mov, name_mov, num_cred_mov
      read(5,11) num_cta_mov, name_mov, num_cred_mov
    case(3)
      write(*,*) "No existe el registro para proceder con la baja"
      write(6,*) num_cta_mov, name_mov, num_cred_mov
      read(5,11) num_cta_mov, name_mov, num_cred_mov
    case(4)
      write(*,*) "No se pudo ejecutar el cambio"
      write(6,*) num_cta_mov, name_mov, num_cred_mov
      read(5,11) num_cta_mov, name_mov, num_cred_mov
    case(5)
      write(*,*) "No se puede dar de alta, registro existente"
      write(6,*) num_cta_mov, name_mov, num_cred_mov
      read(5,11) num_cta_mov, name_mov, num_cred_mov
    case(6)
      write(*,*) "Baja exitosa"
      write(6,*) num_cta_mov, name_mov, num_cred_mov
      read(5,11) num_cta_mov, name_mov, num_cred_mov
    case(7)
      write(*,*) "Cambio exitoso"
      write(6,*) num_cta_mov, name_mov, num_cred_mov
      read(5,11) num_cta_mov, name_mov, num_cred_mov
    end select
  end do
end program archivos
