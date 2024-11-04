#include <syslog.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
    openlog("writer.c", LOG_PID | LOG_CONS, LOG_USER);
    
    if (argc != 3)
    {
        syslog(LOG_ERR, "Usage: %s <file> <string>", argv[0]);
        return 1;
    }

    FILE *file = fopen(argv[1], "w");
    if (file == NULL)
    {
        syslog(LOG_ERR, "Failed to open file %s", argv[1]);
        return 1;
    }

    syslog(LOG_INFO, "Writing %s to %s", argv[2], argv[1]);
    fprintf(file, "%s\n", argv[2]);

    fclose(file);
    closelog();
    
    return 0;
}