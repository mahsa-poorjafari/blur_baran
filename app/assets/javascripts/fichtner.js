var HomeScroller = Class.create ({
	
	initialize: function(container)
	{
		this.container = container;
		this.numItems = $$('div.sliderItem').size();
		this.scrollerWidth = (930*this.numItems);
		this.currentPos = $$('div.sliderItem').size();
		
		this.container.select('div.sliderContent')[0].setStyle({width: this.scrollerWidth + "px"});
		
		if (!this.container)
		{
			return false;
		}
		this.addControls();
		
		this.timer = new PeriodicalExecuter(this.timedMove.bind(this), 7);
	},
	
	addControls: function()
	{	
		$$('a').each(function(container)
		{
			if (container.hasClassName('displayNone')) 
			{
				container.removeClassName('displayNone');
				container.addClassName('displayBlock');
			}
		});
		
		$$('div').each(function(container)
		{
			if (container.hasClassName('displayNone')) 
			{
				container.removeClassName('displayNone');
				container.addClassName('displayBlock');
			}
		});	
		
		this.container.select('a.prev').each(function(link){
			link.observe("click", this.prevclicked.bind(this));
		}.bind(this));
		
		this.container.select('a.next').each(function(link){
			link.observe("click", this.nextclicked.bind(this));
		}.bind(this));
	},
	
	prevclicked: function(event)
	{
		if(!event)
		{
			return false;
		}
		
		event.stop();
		
		this.restartTimer();
		this.doMove(-1);
	},
	
	nextclicked: function(event)
	{
		if(!event)
		{
			return false;
		}
		
		event.stop();
		
		this.restartTimer();
		this.doMove(1);
	},
	
	doMove: function(amount)
	{	
		if(((this.currentPos - amount) > 0) && ((this.currentPos - amount) <= this.numItems))
		{
			this.currentPos = this.currentPos - amount;
			new Effect.Move($('sliderContent'), { x: (930*amount*-1), y: 0, mode: 'relative', duration: 1, queue: { position: 'end', scope: 'image' } });
		}
	},
	
	stopTimer: function()
	{
		this.timer.stop();
	},
	
	restartTimer: function()
	{
		this.timer.stop();
		this.timer = new PeriodicalExecuter(this.timedMove.bind(this), 7)
	},
	
	timedMove: function()
	{
		if((this.currentPos) == 1)
		{
			this.doMove((this.numItems-1)*-1);
		}
		else
		{
			this.doMove(1);
		}
	}
});


var Opacity = Class.create ({

	initialize: function(container)
	{
		this.container = container;
		
		this.container.select('.opacity').each(function(link){
			link.observe("mouseenter", this.hoverOn.bind(this));
		}.bind(this));
		
		this.container.select('.opacity').each(function(link){
			link.observe("mouseout", this.hoverOff.bind(this));
			link.removeClassName('opacity');
		}.bind(this));
		
		this.container.select('.opacityOut').each(function(link){
			link.observe("mouseenter", this.hoverOff.bind(this));
			link.setOpacity(0);
		}.bind(this));
		
		this.container.select('.opacityOut').each(function(link){
			link.observe("mouseout", this.hoverOn.bind(this));
			link.removeClassName('opacityOut');
		}.bind(this));
	},
	
	hoverOn: function(event)
	{	
		var currentOpacity = event.element().getOpacity();
		new Effect.Opacity(event.element(), { from: currentOpacity, to: 0.0, duration: 0.5 });
	},
	
	hoverOff: function(event)
	{	
		var currentOpacity = event.element().getOpacity();
		new Effect.Opacity(event.element(), { from: currentOpacity, to: 1.0, duration: 0.5 });
	}
});


