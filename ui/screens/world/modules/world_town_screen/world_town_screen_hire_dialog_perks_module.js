/*
 *  Adapted from character_screen_perks_module.js
 *	Used to display perks in the settlement hiring dialog
 */
"use strict";


var HireDialogPerksModule = function(_parent, _bro)
{
    this.mParent = _parent;
    this.mBro = _bro;

	// container
	this.mContainer = null;
    this.mListContainer = null;
    this.mListScrollContainer = null;
	this.mHorizontalBar = null;

    this.mLeftColumn = null;
    this.mMiddleColumn = null;
    this.mRightColumn = null;

    // perks
    this.mPerkTree = null;
    this.mPerkRows = [];

};


HireDialogPerksModule.prototype.createDIV = function (_parentDiv)
{
	this.mContainer = $('<div class="independent-perks-module opacity-full"/>');
	_parentDiv.append(this.mContainer);
	
	this.mListContainer = $('<div class="ui-control list has-frame"/>');
	var scrollContainer = $('<div class="scroll-container"/>');
    this.mListContainer.append(scrollContainer);
	this.mContainer.append(this.mListContainer);
    this.mListContainer.aciScrollBar({
         delta: 1.0,
         lineDelay: 0,
         lineTimer: 0,
         pageDelay: 0,
         pageTimer: 0,
         bindKeyboard: false,
         resizable: false,
         smoothScroll: false,
		 verticalBar: 'none',
    });
    //this.mListContainer = this.mContainer.createList(1.0/*8.85*/);
    this.mListScrollContainer = this.mListContainer.findListScrollContainer();
	//this.mListContainer.showListScrollbar(false);
	this.mHorizontalBar = this.mListContainer.find('.aciSb_bar_h:first');
    this.mLeftColumn = $('<div class="column"/>');
    this.mListScrollContainer.append(this.mLeftColumn);
};

HireDialogPerksModule.prototype.destroyDIV = function ()
{
    this.mLeftColumn.empty();
    this.mLeftColumn.remove();
    this.mLeftColumn = null;

    this.mListScrollContainer.empty();
    this.mListScrollContainer = null;
    this.mListContainer.destroyList();
    this.mListContainer.remove();
    this.mListContainer = null;
	
    this.mContainer.empty();
    this.mContainer.remove();
    this.mContainer = null;

    this.mBro = null;
};


HireDialogPerksModule.prototype.createPerkTreeDIV = function (_perkTree, _parentDiv)
{
	var self = this;
	var widetree = false;
	var lowestx = 0;

	for (var row = 0; row < _perkTree.length; ++row)
	{
		lowestx = Math.min(lowestx, ((660 - (50.0 * _perkTree[row].length)) / 2));
		if (_perkTree[row].length > 13)
		{
			widetree = true;
		}
	}
	//console.error('lowestx = ' + lowestx);
	
	for (var row = 0; row < _perkTree.length; ++row)
	{
		var rowDIV = $('<div class="row"/>');
		rowDIV.css({ 'left' : 0, 'top': (row * 6.0) + 'rem' }); // css is retarded?
		_parentDiv.append(rowDIV);

		var centerDIV = $('<div class="center"/>');
		rowDIV.append(centerDIV);

		this.mPerkRows[row] = rowDIV;
		
		for (var i = 0; i < _perkTree[row].length; ++i)
		{
			var perk = _perkTree[row][i];
			perk.Unlocked = false;

			perk.Container = $('<div class="l-perk-container"/>');
			centerDIV.append(perk.Container);

			var perkSelectionImage = $('<img class="selection-image-layer display-none"/>');
			perkSelectionImage.attr('src', Path.GFX + Asset.PERK_SELECTION_FRAME);
			perk.Container.append(perkSelectionImage);

			perk.Image = $('<img class="perk-image-layer"/>');
			perk.Image.attr('src', Path.GFX + perk.IconDisabled);
			perk.Container.append(perk.Image);
		}
		
		centerDIV.css({ 'width': (5.0 * _perkTree[row].length) + 'rem' }); // css is retarded?
		centerDIV.css({ 'left': (((660 - centerDIV.width()) / 2) - lowestx) + 'px' }); // css is retarded?

		var centerDiv = $('.center').eq( row )
        centerDiv.find(".l-perk-container").css({ 'width': '4.0rem' });
        centerDiv.css({ 'width': (4.0 * _perkTree[row].length) + 'rem' });
        centerDiv.css({ 'left': ((660 - centerDiv.width()) / 2) + 'px' });
	}
	if (widetree == true)
	{
		self.mHorizontalBar.css({ opacity : 1 });
		//self.mHorizontalBar.css({ 'z-index' : '10' });
	}
	else
	{
		self.mHorizontalBar.css({ opacity : 0 });
/* 		var zet = this.mListContainer.find('.aciScrollBar:first');
		zet.css({ 'z-index' : '-10' }); */
		//console.error('forbidden lowestx = ' + lowestx);
	}
};


