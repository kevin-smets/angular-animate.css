# Angular-animate

Angular-animate is a collection of animation helpers for AngularJS web apps.

## Get started

First of, you'll need animate.css and angular. When that's done, include angular-animate[.min].css after animate.css.

## Basic usage

You can now animate the appropriate angular directives: e.g.

``
<div class="animated" ng-if="isVisible()" ng-animate="'fade'"></div>
```

This will trigger the fade animation on enter / show and leave / hide. If you only want fade on enter, you have to use

```
<div class="animated" ng-if="isVisible()" ng-animate="{enter: 'fade-enter'}"></div>
```

In and Out animations are combined, so if you use

```
<div class="animated" ng-if="isVisible()" ng-animate="'fadeUp'"></div>
```

This will trigger fadeInUp on enter and fadeOutUp on leave. If you want this differently (e.g. fadeOutDown on leave / hide), you'll have to define the enter and leave seperately.

```
<div class="animated" ng-if="isVisible()" ng-animate="'{enter: 'fadeUp-enter', leave: 'fadeDown-leave'}'"></div>
```

All of the animate.css animations are currently available.

### Attention seekers

flash bounce shake tada swing wobble wiggle pulse

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

2013-07-08: First public release