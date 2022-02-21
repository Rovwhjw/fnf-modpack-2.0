function onCreate()

	makeLuaSprite('theSky','sky',-500,-100)
	addLuaSprite('theSky',false)
	setLuaSpriteScrollFactor('sky', 0.8, 0.8)

	makeLuaSprite('theBackground','background',-200,0)
	addLuaSprite('theBackground',false)
	setLuaSpriteScrollFactor('Thebackground', 1.0, 1.0)

	makeLuaSprite('theLight','light',0,-400)
	addLuaSprite('theLight',true)
	setLuaSpriteScrollFactor('thelight', 1.0, 1.0)

	makeLuaSprite('theMount','mount',200,300)
	addLuaSprite('theMount',false)
	setLuaSpriteScrollFactor('Themount', 0.8, 0.8)

	makeLuaSprite('theGround','ground',-100,500)
	addLuaSprite('theGround',false)
	setLuaSpriteScrollFactor('Theground', 0.8, 0.8)

end