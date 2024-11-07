unsigned int mull16 (unsigned int x, unsigned int y) {
    unsigned int a, b, c;
    unsigned int i;

    a = x;
    b = y;
    i = 0;

    for (i=0; i<16; i++){
        if ((b & 1) == 1) {
            c += a;
        }

        a = a << 1;
        b = b >> 1;
    }
    return (c);
}