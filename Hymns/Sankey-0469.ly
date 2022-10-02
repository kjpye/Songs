\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Welcome for me!"
  subtitle    = "Sankey No. 469"
  subsubtitle = "C. C. No. 104"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1.*2
  \mark \markup { \box "B" }    s1.*3
  \mark \markup { \box "C" }    s1.*3
  \mark \markup { \box "D" }    s1.*4
  \mark \markup { \box "E" }    s1.*3 s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  f'8. ees16 | d4 f bes d2 c8. bes16 | c4 bes g bes2 g8. 16 |
  f4 d f bes c d | c2.~2 f,8. ees16 | d4 f bes d2 c8. bes16 |
  c4 bes g bes2 a8. g16 | f4 bes d c g a | bes2.~2 r4 |
  f4.^\markup\smallCaps Chorus. 8 4 2 r4 | g4. a8 bes4 f2 4 | bes2 8 8 4 a bes | c2.^\< ~ c2^\> r4\! |
  d4 c bes f2 4 | d'4. c8 bes4 f2 4 | g4. a8 bes4 c g a | bes2.^\< ~ 2^\>
}

alto = \relative {
  \autoBeamOff \partial 4
  d'8. c16 | bes4 d d f2 8. 16 | ees4 g ees g2 ees8. 16 |
  d4 bes d f f f | f2.~2 d8. c16 | bes4 d d f2 8. 16 |
  ees4 g ees g2 f8. ees16 | d4 4 f ees ees ees | d2.~2 r4 |
  c4. d8 ees4 d2 r4 | ees4. 8 4 d2 4 | d2 8 8 ees4 4 4 | f2.~2 r4 |
  f4 ees d4 2 4 | f4. ees8 d4 2 4 | ees4. f8 4 e e ees | d2 ees4 d2
}

tenor = \relative {
  \autoBeamOff \partial 4
  f8. 16 | 4 bes f bes2 a8. bes16 | g4 bes bes bes2 8. 16 |
  bes4 f bes bes a bes | a2.~2 f8. 16 | f4 bes f bes2 a8. bes16 |
  g4 bes4 4 2 8. 16 | 4 f bes g c c | bes2.~2 r4 |
  a4. bes8 c4 bes2 r4 | bes4. 8 4 2 4 | 2 8 8 c4 4 bes | a2.~2 r4 |
  f4 4 4 bes2 4 | f4. 8 4 bes2 4 | bes4. c8 bes4 g c c | bes4(f) g f2 |
}

bass = \relative {
  \autoBeamOff \partial 4
  bes,8. 16 | 4 4 4 2 c8. d16 | ees4 4 4 2 8. 16 |
  bes4 4 4 d c bes | f'2.~2 f,8. 16 | bes4 4 4 2 c8. d16 |
  ees4 4 4 2 8. 16 | f4 d bes ees ees f | bes,2.~2 r4 |
  f'4. 8 4 bes,2 r4 | ees4. f8 g4 bes2 4 | g2 8 8 c,4 4 4 | f2.~2 r4 |
  bes,4 4 4 2 4 | bes4. 8 4 2 4 | ees4. 8 d4 c c f | bes,2.~2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Wel -- come for me, Sa -- viour, from Thee!
  A wel -- come, glad wel -- come for me!
  Now, like a dove, I rest in Thy love,
  And find a sweet re -- fuge in Thee. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ in Thee.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Like a bird in the deep, far a -- way from its nest,
  I had wan -- dered, my Sa -- viour, from Thee;
  But Thy kind, lov -- ing voice called me home to Thy breast,
  And I knew there was wel -- come for me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I am safe in the Ark; I have fold -- ed my wings
  On the bo -- som of mer -- cy Di -- vine;
  I am filled with de -- light by Thy pres -- ence so bright,
  And the joy that will ev -- er be mine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Now in Je -- sus I rest, and I dread not the storm,
  Tho' a -- round me the sur -- ges may roll;
  I will look to the skies, where the ady nev -- er dies,
  I will sing of the joy in my soul.
}
  
