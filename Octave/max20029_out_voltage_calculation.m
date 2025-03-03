% Fixed parameters
C = 15e-12;
Vouts = 1;
Vout = 1.35;
% Output voltage resistors
R_ratio = Vout/Vouts - 1;

R_table = [20e3 22e3 24e3 27e3 30e3 33e3 ...
           36e3 39e3 43e3 47e3 51e3 56e3 62e3 68e3 75e3 82e3 91e3 100e3];


min_diff = Inf;
closest_value = NaN;

for i = 1:length(R_table)
    for j = i+1:length(R_table)  % Ensure no repetition (i < j)
        % Calculate the division of the two elements
        div_result_1 = R_table(i) / R_table(j);
        div_result_2 = R_table(j) / R_table(i);  % Also check the reverse division

        % Find the difference from the reference value X
        diff_1 = abs(div_result_1 - R_ratio);
        diff_2 = abs(div_result_2 - R_ratio);

        % Update the closest value and minimum difference
        if diff_1 < min_diff
            min_diff = diff_1;
            closest_value = div_result_1;
            R1 = R_table(i);
            R2 = R_table(j);
        end

        if diff_2 < min_diff
            min_diff = diff_2;
            closest_value = div_result_2;
            R1 = R_table(j);
            R2 = R_table(i);
        end
    end
end

Vout_actual = Vouts*(R1 + R2)/R2;
C = 15e-12;
C1 = C*(R2/R1);

display("closest value:");
display(closest_value);
display("Resistor values R1, R2:");
display([R1, R2]);

display("Capacitor value, C1:");
display(C1);

display("Actual Vout voltage:");
display(Vout_actual);
