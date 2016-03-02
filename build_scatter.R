
build_scatter <- function(df, col1, col2, class) {

  df %>% filter(Species == class) %>% 
    plot_ly(x = eval(parse(text = col1)), 
            y = eval(parse(text = col2)), 
            mode='markers', 
            marker = list(
              opacity = .5, 
              size = 9
            )) %>% 
  layout(xaxis = list(range = c(0, max(df[,eval(parse(text = "col1"))]) * 1.2), title = col1), 
        yaxis = list(range = c(0, max(df[,eval(parse(text = "col2"))]) * 1.2), title = col2)
    ) %>% 
  return()
}
