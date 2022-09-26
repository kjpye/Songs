\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Take Me, O mu Father!"
  subtitle    = "Sankey No. 464"
  subsubtitle = "Sankey 880 No. 313"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ray Palmer, R. R."
  meter       = \markup\smallCaps "8.7. d."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3
  \mark \markup { \box "B" }    s2.*4
  \mark \markup { \box "C" }    s2.*4
  \mark \markup { \box "D" }    s2.*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=104
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  a'8\omit\mf^\markup\italic Moderato. 8 | 4 fis d'8 8 | 4 a4 8 8 | b4. 8 8 8 |
  a2 8^\p 8 | cis4. 8 8 8 | d4 a d8 8 | cis4. 8 b b |
  a2 8^\f 8 | cis4 a4 8 8 | d4 a4 8 8 | e'4. cis8 a g |
  fis2 a8 8 | d4. 8 8 8 | fis4 d4 8 b^\markup\italic rall. | a4. 8 b cis | d2
}

alto = \relative {
  \autoBeamOff \partial 4
  fis'8\omit\mf 8 | 4 d fis8 8 | 4 4 8 8 | g4. 8 8 8 |
  fis2 8\omit\p 8 | g4. 8 8 8 | fis4 4 8 8 | e4. 8 d d |
  c2 a'8\omit\f 8 | g4 4 8 8 | fis4 4 8 8 | e4. 8 8 8 |
  d2 fis8 8 | 4. 8 8 8 | a4 fis g8 8 | fis4. 8 g g | fis2
}

tenor = \relative {
  \autoBeamOff \partial 4
  d'8 8 | 4 a4 8 8 | 4 d4 8 8 | 4. 8 8 8 |
  d2 8 8 | e4. 8 8 8 | d4 4 a8 8 | 4. 8 gis gis |
  a2 8 8 | 4 4 8 8 | 4 d a8 8 | 4. 8 8 8 |
  2 8 8 | 4. 8 8 8 | d4 a b8 d | 4. a8 8 8 | 2
}

bass = \relative {
  \autoBeamOff
  d8 8 | 4 4 8 8 | 4 4 8 8 | g4. 8 8 8 |
  d2 8 8 | a'4. 8 8 8 | d,4 4 8 8 | e4. 8 8 8 |
  a,2 a'8 8 | 4 4 8 8 | d,4 4 8 8 | a4. 8 8 8 |
  d2 8 8 | 4. 8 8 8 | 4 4 g8 8 | a4. 8 8 8 | d,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Take me, O my Fath -- er, take me!
  Take me, save me, thro' Thy Son;
  That which Thou wouldst have me, make me,
  Let Thy will in me be done.
  Long from Thee my foot -- steps stray -- ing,
  Thorn -- y proved the way I trod;
  Wea -- ry come I now, and pray -- ing,
  Take me to Thy love, my God!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Fruit -- less years with gried re -- call -- ing,
  Hum -- bly I con -- fess my sin;
  At Thy feet, O Fa -- ther, fall -- ing,
  To Thy house -- hold take me in,
  Free -- ly now to Thee I prof -- fer
  This re -- pent -- ing heart of mine;
  Free -- ly life and soul I of -- ferm
  Gift un -- wor -- thy love like Thine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Once the world's Re -- deem -- er dy -- ing
  Bore our sins up -- on the tree;
  On that Sac -- ri -- fice re -- ly -- ing,
  Now I look in hope to Thee:
  Fa -- ther, take me! all for -- giv -- ing
  Fold me to Thy lov -- ing breast;
  In Thy love for e -- ver liv -- ing,
  I must be for -- e -- ver blest!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Take " "me, " "O " "my " Fath "er, " "take " "me! "
  "\nTake " "me, " "save " "me, " "thro' " "Thy " "Son; "
  "\nThat " "which " "Thou " "wouldst " "have " "me, " "make " "me, "
  "\nLet " "Thy " "will " "in " "me " "be " "done. "
  "\nLong " "from " "Thee " "my " foot "steps " stray "ing, "
  "\nThorn" "y " "proved " "the " "way " "I " "trod; "
  "\nWea" "ry " "come " "I " "now, " "and " pray "ing, "
  "\nTake " "me " "to " "Thy " "love, " "my " "God!\n"

  \set stanza = "2."
  "\nFruit" "less " "years " "with " "gried " re call "ing, "
  "\nHum" "bly " "I " con "fess " "my " "sin; "
  "\nAt " "Thy " "feet, " "O " Fa "ther, " fall "ing, "
  "\nTo " "Thy " house "hold " "take " "me " "in, "
  "\nFree" "ly " "now " "to " "Thee " "I " prof "fer "
  "\nThis " re pent "ing " "heart " "of " "mine; "
  "\nFree" "ly " "life " "and " "soul " "I " of "ferm "
  "\nGift " un wor "thy " "love " "like " "Thine.\n"

  \set stanza = "3."
  "\nOnce " "the " "world's " Re deem "er " dy "ing "
  "\nBore " "our " "sins " up "on " "the " "tree; "
  "\nOn " "that " Sac ri "fice " re ly "ing, "
  "\nNow " "I " "look " "in " "hope " "to " "Thee: "
  "\nFa" "ther, " "take " "me! " "all " for giv "ing "
  "\nFold " "me " "to " "Thy " lov "ing " "breast; "
  "\nIn " "Thy " "love " "for " e "ver " liv "ing, "
  "\nI " "must " "be " for e "ver " "blest! "
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
            \addlyrics \wordsMidiMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
