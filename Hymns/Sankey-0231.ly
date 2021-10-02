\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hark, Hark! my Soul!"
  subtitle    = "Sankey No. 231"
  subsubtitle = "Sankey 880 No. 361"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{"Arr. by" \smallCaps "C. C. Converse" and \smallCaps "Ira D. Sankey."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "F. W. Faber."
  meter       = \markup\smallCaps "11.10"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*3
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*3 s2
  \mark \markup { \box "D" } s2 s1*3
  \mark \markup { \box "E" }    s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  fis'4^\markup\italic Moderato. 8. e16 d4. e8
  fis8 a b d a4 fis
  fis4 8. e16 d4. e8
  fis8 b a fis e2 % B
  fis4 8. e16 d4. e8
  fis8 a  b d a4 fis
  a4 b8 a a fis d e % C
  fis4 e d2 \bar "||"
  a'4^\markup\smallCaps Chorus. b8 cis d4. a8
  b8 a b cis \bar "|" \break d4 a
  d4 8 cis d a g fis % D
  b4 e,4 2
  fis4 8 e d4. e8
  fis8 a b d a4 fis % E
  a4 b8 a fis a b d
  d4 cis d2
}

alto = \relative {
  \autoBeamOff
  d'4 8. a16 4. cis8
  d8 fis g g fis4 d
  d4 8. a16 4. cis8
  d8 8 8 8 cis2 % B
  d4 8. a16 4. cis8
  d8 fis g g fis4 d
  fis4 g8 fis fis d d d % C
  d4 cis8 a8 2 \bar "||"
  d4 g8 8 fis4. 8
  g8 a g g fis4 4
  fis4 8 e fis d cis d % D
  d4 4 cis2
  d4 8 cis a4. cis8
  d8 fis g g fis4 d % E
  fis4 g8 fis d fis g g
  fis4 e8[g] fis2
}

tenor = \relative {
  \autoBeamOff
  a4 8. g16 f4. a8
  a8 d d a d4 a
  a4 8. g16 fis4. a8
  a8 g fis a a2 % B
  a4 8. g16 fis4. a8
  a8 d d b d4 a
  d4 8 8 8 a a b % C
  a4 g fis2
  d'4 8 a8 4. d8
  d8 8 8 a a4 d
  a4 8 8 8 8 8 8 % D
  g4 b a2
  a4 8 g fis4. a8
  a8 d d b d4 a % E
  d4 8 8 a d d b
  a4 4 2
}

bass = \relative {
  \autoBeamOff
  d4 8. 16 4. a8
  d8 8 8 8 4 4
  d4 8. 16 4. a8
  d8 8 8 8 a2 % B
  d4 8. 16 4. a8
  d8 8 8 8 4 4
  d4 8 8 8 8 fis g % C
  a4 a, d2
  fis4 g8 e d4. 8
  g8 fis g e e4 4
  d4 8 e fis fis e d % D
  g,4 gis a2
  d4 8 a d4. a8
  d8 8 8 8 4 4 % E
  d4 8 8 8 8 g g
  a4 a, d2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  An -- gels, sing on! your faith -- ful watch -- es keep -- ing;
  Sing us sweet frag -- ments of the songs a -- bove,
  Till morn -- ing's joy shall end the night of weep -- ing,
  And life's long shad -- ows break in cloud -- less love.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark, hark! my soul! an -- gel -- ic songs are swell -- ing
  O'er earth's green fields and o -- cean's wave -- beat shore;
  How sweet the truth those bless -- ed strains are tell -- ing
  Of that new life when sin shall be no more.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Far, far a -- way, like bells at ev -- 'ning peal -- ing,
  The voice of Je -- sus sounds o'er land and sea,
  And la -- den souls, by thou -- sands meek -- ly steal -- ing,
  Kind Shep -- herd, turn their wear -- y steps to Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ward we go, for still we hear them sing -- ing,
  "\"Come," wea -- ry souls; for Je -- sus bids you "come;\""
  And thro' the dark, its ech -- oes sweet -- ly ring -- ing,
  The mu -- sic of the Gos -- pel leads us home.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hark, " "hark! " "my " "soul! " an gel "ic " "songs " "are " swell "ing "
  "\nO'er " "earth's " "green " "fields " "and " o "cean's " wave "beat " "shore; "
  "\nHow " "sweet " "the " "truth " "those " bless "ed " "strains " "are " tell "ing "
  "\nOf " "that " "new " "life " "when " "sin " "shall " "be " "no " "more. "
  "\nAn" "gels, " "sing " "on! " "your " faith "ful " watch "es " keep "ing; "
  "\nSing " "us " "sweet " frag "ments " "of " "the " "songs " a "bove, "
  "\nTill " morn "ing's " "joy " "shall " "end " "the " "night " "of " weep "ing, "
  "\nAnd " "life's " "long " shad "ows " "break " "in " cloud "less " "love. "

  \set stanza = "2."
  "\nFar, " "far " a "way, " "like " "bells " "at " ev "'ning " peal "ing, "
  "\nThe " "voice " "of " Je "sus " "sounds " "o'er " "land " "and " "sea, "
  "\nAnd " la "den " "souls, " "by " thou "sands " meek "ly " steal "ing, "
  "\nKind " Shep "herd, " "turn " "their " wear "y " "steps " "to " "Thee. "
  "\nAn" "gels, " "sing " "on! " "your " faith "ful " watch "es " keep "ing; "
  "\nSing " "us " "sweet " frag "ments " "of " "the " "songs " a "bove, "
  "\nTill " morn "ing's " "joy " "shall " "end " "the " "night " "of " weep "ing, "
  "\nAnd " "life's " "long " shad "ows " "break " "in " cloud "less " "love. "

  \set stanza = "3."
  "\nOn" "ward " "we " "go, " "for " "still " "we " "hear " "them " sing "ing, "
  "\n\"Come, " wea "ry " "souls; " "for " Je "sus " "bids " "you " "come;\" "
  "\nAnd " "thro' " "the " "dark, " "its " ech "oes " sweet "ly " ring "ing, "
  "\nThe " mu "sic " "of " "the " Gos "pel " "leads " "us " "home. "
  "\nAn" "gels, " "sing " "on! " "your " faith "ful " watch "es " keep "ing; "
  "\nSing " "us " "sweet " frag "ments " "of " "the " "songs " a "bove, "
  "\nTill " morn "ing's " "joy " "shall " "end " "the " "night " "of " weep "ing, "
  "\nAnd " "life's " "long " shad "ows " "break " "in " cloud "less " "love. "
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
          \new Staff = nass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
