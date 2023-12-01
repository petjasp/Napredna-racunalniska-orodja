function [tocke_v_krogu, tocke_v_kvadratu,tocke_zunaj_kroga] = mcc_pi(st_tock)

% Generiraj naključne koordinate točk znotraj kvadrata
x_kvadrat = rand(1, st_tock);
y_kvadrat = rand(1, st_tock);

% Preveri, ali so točke znotraj kroga (računajte razdaljo od središča)
sredisce_x = 0.5; % x-koordinata središča kvadrata
sredisce_y = 0.5; % y-koordinata središča kvadrata
polmer_kroga = 0.5; % polmer kroga

razdalja = sqrt((x_kvadrat - sredisce_x).^2 + (y_kvadrat - sredisce_y).^2);

% Izberi točke, ki so znotraj kroga
tocke_v_krogu = [x_kvadrat(razdalja <= polmer_kroga); y_kvadrat(razdalja <= polmer_kroga)]

% Vse točke so znotraj kvadrata
tocke_v_kvadratu = [x_kvadrat; y_kvadrat]

% Tocke zunaj kroga
tocke_zunaj_kroga = [x_kvadrat(razdalja > polmer_kroga); y_kvadrat(razdalja > polmer_kroga)];

end
