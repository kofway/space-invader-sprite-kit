//
//  StartGameScene.swift
//  space-invader-sprite-kit
//
//  Created by Eric Wei on 8/12/15.
//  Copyright (c) 2015 kofway. All rights reserved.
//

import UIKit
import SpriteKit
class StartGameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        let startGameButton = SKSpriteNode(imageNamed: "newgamebtn")
        startGameButton.position = CGPointMake(size.width/2,size.height/2 - 100)
        startGameButton.name = "startgame"
        addChild(startGameButton)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        let touch = touches.first as! UITouch
        let touchLocation = touch.locationInNode(self)
        let touchedNode = self.nodeAtPoint(touchLocation)
        if(touchedNode.name == "startgame"){
            let gameOverScene = GameScene(size: size)
            gameOverScene.scaleMode = scaleMode
            let transitionType = SKTransition.flipHorizontalWithDuration(1.0)
            view?.presentScene(gameOverScene,transition: transitionType)
        }
    }
}
