function [ d ] = dist( fi,fj, type)
%DISTANCE��������fi��fj�����ľ��룬type��ʾ��������
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
