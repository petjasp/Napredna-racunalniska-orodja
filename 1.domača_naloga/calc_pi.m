function [priblizek_pi,odstopek] = area_pi(st_tock)
    % Klic funkcije mcc_pi za generiranje točk
    [tocke_v_krogu,tocke_v_kvadratu] = mcc_pi(st_tock);

    % Izračun razmerja točk v krogu in kvadratu
    st_tock_krog = length(tocke_v_krogu);
    st_tock_kvadrat = length(tocke_v_kvadratu);
    priblizek_pi = (4*st_tock_krog) / st_tock_kvadrat

     %Izracun odstopka
    odstopek = pi-priblizek_pi
end
