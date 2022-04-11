\version "2.22.2"

global = {
  \time 4/4
  \key c \major
  \tempo 4 = 92
}

melody = \relative c' {
  \autoBeamOff
  \global
  \voiceOne
  \repeat volta 2 {
  \partial 4 e4
    a4 g f e
    d2 e4\breathe b'
    c4 c b8(a) b4
    a2.\breathe \bar "" \break e4
    a4 g f e
    d2 e4\breathe b'
    c4 c b8(a) b4
    a2.\breathe \bar "" \break c4
    b4 g a b
    c2 c4\breathe g
    a4 g a f
    e2.\breathe \bar "" \break c'4
    b4 d c b
    a2 b4\breathe e,
    f4 e d g
    e2.
  }
  \bar "|."
}

%trebleOne = \relative c'' {
%  \global
%  \voiceOne
%}

trebleTwo = \relative {
  \autoBeamOff
  \global
  \voiceTwo
  \repeat volta 2 {
    \partial 4 c'4
    c4 4 c8[(d)] d[(e)]
    c4(b) c d
    c8[(d)] e4 4 e8[(d)]
    c2. 4
    c4 4 c8[(d)] d[(e)] % B
    c4(b) c d
    c8[(d)] e4 4 e8[(d)]
    c2. a'8[(g)]
    f4 e8[(d)] c4 f % C
    f4(e8[d]) e4 4
    f4 e e d
    cis2. d4
    d4 4 e d % D
    e4(d) d c
    c8[(b)] c4 4 b
    c2.
    
  }
}

bassOne = \relative {
  \autoBeamOff
  \global
  \voiceOne
  \repeat volta 2 {
    \partial 4 a4
    f4 g a8[(g)] 4
    a4(g) g gis
    e4 a a gis
    a2. g4
    f4 g a8[(g)] 4 % B
    a4(g) g gis
    e4 a a gis
    a2. e'4
    d8[(c)] b4 a8[(g)] f[(g)] % C
    a4(g8[f]) g4 c
    c4 8[(b)] a4 4
    a2. 4
    g4 8[(fis)] g[(a)] b[(g)] % D
    e8([a] fis4) g g
    f4 g a d,8[(g)]
    g2.
  }
}

bassTwo = \relative {
  \autoBeamOff
  \global
  \voiceTwo
  \repeat volta 2 {
    \partial 4 c4
    f4 e a,8[(b)] c4
    f,4(g) c b
    a8[(b)] c[(d)] e4 4
    a,2. c4
    f4 e a,8[(b)] c4 % B
    f,4(g) c b
    a8[(b)] c[(d)] e4 4
    a,2. a'4
    d,4 e f8[(e)] d4 % C
    c2 4 4
    f4 c d8[(e)] f[(g)]
    a2. fis4
    g4 b, e8[(fis)] g4 % D
    c,4(d) g, c8[(b)]
    a4 g f g
    c2.
  }
}

wordsOne = \lyricmode {
  O sac -- red Head, sore wound -- ed,
  with grief and shame weighed down,
  O king -- ly head sur -- round -- ed 
  with thorns, Thine on -- ly crown;
  Death's pal -- lor now comes o-er thee,
  the glow of life de -- cays;
  yet hosts of heaven a -- dore thee
  and trem -- ble as they gaze.
}

wordsTwo = \lyricmode {
  What lan -- guage shall I bor -- row
  to praise thee, heaven -- ly friend,
  for this thy dy -- ing sor -- row,
  thy pit -- y with -- out end?
  O a -- gon -- y and dy -- ing!
  O love to sin -- ners free!
  Je -- sus, all grace sup -- ply -- ing,
  turn thou thy face on me.
}

wordsThree = \lyricmode {
  In this thy bit -- ter Pas -- sion,
  good Shep -- herd think of me
  with thy most sweet com -- pas -- sion,
  un -- worth -- y though I be:
  be -- neath thy cross a -- bid -- ing
  for e -- ver would I rest,
  in thy dear love con -- fid -- ing,
  and with thy pres -- ence blest.
}

wordsFour = \lyricmode {
  Be Thou my con -- sol -- a -- tion, 
  my shield when I must die;
  Re -- mind me of Thy pas -- sion 
  when my last hour draws nigh.
  Mine eyes shall then be -- hold Thee, 
  up -- on Thy cross shall dwell,
  My heart by faith en -- folds Thee. 
  Who di -- eth thus dies well.
}

Mwords = \lyricmode {
  "" "" "" "" "" ""
  "O " "sac" "red " "Head, " "now " "wound" "ed,"
  "/with " "grief " "and " "shame " "weighed " "down,"
  "/Now " "scorn" "ful" "ly " "sur" "round" "ed"
  "/with " "thorns, " "Thine " "on" "ly " "crown;"
  "/O " "sac" "red " "Head, " "what " "glo" "ry,"
  "/what " "bliss " "till " "now " "was " "Thine!"
  "/Yet, " "though " "des" "pised " "and " "go" "ry,"
  "/I " "joy " "to " "call " "Thee " "mine."

  "/Be " "Thou " "my " "con" "sol" "a" "tion,"
  "/my " "shield " "when " "I " "must " "die;"
  "/Re" "mind " "me " "of " "Thy " "pas" "sion"
  "/when " "my " "last " "hour " "draws " "nigh."
  "/Mine " "eyes " "shall " "then " "be" "hold " "Thee,"
  "/up" "on " "Thy " "cross " "shall " "dwell,"
  "/My " "heart " "by " "faith " "en" "folds " "Thee."
  "/Who " "di" "eth " "thus " "dies " "well."
}

\book {
  \header {
    title = "O Sacred Head, Sore Wounded"
    composer = "Hans Leo Hassler, 1601"
    arranger = "Arr. Johann Sebastian Bach"
    poet     = "Paul Gerhadt"
    meter    = "76.76 D."
    piece    = "PASSION CHORALE"
  }

  \score {
	\context ChoirStaff {
	  <<
	    \new Staff = treble {
              <<
                \new Voice = melody { \voiceOne \melody    }
                \new Voice          { \voiceTwo \trebleTwo }
              >>
	    }
            \new Lyrics \lyricsto melody { \wordsOne   }
            \new Lyrics \lyricsto melody { \wordsTwo   }
            \new Lyrics \lyricsto melody { \wordsThree }
            \new Lyrics \lyricsto melody { \wordsFour  }
	    \new Staff = bass {
              <<
                \new Voice { \clef bass \voiceOne \bassOne }
                \new Voice { \clef bass \voiceTwo \bassTwo }
              >>

	    }
	  >>
	}
  \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\context PianoStaff {
	  <<
	    \new Staff = treble \unfoldRepeats {
              \set Staff.midiInstrument = #"church organ"
              <<
	        \new Voice = Mmelody { \global \partial 4 e4 f4 e d g e2. \melody }
                \new Voice          { \global \partial 4 c4 c8(b) c4 c b c2. \trebleTwo }
              >>
	    }
            \new Lyrics \lyricsto Mmelody { \Mwords }
	    \new Staff = bass \unfoldRepeats {
              \set Staff.midiInstrument = #"church organ"
              <<
                \new Voice { \global \partial 4 g4 f g a g g2. \bassOne }
                \new Voice { \global \partial 4 c8(b) a4 g f g c2. \bassTwo }
              >>
	    }
	  >>
	}
      >>
    }
  \midi {}
  }
}
