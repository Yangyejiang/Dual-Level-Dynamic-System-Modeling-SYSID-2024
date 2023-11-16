clear all
clc
for i =1:5
    names{i}='1';
    training_times(i)='1';
    mses(i)='1';
end
% 假设 names_counter 是 names 数组的长度
 names_counter = length(names);

% 初始化 LaTeX 表格的字符串
latexTable = '\begin{table}[hb]\begin{center}\caption{Training Time and MSE for Each Shape}\label{tb:shape_training}\begin{tabular}{|ccc|}\hline ';
latexTable = [latexTable, 'Shape Name & Training Time (s) & MSE \\ \hline '];

% 添加每行数据
for i = 1:names_counter
    latexTable = [latexTable, sprintf('%s & %.2f & %.2f \\\\  ', names{i}, training_times(i), mses(i))];
end

% 结束 LaTeX 表格代码
latexTable = [latexTable, '\hline \end{tabular}\end{center}\end{table}'];

% 显示 LaTeX 表格代码
disp(latexTable);
