" Vim syntax file

if exists('b:current_syntax')
  finish
endif

set foldmethod=marker

set iskeyword+=-
set iskeyword+=?
set iskeyword+=_
set iskeyword+=.
set iskeyword+=<
set iskeyword+=>

syn keyword branch ifg nifg ifeg ifc nifc ifr nifr if then else nif >r r< jump call return celse
syn keyword branch do forever while loop until while-loop until-loop ifev return-if-true
syn keyword branch return-if-false call-if-true call-if-false call? jump-if-true jump-if-false
syn keyword branch jump? value? and-if stop sync 

syn keyword operator + - negate * / reciprocal mod rem square sqrt exponent is-integer floor
syn keyword operator ceiling round min max abs signum reorient sin cos tan arcsin arccos arctan
syn keyword operator arctan2 random random-angle random-int random-bool pi 2pi pi/2 e epsilon
syn keyword operator infinity rect-to-polar polar-to-rect v+ v- vnegate vs* vs/ norm angle dot
syn keyword operator project cross unitize dist in-range 
syn keyword operator  = <> > < >= <= not and or xor nand nor 

syn keyword hardware processor radio engine constructor energy solar-cells eater syphon enemy-syphon
syn keyword hardware robot-sensor shot-sensor food-sensor armor repair-rate shield blaster grenades
syn keyword hardware force-field bomb

syn keyword readonlyvars time world-size world-width world-height position velocity radius mass speed
syn keyword readonlyvars side type id parent-id remaining engine-max-power engine-velocity collision
syn keyword readonlyvars friendly-collision enemy-collision food-collision shot-collision wall-collision
syn keyword readonlyvars seek-location seek-moving-location restrict-position die write read vwrite
syn keyword readonlyvars vread messages send receive clear-messages skip-messages type-population
syn keyword readonlyvars max-energy eaten syphon-max-rate syphon-range syphoned constructor-max-rate
syn keyword readonlyvars constructor-progress constructor-remaining child-id autoconstruct balance-type
syn keyword readonlyvars robot-sensor-range shot-sensor-range food-sensor-range robot-sensor-firing-cost
syn keyword readonlyvars shot-sensor-firing-cost food-sensor-firing-cost robot-sensor-time
syn keyword readonlyvars food-sensor-time shot-sensor-time robot-found shot-found food-found
syn keyword readonlyvars robot-position shot-position food-position robot-velocity shot-velocity
syn keyword readonlyvars food-velocity robot-position-overall shot-position-overall
syn keyword readonlyvars food-position-overall robot-distance shot-distance food-distance
syn keyword readonlyvars robot-direction shot-direction food-direction robot-distance-overall
syn keyword readonlyvars shot-distance-overall food-distance-overall robot-direction-overall
syn keyword readonlyvars shot-direction-overall food-direction-overall robot-side shot-side robot-type
syn keyword readonlyvars shot-type robot-id robot-radius shot-radius food-radius robot-mass food-mass
syn keyword readonlyvars robot-energy robot-flag food-energy show-power robot-shield-fraction robot-bomb
syn keyword readonlyvars robot-reloading num-robot-results num-shot-results num-food-results
syn keyword readonlyvars fire-robot-sensor fire-shot-sensor fire-food-sensor next-robot next-food
syn keyword readonlyvars next-shot periodic-robot-sensor periodic-food-sensor periodic-shot-sensor
syn keyword readonlyvars max-armor max-repair-rate max-shield shield-fraction last-hit blaster-damage
syn keyword readonlyvars blaster-range blaster-speed blaster-lifetime blaster-reload-time
syn keyword readonlyvars blaster-firing-cost blaster-cooldown grenades-damage grenades-range
syn keyword readonlyvars grenades-speed grenades-lifetime grenades-reload-time grenades-firing-cost
syn keyword readonlyvars grenades-cooldown grenades-radius force-field-max-power force-field-range
syn keyword readonlyvars force-field-radius enemy-syphon-max-rate enemy-syphon-range enemy-syphoned
syn keyword readonlyvars fire-blaster fire-grenade lead-blaster lead-grenade set-force-field

syn keyword writeablevars enemy-syphon-distance enemy-syphon-direction enemy-syphon-rate
syn keyword writeablevars force-field-distance force-field-direction force-field-power force-field-angle
syn keyword writeablevars shield repair-rate engine-power flag syphon-distance syphon-direction
syn keyword writeablevars syphon-rate constructor-rate constructor-type current-robot-result
syn keyword writeablevars current-shot-result current-food-result robot-sensor-sees-friends
syn keyword writeablevars robot-sensor-sees-enemies shot-sensor-sees-friendly shot-sensor-sees-enemy
syn keyword writeablevars robot-sensor-focus-distance robot-sensor-focus-direction
syn keyword writeablevars shot-sensor-focus-direction shot-sensor-focus-distance
syn keyword writeablevars food-sensor-focus-distance food-sensor-focus-direction

syn keyword stackop nop drop 2drop nip rdrop dropn swap 2swap rot rrot dup 2dup tuck over 2over
syn keyword stackop stack stack-limit pick print vprint beep pause store load vstore vload
 
" syn keyword cfKeywords if then else jump celse nif ifr ifg nifg 
" syn keyword cfKeywords nifr ifeg ifev ifec ifc nifc
" syn keyword cfKeywords while-loop do call forever return while until
" syn keyword cfKeywords return-if-true return-if-false call-if-true call-if-false 
" syn keyword cfKeywords call? jump-if-true jump-if-false jump? value? 
" syn keyword action seek-location lead-grenade sync read write die radio send receive clear-messages vread vwrite

syn keyword number true false
syn match number '\<\d*\>'
syn match number '\<-\d*\>'
syn match number '\<\d*\.\d*\>'
syn match number '\<-\d*\.\d*\>'
syn match branch '\<[a-zA-Z\-_]*\>\^'
syn match PreProc '^\s*#[a-zA-Z]*'
syn match label '[a-zA-Z\-_]*:'
syn match comment ';[^$]*'
syn match Constant '\<[A-Z\-_]*\>'

let b:current_syntax = 'grobots'

hi def link operator Function
hi def link stackop Function
hi def link readonlyvars Identifier

hi def link label Statement
hi def link branch Statement

hi def link hardware Type
hi def link writeablevars Type
