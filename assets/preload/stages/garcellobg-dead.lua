function onCreate()
	-- background shit
	makeLuaSprite('garStagebgAlt', 'garStagebgAlt', -450, -200);
	setLuaSpriteScrollFactor('garStagebgAlt', 0.9, 0.9);
		scaleObject('garStagebgAlt', 1.0, 1.0);
	
	makeLuaSprite('garStagealt', 'garStagealt', -500, -300);
	setLuaSpriteScrollFactor('garStagealt', 0.9, 0.9);
	scaleObject('garStagealt', 1.1, 1.1);

	makeLuaSprite('gardead', 'gardead', -350, 550);
	setLuaSpriteScrollFactor('gardead', 0.9, 0.9);
	scaleObject('gardead', 1.1, 1.1);
    
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
        makeAnimatedLuaSprite('garSmoke', 'garSmoke', -200, -50);
        luaSpriteAddAnimationByPrefix('garSmoke', 'garSmoke', 'smokey instance', 24, true);
        setLuaSpriteScrollFactor('garSmoke', 0.9, 0.9);
        scaleObject('garSmoke',2.0, 1.0);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

        makeAnimatedLuaSprite('garSmoke-front', 'garSmoke-front', -300, -100);
        luaSpriteAddAnimationByPrefix('garSmoke-front', 'garSmoke-front', 'smokey instance', 24, true);
        setLuaSpriteScrollFactor('garSmoke-front', 0.9, 0.9);
        scaleObject('garSmoke-front', 2.5, 1.5);
	end

	addLuaSprite('garStagebgAlt', false);
    addLuaSprite('garSmoke', false);
	addLuaSprite('garStagealt', false);
    addLuaSprite('garSmoke-front', true);
    addLuaSprite('gardead', false)
    
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end