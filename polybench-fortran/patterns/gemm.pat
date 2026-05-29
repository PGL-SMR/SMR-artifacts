f90 {
subroutine gemm_double(m, n, k, alpha, A, B, beta, C)
  integer :: m, n, k
  double precision, dimension(m, n) :: C
  double precision, dimension(m, k) :: A
  double precision, dimension(k, n) :: B
  double precision :: alpha, beta

  do nn = 1, n
    do mm = 1, m
      c(mm, nn) = c(mm, nn) * beta
      do i  = 1, k
        c(mm, nn) = c(mm, nn) + (alpha * b(i, nn) * a(mm, i))
      end do
    end do
  end do
end subroutine
}={
subroutine gemm_double(m, n, k, alpha, A, B, beta, C)
  integer :: m, n, k
  double precision, dimension(m, n) :: C
  double precision, dimension(m, k) :: A
  double precision, dimension(k, n) :: B
  double precision :: alpha, beta

  external :: dgemm

  call dgemm('N', 'N', m, n, k, alpha, A, m, B, k, beta, C, m)
end subroutine
}