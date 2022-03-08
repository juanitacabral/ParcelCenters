
V=niftiread('Schaefer2018_200Parcels_17Networks_order_FSLMNI152_2mm.nii.gz');

sz=size(V);
for n=1:max(V(:))
    ind_N=find(V==n);
    [X,Y,Z] = ind2sub(sz,ind_N);
    V_Parcel_cog(n,:)=mean([X,Y,Z]);
end