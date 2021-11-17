#include<stdio.h>
// #include<pthread.h>
#include<unistd.h>
#include<stdlib.h>
// pthread_mutex_t wr,mutex;
int a = 10,readcount=0;

void * reader(void *arg)
{
    long int num;
    num=(long int) arg;
    pthread_mutex_lock(&mutex);
    readcount++;
    pthread_mutex_unlock(&mutex);
    if(readcount==1)
    {
        pthread_mutex_lock(&wr);
    }
    printf("\nReader %ld is in critical section",num);
    printf("\nReader %ld is reading data %d",num,a);
    sleep(1);

    pthread_mutex_lock(&mutex);
    readcount--;
    pthread_mutex_unlock(&mutex);
    if(readcount==0)
    {
        pthread_mutex_unlock(&wr);
    }
    printf("\nReader %ld left criticial section",num);
}
void * writer(void *arg)
{
    long int num;
    num=(long int) arg;
    pthread_mutex_lock(&wr);
    printf("\nWriter %ld is in critical section",num);
    printf("\nWriter %ld have written data as %d",num,++a);
    sleep(1);
    pthread_mutex_unlock(&wr);
    printf("\nWriter %ld left critical section",num);
}
int main()
{
   pthread_t r[10],w[10];
   long int i,j;
   int nor,now;
   pthread_mutex_init(&wr,NULL);
   pthread_mutex_init(&mutex,NULL);
   printf("Enter number of readers and writers\t");
   scanf("%d %d",&nor,&now);
   for(i=0;i<nor;i++)
   {
       pthread_create(&r[i],NULL,reader,(void *)i);
   }
   for(j=0;j<now;j++)
   {
       pthread_create(&w[j],NULL,writer,(void *)j);
   }
    for(i=0;i<nor;i++)
   {
       pthread_join(r[i],NULL);
   }
    for(j=0;j<now;j++)
   {
       pthread_join(w[j],NULL);
   }
return 0;
}
