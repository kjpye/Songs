\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Like a Shepherd"
  subtitle    = "Sankey No. 101"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Victor H. Benke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Frances."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key a \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*3 s2 s8
  \mark \markup { \box "B" } s8 s2.*3 s2 s8
  \mark \markup { \box "C" } s8 s2.*3 s2 s8
  \mark \markup { \box "D" } s8 s2.*3 s2 s8
  \mark \markup { \box "E" } s8 s2.*3 s2 s8
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s8 s2.*17
  s4. \tempo 4=40 s4 \tempo 4=120 s8
  s2.
  s4. \tempo 4=40 s4 \tempo 4=120
}

soprano = \relative {
  e'8\omit\mf
  a8 b cis b a fis
  fis4. e4 8
  e8 gis b d8. cis16 bis8
  cis4.~4 \bar "|" \break \partial 8 e,8
  a8 b cis b a fis % B
  fis4. e4 fis8
  gis8 fis gis a gis a
  b4.~4 \bar "|" \break \partial 8 e,8^\markup\smallCaps Chorus.
  cis'8 b a cis b fis % C
  gis4(b8) e,4 8
  fis8. gis16 a8 a gis fis
  b4.~4 \bar "|" \break \partial 8 cis8
  cis8. b16 a8 d d cis % D
  b4. fis4 8
  e8. fis16 gis8 8 a b
  cis4.~4 \bar "|" \break \partial 8 cis8^\<
  cis8. 16 8\! e d cis % E
  fis,4. b4\fermata a8
  gis8. fis16 e8 e fis gis
  a4.~4\fermata
}

alto = \relative {
  e'8\omit\mf
  cis8 8 8 d d d
  c4. cis4 8
  d8 d gis gis8. 16 8
  a4.~4 cis,8
  cis8 8 8 d8 8 8 % B
  c4. cis4 8
  b8 8 8 dis dis dis
  e4(fis8 gis4) e8
  cis8 8 8 d8 8 8 % C
  d4. cis4 8
  dis8. 16 8 8 8 fis
  e4(fis8 gis4) e8
  e8. 16 8 a a fis % D
  fis4. b,4 8
  d8. 16 8 8 8 8
  e4.~4 a8^\<
  a8. 16 8\! g fis e % E
  d4. fis4\fermata 8
  d8. 16 8 8 8 8
  cis8( e d cis4\fermata)
}

tenor = \relative {
  e8\omit\mf
  e8 e eis fis a a
  dis,4. e4 a8
  gis8 b d fis8. e16 dis8
  e4.~4 a,8
  e8 e eis fis a a % B
  dis,4. e4 8
  e8 dis e fis b a
  gis4( a8 b4) e,8
  e8 e eis fis fis a % C
  b4(gis8) a4 8
  a8. gis16 fis8 cis' b a
  gis4(a8 b4) a8
  a8. b16 cis8 d d ais % D
  b4. a4 8
  gis8. a16 b8 8 a gis
  b4.~4 e8\omit\<
  e8. 16 8\! a, a a % E
  a4. d4\fermata b8
  b8. a16 gis8 8 a b
  a8 gis fis e4\fermata
}

bass= \relative {
  e8\omit\mf
  a,8 a a d fis d
  a4. 4 8
  e'8 8 8 8. 16 8
  a4.~4 8
  a,8 8 8 d fis d % B
  a4. 4 ais8
  b8 8 8 8 8 8
  e4.~4 8
  a,8 8 8 8 8 8 % C
  a4. 4 8
  b8. 16 8 8 8 dis
  e4.~4 a8
  a8. gis16 g8 fis fis e % D
  f4. 4 dis8
  e8. 16 8 8 8 8
  a,8 cis fis e4 a8\omit\<
  a8. 16 8\! cis, a a % E
  d4. 4\fermata dis8
  e8. 16 8 8 8 8
  a,4.~4\fermata
}

chorus = \lyricmode {
  By cool flow -- ing wa -- ters He leads them,
  Where pas -- tures are bloom -- ing and fair; __
  He gath -- ers the lambs in His bos -- om,
  And car -- ries them ten -- der -- ly there; __
  He gath -- ers the lambs in His bos -- om,
  And car -- ries them ten -- der -- ly there; __
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The Lord is our Strength and Re -- deem -- er,
  The Rock where in safe -- ty we hide;
  He feed -- eth His flock like a Shep -- herd,
  His love shall for -- ev -- er a -- bide.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The Lord is our Shield and De -- fend -- er,
  His eye nev -- er slum -- bers now sleeps;
  He feed -- eth His flock like a Shep -- herd,
  Their foot -- steps from wand -- 'ring He keeps.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The Lord is our Hope and Sal -- va -- tion;
  Oh, glo -- ry and praise to His name!
  He feed -- eth His flock like a Shep -- herd,
  The weak -- est His bless -- ings may claim.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord " "is " "our " "Strength " "and " Re deem "er, "
  "\nThe " "Rock " "where " "in " safe "ty " "we " "hide; "
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nHis " "love " "shall " for ev "er " a "bide. "
  "\nBy " "cool " flow "ing " wa "ters " "He " "leads " "them, "
  "\nWhere " pas "tures " "are " bloom "ing " "and " "fair; " 
  "\nHe " gath "ers " "the " "lambs " "in " "His " bos "om, "
  "\nAnd " car "ries " "them " ten der "ly " "there; " 
  "\nHe " gath "ers " "the " "lambs " "in " "His " bos "om, "
  "\nAnd " car "ries " "them " ten der "ly " "there; " 

  \set stanza = "2."
  "\nThe " "Lord " "is " "our " "Shield " "and " De fend "er, "
  "\nHis " "eye " nev "er " slum "bers " "now " "sleeps; "
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nTheir " foot "steps " "from " wand "'ring " "He " "keeps. "
  "\nBy " "cool " flow "ing " wa "ters " "He " "leads " "them, "
  "\nWhere " pas "tures " "are " bloom "ing " "and " "fair; " 
  "\nHe " gath "ers " "the " "lambs " "in " "His " bos "om, "
  "\nAnd " car "ries " "them " ten der "ly " "there; " 
  "\nHe " gath "ers " "the " "lambs " "in " "His " bos "om, "
  "\nAnd " car "ries " "them " ten der "ly " "there; " 

  \set stanza = "3."
  "\nThe " "Lord " "is " "our " "Hope " "and " Sal va "tion; "
  "\nOh, " glo "ry " "and " "praise " "to " "His " "name! "
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nThe " weak "est " "His " bless "ings " "may " "claim. "
  "\nBy " "cool " flow "ing " wa "ters " "He " "leads " "them, "
  "\nWhere " pas "tures " "are " bloom "ing " "and " "fair; " 
  "\nHe " gath "ers " "the " "lambs " "in " "His " bos "om, "
  "\nAnd " car "ries " "them " ten der "ly " "there; " 
  "\nHe " gath "ers " "the " "lambs " "in " "His " bos "om, "
  "\nAnd " car "ries " "them " ten der "ly " "there; " 
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
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
