# R_features
some features wich can be useful for R programming.

## table_by_factors funciton

In case you have data.frame with two factors and some other variable and want create
matrix with first factor on columns and second on rows you can use this function. For
example:


**arguments**:
+ data - input data frame;
+ cols_vars - name of column in `data` which levels will be used as columns names in output matrix;
+ rows_vars - name of column in `data` which level will be used as rows names in output matrix;
+ val_var - name of columns in `data` which matrix will contain.

**extras**
+ if for any combination of levels of `cols_vars` and `rows_vars` no any row in `data` it will be `NA` added to result matrix;
+ if there are several rows for any combination, you will get relevant warning and the first of them will be added to result matrix.