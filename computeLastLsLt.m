function LsLt = computeLastLsLt(hs,ht,zs,actfuncType)
[d,Ns] = size(hs);
[d,Nt] = size(ht);
LsLt = zeros(d,Ns);
tmp = 1/Ns * sum(hs,2) - 1/Nt * sum(ht,2);
dev_zs = devActfunc(zs,actfuncType);
LsLt = repmat(tmp,1,size(dev_zs,2)) .* dev_zs;
