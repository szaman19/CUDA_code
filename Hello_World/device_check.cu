#include <iostream>
/*
This code is copied/adapted from
https://devblogs.nvidia.com/how-query-device-properties-and-handle-errors-cuda-cc/
*/
using namespace std;
int main(int argc, char const *argv[]) {
  /* code */
  int nDevices;

  cudaGetDeviceCount(&nDevices);
  //sets nDevices to the number of CUDA capable devices (GPUs)

  cout << nDevices << '\n';
  // for (int i = 0; i < nDevices; i++) {
  //   cudaDeviceProp prop;
  //   cudaGetDeviceProperties(&prop, i);
  //
  //   cout << "Device Numer: " << i <<"\n";
  //   cout <<"\t"<< "Device Name:"<<prop.name<<"\n";
  //   cout <<"\t"<< "Clock Rate(KHz):"<<prop.memoryClockRate<<"\n";
  //   cout <<"\t"<< "But Width(bits):"<<prop.memoryBusWidth<<"\n";
  //   cout << "\t" << "Memory Bandwidth(GB/s):" <<
  //   2.0*prop.memoryClockRate*(prop.memoryBusWidth/8)/1.0e6 << "\n";
  // }

  return 0;
}
