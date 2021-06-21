package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {

	log.Println("a Simple WebServer v0.1")

	http.HandleFunc("/", handler)
	http.ListenAndServe(":8000", nil)
}

func handler(w http.ResponseWriter, r *http.Request) {

	log.Printf("Request received from %s", r.RemoteAddr)
	fmt.Fprintf(w, "v0.1 Hiiiiiiiiii from Kubernetes on Cloud!!!!!")
}
