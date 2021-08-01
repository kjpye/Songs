\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Thy Blood."
  subtitle    = "Sankey No. 177"
  subsubtitle = "Sankey 880 No. 618"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "B. Crasselius."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup { \smallCaps "Zinzendorf" \italic "(tr." \smallCaps "J. Wesley)."}
  meter       = \markup\smallCaps "l.m."
  piece       = \markup\smallCaps "Winchester"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*7 s2 \tempo 4=40 s4 \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  c4 g a a
  g4 f e e
  f4 e d g
  a4 fis g \bar "|" \break g4
  c4 d e c % B
  f4 e d e
  c4 a g c
  c4 b c\fermata
}

alto = \relative {
  \autoBeamOff
  e'4
  g e f f
  d4 b c c
  c4 c b d
  e4 d d d
  g4 g e f % B
  f4 g g g
  g4 f d c
  g'4. f8 e4\fermata
}

tenor = \relative {
  \autoBeamOff
  c'4
  c4 4 4 d
  g,4 4 4 4
  a4 g g g
  c4 a b b
  c4 b c a % B
  a8[b] c4 b c
  c4 c b a
  d4 d c\fermata
}

bass = \relative {
  \autoBeamOff
  c4
  e4 c f d
  b4 a c c
  a4 c g b
  c4 d g g
  e4 g c, f % B
  d4 c g' c,
  e4 f g a
  g4 g, c\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Thy blood and righ -- teous -- ness
  My beau -- ty are, my glo -- rious dress;
  'Midst fla -- ming worlds, in these ar -- rayed.
  With you shall i lift up my head.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When from the dust of death I rise
  To take my man -- sion in the skies,
  E'en then shall this be all my plea--
  Je -- sus hath lived and died for me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bold shall I stand in that great day,
  For who to aught my charge shall lay
  While, thro' Thy blood, ab -- solved I am
  From sin's tre -- men -- dous curse and shame?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  This spot -- less robe the same ap -- pears
  When ru -- ined na -- ture sinks in years:
  No age can change its glo -- rious hue:
  The robe of Christ is ev -- er new.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Oh, let the dead now hear Thy voice!
  Bid, Lord, Thy ban -- ished ones re -- joice:
  Their beau -- ty this, their glo -- rious dress,
  Je -- sus, Thy blood and righ -- teous -- ness.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " "Thy " "blood " "and " righ teous "ness "
  "\nMy " beau "ty " "are, " "my " glo "rious " "dress; "
  "\n'Midst " fla "ming " "worlds, " "in " "these " ar "rayed. "
  "\nWith " "you " "shall " "i " "lift " "up " "my " "head. "

  \set stanza = "2."
  "\nWhen " "from " "the " "dust " "of " "death " "I " "rise "
  "\nTo " "take " "my " man "sion " "in " "the " "skies, "
  "\nE'en " "then " "shall " "this " "be " "all " "my " plea
  "\nJe" "sus " "hath " "lived " "and " "died " "for " "me. "

  \set stanza = "3."
  "\nBold " "shall " "I " "stand " "in " "that " "great " "day, "
  "\nFor " "who " "to " "aught " "my " "charge " "shall " "lay "
  "\nWhile, " "thro' " "Thy " "blood, " ab "solved " "I " "am "
  "\nFrom " "sin's " tre men "dous " "curse " "and " "shame? "

  \set stanza = "4."
  "\nThis " spot "less " "robe " "the " "same " ap "pears "
  "\nWhen " ru "ined " na "ture " "sinks " "in " "years: "
  "\nNo " "age " "can " "change " "its " glo "rious " "hue: "
  "\nThe " "robe " "of " "Christ " "is " ev "er " "new. "

  \set stanza = "5."
  "\nOh, " "let " "the " "dead " "now " "hear " "Thy " "voice! "
  "\nBid, " "Lord, " "Thy " ban "ished " "ones " re "joice: "
  "\nTheir " beau "ty " "this, " "their " glo "rious " "dress, "
  "\nJe" "sus, " "Thy " "blood " "and " righ teous "ness. "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice      { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