var ProjectScroller = Class.create ({
	
	initialize: function(container)
	{
		this.container = container;
		this.numItems = $$('div.sliderItem').size();
		this.scrollerWidth = (930*this.numItems);
		this.currentPos = $$('div.sliderItem').size();
		
		this.container.select('div.sliderContent')[0].setStyle({width: this.scrollerWidth + "px"});
		
		if (!this.container)
		{
			return false;
		}
		this.addControls();
		
		this.timer = new PeriodicalExecuter(this.timedMove.bind(this), 7);
	},
	
	addControls: function()
	{	
		$$('a').each(function(container)
		{
			if (container.hasClassName('displayNone')) 
			{
				container.removeClassName('displayNone');
				container.addClassName('displayBlock');
			}
		});
		
		$$('div').each(function(container)
		{
			if (container.hasClassName('displayNone')) 
			{
				container.removeClassName('displayNone');
				container.addClassName('displayBlock');
			}
		});	
		
		this.container.select('a.prev').each(function(link){
			link.observe("click", this.prevclicked.bind(this));
		}.bind(this));
		
		this.container.select('a.next').each(function(link){
			link.observe("click", this.nextclicked.bind(this));
		}.bind(this));
	},
	
	prevclicked: function(event)
	{
		if(!event)
		{
			return false;
		}
		
		event.stop();
		
		this.restartTimer();
		this.doMove(-1);
	},
	
	nextclicked: function(event)
	{
		if(!event)
		{
			return false;
		}
		
		event.stop();
		
		this.restartTimer();
		this.doMove(1);
	},
	
	doMove: function(amount)
	{	
		if(((this.currentPos - amount) > 0) && ((this.currentPos - amount) <= this.numItems))
		{
			this.currentPos = this.currentPos - amount;
			new Effect.Move($('sliderContent'), { x: (930*amount*-1), y: 0, mode: 'relative', duration: 1, queue: { position: 'end', scope: 'image' } });
		}
	},
	
	stopTimer: function()
	{
		this.timer.stop();
	},
	
	restartTimer: function()
	{
		this.timer.stop();
		this.timer = new PeriodicalExecuter(this.timedMove.bind(this), 7)
	},
	
	timedMove: function()
	{
		if((this.currentPos) == 1)
		{
			this.doMove((this.numItems-1)*-1);
		}
		else
		{
			this.doMove(1);
		}
	}
});


var Projects = Class.create ({
	
	initialize: function(container)
	{
		this.button = container;
		this.startItem = 12;
		this.maxCount = this.startItem * ($('pageCount').readAttribute('value'));
		
		this.displayButton();
	},
	
	displayButton: function()
	{	
		if(this.startItem <= this.maxCount)
		{
			if (this.button.hasClassName('displayNone')) 
			{
				this.button.removeClassName('displayNone');
				this.button.addClassName('displayBlock');
			}
		}
		
		this.button.observe("click", this.buttonClicked.bind(this));
	},
	
	buttonClicked: function(event)
	{	
		if(!event)
		{
			return false;
		}		
		event.stop();

	    var URL = "/projects/data/?start=" + this.startItem;
	    
	    new Ajax.Request(URL, { method:'get', onSuccess: function(response) { $('projectListing').insert(response.responseText); } });
		
		this.startItem = this.startItem + 12;
			
		if(this.startItem >= this.maxCount)
		{	
			if (this.button.hasClassName('displayBlock')) 
			{
				this.button.removeClassName('displayBlock');
				this.button.addClassName('displayNone');
			}
		}
	}
});


var Scroller = Class.create ({
	
	initialize: function(container)
	{
		this.container = container;
		this.numItems = $$('div.sliderItem').size();
		this.scrollerWidth = (580*this.numItems);
		this.currentPos = $$('div.sliderItem').size();
		
		this.container.select('div.sliderContent')[0].setStyle({width: this.scrollerWidth + "px"});
		
		if (!this.container)
		{
			return false;
		}
		this.addControls();
		
		this.timer = new PeriodicalExecuter(this.timedMove.bind(this), 7);
	},
	
	addControls: function()
	{	
		$$('a').each(function(container)
		{
			if (container.hasClassName('displayNone')) 
			{
				container.removeClassName('displayNone');
				container.addClassName('displayBlock');
			}
		});
		
		$$('div').each(function(container)
		{
			if (container.hasClassName('displayNone')) 
			{
				container.removeClassName('displayNone');
				container.addClassName('displayBlock');
			}
		});	
		
		this.container.select('a.prev').each(function(link){
			link.observe("click", this.prevclicked.bind(this));
		}.bind(this));
		
		this.container.select('a.next').each(function(link){
			link.observe("click", this.nextclicked.bind(this));
		}.bind(this));
	},
	
	prevclicked: function(event)
	{
		if(!event)
		{
			return false;
		}
		
		event.stop();
		
		this.restartTimer();
		this.doMove(-1);
	},
	
	nextclicked: function(event)
	{
		if(!event)
		{
			return false;
		}
		
		event.stop();
		
		this.restartTimer();
		this.doMove(1);
	},
	
	doMove: function(amount)
	{	
		if(((this.currentPos - amount) > 0) && ((this.currentPos - amount) <= this.numItems))
		{
			this.currentPos = this.currentPos - amount;
			new Effect.Move($('sliderContent'), { x: (580*amount*-1), y: 0, mode: 'relative', duration: 1, queue: { position: 'end', scope: 'image' } });
		}
	},
	
	stopTimer: function()
	{
		this.timer.stop();
	},
	
	restartTimer: function()
	{
		this.timer.stop();
		this.timer = new PeriodicalExecuter(this.timedMove.bind(this), 7)
	},
	
	timedMove: function()
	{
		if((this.currentPos) == 1)
		{
			this.doMove((this.numItems-1)*-1);
		}
		else
		{
			this.doMove(1);
		}
	}
});


