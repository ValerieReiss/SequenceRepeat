//
//  GameScene.swift
//  SequenceRepeat
//
//  Created by Valerie on 17.03.23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        
        CGPointMake(0.5, 0.5)
        let image = SKSpriteNode(imageNamed: "image")
        //let texture = SKTexture(imageNamed: "image")
        //let body:SKPhysicsBody = SKPhysicsBody(texture: texture, alphaThreshold: 0, size: texture.size() )
        //image.physicsBody = body
        image.setScale(2)
        image.position = CGPoint(x:-250,y:100)
        image.zPosition = 5
        image.name = "nextPage"
        
        addChild(image)

        let moveright = SKAction.moveTo(x: 250, duration: 2)
        let movedown = SKAction.moveTo(y: -100, duration: 1)
        let moveleft = SKAction.moveTo(x: -250, duration: 2)
        let moveup = SKAction.moveTo(y: 100, duration: 1)
        
        let sequence = SKAction.sequence([moveright, movedown, moveleft, moveup])
        let redo = SKAction.repeatForever(sequence)
        image.run(redo)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
     
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
