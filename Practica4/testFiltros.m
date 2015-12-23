function [ ] = testFiltros()
% Esta función pretende ilustrar el banco de filtros de la gaussiana
 
	F=makeLMfilters(); % genera los filtros
	visualizeFilters(F);
end
