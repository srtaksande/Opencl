__kernel void matrix_vec_mul(__global int* A, __global int* B, __global int* C, int width)
{
    int gid = get_global_id(0);
    int sum = 0;
    int i,j,k;
    i = gid/width;
    j = gid%width;
    
    for(k=0;k<width;k++)
    {
	sum = sum + A[i*width+k]*B[k*width+j];	
    }
    C[i*width+j] =  sum;
}
