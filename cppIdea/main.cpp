#include <iostream>
#include <cmath>
using namespace std;

int main() {
    string input = "00000000ABCDE00FGHIJ00KLMNO00PQRST00UVWXY00000000";
    int width = sqrt(input.length());
    int totalIterations = pow((width-2), 2);
    int kernalSize = 3; // is a square

    for(int i = 0; i < totalIterations; i++){
        string tempWindow[kernalSize][kernalSize];

        // starting index of the window
        int startRow = i / (width - 2);
        int startCol = i % (width - 2);

        for(int j = 0; j < kernalSize; j++){
            for(int k = 0; k < kernalSize; k++){
                tempWindow[j][k] = input[(startRow + j) * width + startCol + k];
            }
        }

        // print
        cout << "Iteration " << i + 1 << ":" << endl;
        for(int j = 0; j < kernalSize; j++){
            for(int k = 0; k < kernalSize; k++){
                cout << tempWindow[j][k] << " ";
            }
            cout << endl;
        }
        cout << endl;
    }

    return 0;
}
