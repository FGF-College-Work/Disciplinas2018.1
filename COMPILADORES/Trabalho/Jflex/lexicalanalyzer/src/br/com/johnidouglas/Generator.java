package br.com.johnidouglas;

import java.io.File;
import java.nio.file.Paths;

public class Generator {

    public static void main(String[] args) {
    	
    	
        String rootPath = Paths.get("").toAbsolutePath(). toString();
        String subPath = "/src/br/com/johnidouglas/";

        String file = rootPath + subPath + "language.lex";

        File sourceCode = new File(file);

        jflex.Main.generate(sourceCode);

    }
}