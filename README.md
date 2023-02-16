# docker_postgres_upgrade
Testing PostgreSQL 11 to 15 upgrade on Centos 7 using Docker

## Building Docker image

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
   
