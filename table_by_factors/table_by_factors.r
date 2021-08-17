
table_by_factors <- function(data, cols_var, rows_var, val_var){

    cols_levels = levels(data[, cols_var])
    rows_levels = levels(data[, rows_var])

    result = matrix(ncol = length(cols_levels), nrow = length(rows_levels))
    rownames(result) = rows_levels
    colnames(result) = cols_levels

    get_value <- function(row_name, col_name){
        
        selected_values = data[data[, cols_var] == col_name & data[, rows_var] == row_name,val_var]

        if (length(selected_values) == 0){
            selected_values = NA
        }
        else if(length(selected_values)>1){
            warning(paste0("for combination: row == ", row_name, " col == ", col_name, " detected more then one value. Taking first."))
            selected_values = selected_values[1]
        }

        return(selected_values)

    }

    add_column <- function(col_name){

        result[,col_name] <<- sapply(rows_levels, get_value, col_name = col_name)

    }

    sapply(cols_levels, add_column)
    return(result)

}