\version "2.25.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Darkened Valleys"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Bumford"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Alan Flint"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \textMark \markup { \box \bold "68a" } s2 s1*3
    \textMark \markup { \box \bold "68b" }    s1*4
    \textMark \markup { \box \bold "68c" }    s1*5
    \textMark \markup { \box \bold "68d" }    s1*4
    \alternative {
      {
        \textMark \markup { \box \bold "69a" }    s1*4
        \textMark \markup { \box \bold "69b" }    s1*4 s2
      }
      {
        \textMark \markup { \box \bold "69c" }    s1*4
        \textMark \markup { \box \bold "69d" }    s1*4
      }
    }
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \global
  \autoBeamOff
  \repeat volta 2 {
    c'4 c | 4. 8 4. 8 | e8[d] c2~8 c | c4. 8 e[d] c4 |
    d2. 8 8 | 4. 8 4. 8 | f[e] d2 8 8 | e4. d8 e4. f8 |
    g2. c,4 | a'4. 8 4. 8 | 8[b] c2 a4 | g4. a8 g4. 8 | c2. a8[b] |
    c4. 8 4. 8 | a8[b] c2 a8 b | c4. 8 e4. c8 | d2. e,8[g] |
    \alternative {
      {
        c4. 8 4. 8 | e8[d] c2~8 8 | 4. 8 a4. c8 | d2. c4 |
        e4. 8 4. 8 | 8 d c2 4 | e4. c8 4. 8 | 1~ | 2
      }
      {
        e4. 8 4. 8 | e[d] c2~8 8 | 4. 8 a4. c8 | d2. c4 |
        g'4. 8 4. 8 | e[d] c2 4 | f4. c8 f8(e~ e) c | c1~| 2
      }
    }
  }
}

alto = \relative {
  \global
  \autoBeamOff
  \repeat volta 2 {
    a4 a | g g b b | a a(g) g | a a a a |
    a2(b4) 8 8 | a4 a cis cis | c2(b4) 8 8 | c4 c c d |
    d2(e4) c | f f f f | ees4 2 4 | e e e e | e2. 4 |
    f4 f f f | 4 2 8 8 | fis4 4 4 4 | f2. e4 |
    \alternative {
      {
        e4 4 4 4 | gis4 2~4 | a4 4 f a | aes2. 4 |
        g4 4 gis4 4 | g8 f e2 4 | f4 4 4 4 | d1~ | 2
      }
      {
        g4 4 4 4 | gis4 2 4 | a a f a | aes2. 4 |
        g4 g gis gis | 8 f e2 4 | f4 f a a | g1( | e2)
      }
    }
  }
}

tenor = \relative {
  \global
  \autoBeamOff
  \repeat volta 2 {
    f4 4 | e e e e | g8[f] e2 4 | f4 4 4 4 |
    f2 g4 8 8 | f4 4 4 4 | a8[g] f4(g) 8 8 | 4 f g a |
    bes2. 4 | c c c c | c c c c | c c c c | 2. 4 |
    a4 4 g g | a a2 4 | 4 4 c a | 2(b4) b |
    \alternative {
      {
        b4 c c c | 4 2 4 | c c c c | 2. 4 |
        c4 4 4 4 | 8[8] 2 4 | a a a a | g1~ | 2
      }
      {
        c4 4 4 4 | 4 2 4 | 4 4 4 4 | 2. 4 |
        e4 4 c c | 4 2 4 | c c f f | e1~ | 2
      }
    }
  }
}

bass = \relative {
  \global
  \autoBeamOff
  \repeat volta 2 {
    f4 4 | c c c c | 4 2 4 | d d d d |
    d2(g4) 8 8 | d4 4 4 4 | d d g4 8 8 | c,4 4 4 4 |
    g'2(c,4) c | f f f f | fis4 4 4 4 | g g g g | a2. 4 |
    f4 f e e | d d d d | d d d d | 2(g4) 4 |
    \alternative {
      {
        c,4 4 4 4 | e4 2 4 | f f f f | 2. 4 |
        c4 c e e | a8 8 2 4 | d, d g, g | c1~ | 2
      }
      {
        c4 4 4 4 | e4 2 4 | f f f f | 2. 4 |
        c4 c e e | a4 2 4 | d, d g, g | c1~ | 2
      }
    }
  }
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

verses = 2

wordsOne = \lyricmode {
  \set stanza = "1."
  When you walk the dark -- ened val -- leys
  and no -- thing can go right
  When you've lost your in -- spir -- a -- tion
  and your mood is dark as night
  Just put your best foot for -- ward
  just trust up -- on God's will
  for if you keep on climb -- ing
  you will con -- quer ev -- 'ry hill
  And though the path is rock -- y
  you stum -- ble now and then
  you have the strength in -- side your -- self to rise and start a -- gain.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  _ And when you keep on climb -- ing
  though some -- times you may stop
  _ The view just keeps im -- prov -- ing
  _ as you ap -- proach the top
  Up -- lift -- ed from the sha -- dows
  in -- to a day that's bright
  The world for you so bright -- ly glows
  when you re -- ceive the light!
  Per-
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  haps you'll ne -- ver get there
  just keep on try -- ing 'till
  The light of love sur -- rounds you
  and lifts you high -- er still.
}
  
wordsMidi = \lyricmode {
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \unfoldRepeats \RehearsalTrack }
            \new Voice { \unfoldRepeats \TempoTrack     }
            \new Voice { \global \unfoldRepeats \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \unfoldRepeats \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \unfoldRepeats \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \unfoldRepeats \bass }
          >>
        >>
    \layout { }
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner"  \wordsOne
            \new Lyrics \lyricsto "aligner"  \wordsTwo
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \unfoldRepeats \RehearsalTrack }
            \new Voice { \unfoldRepeats \TempoTrack }
            \new NullVoice = "aligner" { \unfoldRepeats \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \unfoldRepeats \soprano \bar "|." }
                                    { \global \unfoldRepeats { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne
                                              \wordsTwo
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \unfoldRepeats \tenor }
                                    { \global \unfoldRepeats \bass }
          >>
        >>
}

\book {
  \bookOutputSuffix "single"
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
