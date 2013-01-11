class PiedraPapelTijera

 def humano
     :piedra
 end

 def maquina
     @@listamaquina=[:piedra,:papel,:tijeras,:piedra,:papel,:tijeras]
     @@resultadomaquina=[:papel]
     :papel
 end
 
 def tiradas
    [:piedra,:papel,:tijeras]
 end

 def posibles
    [:piedra=>:papel,:papel=>:tijeras,:tijeras=>:piedra]
 end

 def obtener_humano
      if tiradas.include?humano
       return humano
      end
 end
 
 def obtener_maquina
      if tiradas.include?maquina
       return maquina
      end
 end

 def juegos
      @@listamaquina
 end

 def jugadamaquina
      @@resultadomaquina
 end

 def jugar
     if ((humano==:piedra && maquina==:tijeras)||(humano==:tijeras && maquina==:papel)||(humano==:papel && maquina==:piedra))
     return "humano"
         else
            return "maquina"
     end
 end

 def comprobar_aleatorio
        "ok"
 end

 def comprobar_distintas
      if maquina==humano
       return "Son la misma"
         else
            return "No son la misma"
      end
 end
end
