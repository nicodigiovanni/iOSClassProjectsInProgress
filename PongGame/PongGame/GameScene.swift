//
//  GameScene.swift
//  PongGame
//
//  Created by 90301422 on 1/14/19.
//  Copyright © 2019 Nico D. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    var ball = SKSpriteNode()
    var enemy = SKSpriteNode()
    var main = SKSpriteNode()
    
    var score = [Int]()
    
    override func didMove(to view: SKView) {
        
        
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        enemy = self.childNode(withName: "enemy") as! SKSpriteNode
        main = self.childNode(withName: "main") as! SKSpriteNode
        
        ball.physicsBody?.applyImpulse(CGVector(dx: -20, dy: -20))
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        
        border.friction = 0
        border.restitution = 1
        
        
        self.physicsBody = border
        
         startGame()
    }
    
    func startGame() {
        score = [0,0]
        
    }
   
    func addScore(playerWhoWon : SKSpriteNode) {
        print("step 2")
        if playerWhoWon == main {
            score[0] += 1
            ball.physicsBody?.applyImpulse(CGVector(dx: 20, dy: 20))
            
        } else if  playerWhoWon == enemy {
            print("step three")
            score[1] += 1
            ball.physicsBody?.applyImpulse(CGVector(dx: 100, dy: 100))
        
        }
        
        print(score)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in:self)
            
            main.run(SKAction.moveTo(x: location.x, duration: 0.03))
            
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let location = touch.location(in:self)
            main.run(SKAction.moveTo(x: location.x, duration: 0.0))
    }
        
       override func update(_ currentTime: TimeInterval) {
        
        enemy.run(SKAction.moveTo(x: ball.position.x, duration: 0.5))
        
            if ball.position.y <= main.position.y - 30 {
                print("step one")
                addScore(playerWhoWon: enemy)
                
            }
            else if ball.position.y >= enemy.position.y + 30 {
                addScore(playerWhoWon: main)
    }
}

    } }
