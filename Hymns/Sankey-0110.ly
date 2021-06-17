\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Day-Star hath Risen."
  subtitle    = "Sankey No. 110"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins"
%  arranger    = "arranger"
%  opus        = "opus"
  
  poet        = \markup\smallCaps "Fanny J. Crosby."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key e \major
  \time 6/8
  \tempo 4=120
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2. s2. s2 s8.
  \mark \markup { \box "B" } s16 s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*4
  \mark \markup { \box "E" } s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  \autoBeamOff
  gis'16[a]
  b8 8 8 cis b8. e16
  e8 dis cis b4 8
  b8 a gis a dis8. \bar "|" \break \partial 16 cis16
  cis8 fis, cis' b4 8 % B
  b8 ais b cis b8. e16
  e8 dis cis b4 8
  cis8 dis cis b e8. a,16 % C
  gis8 8. fis16 e4\fermata \bar "||" \partial 8 b'8^\markup\smallCaps Chorus.
  b4.(gis8) a cis
  b4.(e) % D
  cis4.(e8) dis cis
  b4.~4 8
  dis4.~8 cis dis
  e4. b4 a8 % E
  gis4.~8 fis gis
  e4.~4
}

alto = \relative {
  \autoBeamOff
  e'16[fis]
  gis8 8 8 a gis8. b16
  cis8 b a gis4 8
  gis8 fis e fis8 8. e16
  e8 8 8 d4 a'8 % B
  gis8 f gis a gis8. b16
  cis8 b a gis4 8
  a8 b a gis e8. 16 % C
  e8 8. dis16 e4\fermata gis8
  gis4.(e8) fis a
  gis4.~4. % D
  a4.(cis8) b a
  g4.~4 8
  a4.~8 8 8
  gis4. e4 8 % E
  e4.(dis8) 8 8
  b8(a cis b4)
}

tenor = \relative {
  b8
  b8 e8 8 8 8. 16
  e8 8 8 4 b8
  b8 8 8 8 8. 16
  ais8 8 8 b4 8 % B
  b8 cis b e8 8. 16
  e8 8 8 4 8
  e8 8 8 8 b8. cis16 % C
  b8 8. a16 gis4\fermata b8
  b8 e8 8 b b e
  e4 8 b4. % D
  a8 cis e cis dis e
  cis4 8 4 b8
  b8 8 8 8 8 8
  b8 8 8 d d cis % E
  b8 ais ais b a b
  gis8(fis) b gis4
}

bass= \relative {
  e8
  e8 8 8 8 8. gis16
  a8 8 8 e4 8
  b8 8 8 8 8. 16
  fis'8 8 8 b,4 dis8 % B
  e8 8 8 8 8. gis16
  a8 8 8 e4 8
  a8 8 8 e8 gis8. fis16 % C
  b8 8. b,16 e4\fermata 8
  e8 8 8 8 8 8
  e4 8 4. % D
  a8 8 8 8 8 8
  e4 8 4 8
  b8 8 8 8 8 8
  e8 8 8 gis,8 8 a % E
  b8 cis cis b b b
  e4.~4
}

