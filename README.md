# Pure CSS gauge v0.2
Basic gauge component made with only CSS style rules. No SVG or canvas used in this component. This component can be easily themed by overriding default style rules and controlled through CSS variables and HTML markup elements. IE is not supported because CSS variables are not supported in it.

![Core CSS gauge example](http://cssgauge.peukalo.net/cssgauge3.png)

[Live demo](http://cssgauge.peukalo.net/)

## Gauge parameters
Gauge background color:
```css
--gauge-bg:#dadada;
```

Gauge value (integer 0-100):
```css
--gauge-value:50;
```

Gauge display value (integer 0-9999):
```css
--gauge-display-value:50;
```

## How to use
Include gauge.min.css to your page:

```html
<link rel="stylesheet" href="gauge.min.css?v=0.2">
```
Add some markup:
```html
<div id="exampleGauge" class="gauge" 
    style=" --gauge-value:0; width:200px; height:200px;">
    <div class="ticks">
        <div class="tithe" style="--gauge-tithe-tick:1;"></div>
        <div class="tithe" style="--gauge-tithe-tick:2;"></div>
        <div class="tithe" style="--gauge-tithe-tick:3;"></div>
        <div class="tithe" style="--gauge-tithe-tick:4;"></div>
        <div class="tithe" style="--gauge-tithe-tick:6;"></div>
        <div class="tithe" style="--gauge-tithe-tick:7;"></div>
        <div class="tithe" style="--gauge-tithe-tick:8;"></div>
        <div class="tithe" style="--gauge-tithe-tick:9;"></div>
        <div class="min"></div>
        <div class="mid"></div>
        <div class="max"></div>
    </div>
    <div class="tick-circle"></div>
    <div class="needle">
        <div class="needle-head"></div>
    </div>
    <div class="labels">
        <div class="value-label"></div>
    </div>
</div>
```
