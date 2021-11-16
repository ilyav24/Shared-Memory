#include <iostream>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>
using namespace std;
  
int main()
{
    int numRows = 5, numCols = 6;
    int shmSize = sizeof(int[numRows][numCols]);

    // ftok to generate unique key
    key_t key = ftok("shmfile",65);
  
    // shmget returns an identifier in shmid
    int shmid = shmget(key,shmSize,0666|IPC_CREAT);
  
    // shmat to attach to shared memory
    int **str = (int**) shmat(shmid,(void*)0,0);
  
    printf("Data read from memory: %s\n",str);

    // output each array element's value
    for (int i = 0; i < numRows; i++)
    {
        for (int j = 0; j < numCols; j++)
        {
            cout << "Element at x[" << i
                 << "][" << j << "]: ";
            cout << str[i][j]<<endl;
        }
    }
      
    //detach from shared memory 
    shmdt(str);
    
    // destroy the shared memory
    shmctl(shmid,IPC_RMID,NULL);
     
    return 0;
}