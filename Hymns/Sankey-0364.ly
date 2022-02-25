\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus is Passing this Way."
  subtitle    = "Sankey No. 364"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Tenney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Rev. E. A. Hoffman."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
  \mark \markup { \box "E" } s2.*4
  \mark \markup { \box "F" } s2.*4
  \mark \markup { \box "G" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8 8 8 8 8 8
  c4. a
  g8 8 8 8 a bes
  a4.~4 r8 \break
  a8 8 8 8 8 8 % B
  c4. a
  \tag #'rep     {\slurDashed g8  8 c d(d) e8 \slurSolid}
  \tag #'v1      {            g,8 8 c d d  e8           }
  \tag #'(v2 v3) {            g,8 8 c d4   e8           }
  c4.~4 r8 \break
  c8 d c c a f % C
  a4. g
  f8 8 8 a g f
  g4.~4 r8 \break
  a8 8 8 8 bes c % D
  bes4. d
  c8 a f c a'\fermata g
  f4.~4 r8 \break
  c'8^\markup\smallCaps Chorus. b c d c a % E
  g4.~4 8
  c4.~8[bes] g
  a4.~4 r8 \break
  c8 8 8 8 d c % F
  c4. bes
  bes8 8 8 8 c bes
  bes4. a4 c8 \break
  d8 8 8 8 e f % F
  c4.~4 a8
  g8 8 8 a4\fermata g8
  f4.~4.
}

alto = \relative {
  \autoBeamOff
  f'8 8 8 8 8 8
  f4. 4.
  e8 8 8 8 f g
  f4.~4 r8
  f8 8 8 8 8 8 % B
  f4. 4.
  \tag #'rep     {\slurDashed e8 8 8 f(f) \slurSolid g8}
  \tag #'v1      {            e8 8 8 f f             g8}
  \tag #'(v2 v3) {            e8 8 8 f4              g8}
  e4.~4 r8
  f8 8 8 8 8 8 % C
  f4. e
  d8 8 8 f e d
  e4.~4 r8
  f8 8 8 8 8 8 % D
  f4. 4.
  f8 c c c f\fermata e
  f4.~4 r8
  a8 gis a bes a f % E
  e4.~4 8
  e4.~4 8
  f4.~4 r8
  f8 8 8 8 8 8 % F
  a4. g
  g8 8 8 8 a g
  g4. f4 8
  f8 8 8 8 8 8 % G
  f4.~4 8
  e8 8 8 f4\fermata e8
  f4.~4.
}

tenor = \relative {
  \autoBeamOff
  c'8 8 8 8 8 8
  a4. c
  c8 8 8 8 8 8
  c4.~4 r8
  c8 8 8 8 8 8 % B
  a4. c

  \tag #'rep     {\slurDashed c8 8 8 b(b) b8 \slurSolid}
  \tag #'v1      {            c8 8 8 b b  b8           }
  \tag #'(v2 v3) {            c8 8 8 b4   b8           }
  c4.~4 r8
  a8 bes a a c a % C
  c4. bes
  a8 8 8 8 8 8
  c4.~4 r8
  c8 8 8 8 d ees % D
  d4. bes
  a8 8 8 8 c\fermata bes
  a4.~4 r8
  R2. % E
  c8 8 8 8 8 8
  g4 8 4 c8
  c8 8 8 4 r8
  a8 8 8 8 bes a % F
  c4. 4.
  c8 8 8 8 8 8
  c4. 4 a8
  bes8 8 8 8 c d % G
  a4 8 4 c8
  c8 8 8 4\fermata bes8
  a4.~4.
}

