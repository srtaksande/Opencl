__kernel void vecAdd(__global int* A, __global int* Aa)
{
    int gid = get_global_id(0);

    Aa[gid] = A[gid]*A[gid];
}
