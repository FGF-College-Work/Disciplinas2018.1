#include <windows.h>
#include <gl/glut.h>

//Função callback chamada para fazer o desenho

void Desenha(void){
    //Limpa a ajnela
    glClear(GL_COLOR_BUFFER_BIT);

    //Executa os comandos OpenGL
    glFlush();
}

//Inicializa parametros de redenring
void Inicializa(void){

    // Define a cor  de fundo  da janela
    glClearColor(0.0f, 0.2f,0.0f,1.0f);
}

//Porgrama principal
int main(void){
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutCreateWindow("Primeiro Programa");
    glutDisplayFunc(Desenha);
    Inicializa();
    glutMainLoop();

}