var ViewScroller = Class.create ({
	
	initialize: function(container)
	{
		this.container = container;
		this.numItems = $$('div.sliderItem').size();
		this.scrollerWidth = (590*this.numItems);
		this.currentPos = $$('div.sliderItem').size();
		
		this.container.select('div.sliderContent')[0].setStyle({width: this.scrollerWidth + "px"});
		
		if (!this.container)
		{
			return false;
		}
		this.addControls();
		
		this.timer = new PeriodicalExecuter(this.timedMove.bind(this), 7);
	},
	
	addControls: function()
	{	
		$$('a').each(function(container)
		{
			if (container.hasClassName('displayNone')) 
			{
				container.removeClassName('displayNone');
				container.addClassName('displayBlock');
			}
		});
		
		$$('div').each(function(container)
		{
			if (container.hasClassName('displayNone')) 
			{
				container.removeClassName('displayNone');
				container.addClassName('displayBlock');
			}
		});	
		
		this.container.select('a.prev').each(function(link){
			link.observe("click", this.prevclicked.bind(this));
		}.bind(this));
		
		this.container.select('a.next').each(function(link){
			link.observe("click", this.nextclicked.bind(this));
		}.bind(this));
	},
	
	prevclicked: function(event)
	{
		if(!event)
		{
			return false;
		}
		
		event.stop();
		
		this.restartTimer();
		this.doMove(-1);
	},
	
	nextclicked: function(event)
	{
		if(!event)
		{
			return false;
		}
		
		event.stop();
		
		this.restartTimer();
		this.doMove(1);
	},
	
	doMove: function(amount)
	{	
		if(((this.currentPos - amount) > 0) && ((this.currentPos - amount) <= this.numItems))
		{
			this.currentPos = this.currentPos - amount;
			new Effect.Move($('sliderContent'), { x: (590*amount*-1), y: 0, mode: 'relative', duration: 1, queue: { position: 'end', scope: 'image' } });
		}
	},
	
	stopTimer: function()
	{
		this.timer.stop();
	},
	
	restartTimer: function()
	{
		this.timer.stop();
		this.timer = new PeriodicalExecuter(this.timedMove.bind(this), 7)
	},
	
	timedMove: function()
	{
		if((this.currentPos) == 1)
		{
			this.doMove((this.numItems-1)*-1);
		}
		else
		{
			this.doMove(1);
		}
	}
});

document.observe('dom:loaded', function()
{	
	if ($("homeSliderBox"))
	{
		new HomeScroller($('homeSliderBox'));
	}
	
	if ($("projectSliderBox"))
	{
		new ProjectScroller($('projectSliderBox'));
	}
	
	if ($("more"))
	{
		new Projects($('more'));
	}
	
	if ($("sliderBox"))
	{
		new Scroller($('sliderBox'));
	}
	
	if ($("viewSliderBox"))
	{
		new ViewScroller($('viewSliderBox'));
	}
	
	var cssTransitionsSupported = false;
    var div = document.createElement('div');
    div.setAttribute('style', 'transition:top 1s ease;-webkit-transition:top 1s ease;-moz-transition:top 1s ease;-o-transition:top 1s ease;-ms-transition:top 1s ease;');
    cssTransitionsSupported = !(div.style.transition || div.style.webkitTransition || div.style.MozTransition || div.style.OTransition || div.style.MSTransition);
    delete div;
    
    if (!cssTransitionsSupported)
	{
		new Opacity($("fichtner"));
	}
});