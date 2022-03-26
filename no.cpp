#include <bits/stdc++.h>
using namespace std;

int arr[1000000];

int main() {
    ios::sync_with_stdio(0);
    cin.tie(0);

    int n;
    int a = -1000000;
    int b = 1000000; 

    cin >> n;
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }
    
    for (int i = 0; i < n; i++) {
        if (a < arr[i]) {
            a = arr[i];
       }
    }

    for (int i = 0; i < n; i++) {
        if (b > arr[i]) {
            b = arr[i];
        }
    }

    cout << a << " " << b;
}