\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Before Jehovah's Awful Throne."
  subtitle    = "Sankey No. 252"
  subsubtitle = "Sankey 880 No. 143"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mainzer."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D.D." % Alt J Wesley
  meter       = \markup\smallCaps "l.m."
  piece       = \markup\smallCaps "Mainzer."

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
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  g4 4 c b
  a4 4 g a
  f4 g e c'
  b4 a g \bar "|" \break g
  g4 4 c b % B
  a4 4 g g
  a4 b c e8[d]
  c4 b c
}

alto = \relative {
  \autoBeamOff
  e'4
  c4 d e g
  f4 4 e e
  d4 4 e a
  g4 fis g d
  e4 f e g % B
  g4 f f e
  f4 4 e f
  e4 d e
}

tenor = \relative {
  \autoBeamOff
  g4
  e'4 d c c
  c4 a8[b] c4 4
  a4 g g e'
  d4 c b b
  c4 b c c % B
  c4 d d c
  c4 d c a
  g4 4 4
}

bass = \relative {
  \autoBeamOff
  c4
  c'4 b a e
  f4 4 c a
  d4 b c a
  d4 4 g, f'
  e4 d c e % B
  f4 d8[c] b4 c
  f4 d a' f
  g4 g, c
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- fore Je -- ho -- vah's aw -- ful throne,
  Ye na -- tions, bow with sa -- cred joy:
  Know that the Lord is God a -- lone;
  He can cre -- ate, and He des -- troy.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  His sov -- 'reign power, with -- out our aid,
  Made us of clay, and formed us men;
  And when like wan -- d'ring sheep we strayed,
  He brought us to His fold a -- gain.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We'll crowd Thy gates with thank -- ful songs,
  High as the heavens our voi -- ces raise:
  And earth, with her ten thou -- sand tongues,
  Shall fill Thy courts with sound -- ing praise.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Wide as the world is Thy com -- mand,
  Vast as e -- ter -- ni -- ty Thy love;
  Firm as a rock Thy truth must stand,
  When rol -- ling years shall cease to move.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be" "fore " Je ho "vah's " aw "ful " "throne, "
  "\nYe " na "tions, " "bow " "with " sa "cred " "joy: "
  "\nKnow " "that " "the " "Lord " "is " "God " a "lone; "
  "\nHe " "can " cre "ate, " "and " "He " des "troy. "

  \set stanza = "2."
  "\nHis " sov "'reign " "power, " with "out " "our " "aid, "
  "\nMade " "us " "of " "clay, " "and " "formed " "us " "men; "
  "\nAnd " "when " "like " wan "d'ring " "sheep " "we " "strayed, "
  "\nHe " "brought " "us " "to " "His " "fold " a "gain. "

  \set stanza = "3."
  "\nWe'll " "crowd " "Thy " "gates " "with " thank "ful " "songs, "
  "\nHigh " "as " "the " "heavens " "our " voi "ces " "raise: "
  "\nAnd " "earth, " "with " "her " "ten " thou "sand " "tongues, "
  "\nShall " "fill " "Thy " "courts " "with " sound "ing " "praise. "

  \set stanza = "4."
  "\nWide " "as " "the " "world " "is " "Thy " com "mand, "
  "\nVast " "as " e ter ni "ty " "Thy " "love; "
  "\nFirm " "as " "a " "rock " "Thy " "truth " "must " "stand, "
  "\nWhen " rol "ling " "years " "shall " "cease " "to " "move. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%    \unfoldRepeats
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
