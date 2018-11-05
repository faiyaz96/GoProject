package main

import (
	"fmt" //formatter for layout
	"log" //logger  for error
	"net/http" //pacakge for requests like GET POST
)

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		http.ServeFile(w, r, r.URL.Path[1:]) // one input argument and one output argument
	})

	http.HandleFunc("/hi", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hi")
	})

	log.Fatal(http.ListenAndServe(":9000", nil))//listening on which port 

}
