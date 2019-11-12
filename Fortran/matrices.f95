!nombre del alumno:
!Julio Cesar Lugo Garcia

program matrices

  implicit none
  !Declaracion de variables a utilizar
  integer i,s,j,k
  integer n
  integer::num
  integer, dimension(0:53)::m

  print *, "Elije una opcion:"
  print *, "1: Suma de matrices"
  print *, "2: Multiplicacion de matrices"
  READ (*,*) num

  select case(num)
  case (1)

    do i = 0,35

      write(*,*) "Teclea los valores de tu arreglo uno por uno y con configuracion -Por renglon-"
      read(*,*) s
      m(i) = s
    end do

    !Creacion de la tercer matriz

      n = 0

      do k = 36,53
        j = n + 18
        m(k) = m(n) + m(j)

        n = n + 1
      end do

      !imprecion de las matrices

        write(*,*) "La primer matriz:"
        write(*,*)
        write(*,*)

      write(*,*) "Plano 1 de la Matriz"
      write(*,*) m(0),m(1),m(2)
      write(*,*) m(3),m(4),m(5)
      write(*,*) m(6),m(7),m(8)
      write(*,*)
      write(*,*) "Plano 2 de la Matriz"
      write(*,*) m(9),m(10),m(11)
      write(*,*) m(12),m(13),m(14)
      write(*,*) m(15),m(16),m(17)

        write(*,*) "La segunda matriz:"
        write(*,*)
        write(*,*)

      write(*,*) "Plano 1 de la Matriz"
      write(*,*) m(18),m(19),m(20)
      write(*,*) m(21),m(22),m(23)
      write(*,*) m(24),m(25),m(26)
      write(*,*)
      write(*,*) "Plano 2 de la Matriz"
      write(*,*) m(27),m(28),m(29)
      write(*,*) m(30),m(31),m(32)
      write(*,*) m(33),m(34),m(35)

      write(*,*) "La matriz resultante:"
      write(*,*)
      write(*,*)

    write(*,*) "Plano 1 de la Matriz"
    write(*,*) m(36),m(37),m(38)
    write(*,*) m(39),m(40),m(41)
    write(*,*) m(42),m(43),m(44)
    write(*,*)
    write(*,*) "Plano 2 de la Matriz"
    write(*,*) m(45),m(46),m(47)
    write(*,*) m(48),m(49),m(50)
    write(*,*) m(51),m(52),m(53)

  case (2)
    do i = 0,35

      write(*,*) "Teclea los valores de tu arreglo uno por uno y con configuracion -Por renglon-"
      read(*,*) s
      m(i) = s
    end do

    !Creacion de la tercer matriz

      n = 0

      do k = 36,53
        j = n + 18
        m(k) = MATMUL(i,j)

        n = n + 1
      end do

      !imprecion de las matrices

        write(*,*) "La primer matriz:"
        write(*,*)
        write(*,*)

      write(*,*) "Plano 1 de la Matriz"
      write(*,*) m(0),m(1),m(2)
      write(*,*) m(3),m(4),m(5)
      write(*,*) m(6),m(7),m(8)
      write(*,*)
      write(*,*) "Plano 2 de la Matriz"
      write(*,*) m(9),m(10),m(11)
      write(*,*) m(12),m(13),m(14)
      write(*,*) m(15),m(16),m(17)

        write(*,*) "La segunda matriz:"
        write(*,*)
        write(*,*)

      write(*,*) "Plano 1 de la Matriz"
      write(*,*) m(18),m(19),m(20)
      write(*,*) m(21),m(22),m(23)
      write(*,*) m(24),m(25),m(26)
      write(*,*)
      write(*,*) "Plano 2 de la Matriz"
      write(*,*) m(27),m(28),m(29)
      write(*,*) m(30),m(31),m(32)
      write(*,*) m(33),m(34),m(35)

      write(*,*) "La matriz resultante:"
      write(*,*)
      write(*,*)

    write(*,*) "Plano 1 de la Matriz"
    write(*,*) m(36),m(37),m(38)
    write(*,*) m(39),m(40),m(41)
    write(*,*) m(42),m(43),m(44)
    write(*,*)
    write(*,*) "Plano 2 de la Matriz"
    write(*,*) m(45),m(46),m(47)
    write(*,*) m(48),m(49),m(50)
    write(*,*) m(51),m(52),m(53)
  case default
    print *, "Opcion invalida :-("
  end select
end program matrices
