#test on filename
#pass
testthat::test_that("test on filename",{
        expect_that(make_filename(2012), matches("accident_2012.csv.bz2"))
})
