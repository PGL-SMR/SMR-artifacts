f90 {
subroutine symm_double(a, b, c, alpha, beta, ni, nj)
  double precision, dimension(nj, nj) :: a
  double precision, dimension(nj, ni) :: b
  double precision, dimension(nj, ni) :: c
  double precision :: alpha, beta
  double precision :: acc
  integer :: ni, nj

  do i = 1, ni
    do j = 1, nj
    acc = 0.0D0
      do k = 1, j - 2
        c(j, k) = c(j, k) + (alpha * a(i, k) * b(j, i))
        acc = acc + (b(j, k) * a(i, k))
      end do
    c(j, i) = (beta * c(j, i)) + (alpha * a(i, i) * b(j, i)) + &
                (alpha * acc)
    end do
  end do
end subroutine
}={
subroutine symm_double(a, b, c, alpha, beta, ni, nj)
  double precision, dimension(nj, nj) :: a
  double precision, dimension(nj, ni) :: b
  double precision, dimension(nj, ni) :: c
  double precision :: alpha, beta
  integer :: ni, nj

  external :: dsymm

  call dsymm('L', 'L', nj, ni, alpha, a, nj, b, nj, beta, c, nj)
end subroutine
}