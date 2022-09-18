\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, would you be Ready?"
  subtitle    = "Sankey No. 454"
  subsubtitle = "C. C. No. 71"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ida L. Reed."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key bes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3
  \mark \markup { \box "B" }    s2.*3
  \mark \markup { \box "C" }    s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3
  \mark \markup { \box "E" }    s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 | f8 g f d f bes | d4 c8 bes4 8 | bes8 a g bes4 g8
  \tag #'dash    {f4.~4 \slurDashed 16(16) \slurSolid}
  \tag #'(v2 v4) {f4.~4             8                }
  \tag #'(v1 v3) {f4.~4             16 16            }
  \tag #'dash       {d8 e d \slurDashed e(a) \slurSolid g}
  \tag #'v1         {d8 e d             e(a)            g}
  \tag #'(v2 v3 v4) {d8 e d             e a             g}
  \tag #'dash       {g4 f8 4 \slurDashed bes16(16) \slurSolid}
  \tag #'(v2 v3 v4) {g4 f8 4             8                   }
  \tag #'v1         {g4 f8 4             bes16 16            }
  bes8 a g a4 g8 | f4.~4 \bar "||" 8^\markup\smallCaps Chorus. | c'4.~8 d c | bes16 f4.~8. \bar "|" \break bes8
  bes8 8 8 d c8. g16 | a4(bes8 c4) f,8 | d'4.~8 ees d
  c16 g4.~8. bes8 | f16 bes8. d8 c8. bes16 a8 | bes4.~4
}

alto = \relative {
  \autoBeamOff
  d'8 | d ees d bes d d | f4 ees8 d4 f8 | g8 f ees g4 ees8
  \tag #'dash    {d4.~4 \slurDashed d16(16) \slurSolid} % B
  \tag #'(v2 v4) {d4.~4             d8                }
  \tag #'(v1 v3) {d4.~4             d16 16            }
  \tag #'dash       {d8 c b \slurDashed c(ees) \slurSolid ees}
  \tag #'v1         {d8 c b             c(ees)            ees}
  \tag #'(v2 v3 v4) {d8 c b             c ees             ees}
  \tag #'dash       {ees4 8 d4 \slurDashed f16(16) \slurSolid}
  \tag #'(v2 v3 v4) {ees4 8 d4             f8                }
  \tag #'v1         {ees4 8 d4             f16 16            }
  f8 8 8 4 e8 | f4.~4 8 | ees4.~8 f ees | d16 4.~8. 8 % C
  d8 8 8 e8 8. 16 | f4(e8 f4) 8 | f4.~8 g f |
  ees16 4.~8. 8 | f16 d8. f8 ees8. d16 ees8 | d4 ees8 d4
}

tenor = \relative {
  \autoBeamOff
  bes8 | 8 8 8 f bes bes | bes4 f8 4 bes8 | bes8 8 8 ees4 bes8
  \tag #'dash    {bes4.~4 \slurDashed 16(16) \slurSolid} % B
  \tag #'(v2 v4) {bes4.~4             8                }
  \tag #'(v1 v3) {bes4.~4             16 16            }
  \tag #'dash       {a8 8 gis \slurDashed a(c) \slurSolid a}
  \tag #'v1         {a8 8 gis             a(c)            a}
  \tag #'(v2 v3 v4) {a8 8 gis             a c             a}
  \tag #'dash       {bes4 c8 bes4 \slurDashed d16(16) \slurSolid}
  \tag #'(v2 v3 v4) {bes4 c8 bes4             d8                }
  \tag #'v1         {bes4 c8 bes4             d16 16            }
  d8 8 8 c4 bes8 | a4.~4 r8 | r4 a8 a bes a | bes16 8. 8 16 8. bes8 % C
  g8 bes d bes g8. c16 | 4 8 4 r8 | r4 bes8 8 8 8
  g16 c8. 8 16 8. cis8 | d16 bes8. 8 a8. bes16 c8 | bes4 g8 f4
}

