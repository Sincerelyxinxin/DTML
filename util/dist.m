function [ d ] = dist( fi,fj, type)
%DISTANCE函数计算fi与fj向量的距离，type表示距离类型
tmpf = [fi fj]';
if nargin < 3
    type = 'euclidean';
end
if strcmp(type,'euclidean')
    d = pdist(tmpf,'euclidean');
elseif strcmp(type,'manhatton') || strcmp(type,'cityblock')
    d = pdist(tmpf,'cityblock');
elseif strcmp(type,'chebychev')
    d = pdist(tmpf,'chebychev');
else
    d = pdist(tmpf,'euclidean');
end

end

