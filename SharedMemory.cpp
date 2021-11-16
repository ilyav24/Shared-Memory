#include <iostream>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
using namespace std;
using namespace cv;

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>
#include <iostream>

//#include "2cam.h"

int sizeofmat(cv::Mat *mat) {
    return mat->rows * mat->step;
}

void fill(int *p, int numRows, int numCols)
{
    for (int i = 0; i < numRows; i++)
    {
        for (int j = 0; j < numCols; j++)
        {
           *(p + i*numCols + j) = rand() % 20 + 200;
        }
    }
}

int main() {
    int numRows = 5, numCols = 6;
    
    int **arr;
    int shmid;
    static int shmSize = sizeof(int[numRows][numCols]);
     // ftok to generate unique key
    key_t key = ftok("shmfile",65);
   
    // shmget returns an identifier in shmid
    shmid = shmget(key,shmSize,0666|IPC_CREAT);
    if(shmid < 0)
    {
      cout<< "shmget" << endl; 
    }
  
    // shmat to attach to shared memory
    arr = (int**)shmat(shmid,NULL,0);
    if(arr == NULL)
    {
        cout<< "shmat" << endl;
    }
    //arr[0][0] = rand() % 20 + 200;
    // for (int i = 0; i < numRows; i++)
    // {
    //     for (int j = 0; j < numCols; j++)
    //     {
    //        arr[i][j] = rand() % 20 + 200;
    //     }
    // }
    //cout<< "here" << endl;
    
    cout<<"Write Data : ";
    // for (int i = 0; i < numRows; i++)
    // {
    //     for (int j = 0; j < numCols; j++)
    //     {
    //         cout << "Element at x[" << i
    //              << "][" << j << "]: ";
    //         cout << arr[i][j] <<endl;
    //     }
    // }
  
    //printf("Data written in memory: %s\n",str);
      
    //detach from shared memory 
    shmdt(arr);
  
    return 0;
}