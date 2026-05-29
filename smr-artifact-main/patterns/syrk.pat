f90 {
subroutine syrk2_double(a, c, alpha, ni, nj)
  double precision, dimension(ni, ni) :: a
  double precision, dimension(nj, ni) :: c
  double precision :: alpha
  integer :: ni, nj

  do i = 1, ni
    do j = 1, ni
      do k = 1, nj
        c(j, i) = c(j, i) + (alpha * a(k, i) * a(k, j))
      end do
    end do
  end do
end subroutine
}={
subroutine syrk2_double(a, c, alpha, ni, nj)
  double precision, dimension(ni, ni) :: a
  double precision, dimension(nj, ni) :: c
  double precision :: alpha
  integer :: ni, nj

  external :: dgemm

  call dgemm('N', 'N', ni, ni, ni, alpha, a, ni, transpose(a), ni, 1.0D0, c, nj)
end subroutine
}