\version "2.19.80"

global = {
  \time 4/4
  \key c \major
  \tempo 4 = 92
}

melody = \relative c' {
  \global
  \voiceOne
  \repeat volta 2 {
  \partial 4 e4
    a4 g f e
    d2 e4 b'
    c4 c b8(a) b4
    a2. \bar "||" \break e4
    a4 g f e
    d2 e4 b'
    c4 c b8(a) b4
    a2. \bar "||" \break c4
    b4 g a b
    c2 c4 g
    a4 g a f
    e2. \bar "||" \break c'4
    b4 d c b
    a2 b4 e,
    f4 e d g
    e2.
  }
  \bar "|."
}

%trebleOne = \relative c'' {
%  \global
%  \voiceOne
%}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  \repeat volta 2 {
    \partial 4 c4
    c8(d) e4 a,8(b) c4
    c4(b) c e
    e4 e e e8(d)
    c2. c4
    c8(d) e4 a,8(b) c4
    c4(b) c e
    e4 e e e8(d)
    c2. d4
    d4 d8(c) c4 f
    f4(e8 d) e4 e
    e8(d) e4 e d
    cis2. d4
    d4 d e8(fis) g4
    g4(fis) f c
    c8(b) c4 c b
    c2.
  }
}

bassOne = \relative c' {
  \global
  \voiceOne
  \repeat volta 2 {
    \partial 4 a4
    a8(b) c4 d g,
    a4 g g b
    a4 a a gis
    a2. a4
    a8(b) c4 d g,
    a4 g g b
    a4 a a gis
    a2. a8(g)
    f4 g f f8(g)
    a4(g8 f) g4 c8(bes)
    a4 a a a
    a2. a4
    g4 a g8(a) b(g)
    e'4(d) d g,
    f4 g a g
    g2.
  }
}

bassTwo = \relative c' {
  \global
  \voiceTwo
  \repeat volta 2 {
    \partial 4 a8(g)
    f4 e d c
    f,4(g) c gis
    a8(b) c(d) e4 e
    a,2. a'8(g)
    f4 e d c
    f,4(g) c gis
    a8(b) c(d) e4 e
    a,2. a4
    d4 e f8(e) d4
    c2 c4 c
    f4 cis d8(e) f(g)
    a2. fis4
    g4 fis e d
    c4(d) g, c8(b) a4 g f g
    c2.
  }
}

wordsOne = \lyricmode {
  O sac- red Head, sore wound- ed,
  with grief and shame weighed down,
  O king- ly head sur- round- ed 
  with thorns, Thine on- ly crown;
  Death's pal- lor now comes o-er thee,
  the glow of life de- cays;
  yet hosts of heaven a- dore thee
  and trem- ble as they gaze.
}

wordsTwo = \lyricmode {
  What lan- guage shall I bor- row
  to praise thee, heaven- ly friend,
  for this thy dy- ing sor- row,
  thy pit- y with- out end?
  O a- gon- y and dy- ing!
  O love to sin- ners free!
  Je- sus, all grace sup- ply- ing,
  turn thou thy face on me.
}

wordsThree = \lyricmode {
  In this thy bit- ter Pas- sion,
  good Shep- herd think of me
  with thy most sweet com- pas- sion,
  un- worth- y though I be:
  be- neath thy cross a- bid- ing
  for e- ver would I rest,
  in thy dear love con- fid- ing,
  and with thy pres- ence blest.
}

wordsFour = \lyricmode {
  Be Thou my con- sol- a- tion, 
  my shield when I must die;
  Re- mind me of Thy pas- sion 
  when my last hour draws nigh.
  Mine eyes shall then be- hold Thee, 
  up- on Thy cross shall dwell,
  My heart by faith en- folds Thee. 
  Who di- eth thus dies well.
}

Mwords = \lyricmode {
  "" "" "" "" "" ""
  "/O " "sac" "red " "Head, " "now " "wound" "ed,"
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
    poet     = "Paul Gerhadt"
  }

  \score {
    \context GrandStaff {
      <<
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
