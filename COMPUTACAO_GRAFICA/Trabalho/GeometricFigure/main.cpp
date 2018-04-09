#include <windows.h>
#include <gl/glut.h>

void Desenha(){

    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();

    //Limpa janela de visualização
    glClear(GL_COLOR_BUFFER_BIT);

    // Especifica que a coor  corrente é vermelha
    // RGB
    glBegin(GL_QUADS);
                glVertex2i(100,150);
                glVertex2i(100,100);
                // Especifica que a cor corrente é azul
                glColor3f(0.0f, 0.0f, 1.0f);
                glVertex2i(150,100);
                glVertex2i(150,150);
    glEnd();

    // Executa o comandos openGL
    glFlush();

}

void Inicializa(void){

    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
}

void AlteraTamanhoJanela(GLsizei w, GLsizei h){

    if(h == 0) h = 1;



    glViewport(0, 0, w, h);

    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();


    if (w <= h)
        gluOrtho2D(0.0f, 250.0f, 0.0f, 250.0f*h/w);
    else
        gluOrtho2D(0.0f, 250.0f*w/h, 0.0f, 250.0f);


}

int main(void){

    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
    glutInitWindowSize(400,350);
    glutInitWindowPosition(10,10);
    glutCreateWindow("Quadrado");
    glutDisplayFunc(Desenha);
    glutReshapeFunc(AlteraTamanhoJanela);
    Inicializa();
    glutMainLoop();


}
