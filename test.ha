int f(int a, int b) {
	int c;
	bool quit;
	int sum;
	c = a + b;
	quit = false;
	while(!quit) {
		sum = sum + c;
		if(sum > 10) {
			quit = true;
		} else {
			sum = 1;	
		}
	}
	if(sum == 100) {
		return sum;
	} else {

	}
}

int main(){
    int a;
    bool b;
    a = 1;
    b = true;
    a = 1 + 5;
    f(a, 5);
    return a;
}

