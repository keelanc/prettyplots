function prettyplots(fsize,lsize,msize)
% Increases font sizes, line and marker weights of plots for printing or
% presentations. Acts on all open plots.
%
% prettyplots(fsize,lsize,msize)
% parameters: font size, line weight, marker size
&
% Author: Keelan Chu For
% 2014-04-23

if nargin < 3
    msize = 8;  % default marker size
end
if nargin < 2
    lsize = 2;  % default line weight
end
if nargin < 1
    fsize = 16; % default font size
end

hfig = findobj('type','figure');
hline = findobj(hfig, 'type','line');
set(hline,'LineWidth',lsize)
set(hline,'MarkerSize',msize)
haxes = findobj(hfig, 'type','axes');
set(haxes,'FontSize',fsize)
hlabel = get(haxes, {'XLabel' 'YLabel' 'ZLabel' 'Title'});
hlabel = cell2mat(hlabel(:));
set(hlabel,'FontSize',fsize)
hleg = findobj(hfig, 'Type','axes','Tag','legend');
set(hleg,'FontSize',fsize)
htext = findobj(hfig, 'Type','text');
set(htext,'FontSize',fsize)