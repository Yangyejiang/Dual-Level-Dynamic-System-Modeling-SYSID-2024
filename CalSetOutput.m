function outputIntvl = CalSetOutput(obj,inputIntvl)
    % computer an output set for a single input interval
    %
    % Syntax:
    % y = outputSetSingle(obj,inputIntvl)
    %
    % Inputs:
    %    obj - feedforward network object
    %    inputIntvl - interval matrix
    %
    % Outputs:
    %    outputIntvl - output matrix
    %
    
    %------------- BEGIN CODE --------------

numLayer = length(obj.bias);

for i = 1:1:numLayer
    inputIntvl =   computelayerOutput(inputIntvl(:,1),inputIntvl(:,2),obj.weight{1,i},obj.bias{1,i},obj.activeFcn{1,i}); % layer-by-layer computation
end

outputIntvl = inputIntvl;

end
