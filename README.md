# Go Down! small game about builing math functions
demo link https://iviv122.itch.io/funfun

Was made with Godot 4.5 (stable)

## Game Controlls

- Mouse to navigate 
- Keyboard to input function into input field
- If you want to use power, write ** instead of ^
- If your function doen't work 

## My function doesn't work
Please check reasons below if it is not the case report please

> Q: mx+c doesn't give straight line.
>
> A: Sadly eval function in godot doesn't support mx. It should be written as m*x otherwise it will be interpreted as
>
>> let assume m = 5
>>
>> then for x = 10 => mx = 510
>>
>> then for x = -5 => 5-10 
>>
>> then for x = 150 => 5150

> Q: why i can't write y = x? 
>
> A: Parser assumes that 'y=' part is always here, it is redudant so just write x  

> Q: Why my function is so small? 
>
> A: If it is too small for you, try multiplication or division

> Q: Where is my ^?
>
> A: Godot's parser use ** instead

## Dependecies
- No Dependecies 

