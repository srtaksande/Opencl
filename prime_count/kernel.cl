__kernel void ifprime(__global int* A)
{
    int i = get_global_id(0);
    int j;
    int flag = 0;
    if(i > 2)
    {
	    for(j=2;j<i;j++)	
	    {
	    	if((i%j) == 0)
	    	{
			flag = 1;
			break;
		}
	    }
	    if(flag == 0)
	    {
	    	A[i] = 1;
	    }
	    else
	    {
	    	A[i] = 0;
	    }
     }
}