wordsMidiSB = \lyricmode {
  \set stanza = "1."
  "Like " "a " "bird " "in " "the " "deep, " "far " a "way " "from " "its " "nest, "
  "\nI " "had " wan "dered, " "my " Sa "viour, " "from " "Thee; "
  "\nBut " "Thy " "kind, " lov "ing " "voice " "called " "me " "home " "to " "Thy " "breast, "
  "\nAnd " "I " "knew " "there " "was " wel "come " "for " "me! "
  "\nWel" "come " "for " "me, " Sa "viour, " "from " "Thee! "
  "\nA " wel "come, " "glad " wel "come " "for " "me! "
  "\nNow, " "like " "a " "dove, " "I " "rest " "in " "Thy " "love, "
  "\nAnd " "find " "a " "sweet " re "fuge " "in " "Thee.\n" 

  \set stanza = "2."
  "\nI " "am " "safe " "in " "the " "Ark; " "I " "have " fold "ed " "my " "wings "
  "\nOn " "the " bo "som " "of " mer "cy " Di "vine; "
  "\nI " "am " "filled " "with " de "light " "by " "Thy " pres "ence " "so " "bright, "
  "\nAnd " "the " "joy " "that " "will " ev "er " "be " "mine. "
  "\nWel" "come " "for " "me, " Sa "viour, " "from " "Thee! "
  "\nA " wel "come, " "glad " wel "come " "for " "me! "
  "\nNow, " "like " "a " "dove, " "I " "rest " "in " "Thy " "love, "
  "\nAnd " "find " "a " "sweet " re "fuge " "in " "Thee.\n" 

  \set stanza = "3."
  "\nNow " "in " Je "sus " "I " "rest, " "and " "I " "dread " "not " "the " "storm, "
  "\nTho' " a "round " "me " "the " sur "ges " "may " "roll; "
  "\nI " "will " "look " "to " "the " "skies, " "where " "the " "ady " nev "er " "dies, "
  "\nI " "will " "sing " "of " "the " "joy " "in " "my " "soul. "
  "\nWel" "come " "for " "me, " Sa "viour, " "from " "Thee! "
  "\nA " wel "come, " "glad " wel "come " "for " "me! "
  "\nNow, " "like " "a " "dove, " "I " "rest " "in " "Thy " "love, "
  "\nAnd " "find " "a " "sweet " re "fuge " "in " "Thee. " 
}

wordsMidiAT = \lyricmode {
  \set stanza = "1."
  "Like " "a " "bird " "in " "the " "deep, " "far " a "way " "from " "its " "nest, "
  "\nI " "had " wan "dered, " "my " Sa "viour, " "from " "Thee; "
  "\nBut " "Thy " "kind, " lov "ing " "voice " "called " "me " "home " "to " "Thy " "breast, "
  "\nAnd " "I " "knew " "there " "was " wel "come " "for " "me! "
  "\nWel" "come " "for " "me, " Sa "viour, " "from " "Thee! "
  "\nA " wel "come, " "glad " wel "come " "for " "me! "
  "\nNow, " "like " "a " "dove, " "I " "rest " "in " "Thy " "love, "
  "\nAnd " "find " "a " "sweet " re "fuge " "in " "thee, " "in " "Thee.\n"

  \set stanza = "2."
  "\nI " "am " "safe " "in " "the " "Ark; " "I " "have " fold "ed " "my " "wings "
  "\nOn " "the " bo "som " "of " mer "cy " Di "vine; "
  "\nI " "am " "filled " "with " de "light " "by " "Thy " pres "ence " "so " "bright, "
  "\nAnd " "the " "joy " "that " "will " ev "er " "be " "mine. "
  "\nWel" "come " "for " "me, " Sa "viour, " "from " "Thee! "
  "\nA " wel "come, " "glad " wel "come " "for " "me! "
  "\nNow, " "like " "a " "dove, " "I " "rest " "in " "Thy " "love, "
  "\nAnd " "find " "a " "sweet " re "fuge " "in " "thee, " "in " "Thee.\n"

  \set stanza = "3."
  "\nNow " "in " Je "sus " "I " "rest, " "and " "I " "dread " "not " "the " "storm, "
  "\nTho' " a "round " "me " "the " sur "ges " "may " "roll; "
  "\nI " "will " "look " "to " "the " "skies, " "where " "the " "ady " nev "er " "dies, "
  "\nI " "will " "sing " "of " "the " "joy " "in " "my " "soul. "
  "\nWel" "come " "for " "me, " Sa "viour, " "from " "Thee! "
  "\nA " wel "come, " "glad " wel "come " "for " "me! "
  "\nNow, " "like " "a " "dove, " "I " "rest " "in " "Thy " "love, "
  "\nAnd " "find " "a " "sweet " re "fuge " "in " "thee, " "in " "Thee. "
}

\book {
  \bookOutputSuffix "midiSB"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSB
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
  \bookOutputSuffix "midiAT"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidiAT
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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
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
