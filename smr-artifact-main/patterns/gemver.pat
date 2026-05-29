f90 {
subroutine gemver1_double(a, u1, u2, v1, v2, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: u1
  double precision, dimension(n) :: u2
  double precision, dimension(n) :: v1
  double precision, dimension(n) :: v2
  integer :: n

  do i = 1, n
    do j = 1, n
      a(j, i) = a(j, i) + (u1(i) * v1(j)) + (u2(i) * v2(j))
    end do
  end do
end subroutine
}={
subroutine gemver1_double(a, u1, u2, v1, v2, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: u1
  double precision, dimension(n) :: u2
  double precision, dimension(n) :: v1
  double precision, dimension(n) :: v2
  integer :: n

  print*,"Pattern gemver1_double replaced"
end subroutine
}

f90 {
subroutine gemver2_double(a, x, y, beta, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x
  double precision, dimension(n) :: y
  double precision :: beta
  integer :: n

  do i = 1, n
    do j = 1, n
      x(i) = x(i) + (beta * a(i, j) * y(j))
    end do
  end do
end subroutine
}={
subroutine gemver2_double(a, x, y, beta, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x
  double precision, dimension(n) :: y
  double precision :: beta
  integer :: n

  print*,"Pattern gemver2_double replaced"
end subroutine
}

f90 {
subroutine gemver3_double(x, z, n)
  double precision, dimension(n) :: x
  double precision, dimension(n) :: z
  integer :: n

  do i = 1, n
    x(i) = x(i) + z(i)
  end do
end subroutine
}={
subroutine gemver3_double(x, z, n)
  double precision, dimension(n) :: x
  double precision, dimension(n) :: z
  integer :: n

  print*,"Pattern gemver3_double replaced"
end subroutine
}

f90 {
subroutine gemver4_double(a, w, x, alpha, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: w
  double precision, dimension(n) :: x
  double precision :: alpha
  integer :: n

  do i = 1, n
    do j = 1, n
      w(i) = w(i) + (alpha * a(j, i) * x(j))
    end do
  end do
end subroutine
}={
subroutine gemver4_double(a, w, x, alpha, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: w
  double precision, dimension(n) :: x
  double precision :: alpha
  integer :: n

  print*,"Pattern gemver4_double replaced"
end subroutine
}