bass = \relative {
  \autoBeamOff
  bes,8 | 8 8 8 8 8 8 | 4 8 4 d8 | ees8 8 8 4 8 |
  \tag #'dash    {bes4.~4 \slurDashed 16(16) \slurSolid} % B
  \tag #'(v2 v4) {bes4.~4             8                }
  \tag #'(v1 v3) {bes4.~4             16 16            }
  \tag #'dash       {f'8 8 8 \slurDashed 8(8) \slurSolid 8}
  \tag #'v1         {f8  8 8             4               8}
  \tag #'(v2 v3 v4) {f8  8 8             8 8             8}
  \tag #'dash       {bes,4 8 4 \slurDashed 16(16) \slurSolid}
  \tag #'(v2 v3 v4) {bes4  8 4             8                }
  \tag #'v1         {bes4  8 4             16 16            }
  g8 a bes c4 8 | f4.~4 r8 | r4 8 8 8 8 | bes,16 8. 8 16 8. 8 | % C
  g'8 8 8 c,8 8. 16 | f4 g8 a4 r8 | r4 bes8 8 8 bes, |
  ees16 8. 8 16 8. e8 | f16 8. 8 8. 16 8 | bes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh would __ you be rea -- dy __
  If Je -- sus should call you to -- day? __
  Oh, would __ you be rea -- dy, __
  Be rea -- dy His call to o -- bey?
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ 
  Oh, would _ _ _ _ be rea -- dy
  _ _ _ _ _ _ _ _ to -- day?
  Oh, would _ _ _ _ be rea -- dy,
  _ _ _ _ _ _ _ _ o -- bey?
}

chorusMenSingle = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Oh, would _ _ _ _ be rea -- dy
  _ _ _ _ _ _ _ _ to -- day?
  Oh, would _ _ _ _ be rea -- dy,
  _ _ _ _ _ _ _ _ o -- bey?
  
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ 
  Oh, would _ _ _ _ be rea -- dy
  _ _ _ _ _ _ _ _ to -- day?
  Oh, would _ _ _ _ be rea -- dy,
  _ _ _ _ _ _ _ _ o -- bey?
  
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Oh, would _ _ _ _ be rea -- dy
  _ _ _ _ _ _ _ _ to -- day?
  Oh, would _ _ _ _ be rea -- dy,
  _ _ _ _ _ _ _ _ o -- bey?
  
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Oh, would _ _ _ _ be rea -- dy
  _ _ _ _ _ _ _ _ to -- day?
  Oh, would _ _ _ _ be rea -- dy,
  _ _ _ _ _ _ _ _ o -- bey?
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  If Je -- sus should call you to -- day, dear friend,
  To stand at His Judg -- ment -- seat, __
  \nom And you \yesm knew that this hour your life would end,
  \nom Would the \yesm sum -- mons be sad or sweet?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  If Je -- sus should call you to -- day, to -- day,
  Oh, what would your an -- swer be? __
  Could you with \nom re -- joic -- ing \yesm His voice o -- bey.
  Be glad His dear face to see?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, would you be rea -- dy to lay life down,
  If Je -- su whould come to -- day? __
  \nom Would you know there a -- wait -- eth \yesm for you a crown
  That ne -- ver shall fade a -- way?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be rea -- dy, be rea -- dy! you know not when
  The sum -- mons to you may come. __
  When you shall be \nom missed from \yesm the haunts of men,
  And en -- ter your fi -- nal doom.
}
  
wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "If " Je "sus " "should " "call " "you " to "day, " "dear " "friend, "
  "\nTo " "stand " "at " "His " Judg ment "seat, " 
  "\nAnd " "you " "knew " "that " "this " "hour " "your " "life " "would " "end, "
  "\nWould " "the " sum "mons " "be " "sad " "or " "sweet? "
  "\nOh " "would "  "you " "be " rea "dy " 
  "\nIf " Je "sus " "should " "call " "you " to "day? " 
  "\nOh, " "would "  "you " "be " rea "dy, " 
  "\nBe " rea "dy " "His " "call " "to " o "bey?\n"

  \set stanza = "2."
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day, "
  "\nOh, " "what " "would " "your " an "swer " "be? " 
  "\nCould " "you " "with " re joic "ing " "His " "voice " o "bey. "
  "\nBe " "glad " "His " "dear " "face " "to " "see? "
  "\nOh " "would "  "you " "be " rea "dy " 
  "\nIf " Je "sus " "should " "call " "you " to "day? " 
  "\nOh, " "would "  "you " "be " rea "dy, " 
  "\nBe " rea "dy " "His " "call " "to " o "bey?\n"

  \set stanza = "3."
  "\nOh, " "would " "you " "be " rea "dy " "to " "lay " "life " "down, "
  "\nIf " Je "su " "whould " "come " to "day? " 
  "\nWould " "you " "know " "there " a wait "eth " "for " "you " "a " "crown "
  "\nThat " ne "ver " "shall " "fade " a "way? "
  "\nOh " "would "  "you " "be " rea "dy " 
  "\nIf " Je "sus " "should " "call " "you " to "day? " 
  "\nOh, " "would "  "you " "be " rea "dy, " 
  "\nBe " rea "dy " "His " "call " "to " o "bey?\n"

  \set stanza = "4."
  "\nBe " rea "dy, " "be " rea "dy! " "you " "know " "not " "when "
  "\nThe " sum "mons " "to " "you " "may " "come. " 
  "\nWhen " "you " "shall " "be " "missed " "from " "the " "haunts " "of " "men, "
  "\nAnd " en "ter " "your " fi "nal " "doom. "
  "\nOh " "would "  "you " "be " rea "dy " 
  "\nIf " Je "sus " "should " "call " "you " to "day? " 
  "\nOh, " "would "  "you " "be " rea "dy, " 
  "\nBe " rea "dy " "His " "call " "to " o "bey? "
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  "If " Je "sus " "should " "call " "you " to "day, " "dear " "friend, "
  "\nTo " "stand " "at " "His " Judg ment "seat, " 
  "\nAnd " "you " "knew " "that " "this " "hour " "your " "life " "would " "end, "
  "\nWould " "the " sum "mons " "be " "sad " "or " "sweet? "
  "\nOh " "would "  "you " "be " rea "dy " 
  "\nIf " Je "sus " "should " "call " "you " to "day? " 
  "\nOh, " "would "  "you " "be " rea "dy, " 
  "\nBe " rea "dy " "His " "call " "to " o "bey, " o "bey?\n"

  \set stanza = "2."
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day, "
  "\nOh, " "what " "would " "your " an "swer " "be? " 
  "\nCould " "you " "with " re joic "ing " "His " "voice " o "bey. "
  "\nBe " "glad " "His " "dear " "face " "to " "see? "
  "\nOh " "would "  "you " "be " rea "dy " 
  "\nIf " Je "sus " "should " "call " "you " to "day? " 
  "\nOh, " "would "  "you " "be " rea "dy, " 
  "\nBe " rea "dy " "His " "call " "to " o "bey, " o "bey?\n"

  \set stanza = "3."
  "\nOh, " "would " "you " "be " rea "dy " "to " "lay " "life " "down, "
  "\nIf " Je "su " "whould " "come " to "day? " 
  "\nWould " "you " "know " "there " a wait "eth " "for " "you " "a " "crown "
  "\nThat " ne "ver " "shall " "fade " a "way? "
  "\nOh " "would "  "you " "be " rea "dy " 
  "\nIf " Je "sus " "should " "call " "you " to "day? " 
  "\nOh, " "would "  "you " "be " rea "dy, " 
  "\nBe " rea "dy " "His " "call " "to " o "bey, " o "bey?\n"

  \set stanza = "4."
  "\nBe " rea "dy, " "be " rea "dy! " "you " "know " "not " "when "
  "\nThe " sum "mons " "to " "you " "may " "come. " 
  "\nWhen " "you " "shall " "be " "missed " "from " "the " "haunts " "of " "men, "
  "\nAnd " en "ter " "your " fi "nal " "doom. "
  "\nOh " "would "  "you " "be " rea "dy " 
  "\nIf " Je "sus " "should " "call " "you " to "day? " 
  "\nOh, " "would "  "you " "be " rea "dy, " 
  "\nBe " rea "dy " "His " "call " "to " o "bey, " o "bey? "
}

