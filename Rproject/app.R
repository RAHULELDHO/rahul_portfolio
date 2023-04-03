library(ggplot2)
library(shinydashboard)
library(DT)
library(leaflet)
library(plotly)
library(tidyverse)        
library(shiny)
library(rsconnect)
knitr::opts_knit$set(root.dir = "D:/R_Studio_class/Rfirstassignment_Rahul_Bijoy")


load("cost_of_living_cleaned_RahulBijoy.RData")
data <- data.frame(cost_of_living_cleaned_RahulBijoy)

ui <- dashboardPage(
  
  
  dashboardHeader(
    title = "Cost of Living Analysis",
    right_ui = tags$li(
      class = "dropdown",
      tags$button(
        class = "btn btn-default dropdown-toggle",
        type = "button",
        `data-toggle` = "dropdown",
        HTML(paste0("<i class='fa fa-envelope-o'></i>")),
        tags$span(class = "caret"),
        
        tags$span(class = "badge", "1")
      ),
      
      tags$ul(class = "dropdown-menu", 
              tags$li("Welcome to my dashboard! Hope you will enjoy it."),
              tags$li("Please provide your feedback about my dashboard.")
      ),
      tags$li(
        tags$a(href = "https://www.linkedin.com/in/rahuleldhobijoy/", icon("linkedin"))
      )
    )
  ),
  dashboardSidebar(
    
    sidebarMenu(
      id = "sidebarMenu",
      menuItem("General", tabName = "overview", icon = icon("info")),
      menuItem("Traveller", tabName = "traveller", icon = icon("suitcase")),
      menuItem("Student", tabName = "student", icon = icon("graduation-cap")),
      menuItem("Data", tabName = "data", icon = icon("database"))
    ),
    selectInput("continent", "Continent", choices = c("All", as.character(unique(data$continent))))
  ),
  dashboardBody(
    style = "background-color: white;",
    tabItems(
      tabItem(tabName = "overview",
              fluidRow(
                box(
                  title = "Overview",
                  status = "primary",
                  solidHeader = TRUE,
                  width = 12,
                  height = 800,
                  infoBoxOutput("country_count"),
                  infoBoxOutput("city_count"),
                  valueBoxOutput("continent_count"),
                  infoBoxOutput("expensive_country"),
                  infoBoxOutput("cheapest_country"),
                  infoBoxOutput("expensive_city"),
                  textOutput("overview_text"),
                  HTML("<p>These are the elements we are taking into account to find the living expenses of each city, country.</p>"),
                  infoBox(
                    "Meal in Restaurant",
                    paste0("Meal in restaurant"),
                    icon = icon("cutlery")
                  ),
                  infoBox(
                    "Water Price",
                    paste0("water"),
                    icon = icon("tint")
                  )
                  ,
                  infoBox(
                    "Eggs",
                    paste0("Eggs"),
                    icon = icon("egg")
                  ),
                  infoBox(
                    "Chicken (1kg)",
                    paste0("Chicken"),
                    icon = icon("drumstick-bite")
                  ),
                  infoBox(
                    "Monthly Travel Pass",
                    paste0("Travel Pass"),
                    icon = icon("bus")
                  ),
                  infoBox(
                    "Basic Amenities Bill",
                    paste0("Basic Amenities Bill"),
                    icon = icon("home")
                  ),
                  infoBox(
                    "Single Bedroom Rent",
                    paste0("Single Bedroom Rent"),
                    icon = icon("bed")
                  ),
                  infoBox(
                    "Fruits Avg. Price",
                    paste0("Fruits"),
                    icon = icon("apple")
                  ),
                  infoBox(
                    "Vegetables Avg. Price",
                    paste0("Vegetables"),
                    icon = icon("carrot")
                  )
                )
              )
      ),
      tabItem(tabName = "traveller",
              fluidRow(
                tabBox(
                  title = "Traveller",
                  width = 12,
                  tabPanel("General",
                           box(
                             title = "General Information",
                             status = "primary",
                             solidHeader = TRUE,
                             width = 12,
                             height = 800,
                             HTML("<p>This information can help travelers plan their expenses when visiting these cities. By comparing the cost of living in different cities, travelers can make informed decisions about where to go and how much to budget for their trip. Following are the benefits:</p>
          <ol>
            <li>Budget planning: The data provides information on the cost of living in different cities in terms of the price of meals, water, milk, eggs, chicken, fruits, vegetables, and monthly expenses such as rent, travel pass, and basic amenities bill. This can help travelers plan their budget and estimate the expenses they are likely to incur during their trip.</li>
            <li>Destination selection: The data provides a comparison of the cost of living in different cities and countries. This can help travelers choose a destination that fits their budget and preferences.</li>
            <li>Understanding local prices: The data provides information on the prices of various goods and services in different cities, which can help travelers understand the local prices and avoid being overcharged.</li>
            <li>Negotiation: The data can also help travelers negotiate prices with local vendors, as they will have a better understanding of the local prices.</li>
          </ol>
          <p>Overall, this data can help travelers make informed decisions and plan their trips more efficiently. It can assist in budget planning and destination selection, help travelers understand local prices and avoid being overcharged, and enable them to negotiate better prices with local vendors.</p>"),
                             tags$div(
                               style="display:flex; justify-content: center",
                               tags$img(
                                 src = "https://images.unsplash.com/photo-1522199873717-bc67b1a5e32b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1744&q=80",
                                 style="max-width: 100%; max-height: 400px; margin-right: 10px"
                               ),
                               tags$img(
                                 src = "https://images.unsplash.com/photo-1534430224470-f52e596ced9f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
                                 style="max-width: 100%; max-height: 400px"
                               )
                             )
                             
                             
                             
                           )),
                  tabPanel("Expensive Options",
                           sidebarLayout(
                             sidebarPanel(
                               selectInput("country_filter", label = "Select a country:",
                                           choices = setdiff(unique(data$country), c("Afghanistan", "Central African Republic", "Iraq", "Libya", "Mali", "Somalia", "South Sudan", "Syria", "Ukraine", "Yemen", "DR Congo", "Egypt", "Nigeria", "Pakistan"))
                               )
                             ),
                             mainPanel(
                               fluidRow(
                                 column(
                                   width = 6,
                                   box(
                                     title = "Expensive Cities",
                                     status = "warning",
                                     solidHeader = TRUE,
                                     width = NULL,
                                     height = 600,
                                     plotlyOutput("expensive_cities_plot")
                                   )
                                 ),
                                 column(
                                   width = 6,
                                   box(
                                     title = "Most Expensive Commodities By Country",
                                     status = "primary",
                                     solidHeader = TRUE,
                                     width = NULL,
                                     height = 600,
                                     plotlyOutput("expensive_prices_plot")
                                   )
                                 )
                               )
                             )
                           )
                  )
                  
                  
                  
                  
                  ,
                  tabPanel("Cheap Options",
                           sidebarPanel(
                             selectInput("country_filter_cheap", label = "Select a country:",
                                         choices = setdiff(unique(data$country), c("Afghanistan", "Central African Republic", "Iraq", "Libya", "Mali", "Somalia", "South Sudan", "Syria", "Ukraine", "Yemen", "DR Congo", "Egypt", "Nigeria", "Pakistan"))
                             )
                           ),
                           mainPanel(
                             fluidRow(
                               column(
                                 width = 6,
                                 box(
                                   title = "Cheap Cities",
                                   status = "success",
                                   solidHeader = TRUE,
                                   width = NULL,
                                   height = 600,
                                   plotlyOutput("cheap_cities_plot")
                                 )
                               ),
                               column(
                                 width = 6,
                                 box(
                                   title = "Most Cheapest commodities per country",
                                   status = "primary",
                                   solidHeader = TRUE,
                                   width = NULL,
                                   height = 600,
                                   plotlyOutput("cheap_prices_plot")
                                 )
                               )
                             )
                           )
                  )
                  
                  
                  
                  
                )
              )
      ),
      tabItem(tabName = "student",
              fluidRow(
                tabBox(
                  title = "Student",
                  width = 12,
                  tabPanel("General",
                           box(
                             title = "General Information",
                             status = "primary",
                             solidHeader = TRUE,
                             width = 12,
                             height = 800,
                             HTML("The countries that were filtered are some of the best student countries according to QS ranking 2023, which means that this data can be useful for students who want to study abroad and need to plan their budget accordingly. By looking at the prices of different items in each country in USD, students can get an idea of the cost of living and make informed decisions about where they want to study and how much they need to budget for their daily expenses. These data helps them to prepare financially how to manage expenses and how to select country based on their financial capability."), tags$div(
                               style = "display:flex; justify-content: center",
                               tags$img(
                                 src = "https://image.cnbcfm.com/api/v1/image/101717830-175816825.jpg?v=1572371960&w=740&h=416&ffmt=webp&vtcrop=y",
                                 style = "width: 50%; max-height: 400px; margin-right: 10px"
                               ),
                               tags$img(
                                 src = "http://www.universityaffairs.ca/wp-content/uploads/2018/11/westernunion-globalpay-644.jpg",
                                 style = "width: 50%; max-height: 400px"
                               )
                             )
                             
                           )
                  ),
                  tabPanel("Expensive Options",
                           sidebarPanel(
                             selectInput("countryInput", "Select a country:",
                                         choices = c("United Kingdom", "Germany", "South Korea", "Switzerland", "Australia", "Japan", "France", "United States", "Singapore", "India", "China", "Netherlands", "Hongkong", "Canada"),
                                         selected = "United Kingdom")
                           ) ,fluidRow(
                             box(
                               title = "Expensive Cities",
                               status = "warning",
                               solidHeader = TRUE,
                               width = 12,
                               height = 800,
                               plotlyOutput("expensive_cities1_plot")
                             )
                           )  ), tabPanel("Cheap Options",
                                          sidebarPanel(
                                            selectInput("countryInput1", "Select a country:",
                                                        choices = c("United Kingdom", "Germany", "South Korea", "Switzerland", "Australia", "Japan", "France", "United States", "Singapore", "India", "China", "Netherlands", "Hongkong", "Canada")
                                            )),
                                          fluidRow(
                                            box(
                                              title = "Cheap Cities",
                                              status = "success",
                                              solidHeader = TRUE,
                                              width = 12,
                                              height = 800,
                                              plotlyOutput("cheap2_cities_plot")
                                            ))
                           )
                  
                ))),
      tabItem(tabName = "data",
              fluidRow(
                box(
                  title = "Data Table",
                  status = "primary",
                  solidHeader = TRUE,
                  width = 12,
                  height = 800,
                  DTOutput("data_table")
                )
              )
      )
      
    )))






server <- function(input, output) {
  
  
  
  
  overview <- "This dashboard provides an analysis of cost of living across different continents for travellers and students. The global cost of living data contains information about the cost of living in different countries, including expenses such as meals in restaurants, water prices, milk prices, eggs prices, chicken prices, monthly travel pass prices, basic amenities bills, single-bedroom rents, fruits and vegetable prices, and the continent where the country is located. The data consists of 2320 rows, and some of the countries included are South Korea, China, India, Bangladesh, Congo, Thailand, Pakistan, Egypt, Brazil, Mexico, Nigeria, Russia, Japan, Philippines, and the United States. The data can be used to compare the cost of living in different cities and to analyze the differences between regions and continents. This information can be useful for people who are planning to move to a new city or for businesses that want to expand to new locations."
  
  
  output$overview_text <- renderText({
    overview
  })
  
  
  
  
  
  
  
  
  data_filtered <- reactive({
    if(input$continent != "All") {
      data_filtered <- data[data$continent == input$continent,]
    } else {
      data_filtered <- data
    }
    data_filtered
  })
  
  
  expensive_countries <- reactive({
    data_country_filtered() %>%
      group_by(country) %>%
      summarize(avg_price = mean(price)) %>%
      arrange(desc(avg_price)) %>%
      head(10)
  })
  
  
  
  
  data_filtered <- reactive({
    if(input$continent != "All") {
      data_filtered <- data[data$continent == input$continent,]
    } else {
      data_filtered <- data
    }
    data_filtered
  })
  
  output$city_count <- renderInfoBox({
    infoBox(
      "City Count",
      n_distinct(data_filtered()$city),
      icon = icon("building"),
      color = "blue"
    )
  })
  
  
  
  
  
  
  output$country_count <- renderInfoBox({
    infoBox(
      "Country Count",
      n_distinct(data_filtered()$country),
      icon = icon("globe"),
      color = "purple"
    )
  })
  output$continent_count <- renderInfoBox({
    infoBox(
      "Continent Count",
      length(unique(data$continent)),
      icon = icon("globe-americas"),
      color = "red"
    )
  })
  
  data_avg_prices <- reactive({
    data_filtered() %>%
      group_by(country) %>%
      summarize(avg_total_prices = mean(meal_in_restaurant + water_price + Milk_onelitre + Eggs_regular + Chicken_1kg + Monthly_Travel_Pass + Basic_Amenties_Bill + Single_bedroom_rent + Fruits_Avg_Price + Vegetables_Avg_Price))
  })
  
  expensive_country <- reactive({
    data_avg_prices() %>%
      filter(avg_total_prices == max(avg_total_prices)) %>%
      pull(country)
  })
  
  
  output$expensive_country <- renderInfoBox({
    infoBox(
      "Most Expensive Country",
      paste0(expensive_country()),
      icon = icon("money-bill-wave"), 
      color = "yellow"
    )
  })
  
  
  
  
  cheapest_country <- reactive({
    data_avg_prices() %>%
      filter(avg_total_prices == min(avg_total_prices)) %>%
      pull(country)
  })
  
  
  output$cheapest_country <- renderInfoBox({
    infoBox(
      "Cheapest Country",
      paste0(cheapest_country()),
      icon = icon("money-bill-wave"), 
      color = "green"
    )
  })
  
  
  data_avg_prices_city <- reactive({
    data_filtered() %>%
      group_by(city) %>%
      summarize(avg_total_prices = mean(meal_in_restaurant + water_price + Milk_onelitre + Eggs_regular + Chicken_1kg + Monthly_Travel_Pass + Basic_Amenties_Bill + Single_bedroom_rent + Fruits_Avg_Price + Vegetables_Avg_Price),
                .groups = 'drop')
  })
  
  
  expensive_city <- reactive({
    data_avg_prices_city() %>%
      filter(avg_total_prices == max(avg_total_prices)) %>%
      pull(city)
  })
  
  
  output$expensive_city <- renderInfoBox({
    infoBox(
      "Most Expensive City",
      paste0(expensive_city()),
      icon = icon("money-bill-wave"), 
      color = "orange"
    )
  })
  output$data_table <- renderDT({
    datatable(data_filtered(), options = list(pageLength = 10))
  }) 
  
  filtered_data <- reactive({
    data %>%
      filter(country == input$country_filter) %>%
      group_by(city) %>%
      summarize(
        expenses = sum(meal_in_restaurant, water_price, Milk_onelitre, Eggs_regular, Chicken_1kg, Monthly_Travel_Pass, Basic_Amenties_Bill, Single_bedroom_rent, Fruits_Avg_Price, Vegetables_Avg_Price, na.rm = TRUE)
      ) %>%
      arrange(desc(expenses)) %>%
      head(10)
  })
  
  output$expensive_cities_plot <- renderPlotly({
    plot_data <- filtered_data()
    
    plot_ly(plot_data, x = ~city, y = ~expenses, type = "bar") %>%
      layout(title = paste("Top 10 Expensive Cities in", input$country_filter),
             xaxis = list(title = "City"),
             yaxis = list(title = "Expenses"))
  })
  
  
  filtered_data_expensive <- reactive({
    data %>%
      filter(country == input$country_filter)
  })
  
  
  max_prices <- reactive({
    filtered_data_expensive() %>%
      summarise(across(starts_with("meal"), max),
                across(water_price, max),
                across(Milk_onelitre, max),
                across(Eggs_regular, max),
                across(Chicken_1kg, max),
                across(Monthly_Travel_Pass, max),
                across(Basic_Amenties_Bill, max),
                across(Single_bedroom_rent, max),
                across(Fruits_Avg_Price, max),
                across(Vegetables_Avg_Price, max))
  })
  
  output$expensive_prices_plot <- renderPlotly({
    plot_ly(max_prices(), x = colnames(max_prices()), y = max_prices() %>% unlist(), type = "bar") %>%
      layout(title = paste("Expensive value of commodities in", input$country_filter))
  })
  
  
  
  filtered_data8 <- reactive({
    data %>%
      filter(country == input$country_filter_cheap) %>%
      group_by(city) %>%
      summarize(
        expenses2 = sum(meal_in_restaurant, water_price, Milk_onelitre, Eggs_regular, Chicken_1kg, Monthly_Travel_Pass, Basic_Amenties_Bill, Single_bedroom_rent, Fruits_Avg_Price, Vegetables_Avg_Price, na.rm = TRUE)
      ) %>%
      arrange(expenses2) %>%
      head(10)
  })
  
  
  output$cheap_cities_plot <- renderPlotly({
    plot_data <- filtered_data8()
    
    plot_ly(plot_data, x = ~city, y = ~expenses2, type = "bar",
            hovertemplate = "City: %{x}<br>Average Living Expenses: %{y:.2f}") %>%
      layout(title = paste("Top 10 Cheapest Cities in", input$country_filter_cheap),
             xaxis = list(title = "City"),
             yaxis = list(title = "Average Living Expenses"))
  })
  
  
  #cheap expensive
  
  filtered_data_cheap <- reactive({
    data %>%
      filter(country == input$country_filter_cheap)
  })
  
  
  min_prices <- reactive({
    filtered_data_cheap() %>%
      summarise(across(starts_with("meal"), min),
                across(water_price, min),
                across(Milk_onelitre, min),
                across(Eggs_regular, min),
                across(Chicken_1kg, min),
                across(Monthly_Travel_Pass, min),
                across(Basic_Amenties_Bill, min),
                across(Single_bedroom_rent, min),
                across(Fruits_Avg_Price, min),
                across(Vegetables_Avg_Price, min))
  })
  
  
  output$cheap_prices_plot <- renderPlotly({
    plot_ly(min_prices(), x = colnames(min_prices()), y = min_prices() %>% unlist(), type = "bar") %>%
      layout(title = paste("Cheap value of commodities in", input$country_filter_cheap))
  })
  
  
  #STUDENT 
  
  output$expensive_cities1_plot  <- renderPlotly({
    
    
    data_filtered <- data %>%
      filter(country == input$countryInput)
    
    data_grouped <- data_filtered %>%
      group_by(city) %>%
      summarize(mean_meal = mean(meal_in_restaurant),
                mean_water = mean(water_price),
                mean_milk = mean(Milk_onelitre),
                mean_eggs = mean(Eggs_regular),
                mean_chicken = mean(Chicken_1kg),
                mean_travel = mean(Monthly_Travel_Pass),
                mean_amenties = mean(Basic_Amenties_Bill),
                mean_rent = mean(Single_bedroom_rent),
                mean_fruits = mean(Fruits_Avg_Price),
                mean_vegetables = mean(Vegetables_Avg_Price))
    
    
    data_grouped$mean_sum <- rowSums(data_grouped[, -1])
    
    
    data_arranged <- data_grouped %>%
      arrange(desc(mean_sum))
    
    
    plot <- data_arranged %>%
      head(10) %>%
      plot_ly(x = ~city, y = ~mean_sum, type = 'bar',
              text = ~paste('City: ', city,
                            '<br>Mean Sum: ', round(mean_sum, 2)),
              hoverinfo = "text") %>%
      layout(title = paste0("Top 10 Expensive Cities in ", input$countryInput),
             xaxis = list(title = "City"),
             yaxis = list(title = "Mean Sum of Living Expenses"))
    
    plot
  })
  
  filtered_data2 <- reactive({
    data %>%
      filter(country == input$countryInput1)
  })
  
  cheap_cities <- reactive({
    filtered_data2() %>%
      group_by(city) %>%
      summarize(
        avg_living_expenses = mean(meal_in_restaurant + water_price + Milk_onelitre + Eggs_regular + Chicken_1kg + Monthly_Travel_Pass + Basic_Amenties_Bill + Single_bedroom_rent + Fruits_Avg_Price + Vegetables_Avg_Price)
      ) %>%
      arrange(avg_living_expenses) %>%
      head(10)
  })
  
  
  output$traveller_cheap_countries <- renderDT({
    cheap_cities()
  })
  
  
  output$cheap2_cities_plot <- renderPlotly({
    cheap_cities_plot <- cheap_cities() %>%
      arrange(avg_living_expenses) %>%
      plot_ly(x = ~city, y = ~avg_living_expenses, type = "bar",
              hovertemplate = "City: %{x}<br>Average Living Expenses: %{y:.2f}") %>%
      layout(title = paste0("Top 10 Cheapest Cities in ", input$countryInput1),
             xaxis = list(title = "City"), yaxis = list(title = "Average Living Expenses"))
    cheap_cities_plot
  })
  
  
}
shinyApp(ui=ui, server=server)