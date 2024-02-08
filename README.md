# Docker PostgreSQL 12 to 16 upgrade

Testing PostgreSQL 12 to 16 upgrade on Centos 8 Stream using Docker

## Building Docker image for PostgreSQL 12 to 16 upgrade using Centos 8 Stream

    bash ./pg12_build_dockerfile.sh 

    sh-4.4# ls -l /tmp
    -rw-r--r-- 1 root root 176 Feb  8 21:13 result_pg12.txt
    -rw-r--r-- 1 root root 176 Feb  8 21:13 result_pg16.txt
    -rw-r--r-- 1 root root 341 Feb  8 21:13 version_pg12.txt
    -rw-r--r-- 1 root root 326 Feb  8 21:13 version_pg16.txt

    sh-4.4# cat version_pg1*
                                                   version                                                    
    --------------------------------------------------------------------------------------------------------------
    PostgreSQL 12.15 on x86_64-redhat-linux-gnu, compiled by gcc (GCC) 8.5.0 20210514 (Red Hat 8.5.0-20), 64-bit
    (1 row)

                                                 version                                                 
    ---------------------------------------------------------------------------------------------------------
    PostgreSQL 16.2 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 8.5.0 20210514 (Red Hat 8.5.0-20), 64-bit
    (1 row)

## Result

    sh-4.4# cat result_pg1*
     records  |    f1    |       f2       |       f3       
    ----------+----------+----------------+----------------
     20000000 | 69984702 | 170042491.6762 | 469900687.4476
    (1 row)

     records  |    f1    |       f2       |       f3       
    ----------+----------+----------------+----------------
     20000000 | 69984702 | 170042491.6762 | 469900687.4476
    (1 row)

# Docker PostgreSQL 11 to 15 upgrade

Testing PostgreSQL 11 to 15 upgrade on Centos 7 using Docker

## Building Docker image for PostgreSQL 11 to 15 upgrade using Centos 7

    bash ./pg11_build_dockerfile.sh 

## Result

    sh-4.2# cd /tmp; ls -l
    -rw-r--r-- 1 postgres postgres 176 Feb 16 20:34 result_pg11.txt
    -rw-r--r-- 1 postgres postgres 176 Feb 16 20:34 result_pg15.txt
    -rw-r--r-- 1 postgres postgres 329 Feb 16 20:34 version_pg11.txt
    -rw-r--r-- 1 postgres postgres 326 Feb 16 20:34 version_pg15.txt

    sh-4.2# cat version_pg1*
                                                 version                                                  
    ----------------------------------------------------------------------------------------------------------
    PostgreSQL 11.19 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-44), 64-bit
    (1 row)

                                                 version                                                 
    ---------------------------------------------------------------------------------------------------------
    PostgreSQL 15.2 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-44), 64-bit
    (1 row)

    sh-4.2# cat result_pg1* 
     records  |    f1    |       f2       |       f3       
    ----------+----------+----------------+----------------
     20000000 | 70019509 | 169984585.6851 | 469972131.3837
    (1 row)

     records  |    f1    |       f2       |       f3       
    ----------+----------+----------------+----------------
     20000000 | 70019509 | 169984585.6851 | 469972131.3837
    (1 row)
   
