//
//  GameScene.swift
//  Gravedad
//
//  Created by Berganza on 09/12/2014.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

import SpriteKit

import CoreGraphics

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        
        
        backgroundColor = UIColor.blackColor()
        
        
        /*
        // 3
        // Física del mundo
        
        let mundo = self.physicsWorld
        mundo.gravity = CGVectorMake(0, -9.8)
        
        // Implementar velocidad
        mundo.speed = 0.1
        
        // En metros por segundo
        // (0.0, -9.8) representa la gravedad de la tierra
        
        */
        
        
        

        
        let rampa1 = SKShapeNode()
        rampa1.position = CGPointMake(CGRectGetMaxX(self.frame)-400, CGRectGetMidY(self.frame)+100)
        
        rampa1.path = UIBezierPath(rect: CGRectMake(-75, 0, 200, 5)).CGPath
        rampa1.fillColor = UIColor.cyanColor()
        rampa1.lineWidth = 0
        rampa1.zRotation = 0.0349
        
        rampa1.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(155, 10))
        rampa1.physicsBody?.dynamic = false
        addChild(rampa1)
        
        
        let rampa2 = SKShapeNode()
        rampa2.position = CGPointMake(CGRectGetMinX(self.frame)+400, CGRectGetMidY(self.frame)-100)
        
        rampa2.path = UIBezierPath(rect: CGRectMake(-100, 0, 200, 5)).CGPath
        rampa2.fillColor = UIColor.redColor()
        rampa2.lineWidth = 0
        rampa2.zRotation = -0.0349
        
        rampa2.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(200, 10))
        rampa2.physicsBody?.dynamic = false
        addChild(rampa2)
        
        
        // ****************************************
        
        
        // 2
        
        
        let bola1 = SKShapeNode()
        bola1.path = UIBezierPath(ovalInRect: CGRectMake(0, 0, 40, 40)).CGPath
        
        bola1.position = CGPointMake(CGRectGetMidX(self.frame)+75, CGRectGetMaxY(self.frame)-100)
        
        bola1.fillColor = UIColor.greenColor()
        bola1.lineWidth = 0
        
        // Masa y densidad
//        bola1.physicsBody?.density = 10
//        bola1.physicsBody?.mass = 100
        
        bola1.physicsBody = SKPhysicsBody(circleOfRadius: 20, center: CGPointMake(20, 20))
        
        bola1.physicsBody?.dynamic = true
        addChild(bola1)
        
        
        let bola2 = SKShapeNode()
        bola2.path = UIBezierPath(ovalInRect: CGRectMake(0, 0, 40, 40)).CGPath
        
        bola2.position = CGPointMake(CGRectGetMidX(self.frame)+130, CGRectGetMaxY(self.frame)-20)
        
        bola2.fillColor = UIColor.yellowColor()
        bola2.lineWidth = 0
        
        // Masa y densidad
//        bola2.physicsBody?.density = 100
//        bola2.physicsBody?.mass = 5000
        
        bola2.physicsBody = SKPhysicsBody(circleOfRadius: 20, center: CGPointMake(20, 20))
        
        bola2.physicsBody?.dynamic = true
        addChild(bola2)
        
        
        
        
        
        // ****************************************
        
        
        // Poner límites a la pantalla de juego
        
        let limites = SKNode()
        limites.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        
        
        
        let rectanguloJuego:CGRect = CGRectOffset(
            self.frame,
            (-self.frame.size.width)+217.5,
            (-self.frame.size.height/2)
        )
        
        
        
//        let rectanguloJuego:CGRect = CGRectOffset(
//            self.frame,
//            (-self.frame.size.width)+150,
//            (-self.frame.size.height/2)
//        )
        
        
        limites.physicsBody = SKPhysicsBody(edgeLoopFromRect: rectanguloJuego)
        
        addChild(limites)
        
        
        
        
        
        
        
        
        
        
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {

        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
