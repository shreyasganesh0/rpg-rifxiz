# Game Loop

## Intro
- The Game loop aims to decouple the progress of game time from 
  userinput and processor speed

## Basic of game loop
- this is the basic structure of a game loop
```
while (true) {

    char *command = readCommand();
    handleCommand(command);
}
```

- Event loops in GUI are similar but instead of text command it waits for user events
```
while (true) {
    Event *event = waitForEvent();
    dispatchEvent(event);
}
```
- games keep moving even if the user doesnt interact
- doesnt wait for the user input
```
while (true) {
    processInput();
    update();
    render();
}
```
- processInput handles user input since last call
- update advances the game simlutation one step
- render draws the game

## Loop Timing
- since it doesnt block on user input we have to care about how long it spins
- every iteration of the loop is the time in which the game state updatess for
  the user aka is the world udpate time
- frame per second is the number of loop iterations per real life seconds

- if we dont even it out this is determined by 
    - how long it takes to do the processInput 
    - like rendering which takes up the CPU and GPU time
    - second is how fast the hardware is to be able to perform those actions
    - if we know what hardware we are running on we only have to worry about the 
      work we need to do per tick
    - usually if games are supported on multiple platforms
        - cant fix the time per frame based on the work given
        - the game loop has to keep the game state consistent despite this
    