chorus = \lyricmode {
  It shi -- neth for me __
  Shi -- neth for me. __
  The Day -- Star hath ris -- en.
  It shi -- neth for me. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  It shi -- neth, it shi -- neth for me, for me,
  Shi -- neth, it shi -- neth for me, for me;
  The Day -- Star, the Day -- Star hath ris -- en,
  hath ris -- en,
  It shi -- neth, it shi -- neth for me, for me.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The Day -- Star hath ri -- sen,
  the night -- clouds have flown;
  No long -- er in sad -- ness
  I wan -- der a -- lonel
  Its beams in the val -- ley
  re -- flect -- ed I see:
  The Day -- Star hath ris -- en—
  it shi -- neth for me.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The Day -- Star hath ris -- en
  in beau -- ty sub -- lime,
  To cheer and il -- lu -- mine each far dis -- tant clime;
  The re -- gions in dark -- ness its beau -- ty shall see:
  The Day -- Star hath ris -- en— it shi -- neth for me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The Day -- Star hath ri -- sen,
  it shi -- neth for all;
  O'er paths that are lone -- ly its bright -- ness will fall;
  O bless -- ed Re -- deem -- er, all hon -- our to Thee,
  Thou Day -- Star of glo -- ry that shin -- eth for me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " Day "Star " "hath " ri "sen, "
  "\nthe " night "clouds " "have " "flown; "
  "\nNo " long "er " "in " sad "ness "
  "\nI " wan "der " a "lonel "
  "\nIts " "beams " "in " "the " val "ley "
  "\nre" flect "ed " "I " "see: "
  "\nThe " Day "Star " "hath " ris "en— "
  "\nit " shi "neth " "for " "me. "
  "\nIt " shi "neth " "for " "me " 
  "\nShi" "neth " "for " "me. " 
  "\nThe " Day "Star " "hath " ris "en. "
  "\nIt " shi "neth " "for " "me. " 

  \set stanza = "2."
  "\nThe " Day "Star " "hath " ris "en "
  "\nin " beau "ty " sub "lime, "
  "\nTo " "cheer " "and " il lu "mine " "each " "far " dis "tant " "clime; "
  "\nThe " re "gions " "in " dark "ness " "its " beau "ty " "shall " "see: "
  "\nThe " Day "Star " "hath " ris "en— " "it " shi "neth " "for " "me. "
  "\nIt " shi "neth " "for " "me " 
  "\nShi" "neth " "for " "me. " 
  "\nThe " Day "Star " "hath " ris "en. "
  "\nIt " shi "neth " "for " "me. " 

  \set stanza = "3."
  "\nThe " Day "Star " "hath " ri "sen, "
  "\nit " shi "neth " "for " "all; "
  "\nO'er " "paths " "that " "are " lone "ly " "its " bright "ness " "will " "fall; "
  "\nO " bless "ed " Re deem "er, " "all " hon "our " "to " "Thee, "
  "\nThou " Day "Star " "of " glo "ry " "that " shin "eth " "for " "me! "
  "\nIt " shi "neth " "for " "me " 
  "\nShi" "neth " "for " "me. " 
  "\nThe " Day "Star " "hath " ris "en. "
  "\nIt " shi "neth " "for " "me. " 
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "The " Day "Star " "hath " ri "sen, "
  "\nthe " night "clouds " "have " "flown; "
  "\nNo " long "er " "in " sad "ness "
  "\nI " wan "der " a "lonel "
  "\nIts " "beams " "in " "the " val "ley "
  "\nre" flect "ed " "I " "see: "
  "\nThe " Day "Star " "hath " ris "en— "
  "\nit " shi "neth " "for " "me. "
  "\nIt " shi "neth, " "it " shi "neth " "for " "me, " "for " "me, "
  "\nShi" "neth, " "it " shi "neth " "for " "me, " "for " "me; "
  "\nThe " Day "Star, " "the " Day "Star " "hath " ris "en, "
  "\nhath " ris "en, "
  "\nIt " shi "neth, " "it " shi "neth " "for " "me, " "for " "me. "

  \set stanza = "2."
  "\nThe " Day "Star " "hath " ris "en "
  "\nin " beau "ty " sub "lime, "
  "\nTo " "cheer " "and " il lu "mine " "each " "far " dis "tant " "clime; "
  "\nThe " re "gions " "in " dark "ness " "its " beau "ty " "shall " "see: "
  "\nThe " Day "Star " "hath " ris "en— " "it " shi "neth " "for " "me. "
  "\nIt " shi "neth, " "it " shi "neth " "for " "me, " "for " "me, "
  "\nShi" "neth, " "it " shi "neth " "for " "me, " "for " "me; "
  "\nThe " Day "Star, " "the " Day "Star " "hath " ris "en, "
  "\nhath " ris "en, "
  "\nIt " shi "neth, " "it " shi "neth " "for " "me, " "for " "me. "

  \set stanza = "3."
  "\nThe " Day "Star " "hath " ri "sen, "
  "\nit " shi "neth " "for " "all; "
  "\nO'er " "paths " "that " "are " lone "ly " "its " bright "ness " "will " "fall; "
  "\nO " bless "ed " Re deem "er, " "all " hon "our " "to " "Thee, "
  "\nThou " Day "Star " "of " glo "ry " "that " shin "eth " "for " "me! "
  "\nIt " shi "neth, " "it " shi "neth " "for " "me, " "for " "me, "
  "\nShi" "neth, " "it " shi "neth " "for " "me, " "for " "me; "
  "\nThe " Day "Star, " "the " Day "Star " "hath " ris "en, "
  "\nhath " ris "en, "
  "\nIt " shi "neth, " "it " shi "neth " "for " "me, " "for " "me. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
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
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice \tenor
            \addlyrics \chorusMen
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice { \tenor \tenor \tenor }
            \addlyrics { \chorusMen \chorusMen \chorusMen }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice { \tenor \tenor \tenor }
            \addlyrics { \chorusMen \chorusMen \chorusMen }
          >>
        >>
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
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff =soprano
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff =soprano
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
            \addlyrics \wordsMidiMen
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
