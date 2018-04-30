#include <windows.h>
#include <gl/glut.h>
#include <gl/gl.h>
#include <math.h>
GLfloat escala = 1;
GLfloat movx, movy = 0;
//Função callback chamada para fazer o desenho

void Desenha(void){
    //Limpa a ajnela
    glClear(GL_COLOR_BUFFER_BIT);

   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();
   gluOrtho2D(-5,5,-5,5);

   glScalef(escala,escala,0);
   glTranslatef(movx,movy,0);

   glMatrixMode(GL_MODELVIEW);
   glLoadIdentity();
   glBegin(GL_QUADS);
        glColor3f(1,0,1);
        glVertex2f(2,-2);
        glVertex2f(2,2);
        glColor3f(0,0,0);
        glVertex2f(-2,2);
        glVertex2f(-2,-2);
    glEnd();

    glFlush();
}
void Teclas (unsigned char tecla,GLint x,GLint y){
    switch(tecla){
        case 'Q': glEnd;
            break;
        case '1': escala--;
            break;

    }
    Desenha();
}
void TeclasEspeciais(GLint tecla,GLint x, GLint y){
    switch(tecla){
        case GLUT_KEY_PAGE_UP : escala++;
            break;
        case GLUT_KEY_HOME : escala=1;
            break;
        case GLUT_KEY_LEFT : movx--;
            break;
        case GLUT_KEY_RIGHT : movx++;
            break;


    }
    Desenha();
}
void mouse(int bot ,int state,int mousex,int mousey){
    if(bot==GLUT_LEFT_BUTTON ){

         escala= escala+0.03 ;
    }
    if(bot==GLUT_RIGHT_BUTTON && state==GLUT_DOWN){

         escala= escala-0.03 ;
    }

    Desenha();


}

//Inicializa parametros de redenring
void Inicializa(void){

    // Define a cor  de fundo  da janela
    glClearColor(0.0f, 0.2f,0.0f,1.0f);
}

//Porgrama principal
int main(void){
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(800,600);
    glutInitWindowPosition(320,150);
    glutCreateWindow("Primeiro Programa");
    glutKeyboardFunc(Teclas);
    glutSpecialFunc(TeclasEspeciais);
    glutDisplayFunc(Desenha);
    glutMouseFunc(mouse);
    Inicializa();
    glutMainLoop();

}