HireDialogPerksModule.prototype.initPerkTree = function (_perkTree, _perksUnlocked)
{
	for (var row = 0; row < _perkTree.length; ++row)
	{
		for (var i = 0; i < _perkTree[row].length; ++i)
		{
			var perk = _perkTree[row][i];

			for (var j = 0; j < _perksUnlocked.length; ++j)
			{
				if(_perksUnlocked[j] == perk.ID)
				{
					perk.Unlocked = true;

					perk.Image.attr('src', Path.GFX + perk.Icon);

					var selectionLayer = perk.Container.find('.selection-image-layer:first');
					selectionLayer.removeClass('display-none').addClass('display-block');

					break;
				}
			}
		}
	}
};

HireDialogPerksModule.prototype.setupPerkTreeTooltips = function(_perkTree, _brotherId)
{
	for (var row = 0; row < _perkTree.length; ++row)
	{
		for (var i = 0; i < _perkTree[row].length; ++i)
		{
			var perk = _perkTree[row][i];
			perk.Image.unbindTooltip();
			perk.Image.bindTooltip({ contentType: 'ui-perk', entityId: _brotherId, perkId: perk.ID });
		}
	}
};

HireDialogPerksModule.prototype.setupPerkTree = function (_perkTree)
{
	this.mLeftColumn.empty();
	this.mPerkTree = _perkTree;
    this.createPerkTreeDIV(this.mPerkTree, this.mLeftColumn);
};

HireDialogPerksModule.prototype.loadPerkTreesWithBrotherData = function (_brother)
{
    this.setupPerkTree(_brother[CharacterScreenIdentifier.Perk.Tree]);

    if (CharacterScreenIdentifier.Perk.Key in _brother)
    {
        this.initPerkTree(this.mPerkTree, _brother[CharacterScreenIdentifier.Perk.Key]);
    }

    if ('ID' in _brother)
    {
        this.setupPerkTreeTooltips(this.mPerkTree, _brother['ID']);
    }
};

HireDialogPerksModule.prototype.create = function(_parentDiv)
{
    this.createDIV(_parentDiv);
};

HireDialogPerksModule.prototype.destroy = function()
{
    this.destroyDIV();
};


HireDialogPerksModule.prototype.register = function (_parentDiv)
{
    console.log('HireDialogPerksModule::REGISTER');

    if (this.mContainer !== null)
    {
        console.error('ERROR: Failed to register Hire Dialog Perks Module. Reason: Module is already initialized.');
        return;
    }

    if (_parentDiv !== null && typeof(_parentDiv) == 'object')
    {
        this.create(_parentDiv);
    }
};

HireDialogPerksModule.prototype.unregister = function ()
{
    console.log('HireDialogPerksModule::UNREGISTER');

    if (this.mContainer === null)
    {
        console.error('ERROR: Failed to unregister Perks Module. Reason: Module is not initialized.');
        return;
    }

    this.destroy();
};

HireDialogPerksModule.prototype.isRegistered = function ()
{
	if (this.mContainer !== null)
	{
		return this.mContainer.parent().length !== 0;
	}

	return false;
};


HireDialogPerksModule.prototype.show = function ()
{
    // NOTE: (js) HACK which prevents relayouting..
	this.mContainer.removeClass('opacity-none').addClass('opacity-full');
	//this.mContainer.removeClass('display-none').addClass('display-block');
};

HireDialogPerksModule.prototype.hide = function ()
{
    // NOTE: (js) HACK which prevents relayouting..
	this.mContainer.removeClass('opacity-full is-top').addClass('opacity-none');
	//this.mContainer.removeClass('display-block is-top').addClass('display-none');
};

HireDialogPerksModule.prototype.isVisible = function ()
{
	return this.mContainer.hasClass('opacity-full');
	//return this.mContainer.hasClass('display-block');
};