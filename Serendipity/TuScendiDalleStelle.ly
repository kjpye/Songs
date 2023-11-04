% Original from John Lemcke

\version "2.25.9"

\include "english.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Tu scendi dalle stelle"
  % Remove default LilyPond tagline
  tagline = ##f
  copyright   = \today
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
}

\paper {
  #(set-paper-size "a4")
  line-width = 180\mm
  left-margin = 20\mm
  bottom-margin = 10\mm
  top-margin = 10\mm
}

global = {
  \key f \major
  \time 6/8
  \partial 8
}

soprano = \relative c'' {
  \autoBeamOff
  c8 c4 d8 c4 bf8 bf a4~4 \breathe g8 a [(bf)] c c [(bf a)] g4.~4 \breathe \break
  \repeat volta 2 {
    a8 g4 a8 bf4 a8 g4. d'4 \breathe d8 c [(d)] c bf [(a g)]
    \alternative {
      { a4.~4 }
      { a4. a4 c8 }
    }
  }
  bf4 bf8 bf a g a4 a8 \breathe
  a4 c8 bf4 bf8 \slurDashed bf(a) \slurSolid g a4.~4 \breathe
  g8 a bf c c[ (bf a)] g4.~4 \breathe a8
  \repeat volta 2 {
    g4 a8 bf4 a8 g4. \breathe d'4.c8 [(d)] c bf[ (a g)]
    \alternative {
      { a4. ~ a4 \breathe a8 }
      {f4.~4}
    }
  }
}

alto = \relative c' {
  \autoBeamOff
  c'8 f,4 f8 f4 e8 e f4~4 e8 f [(g)] a a [(g f)] e4.~4
  \repeat volta 2 {
    f8 e4 f8 g4 f8 e4. bf'4 bf8 a [(bf)] a g [(f e)]
    \alternative {
      { f4.~4 }
      { f4. f4 a8 }
    }
  }
  g4 g8 g f e f4 f8 f4 a8 g4 g8 \slurDashed g(f) \slurSolid e f4.~4
  e8 f g a a[ (g f)] e4.~4 f8
  \repeat volta 2 {
    e4 f8 g4 f8 e4. bf'4.a8 [(bf)] a g[ (f e)]
    \alternative {
      { f4. ~ f4 f8 }
      {f4.~4}
    }
  }
}

bass = \relative c {
  \autoBeamOff
  f8 a4 bf8 a4 g8 g f4~4
  c8 c4 c8 c4.
  c4 (d8 c4)
  \repeat volta 2 {
    f8 c8 [(bf)] a8 g4 g8
    c [(d c)] bf [(a)] g8 a [(bf)] c c [(d e)]
    \alternative {
      { f4.~4 }
      { f4. c4 d8 }
    }
  }
  c4 c8 c c d c4 c8 c4 d8 c4 c8 \slurDashed c(c) \slurSolid d c4.~4
  c8 c c c c4.
  c4 (d8 c4) f8
  \repeat volta 2 {
    c8 [(bf)] a g4 g8 c [(d c)] bf [(a g)]
    a8 [(bf)] c c [(d e)]
    \alternative {
      { f4. ~ f4 f8 }
      { f4.~4 }
    }
  }
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  Tu scen -- di dal -- le stel -- le o Re del cie --  lo,
  \repeat volta 2 {
    e vie -- ni~in u -- na grot -- ta al fred -- do~al ge --
    \alternative {
      { lo. }
      { lo. O Bam -- }
    }
  }
  bi -- no mi -- o di -- vi -- no
  io ti ve -- do \nom qui a \yesm tre -- mar:
  o Di -- o be -- a -- to! Ah
  \repeat volta 2 {
    quan -- to ti co -- sto' l'a -- ver -- mi~a -- ma --
    \alternative {
      { to. Ah }
      { to. }
    }
  }
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  A te che sei del mon -- do il Cre -- a -- to -- re,
  \repeat volta 2 {
    or man -- can pan -- ni~e fuo -- co, O mi -- o Signo --
    \alternative {
      { re, }
      {
        re, Ca -- ro
      }
    }
  }
  e -- let -- to Par -- go -- let -- to;
  quan -- to ques -- ta po --  ver -- ta
  pi -- u m'in -- na -- mor -- a, Gia --
  \repeat volta 2 {
    cche Ti fe -- ce~a -- mor Po -- ve -- ro~an -- co --
    \alternative {
      { ra. Gia }
      { ra. }
    }
  }
}

