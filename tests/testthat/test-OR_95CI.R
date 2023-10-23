test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

#based on any of the coefficient, do we get the correct OR and CI, 0.05 sign& round 2
test_that("OR function works", {
  expect_equal(OR_95CI(-0.03970866 ,0.2538319, 0.05, 2), "0.96 (0.58, 1.58)")
  })


