

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
            super.viewDidLoad()

            if let view = self.view as? SKView {
                // Создаем сцену с размером вью
                let scene = GameScene(size: view.bounds.size)

                // Важно! Масштаб по размеру вью, чтобы не было лишних отступов/масштабирования
                scene.scaleMode = .resizeFill

                view.presentScene(scene)

                view.ignoresSiblingOrder = true

                // Для отладки
                view.showsFPS = false
                view.showsNodeCount = false
            }
        }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
