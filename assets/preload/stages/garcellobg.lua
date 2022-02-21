function onCreate()
	-- background shit
	makeLuaSprite('garStagebg', 'garStagebg', -450, -200);
	setLuaSpriteScrollFactor('garStagebg', 0.9, 0.9);
		scaleObject('garStagebg', 1.0, 1.0);
	
	makeLuaSprite('garStage', 'garStage', -500, -300);
	setLuaSpriteScrollFactor('garStage', 0.9, 0.9);
	scaleObject('garStage', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setLuaSpriteScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('garStagebg', false);
	addLuaSprite('garStage', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end