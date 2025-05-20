#include <iostream>

struct link {
    public:
        int value;
        link *next;
        int getValue(){
            return value;
        }
        void* getNext(){
            return next;
        }
    private:
        // Hidden information
};

int main() {
    link header;
    header.value = 3; 

    link body;
    header.next = &body;
    body.value = 2;

    link tail;
    body.next = &tail;
    tail.next = nullptr; 
    tail.value = 1; 

    
    std::cout<< header.next->next->value << std::endl;
    return 0;
}