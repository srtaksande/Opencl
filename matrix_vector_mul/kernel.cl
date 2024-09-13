__kernel void matrix_vec_mul(__global int* A, __global int* B, __global int* C, int width)
{
    int i = get_global_id(0);
    int sum = 0;
    int j;
    for(j=0;j<width;j++)
    {
    	sum = sum + A[i*width+j]*B[i];	
    }
    C[i] =  sum;
}
