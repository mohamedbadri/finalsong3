# Welcome to Sonic Pi v3.1
sad="C:/Users/mohamed_badri/Documents/Audacity/sad.wav"
win="C:/Users/mohamed_badri/Documents/Audacity/breth.wav"
fear="C:/Users/mohamed_badri/Documents/Audacity/short.wav"
out="C:/Users/mohamed_badri/Documents/Audacity/thx.wav"

sample fear, amp: 7
sleep 5.7
sample sad, amp: 6
live_loop :rjdvgf do
  4.times do
    use_synth :beep
    play 40, rate: 0.5
    sleep 7
  end
  stop
end
sleep 4
live_loop :fbvg do
  10.times do
    sample :ambi_dark_woosh, rate: 0.5
    sleep 0.5
    sample :ambi_piano, rate: 0.5
    sleep 0.5
    sample :ambi_choir, rate: 0.3
    sleep 0.5
  end
  stop
end
sleep 25
sample win
sleep 7.7
use_synth :blade
note=[:e3,:e3,:g3,:e3,:r,:d3,:c3,:b2]
n=0
hold=[1.5,0.5,0.75,0.25,0.5,0.5,2,2]
s=0
use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25
x=5
live_loop :white_stripes do
  3.times do
    8.times do
      play note[n]
      n=n+1
      sleep hold[s]
      s=s+1
      x=x-0.5
    end
    if n == 8
      n = 0
    end
    s=0
  end
  stop
end
z=6
live_loop :kcnsl do
  24.times do
    sample :drum_bass_hard, amp: z
    sleep 1
    z=z-0.25
  end
  stop
end
sleep 22
sample out, amp: 6










