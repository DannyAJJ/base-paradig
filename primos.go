package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Print("\033c")
	var caso int
	var radio float64
	var ancho float64
	var alto float64
	var largo float64
	fmt.Println("Favor Ingresar Ejercicio a Realizar")
	fmt.Println("1- Calcular Primos Gemelos")
	fmt.Println("2- Calcular Volumen de una Esfera")
	fmt.Println("3- Calcular volumen de un Cuadrilatero")
	fmt.Scanf("%v\n", &caso)
	switch caso {
	case 1:
		primosgemelos()
	case 2:
		fmt.Println("Favor Ingresar Radio de la Esfera")
		fmt.Scanf("%v\n", &radio)
		fmt.Printf("El Volumen de la Esfera es %0.2f", AC(radio))
	case 3:
		fmt.Println("Favor Ingresar Ancho del Cuadrilatero")
		fmt.Scanf("%v\n", &ancho)
		fmt.Println("Favor Ingresar Alto del Cuadrilatero")
		fmt.Scanf("%v\n", &alto)
		fmt.Println("Favor Ingresar Largo del Cuadrilatero")
		fmt.Scanf("%v\n", &largo)
		fmt.Printf("El Volumen del Cuadrilatero es %0.2f", AE(ancho, alto, largo))
	}
}

func AE(a float64, b float64, c float64) float64 {
	var volumen float64
	volumen = a * b * c
	return volumen
}

func AC(r float64) float64 {
	var volumen float64
	volumen = (4 * math.Pi * math.Pow(r, 3)) / 3
	return volumen
}
func primosgemelos() {
	var i int = 0
	var parejas int
	var n int = 2
	fmt.Print("\033c")
	fmt.Println("Favor Inserte Numero de Parejas a Calcular")
	fmt.Scanf("%v\n", &parejas)
	fmt.Print("\033c")
	fmt.Println("Teniendo en cuenta que 1 no es primo por definicion")

	for i < parejas {
		r, si := primo(n, false)
		if si == true {
			primer := r
			r, si = primo((n + 2), false)
			if si == true {
				segundo := r
				fmt.Printf("%v y %v\n", primer, segundo)
				i++
			}
		}
		n++
	}
}
func primo(b int, res bool) (int, bool) {
	var a int = 2
	var r int
	for a < b {
		r = b % a
		//	fmt.Println("prueba", a-1)
		//	fmt.Println(r)
		if r == 0 {
			res = false
			//fmt.Printf("%v no es primo\n", b)
			break
		}
		a++
	}
	if a == b {
		//fmt.Printf("%v es primo", b)
		res = true
	}
	return b, res
}