bass = \relative {
  \autoBeamOff
  f8 8 8 8 8 8
  f4. 4.
  c8 8 8 8 8 8
  f4.~4 r8
  f8 8 8 8 8 8 % B
  f4. 4.
  \tag #'rep     {\slurDashed g8 8 8 8(8) \slurSolid 8}
  \tag #'v1      {            g8 8 8 8 8             8}
  \tag #'(v2 v3) {            g8 8 8 4               8}
  c,4.~4 r8
  f8 8 8 8 8 8 % C
  c4. 4.
  d8 8 8 8 8 8
  c4.~4 r8
  f8 8 8 8 8 8 % D
  bes,4. 4.
  c8 8 8 8 8\fermata 8
  f4.~4 r8
  R2. % E
  c8 8 8 8 8 8
  c4 8 4 8
  f8 8 8 4 r8
  f8 8 8 8 8 8 % F
  c4. 4.
  c8 8 8 8 8 8
  f4. 4 8
  bes,8 8 8 8 8 8 % F
  f'4 8 4 8
  c8 8 8 4\fermata 8
  f4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Je -- sus is pass -- ing this way __
  To -- day __ to -- day: __
  While He is near, oh, be -- lieve Him,
  O -- pen your heart to re -- veive Him,
  For Je -- sus is pass -- ing this way, __
  Is pass -- ing this way to -- day.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Is there a sin -- ner a -- wait -- ing
  Mer -- cy and par -- don to -- day?
  Wel -- come the news that we bring him:
  "\"Je" -- sus is \nom pass -- ing \yesm this "way!\""
  Com -- ing in love and in mer -- cy,
  Par -- don and peace to be -- stow.
  Com -- ing to save the poor sin -- ner
  From his heart-- an -- guish and woe.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Bro -- ther, the Mas -- ter is wait -- ing,
  Wait -- ing to free -- ly for -- give;
  Why not this mo -- ment ac -- cept Him,
  Trust in Hs grace and live!
  He is so ten -- der and pre -- cious,
  He is so near you to -- day;
  O -- pen your heart to re -- ceive Him;
  While He is pass -- ing this way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yes, He is com -- ing to bless you
  While in con -- tri -- tion you bow;
  Com -- ing from sin to re -- deem you,
  Rea -- dy to save you now;
  Can you re -- fuse the sal -- va -- tion
  Je -- sus is of -- fer -- ing here?
  O -- pen your heart to ad -- mit Him,
  While He is com -- ing so near.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Is there a sin -- ner a -- wait -- ing
  Mer -- cy and par -- don to -- day?
  Wel -- come the news that we bring him:
  "\"Je" -- sus is pass -- ing this "way!\""
  Com -- ing in love and in mer -- cy,
  Par -- don and peace to be -- stow.
  Com -- ing to save the poor sin -- ner
  From his heart-- an -- guish and woe.
  Je -- sus is pass -- ing this way __
  To -- day __ to -- day: __
  While He is near, oh, be -- lieve Him,
  O -- pen your heart to re -- veive Him,
  For Je -- sus is pass -- ing this way, __
  Is pass -- ing this way to -- day.

  \set stanza = "2."
  Bro -- ther, the Mas -- ter is wait -- ing,
  Wait -- ing to free -- ly for -- give;
  Why not this mo -- ment ac -- cept Him,
  Trust in Hs grace and live!
  He is so ten -- der and pre -- cious,
  He is so near you to -- day;
  O -- pen your heart to re -- ceive Him;
  While He is pass -- ing this way.
  Je -- sus is pass -- ing this way __
  To -- day __ to -- day: __
  While He is near, oh, be -- lieve Him,
  O -- pen your heart to re -- veive Him,
  For Je -- sus is pass -- ing this way, __
  Is pass -- ing this way to -- day.

  \set stanza = "3."
  Yes, He is com -- ing to bless you
  While in con -- tri -- tion you bow;
  Com -- ing from sin to re -- deem you,
  Rea -- dy to save you now;
  Can you re -- fuse the sal -- va -- tion
  Je -- sus is of -- fer -- ing here?
  O -- pen your heart to ad -- mit Him,
  While He is com -- ing so near.
  Je -- sus is pass -- ing this way __
  To -- day __ to -- day: __
  While He is near, oh, be -- lieve Him,
  O -- pen your heart to re -- veive Him,
  For Je -- sus is pass -- ing this way, __
  Is pass -- ing this way to -- day.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Is " "there " "a " sin "ner " a wait "ing "
  "\nMer" "cy " "and " par "don " to "day? "
  "\nWel" "come " "the " "news " "that " "we " "bring " "him: "
  "\n\"Je" "sus " "is " pass "ing " "this " "way!\" "
  "\nCom" "ing " "in " "love " "and " "in " mer "cy, "
  "\nPar" "don " "and " "peace " "to " be "stow. "
  "\nCom" "ing " "to " "save " "the " "poor " sin "ner "
  "\nFrom " "his " heart an "guish " "and " "woe. "
  "\nJe" "sus " "is " pass "ing " "this " "way " 
  "\nTo" "day "  to "day: " 
  "\nWhile " "He " "is " "near, " "oh, " be "lieve " "Him, "
  "\nO" "pen " "your " "heart " "to " re "veive " "Him, "
  "\nFor " Je "sus " "is " pass "ing " "this " "way, " 
  "\nIs " pass "ing " "this " "way " to "day. "

  \set stanza = "2."
  "\nBro" "ther, " "the " Mas "ter " "is " wait "ing, "
  "\nWait" "ing " "to " free "ly " for "give; "
  "\nWhy " "not " "this " mo "ment " ac "cept " "Him, "
  "\nTrust " "in " "Hs " "grace " "and " "live! "
  "\nHe " "is " "so " ten "der " "and " pre "cious, "
  "\nHe " "is " "so " "near " "you " to "day; "
  "\nO" "pen " "your " "heart " "to " re "ceive " "Him; "
  "\nWhile " "He " "is " pass "ing " "this " "way. "
  "\nJe" "sus " "is " pass "ing " "this " "way " 
  "\nTo" "day "  to "day: " 
  "\nWhile " "He " "is " "near, " "oh, " be "lieve " "Him, "
  "\nO" "pen " "your " "heart " "to " re "veive " "Him, "
  "\nFor " Je "sus " "is " pass "ing " "this " "way, " 
  "\nIs " pass "ing " "this " "way " to "day. "

  \set stanza = "3."
  "\nYes, " "He " "is " com "ing " "to " "bless " "you "
  "\nWhile " "in " con tri "tion " "you " "bow; "
  "\nCom" "ing " "from " "sin " "to " re "deem " "you, "
  "\nRea" "dy " "to " "save " "you " "now; "
  "\nCan " "you " re "fuse " "the " sal va "tion "
  "\nJe" "sus " "is " of fer "ing " "here? "
  "\nO" "pen " "your " "heart " "to " ad "mit " "Him, "
  "\nWhile " "He " "is " com "ing " "so " "near. "
  "\nJe" "sus " "is " pass "ing " "this " "way " 
  "\nTo" "day "  to "day: " 
  "\nWhile " "He " "is " "near, " "oh, " be "lieve " "Him, "
  "\nO" "pen " "your " "heart " "to " re "veive " "Him, "
  "\nFor " Je "sus " "is " pass "ing " "this " "way, " 
  "\nIs " pass "ing " "this " "way " to "day. "
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
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|."
                       }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|."
                       }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
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
            \new NullVoice = "aligner" \keepWithTag #'rep \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'rep \soprano \bar "|." } { \global \keepWithTag #'rep \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'rep \tenor } { \global \keepWithTag #'rep \bass }
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                % Joint soprano.alto staff
          \new Staff = women
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new NullVoice = aligner {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
            }
            \new Voice \partCombine
                       { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|."
                       }
                       { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|."
                       }
            \new Lyrics \lyricsto aligner  \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men
          <<
            \clef "bass"
            \new Voice \partCombine
                       { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
                       { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
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
        \new ChoirStaff <<
                                % Joint soprano.alto staff
          \new Staff = women
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new NullVoice = aligner {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
            }
            \new Voice \partCombine
                       { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|."
                       }
                       { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|."
                       }
            \new Lyrics \lyricsto aligner  \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men
          <<
            \clef "bass"
            \new Voice \partCombine
                       { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
                       { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
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
