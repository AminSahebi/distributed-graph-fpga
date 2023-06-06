#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

int main(int argc, char ** argv) {
    FILE * fin = fopen(argv[1], "r");
    FILE * fout = fopen(argv[2], "wb");
    char * line = new char [1024];
    size_t line_length;
    ssize_t read_length;
    int max_vid = 0;
    while ((read_length = getline(&line, &line_length, fin)) != -1) {
        if (line[0]=='#') continue;
        int src, dst;
        assert(sscanf(line, "%d %d", &src, &dst)==2);
        fwrite(&src, sizeof(int), 1, fout);
        fwrite(&dst, sizeof(int), 1, fout);
        if (src > max_vid) max_vid = src;
        if (dst > max_vid) max_vid = dst;
    }
    fclose(fin);
    fclose(fout);
    printf("|V|=%d\n", max_vid + 1);
}

