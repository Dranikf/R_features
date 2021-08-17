source("/home/kfa/KFA/Programming/Rdefaults/R_features/table_by_factors/table_by_factors.r", encoding = "UTF-8")

test_df = data.frame(   year = factor(c(2011,2011,2011,2012,2012,2012,2015,2015,2015)),
                        month = factor(c("jan", "may", "sep", "jan", "may", "sep","jan", "sep", "sep")),
                        val_var = c(10,2,30,4,5,6,7,8,5))


some_result = table_by_factors(test_df, "year", "month", "val_var")
print(some_result)