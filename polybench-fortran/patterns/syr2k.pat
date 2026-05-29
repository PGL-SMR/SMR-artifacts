f90 {
subroutine syr2k2_double(a, b, c, alpha, ni, nj)
  double precision, dimension(nj, ni) :: a
  double precision, dimension(nj, ni) :: b
  double precision, dimension(ni, ni) :: c
  double precision :: alpha
  integer :: ni, nj

  do i = 1, ni
    do j = 1, i
      c(j, i) = c(j, i) * beta
    end do
    do j = 1, i
      do k = 1, nj
        c(j, i) = c(j, i) + (alpha * a(k, i) * b(k, j))
        c(j, i) = c(j, i) + (alpha * b(k, i) * a(k, j))
      end do
    end do
  end do
end subroutine
}={
subroutine syr2k2_double(a, b, c, alpha, ni, nj)
  double precision, dimension(nj, ni) :: a
  double precision, dimension(nj, ni) :: b
  double precision, dimension(ni, ni) :: c
  double precision :: alpha
  integer :: ni, nj

  external :: dsyr2k

  call dsyr2k('U', 'T', ni, nj, alpha, a, nj, b, nj, beta, c, ni)
end subroutine
}