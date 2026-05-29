f90 {
subroutine mvt1_double(a, x1, y1, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x1
  double precision, dimension(n) :: y1
  integer :: n
  integer :: i, j

  do i = 1, n
    do j = 1, n
      x1(i) = x1(i) + (a(j, i) * y1(j))
    end do
  end do
end subroutine
}={
subroutine mvt1_double(a, x1, y1, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x1
  double precision, dimension(n) :: y1
  integer :: n
  integer :: i, j

  external :: dgemv

  call dgemv('N', n, n, 1.0D0, a, n, y1, 1, 1.0D0, x1, 1)
end subroutine
}

f90 {
subroutine mvt2_double(a, x2, y2, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x2
  double precision, dimension(n) :: y2
  integer :: n
  integer :: i, j

  do i = 1, n
    do j = 1, n
      x2(i) = x2(i) + (a(i, j) * y2(j))
    end do
  end do
end subroutine
}={
subroutine mvt2_double(a, x2, y2, n)
  double precision, dimension(n, n) :: a
  double precision, dimension(n) :: x2
  double precision, dimension(n) :: y2
  integer :: n
  integer :: i, j

  external :: dgemv

  call dgemv('N', n, n, 1.0D0, a, n, y2, 1, 1.0D0, x2, 1)
end subroutine
}