function prettyplots(fsize,lsize,msize)
%PRETTYPLOTS Increase readability of all open plots.
%   PRETTYPLOTS(fsize,lsize,msize) Increases font sizes, line and marker
%   weights, respectively. Default values [8,2,16] are used if any 
%   parameters are left undeclared.
%   
%   Examples
%      PRETTYPLOTS(10,4,20)
%      PRETTYPLOTS(10,4)
%      PRETTYPLOTS(10)
%      PRETTYPLOTS
%
%   See also PLOTS2SUBPLOTS.
%   https://github.com/keelanc/

%   Author: Keelan Chu For
%   2014-08-22
%   https://github.com/keelanc/prettyplots

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