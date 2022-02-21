function onCreate()
	-- background shit
	makeLuaSprite('garStagebgRise', 'garStagebgRise', -450, -200);
	setLuaSpriteScrollFactor('garStagebgRise', 0.9, 0.9);
		scaleObject('garStagebgRise', 1.0, 1.0);
	
	makeLuaSprite('garStageRise', 'garStageRise', -500, -300);
	setLuaSpriteScrollFactor('garStageRise', 0.9, 0.9);
	scaleObject('garStageRise', 1.1, 1.1);

    makeLuaSprite('gardead', 'gardead', -350, 550);
	setLuaSpriteScrollFactor('gardead', 0.9, 0.9);
	scaleObject('gardead', 1.1, 1.1);

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

	addLuaSprite('garStagebgRise', false);
	addLuaSprite('garStageRise', false);
    addLuaSprite('gardead', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end