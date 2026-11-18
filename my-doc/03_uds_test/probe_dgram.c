#define _WIN32_WINNT 0x0A00
#include <stdio.h>
#include <string.h>
#include <winsock2.h>
#include <windows.h>
#ifndef AF_UNIX
#define AF_UNIX 1
#endif
typedef struct { ADDRESS_FAMILY sun_family; char sun_path[108]; } sa_un;
static void fill(sa_un*a,const char*p){memset(a,0,sizeof(*a));a->sun_family=(ADDRESS_FAMILY)AF_UNIX;strcpy(a->sun_path,p);}
int main(void){
  WSADATA w; WSAStartup(MAKEWORD(2,2),&w);
  const char*path="D:\\tgz02\\OS\\system\\my-doc\\03_uds_test\\_probe_d.sock";
  SOCKET s=socket(AF_UNIX,SOCK_DGRAM,0);
  if(s==INVALID_SOCKET){printf("dgram socket fail %d\n",WSAGetLastError());return 2;}
  sa_un a; fill(&a,path);
  if(bind(s,(struct sockaddr*)&a,sizeof(a))!=0){printf("dgram bind fail %d\n",WSAGetLastError());return 3;}
  printf("dgram bind ok\n");
  SOCKET c=socket(AF_UNIX,SOCK_DGRAM,0);
  sa_un b; fill(&b,path);
  if(connect(c,(struct sockaddr*)&b,sizeof(b))!=0){printf("dgram connect fail %d\n",WSAGetLastError());return 4;}
  u_long nb=1; ioctlsocket(c,FIONBIO,&nb);
  printf("dgram connect ok, nonblocking set\n");
  char msg[1320]; memset(msg,0x5a,sizeof(msg)); memcpy(msg,"TGZ2",4);
  int sent=0, eagain=0;
  for(int i=0;i<2048;i++){
    int r=send(c,msg,sizeof(msg),0);
    if(r==sizeof(msg)) sent++;
    else { eagain++; if(eagain>6) break; }
  }
  printf("sent=%d errs=%d lasterr=%d\n",sent,eagain,WSAGetLastError());
  char buf[2048]; int got=0,total=0;
  for(;;){int n=recv(s,buf,sizeof(buf),0); if(n<=0)break; got++; total+=n;}
  printf("recv msgs=%d bytes=%d (%d per msg)\n",got,total,got?total/got:0);
  closesocket(c);closesocket(s);DeleteFileA(path);
  printf("DGRAM TEST DONE\n");
  return 0;
}
