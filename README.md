motion-sprites
==============

Easily load spritesheet images for RubyMotion.

To use, require 'motion-sprites' in your Rakefile.

Example usage.

    class MyApplicationController < UIViewController
      LOLCATS = [[200,70], [50, 50]] # Add constants of your sprite coordinates to easily refer them

      def loadView
        self.view = UIImageView.alloc.init
        @sprite = MotionSprites.new('spritesheet.png') # 'spritesheet.png' should be copied in the
                                                       # 'resources/spritesheet.png' directory
      end

      def viewDidLoad
        view.image = @sprite.coordinates(LOLCATS)
      end
    end

You can also use Hash and Strings for your coordinates

    MotionSprites.new('spritesheet.png').coordinates(x: 200, y: 70, width: 50, height: 50)

    # or

    MotionSprites.new('spritesheet.png').coordinates("200, 70, 50, 50")

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/jjuliano/motion-sprites/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

