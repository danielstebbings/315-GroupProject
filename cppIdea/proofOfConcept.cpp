#include <iostream>
using namespace std;

int main() {
    int width = 7;
    string input = "00000000ABCDE00FGHIJ00KLMNO00PQRST00UVWXY00000000";
    string startMatrix[width][width];


    for(int i = 0; i < width ; i++){
        for(int j = 0; j < width; j++){
            startMatrix[i][j] = input[(i*width)+j];
        }
    }

    // Print the matrix
    for(int i = 0; i < width; i++){
        for(int j = 0; j < width; j++){
            cout << startMatrix[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
