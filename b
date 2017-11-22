#include<stdio.h>


int main (int argc, char *argv[]){
int dato;

FILE *ptrArchivo;
ptrArchivo=fopen("datos.dat", "wb");

if(ptrArchivo==NULL){
	printf("Error al abrir el archivo\n");
	}else{
		printf("Dame el dato a guardar el archivo:");
		scanf("%d",&dato);
		
	//Se guarda en archivo
	fprintf(ptrArchivo,"%d\n",dato);
	fprintf(ptrArchivo,"%d\n",++dato);
	fprintf(ptrArchivo,"%d\n",++dato);
	
	fclose(ptrArchivo); //se cierra archivo
	}
int datoLeido;

ptrArchivo=fopen("datos.dat","rb");

if(ptrArchivo==NULL){
	printf("Error al abrir el archivo\n");
}else{
	while(!feof(ptrArchivo)){
		fscanf(ptrArchivo,"%d",&datoLeido);
		printf("Dato:%d\n",datoLeido);
		}
		fclose(ptrArchivo);
}
	return 0;
}
