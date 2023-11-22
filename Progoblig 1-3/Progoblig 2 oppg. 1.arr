fun tegn-flagg(F1, F2, F3):

  
  overlay-xy(rectangle(30, 240, "solid", F3), -105, 0,
    overlay-xy(rectangle(330, 30, "solid", F3), 0, -105,
      overlay-xy(rectangle(60, 240, "solid", F2),-90, 0,
        overlay-xy(rectangle(330, 60, "solid", F2), 0, -90,
          rectangle(330, 240, "solid", F1)))))
end

Norge = tegn-flagg("red", "White", "blue")
Sverige = tegn-flagg("blue", "blue", "yellow")
Danmark = tegn-flagg("red", "red", "white")
Finland = tegn-flagg("white", "blue", "blue")
Island = tegn-flagg("blue", "white", "red")
Faeroyene = tegn-flagg("white", "blue", "red")
