# Angular-animate

Angular-animate is a collection of animation helpers for AngularJS web apps.

Demo page is here: http://cdpn.io/rznBj

## Get started

First of, you'll need animate.css (latest) and angular (1.2.0rc1+). When that's done, include angular-animate[.min].css after animate.css into your project.

Animate.css -> https://github.com/daneden/animate.css
AngularJS -> http://angularjs.org

More info on animation in AngularJS (1.2.0rc1)

Yearofmoo -> http://www.yearofmoo.com/2013/08/remastered-animation-in-angularjs-1-2.html

## Install using bower

Angular-animate is also available through bower:

```
bower install angular-animate.css
```

## Basic usage

You can now animate the appropriate angular directives: e.g.

```
<div class="animated" ng-if="isVisible()" ng-class="'fade'"></div>
```

This will trigger the fade animation on enter / show and leave / hide.

(More examples will follow)

All of the animate.css animations are currently available.

### Attention seekers

flash bounce shake tada swing wobble pulse

### Flippers (currently Webkit, Firefox, & IE10 only):

flip flipInX flipOutX flipInY flipOutY

### Fading entrances:

fadeIn fadeInUp fadeInDown fadeInLeft fadeInRight fadeInUpBig fadeInDownBig fadeInLeftBig fadeInRightBig

### Fading exits:

fadeOut fadeOutUp fadeOutDown fadeOutLeft fadeOutRight fadeOutUpBig fadeOutDownBig fadeOutLeftBig fadeOutRightBig

### Bouncing entrances:

bounceIn bounceInDown bounceInUp bounceInLeft bounceInRight

### Bouncing exits:

bounceOut bounceOutDown bounceOutUp bounceOutLeft bounceOutRight

### Rotating entrances:

rotateIn rotateInDownLeft rotateInDownRight rotateInUpLeft rotateInUpRight

### Rotating exits:

rotateOut rotateOutDownLeft rotateOutDownRight rotateOutUpLeft rotateOutUpRight

### Lightspeed:

lightSpeedIn lightSpeedOut

### Specials:

hinge rollIn rollOut

# Roadmap / wishlist

- create a custom build
- daisy chaining of animations
- ...

# Version history

- 2013-08-22: update to angular.js 1.2.0rc1
- 2013-08-08: proper semver for bower
- 2013-07-11: v1.0.0 Bump to v1.0.0
- 2013-07-08: First public release