wordsTenorMidi = \lyricmode {
  \set stanza = "1."
  "If " Je "sus " "should " "call " "you " to "day, " "dear " "friend, "
  "\nTo " "stand " "at " "His " Judg ment "seat, " 
  "\nAnd " "you " "knew " "that " "this " "hour " "your " "life " "would " "end, "
  "\nWould " "the " sum "mons " "be " "sad " "or " "sweet? "
  "\nOh " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day? "
  "\nOh, " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nBe " rea "dy " "His " "call " "to " o "bey, " o "bey?\n"

  \set stanza = "2."
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day, "
  "\nOh, " "what " "would " "your " an "swer " "be? " 
  "\nCould " "you " "with " re joic "ing " "His " "voice " o "bey. "
  "\nBe " "glad " "His " "dear " "face " "to " "see? "
  "\nOh " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day? "
  "\nOh, " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nBe " rea "dy " "His " "call " "to " o "bey, " o "bey?\n"

  \set stanza = "3."
  "\nOh, " "would " "you " "be " rea "dy " "to " "lay " "life " "down, "
  "\nIf " Je "su " "whould " "come " to "day? " 
  "\nWould " "you " "know " "there " a wait "eth " "for " "you " "a " "crown "
  "\nThat " ne "ver " "shall " "fade " a "way? "
  "\nOh " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day? "
  "\nOh, " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nBe " rea "dy " "His " "call " "to " o "bey, " o "bey?\n"

  \set stanza = "4."
  "\nBe " rea "dy, " "be " rea "dy! " "you " "know " "not " "when "
  "\nThe " sum "mons " "to " "you " "may " "come. " 
  "\nWhen " "you " "shall " "be " "missed " "from " "the " "haunts " "of " "men, "
  "\nAnd " en "ter " "your " fi "nal " "doom. "
  "\nOh " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day? "
  "\nOh, " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nBe " rea "dy " "His " "call " "to " o "bey, " o "bey? "
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "If " Je "sus " "should " "call " "you " to "day, " "dear " "friend, "
  "\nTo " "stand " "at " "His " Judg ment "seat, " 
  "\nAnd " "you " "knew " "that " "this " "hour " "your " "life " "would " "end, "
  "\nWould " "the " sum "mons " "be " "sad " "or " "sweet? "
  "\nOh " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day? "
  "\nOh, " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nBe " rea "dy " "His " "call " "to " o "bey?\n"

  \set stanza = "2."
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day, "
  "\nOh, " "what " "would " "your " an "swer " "be? " 
  "\nCould " "you " "with " re joic "ing " "His " "voice " o "bey. "
  "\nBe " "glad " "His " "dear " "face " "to " "see? "
  "\nOh " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day? "
  "\nOh, " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nBe " rea "dy " "His " "call " "to " o "bey?\n"

  \set stanza = "3."
  "\nOh, " "would " "you " "be " rea "dy " "to " "lay " "life " "down, "
  "\nIf " Je "su " "whould " "come " to "day? " 
  "\nWould " "you " "know " "there " a wait "eth " "for " "you " "a " "crown "
  "\nThat " ne "ver " "shall " "fade " a "way? "
  "\nOh " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day? "
  "\nOh, " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nBe " rea "dy " "His " "call " "to " o "bey?\n"

  \set stanza = "4."
  "\nBe " rea "dy, " "be " rea "dy! " "you " "know " "not " "when "
  "\nThe " sum "mons " "to " "you " "may " "come. " 
  "\nWhen " "you " "shall " "be " "missed " "from " "the " "haunts " "of " "men, "
  "\nAnd " en "ter " "your " fi "nal " "doom. "
  "\nOh " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nIf " Je "sus " "should " "call " "you " to "day, " to "day? "
  "\nOh, " "would " "you " "be " rea "dy, " "be " rea "dy, "
  "\nBe " rea "dy " "His " "call " "to " o "bey? "
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
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
            \addlyrics \wordsBassMidi
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
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
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \soprano
                                      \keepWithTag #'v2 \soprano
                                      \keepWithTag #'v3 \soprano
                                      \keepWithTag #'v4 \soprano
                                      \bar "|."
                                    }
                                    { \global
                                      \keepWithTag #'v1 \alto \nl
                                      \keepWithTag #'v2 \alto \nl
                                      \keepWithTag #'v3 \alto \nl
                                      \keepWithTag #'v4 \alto \nl
                                      \bar "|."
                                    }
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
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \tenor
                                      \keepWithTag #'v2 \tenor
                                      \keepWithTag #'v3 \tenor
                                      \keepWithTag #'v4 \tenor
                                    }
                                    { \global
                                      \keepWithTag #'v1 \bass
                                      \keepWithTag #'v2 \bass
                                      \keepWithTag #'v3 \bass
                                      \keepWithTag #'v4 \bass
                                    }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
            }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMenSingle }
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
