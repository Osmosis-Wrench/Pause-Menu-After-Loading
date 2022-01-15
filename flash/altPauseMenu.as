import gfx.io.GameDelegate;
import gfx.managers.FocusHandler;
import gfx.ui.InputDetails;
import gfx.ui.NavigationCode;
import Shared.GlobalFunc;
import Components.Meter;
import skyui.util.Tween;
import mx.utils.Delegate;
import skse;
import JSON;

class altPauseMenu extends MovieClip
{
	var bg:MovieClip;

	function altPauseMenu()
	{
		super();
		this._visible = true;

		FocusHandler.instance.setFocus(this,0);
		bg.onMouseDown = function()
		{
			skse.CloseMenu("CustomMenu");
		};
	}

	function handleInput(details:InputDetails, pathToFocus:Array):Void
	{
		if (GlobalFunc.IsKeyPressed(details))
		{
			skse.CloseMenu("CustomMenu");
		}

	}
}