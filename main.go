package main

import (
	"fmt"
	"net/http"
)

func handlePing(rw http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(rw, "Hello, Minikube\n")
}

func main() {

	http.HandleFunc("/ping", handlePing)

	port := ":8080"

	server := &http.Server{
		Addr: port,
	}

	fmt.Printf("Running on port %s\n", port)
	server.ListenAndServe()
}
