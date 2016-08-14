/***
 * Excerpted from "Grails 2: A Quick-Start Guide",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/dkgrails2 for more book information.
 ***/

// comment out datasource when using h2 - e.g. rignt now with test it should be commented out
//dataSource {
//    pooled = true
//    driverClassName = "com.mysql.jdbc.Driver"
//    username = "dave"
//    password = "1234"
//}



hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//   cache.region.factory_class =
//     'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
}

// environment specific settings
environments {
    development {
        dataSource {
//            dbCreate = "create-drop" // one of 'create', 'create-drop',
                driverClassName = "com.mysql.jdbc.Driver"
    username = "dave"
    password = "1234"
            dbCreate = "update" // one of 'create', 'create-drop',
            url = "jdbc:mysql://localhost:3306/tekdays"
        }
    }
    test {
            dataSource {
                dbCreate = "create-drop"
                url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            }
        }
        production {
            dataSource {
                dbCreate = "create-drop"
                url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
                properties {
                    maxActive = -1
                    minEvictableIdleTimeMillis=1800000
                    timeBetweenEvictionRunsMillis=1800000
                    numTestsPerEvictionRun=3
                    testOnBorrow=true
                    testWhileIdle=true
                    testOnReturn=false
                    validationQuery="SELECT 1"
                    jdbcInterceptors="ConnectionState"
                }
            }
    }
}