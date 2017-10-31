/*******************************************************************************
*** Configuration Database
*******************************************************************************/
hibernate {
    cache {
        queries = false
        use_second_level_cache = false
        use_query_cache = false
    }
}

dataSource {
  pooled=  true
  jmxExport= true
  driverClassName= "org.postgresql.Driver"
  username = "postgres"
  password = "root"
  url = "jdbc:postgresql://localhost:5432/DEVELOPMENT"
    }
}
