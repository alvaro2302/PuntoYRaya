class Casilla
  attr_accessor :LadoArriba,:LadoAbajo,:LadoDerecha,:LadoIzquierda

    def initialize()
        @LadoArriba = false
        @LadoAbajo = false
        @LadoDerecha = false
        @LadoIzquierda = false
    end  

    def LadoArriba()
        return @LadoArriba
    end

    def LadoAbajo()
        return @LadoAbajo
    end

    def LadoDerecha()
        return @LadoDerecha
    end

    def LadoIzquierda()
        return @LadoIzquierda
    end

    def estado()
        return @estado
    end
    
    def obtenerLado(filaInicial, columnaInicial, filaFinal,columnaFinal)
        lado = ""
        baseFinalfila = @baseFila +1
        baseFinalColumna = @baseColumna +1
        diferenciafila = filaFinal - filaInicial
        diferenciacolumna = columnaFinal - columnaInicial
        if filaInicial == @baseFila and columnaInicial == @baseColumna
            if diferenciacolumna == 1 and diferenciafila==0 
                lado = "arriba"
            end
            if diferenciacolumna == 0 and diferenciafila == 1
                lado = "izquierda"
            end
        end
        return lado
    end

    def seleccionarLado(lado)
        case lado
        when "Arriba"
            @LadoArriba = true
        when "Abajo"
            @LadoAbajo = true
        when "Derecha"
            @LadoDerecha = true
        when "Izquierda"
            @LadoIzquierda = true
        end  
    end

    def estaLLena()
        return @LadoArriba === true && @LadoAbajo === true && @LadoIzquierda === true && @LadoDerecha=== true
    end

    def obtenerEstado
        estadoCadena = "" 
        estado = [@LadoArriba,@LadoAbajo,@LadoDerecha,@LadoIzquierda]
        estado.each do |elemento|
            estadoCadena = estadoCadena + elemento.to_s + " "    
        end
        return estadoCadena
    end
end
