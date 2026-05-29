f90 {
subroutine atax_double(a, x, y, tmp, nx, ny)
  double precision, dimension(ny, nx) :: a
  double precision, dimension(ny) :: x
  double precision, dimension(ny) :: y
  double precision, dimension(nx) :: tmp
  integer :: nx, ny

  do i = 1, nx
    tmp(i) = 0.0D0
    do j = 1, ny
      tmp(i) = tmp(i) + (a(j, i) * x(j))
    end do
    do j = 1, ny
      y(j) = y(j) + a(j, i) * tmp(i)
    end do
  end do
end subroutine
}={
subroutine atax_double(a, x, y, tmp, nx, ny)
  double precision, dimension(ny, nx) :: a
  double precision, dimension(ny) :: x
  double precision, dimension(ny) :: y
  double precision, dimension(nx) :: tmp
  integer :: nx, ny

  external :: dgemv

  call dgemv('T', nx, ny, 1.0D0, a, ny, x, 1, 0.0D0, tmp, 1)
  call dgemv('N', ny, nx, 1.0D0, a, ny, tmp, 1, 0.0D0, y, 1)
end subroutine
}