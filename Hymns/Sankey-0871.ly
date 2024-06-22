\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ive Found a Friend."
  subtitle    = "Sankey No. 871"
  subsubtitle = "Sankey 880 No. 294"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. G. Small."
  meter       = \markup\smallCaps "8.7.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  e'4 | 8. cis'16 4 d | cis8. b16 4 a | gis4. fis8 e8. fis16 | e4 a \bar "|" \break
  e4 | 8. cis'16 4 b8[cis] | d8. fis,16 4 a | e4. fis8 a8. gis16 | 4 a\fermata \bar "|" \break
  e4 | d'8. cis16 b4 e, | cis'8. b16 a4 gis | fis4. gis8 a8. cis16 | 4 b \bar "|" \break
  e,4 | 8. cis'16 4 b8[cis] | d8. fis,16 4 a | e4. fis8 a8. gis16 | 4 a\fermata
}

alto = \relative {
  cis'4 | 8. e16 4 fis | e8. d16 4 4 | 4. 8 8. 16 | cis4 4
  cis4 | 8. e16 4 d8[e] | fis8. d16 4 4 | cis4. 8 d8. 16 | d4 cis
  e4 | 8. 16 4 4 | 8. d16 cis4 e | d4. 8 dis8. 16 | e4 4
  d4 | cis8. e16 e4 d8[e] | fis8. d16 4 4 | cis4. 8 d8. 16 | 4 cis
}

tenor = \relative {
  a4 | 8. 16 4 4 | 8. gis16 4 fis | b4. a8 gis8. 16 | a4 e
  a4 | 8. 16 4 4 | 8. 16 4 fis | a4. 8 b8. 16 | 4 a_\fermata
  e4 | b'8. a16 gis4 e | a8. 16 4 4 | 4. gis8 fis8. a16 | 4 gis
  gis4 | a8. 16 4 4 | 8. 16 4 fis | a4. 8 b8. 16 | 4 a_\fermata
}

bass = \relative {
  a,4 | 8. 16  4 4 | e'8. 16 4 4 | 4. 8 8. 16 | a,4 4
  a4 | 8. 16 4 4 | d8. 16 4 4 | e4. 8 8. 16 | 4 a,_\fermata
  e'4 | 8. 16 4 4 | a,8. 16 4 cis | d4. 8 b8. 16 | e4 4
  e4 | a,8. 16 4 4 | d8. 16 4 4 | e4. 8 8. 16 | 4 a,_\fermata
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I've found a friend; oh, such a Friend!
  He loved me ere I knew Him;
  He drew me with the cords of love,
  And thus He bound me to Him.
  And round my heart still close -- ly twine
  Those ties which naught can sev -- er,
  For I am His, and He is mine,
  For ev -- er and for ev -- er!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I've found a friend; oh, such a Friend!
  He bled, He died to save me;
  And not a -- lone the gift of life,
  But His own self He gave me.
  Naught that I have my own I call,
  I hold it for the Giv -- er;
  My heart, my strength, my life, my all,
  Are His, and His for ev -- er!
  
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I've found a friend; oh, such a Friend!
  All power to Him is giv -- en,
  To guard me on my on -- ward course,
  And bring me safe to hea -- ven.
  "Th’ e" -- ter -- nal glo -- ries gleam a -- far,
  To nerve my faint en -- dea -- vour;
  So now to watch! to work! to war!
  And then— to rest for ev -- er!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I've found a friend; oh, such a Friend!
  So kind, and true, and ten -- der,
  So wise a Coun -- sel -- lor and Guide,
  So migh -- ty a De -- fend -- er!
  From Him, who loves me now so well,
  What power my soul can sev -- er?
  Shall life? or death? or earth? or hell?
  No! I am His for ev -- er!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I've " "found " "a " "friend; " "oh, " "such " "a " "Friend! "
  "\nHe " "loved " "me " "ere " "I " "knew " "Him; "
  "\nHe " "drew " "me " "with " "the " "cords " "of " "love, "
  "\nAnd " "thus " "He " "bound " "me " "to " "Him. "
  "\nAnd " "round " "my " "heart " "still " close "ly " "twine "
  "\nThose " "ties " "which " "naught " "can " sev "er, "
  "\nFor " "I " "am " "His, " "and " "He " "is " "mine, "
  "\nFor " ev "er " "and " "for " ev "er!\n"

  \set stanza = "2."
  "\nI've " "found " "a " "friend; " "oh, " "such " "a " "Friend! "
  "\nHe " "bled, " "He " "died " "to " "save " "me; "
  "\nAnd " "not " a "lone " "the " "gift " "of " "life, "
  "\nBut " "His " "own " "self " "He " "gave " "me. "
  "\nNaught " "that " "I " "have " "my " "own " "I " "call, "
  "\nI " "hold " "it " "for " "the " Giv "er; "
  "\nMy " "heart, " "my " "strength, " "my " "life, " "my " "all, "
  "\nAre " "His, " "and " "His " "for " ev "er!\n"
  
  \set stanza = "3."
  "\nI've " "found " "a " "friend; " "oh, " "such " "a " "Friend! "
  "\nAll " "power " "to " "Him " "is " giv "en, "
  "\nTo " "guard " "me " "on " "my " on "ward " "course, "
  "\nAnd " "bring " "me " "safe " "to " hea "ven. "
  "\nTh’ e" ter "nal " glo "ries " "gleam " a "far, "
  "\nTo " "nerve " "my " "faint " en dea "vour; "
  "\nSo " "now " "to " "watch! " "to " "work! " "to " "war! "
  "\nAnd " "then— " "to " "rest " "for " ev "er!\n"

  \set stanza = "4."
  "\nI've " "found " "a " "friend; " "oh, " "such " "a " "Friend! "
  "\nSo " "kind, " "and " "true, " "and " ten "der, "
  "\nSo " "wise " "a " Coun sel "lor " "and " "Guide, "
  "\nSo " migh "ty " "a " De fend "er! "
  "\nFrom " "Him, " "who " "loves " "me " "now " "so " "well, "
  "\nWhat " "power " "my " "soul " "can " sev "er? "
  "\nShall " "life? " "or " "death? " "or " "earth? " "or " "hell? "
  "\nNo! " "I " "am " "His " "for " ev "er! "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
