function [ ] = testFiltros()
% Esta funci�n pretende ilustrar el banco de filtros de la gaussiana
 
	F=makeLMfilters(); % genera los filtros
	visualizeFilters(F);
end
