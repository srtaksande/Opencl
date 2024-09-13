__kernel void picalc(__global double* area, double dx)
{
    int i = get_global_id(0);
    double x,y;
    
    x = i*dx;
    y = sqrt(1-x*x);
    area[i] = y*dx;
}