nl = { \bar "||" \break }

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Tu " scen "di " dal "le " stel "le " "o " "Re " "del " cie  "lo, "
  \repeat volta 2 {
    "e " vie "ni~in " u "na " grot "ta " "al " fred "do~al " ge
    \alternative {
      { "lo. " }
      { "lo. " "O " Bam }
    }
  }
  "bi" "no " mi "o " di vi "no "
  "\nio " "ti " ve "do " \nom "qui " "a " \yesm tre "mar: "
  "\no " Di "o " be a "to! " "Ah "
  \repeat volta 2 {
    "quan" "to " "ti " co "sto' " l'a ver mi~a ma
    \alternative {
      { "to. " "Ah " }
      { "to. " }
    }
  }

  \set stanza = "2."
  "\nA " "te " "che " "sei " "del " mon "do " "il " Cre a to "re, "
  \repeat volta 2 {
    "or " man "can " pan "ni~e " fuo "co, " "O " mi "o " Signo
    \alternative {
      { "re, " }
      {
        "re, " Ca "ro "
      }
    }
  }
  "\ne" let "to " Par go let "to; "
  "\nquan" "to " ques "ta " po  ver "ta "
  "\npi" "u " m'in na mor "a, " Gia
  \repeat volta 2 {
    "cche " "Ti " fe ce~a "mor " Po ve ro~an co
    \alternative {
      { "ra. " "Gia " }
      { "ra. " }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \global \voiceOne \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold 2 { \alto \nl } \bar "|." }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold 2 \bass }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women
          <<
            \new NullVoice = "aligner" \soprano
            \new Voice { \global \voiceOne \soprano \bar "|." }
            \new Voice { \global \voiceTwo \alto              }
            \new Lyrics \lyricsto "aligner" \wordsOne
            \new Lyrics \lyricsto "aligner" \wordsTwo
          >>
                                % Bass staff
          \new Staff = men
          <<
            \clef "bass"
            \new Voice { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
  \unfoldRepeats
  \new ChoirStaff <<
                                % Joint soprano/alto staff
    \new Staff = women
    <<
      \new NullVoice = "aligner" { \soprano \soprano }
      \new Voice { \global \voiceOne \soprano  \soprano  \bar "|." }
      \new Voice { \global \voiceTwo \alto \nl \alto \nl \bar "|." }
      \new Lyrics \lyricsto "aligner" { \wordsOne \wordsTwo }
    >>
                                % Bass staff
    \new Staff = men
    <<
      \clef "bass"
      \new Voice { \global \bass \bass }
    >>
  >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-sep"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
                                % Soprano staff
      \new Staff = soprano
      <<
        \new Voice { \global \voiceOne \soprano  \soprano  \bar "|." }
        \addlyrics { \wordsOne \wordsTwo }
      >>
                                % Alto staff
      \new Staff = alto
      <<
        \new Voice { \global \voiceTwo \alto \nl \alto \nl \bar "|." }
        \addlyrics { \wordsOne \wordsTwo }
      >>
                                % Bass staff
      \new Staff = men
      <<
        \clef "bass"
        \new Voice { \global \bass \bass }
        \addlyrics { \wordsOne \wordsTwo }
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-sop"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
                                % Soprano staff
      \new Staff = soprano
      <<
        \new Voice { \global \voiceOne \soprano  \soprano  \bar "|." }
        \addlyrics { \wordsOne \wordsTwo }
      >>
                                % Alto staff
      \new Staff = alto
      <<
        \magnifyStaff #4/7
        \new Voice { \global \voiceTwo \alto \nl \alto \nl \bar "|." }
        \addlyrics { \tiny \wordsOne \wordsTwo }
      >>
                                % Bass staff
      \new Staff = men
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice { \global \bass \bass }
        \addlyrics { \tiny \wordsOne \wordsTwo }
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-alto"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
                                % Soprano staff
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
        \new Voice { \global \voiceOne \soprano  \soprano  \bar "|." }
        \addlyrics { \tiny \wordsOne \wordsTwo }
      >>
                                % Alto staff
      \new Staff = alto
      <<
        \new Voice { \global \voiceTwo \alto \nl \alto \nl \bar "|." }
        \addlyrics { \wordsOne \wordsTwo }
      >>
                                % Bass staff
      \new Staff = men
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice { \global \bass \bass }
        \addlyrics { \tiny \wordsOne \wordsTwo }
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
                                % Soprano staff
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
        \new Voice { \global \voiceOne \soprano  \soprano  \bar "|." }
        \addlyrics { \tiny \wordsOne \wordsTwo }
      >>
                                % Alto staff
      \new Staff = alto
      <<
        \magnifyStaff #4/7
        \new Voice { \global \voiceTwo \alto \nl \alto \nl \bar "|." }
        \addlyrics { \tiny \wordsOne \wordsTwo }
      >>
                                % Bass staff
      \new Staff = men
      <<
        \clef "bass"
        \new Voice { \global \bass \bass }
        \addlyrics { \wordsOne \wordsTwo }
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
