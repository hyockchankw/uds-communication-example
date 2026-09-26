CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11
TARGETS = server client

all: $(TARGETS)

server: server.cpp
	$(CXX) $(CXXFLAGS) -o server server.cpp

client: client.cpp
	$(CXX) $(CXXFLAGS) -o client client.cpp

clean:
	rm -f $(TARGETS) /tmp/uds_socket_cpp

run-server: server
	./server

run-client: client
	./client

.PHONY: all clean run-server run-client
