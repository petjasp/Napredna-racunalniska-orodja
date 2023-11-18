#include <iostream>
#include <cmath>

using namespace std;

/*arctan*/
double  tSeries = 0.0, t2, t1;
int n, n_max;
double arctan(double x, int n_max) { //ime funkcije = arctan("x","število iteracij")
	tSeries = 0.0;
	if (abs(x) <= 1) {
		for (n = 0; n <= n_max; ++n) {
			t1 = pow(x, 2 * n + 1) * pow(-1, n);
			t2 = t1 / (2 * n + 1);
			tSeries += t2;
		}
	}
	return tSeries;
}

/* Definirana funkcija */
#define f(x)  arctan(x/2,10000) * exp(3*x)

int main()
{
	/*Integriranje*/
	float spodnja, zgornja, integration = 0.0, integration1=0.0,integration2=0.0,korak, k;
	int i, podintervali;

	spodnja = 0;
	zgornja = (atan(1.0) * 4.0)/4;

	/* Input */

	cout << "Vpisi stevilo intervalov: ";
	cin >> podintervali;

	/* Izračun integrala*/

	/* Def. dolžine koraka */
	korak = (zgornja - spodnja) / podintervali;

	/* Izračun vrednosti integrala */
	integration1 = f(spodnja) + f(zgornja); //skrajni točki

	for (i = 1; i <= podintervali - 1; i++)
	{
		k = spodnja + i * korak; //vrednost x koordinate
		integration2 += 2*f(k);
	}

	integration = (integration2 + integration1) * korak/2;

	cout << endl << "Vrednost integrala: " << integration;

	return 0;
}