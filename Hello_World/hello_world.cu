#include <iostream>

//Keyword __global__ is used to indicate the function will be run on the GPU
__global__ void kernel(int *a, int *b, int *c){
  //This function is compiled by nvcc where as the other functions are handled by g++ or gcc
  *c = *a + *b;
}
int main(int argc, char const *argv[]) {
  /* code */
  int a,b,c = 0;
  int *device_a, *device_b, *device_c;
  int size = sizeof(int);

  //Allocate memory in device/GPU
  cudaMalloc((void **)&device_a,size);
  cudaMalloc((void **)&device_b,size);
  cudaMalloc((void **)&device_c,size);

  a = 2;
  b = 7;
  //Copy memory over to GPU
  cudaMemcpy(device_a,&a,size,cudaMemcpyHostToDevice);
  cudaMemcpy(device_b,&b,size,cudaMemcpyHostToDevice);
  //<<<blocknumber, threadnumber>>>
  kernel<<<1,1>>>(device_a,device_b,device_c);
  //Copy back over to CPU
  cudaMemcpy(&c,device_c,size,cudaMemcpyDeviceToHost);

  std::cout << c << '\n';
  cudaFree(device_a);
  cudaFree(device_b);
  cudaFree(device_c);


  return 0;
}
