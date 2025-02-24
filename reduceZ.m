function [z_final] = reduceZ(z_initial)
    z = z_initial;
    while z > z_initial / 2
        z = z - 1;
    end
z_final = z;
end