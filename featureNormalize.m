function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X_norm, 2));
sigma = zeros(1, size(X_norm, 2));
m=length(X_norm);

%%%%      


for i=1:size(X, 2)
    
    sigma(:,i) = std(X_norm(:,i));
    mu(:,i) = mean(X_norm(:,i));
    
    for k=1:m

    X_norm(k,i) = (X_norm(k,i)-mu(:,i))/sigma(:,i);
    
    end
    
end







% ============================================================

end
