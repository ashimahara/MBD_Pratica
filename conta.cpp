
// Online C++ Compiler - Build, Compile and Run your C++ programs online in your favorite browser

#include<iostream>
using namespace std;

class conta {
    private:
      string numero;
      double saldo;
      
    public:
      conta(string numero, double valor);
      conta(string numero);
      void creditar(int valor);
      void debitar(int valor);
      double getsaldo();
      string getnumero();
};

      conta::conta(string numero, double valor){
          this->numero = numero;
          if(valor >= 0){
               this->saldo = valor;
          }
          else{
              this->saldo = 0;
          }
      }
      conta::conta(string numero){
          this->numero = numero;
          this->saldo = 0;
      }
      void conta::creditar(int valor){
          if(valor >= 0){
              this->saldo += valor;
          }
      }
      void conta::debitar(int valor){
          if(valor >= 0){
              if((*this).saldo >= valor){
               this->saldo -= valor;
              }
              else{
                cout << "voce nao tem saldo!" << endl;
              }
         }
      }
      double conta::getsaldo(){return this->saldo;}
      string conta::getnumero(){return this->numero;}
      
      class T {
        public:
          int x = 0;
          static int y;
          
          public:
            void m(){
                this-> x = 30;
                y = 400;
            }
            static void m2(){
                y = 400;
                cout << "Static method m2()!!" << endl;
            }
      };
      
      int T::y = 0;

int main()
{
    conta c1 ("123-x");
    conta c2 ("124-x", 100);
    
    c1.creditar(100);
    
    cout << "numero: " << c1.getnumero() << endl;
    cout << "saldo: " << c1.getsaldo() << endl;
    
    c2.debitar(-50);
    
    cout << "numero: " << c2.getnumero() << endl;
    cout << "saldo: " << c2.getsaldo() << endl;
    
    conta *c3 = new conta("125-x", 100);
    //cout << "numero: " << c3->getnumero() << endl;
    //cout << "saldo: " << c3->getsaldo() << endl;
    
    conta *c4;
    c4 = c3;
    
    T t;
    T t2;
    
    t.x = 50;
    t2.y = 60;
    
    T::m2();

    //int T::y = 400;
    // int Thing::count = 0; // define the static member variable
    cout << "t.x = " << t.x << endl;
    cout << "t.y = " << t.y << endl;
    cout << "t2.y = " << t2.y << endl;
    cout << "t2.x = " << t2.x << endl;
    return 0;
}
