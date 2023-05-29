\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Beloved of my Heart."
  subtitle    = "Sankey No. 646"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Geo. D. Mackay."
  meter       = \markup\smallCaps "L. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*2 s2
  \textMark \markup { \box \bold "D" } s2 s1*2
  \textMark \markup { \box \bold "E" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 | 4. a8 g c b8. a16 | g2. 4 | f4. 8 e f g8. d16 | e2. \bar "|" \break
  g4 | 4. a8 g c b8. a16 | g2. a4 | b4. d8 c b8 8. a16 | g2 r8 \break
  \section \sectionLabel \markup\smallCaps Chorus.
  g8 b8. c16 | d2~8 b c8. d16 | c2. g4 | a4. b8 \bar "|" \break
  c16 b8. c8. e16 | d2~8 g, a8. g16 | e'2~8 c d8. c16 |
  a2. c4 | g4. a8 b a g d' | c2.\fermata
}

alto = \relative {
  \autoBeamOff
  e'4 | 4. f8 e e dis8. 16 | e2. 4 | d4. 8 cis d b8. 16 | c2.
  e4 | 4. f8 e e cis8. f16 | e2. g4 | 4. 8 8 8 fis8. 16 | g2 r8 \section
  g8 f8. e16 | f2~8 8 e8. f16 | e2. 4 | f4. 8
  fis16 8. 8. 16 | g2~8 f8 8. 16 | g2~8 e f8. e16 |
  f2. 4 | e4. 8 f f f f | e f e d e4\fermata
}

tenor = \relative {
  \autoBeamOff
  c'4 | 4. 8 8 g fis8. a16 | c2. g4 | 4. 8 8 8 d8. g16 | 2.
  c4 | 4. 8 8 g fis8. a16 | c2. e4 | d4. b8 e d d8. c16 | b2 r8 \section
  r8 r4 | r8 b8 8. 16 8 r r4 | r8 g8 8. 16 4 c | 4. b8
  a16 fis8. a c16 | b8. 16 8. 16 8 r r4 | r8 c8 8. 16 8 r r4 |
  r8 c8 8. 16 4 4 | 4. 8 d c b g | g a g fis g4\fermata
}

bass = \relative {
  \autoBeamOff
  c4 | 4. 8 8 8 8. 16 | 2. 4 | g4. 8 8 8 8. 16 | c2.
  c4 | 4. 8 8 8 8. 16 | 2. cis4 | d4. 8 8 8 8. 16 | g2 r8 \section
  r8 r4 | r8 g8 8. 16 8 r r4 | r8 c,8 8. 16 4 4 | f4. 8
  d16 8. 8. 16 | g8. 16 8. 16 8 r r4 | r8 c,8 8. 16 8 r r4 |
  r8 f8 8. 16 4 a | g4. 8 8 8 8 8 | c,2.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see; __
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me. __
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 32 _
  Let o -- thers dream of jew -- elled walls,
  _ _ _ _ _ _ _ _ so fair to see;
  No glo -- rious scene my soul en -- thralls,
  _ _ _ _ _ _ _ _ is heaven for me.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Be -- lov -- ed of my heart,
  Thy grace I earn -- est -- ly im -- plore;
  Oh, if Thou wilt the gift im -- part,
  I'll use it but to love Thee more.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The bright -- est forms of earth -- ly love
  Are dull be -- side Thine own to me;
  With wist -- ful eyes I look a -- bove.
  And won -- der when Thy face I'll see.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Though Pa -- ra -- dise has ma -- ny joys,
  And flowers of beau -- ty fair to see,
  Not gates of pearl nor an -- gel's voice
  Shall thrill my soul like lve of Thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  With -- out Thee no ce -- les -- tial light
  Shall shine to make my soul con -- tent;
  But with Thee this sad earth is bright,
  And glows with joy from hea -- ven lent.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  Je -- sus, Be -- lov -- ed of my heart,
  Thy grace I earn -- est -- ly im -- plore;
  Oh, if Thou wilt the gift im -- part,
  I'll use it but to love Thee more.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see; __
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me. __

  \set stanza = "2."
  The bright -- est forms of earth -- ly love
  Are dull be -- side Thine own to me;
  With wist -- ful eyes I look a -- bove.
  And won -- der when Thy face I'll see.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see; __
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me. __

  \set stanza = "3."
  Though Pa -- ra -- dise has ma -- ny joys,
  And flowers of beau -- ty fair to see,
  Not gates of pearl nor an -- gel's voice
  Shall thrill my soul like lve of Thee.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see; __
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me. __

  \set stanza = "4."
  With -- out Thee no ce -- les -- tial light
  Shall shine to make my soul con -- tent;
  But with Thee this sad earth is bright,
  And glows with joy from hea -- ven lent.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see; __
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me. __
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  Je -- sus, Be -- lov -- ed of my heart,
  Thy grace I earn -- est -- ly im -- plore;
  Oh, if Thou wilt the gift im -- part,
  I'll use it but to love Thee more.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see; __
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me,
  is heaven for me.

  \set stanza = "2."
  The bright -- est forms of earth -- ly love
  Are dull be -- side Thine own to me;
  With wist -- ful eyes I look a -- bove.
  And won -- der when Thy face I'll see.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see; __
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me,
  is heaven for me.

  \set stanza = "3."
  Though Pa -- ra -- dise has ma -- ny joys,
  And flowers of beau -- ty fair to see,
  Not gates of pearl nor an -- gel's voice
  Shall thrill my soul like lve of Thee.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see; __
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me,
  is heaven for me.

  \set stanza = "4."
  With -- out Thee no ce -- les -- tial light
  Shall shine to make my soul con -- tent;
  But with Thee this sad earth is bright,
  And glows with joy from hea -- ven lent.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see; __
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me,
  is heaven for me.
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  Je -- sus, Be -- lov -- ed of my heart,
  Thy grace I earn -- est -- ly im -- plore;
  Oh, if Thou wilt the gift im -- part,
  I'll use it but to love Thee more.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see,
  so fair to see;
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me,
  is heaven for me.

  \set stanza = "2."
  The bright -- est forms of earth -- ly love
  Are dull be -- side Thine own to me;
  With wist -- ful eyes I look a -- bove.
  And won -- der when Thy face I'll see.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see,
  so fair to see;
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me,
  is heaven for me.

  \set stanza = "3."
  Though Pa -- ra -- dise has ma -- ny joys,
  And flowers of beau -- ty fair to see,
  Not gates of pearl nor an -- gel's voice
  Shall thrill my soul like lve of Thee.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see,
  so fair to see;
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me,
  is heaven for me.

  \set stanza = "4."
  With -- out Thee no ce -- les -- tial light
  Shall shine to make my soul con -- tent;
  But with Thee this sad earth is bright,
  And glows with joy from hea -- ven lent.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see,
  so fair to see;
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me,
  is heaven for me.
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  Je -- sus, Be -- lov -- ed of my heart,
  Thy grace I earn -- est -- ly im -- plore;
  Oh, if Thou wilt the gift im -- part,
  I'll use it but to love Thee more.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see,
  so fair to see;
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me. __

  \set stanza = "2."
  The bright -- est forms of earth -- ly love
  Are dull be -- side Thine own to me;
  With wist -- ful eyes I look a -- bove.
  And won -- der when Thy face I'll see.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see,
  so fair to see;
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me. __

  \set stanza = "3."
  Though Pa -- ra -- dise has ma -- ny joys,
  And flowers of beau -- ty fair to see,
  Not gates of pearl nor an -- gel's voice
  Shall thrill my soul like lve of Thee.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see,
  so fair to see;
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me. __

  \set stanza = "4."
  With -- out Thee no ce -- les -- tial light
  Shall shine to make my soul con -- tent;
  But with Thee this sad earth is bright,
  And glows with joy from hea -- ven lent.
  Let o -- thers dream __ of jew -- elled walls, __
  Of gold -- en vi -- ties fair to see,
  so fair to see;
  No glo -- rious scene __ my soul en -- thralls, __
  Wher -- e'er Thou art is heaven for me. __
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
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
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
            \addlyrics \wordsMidiTenor
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
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 19)

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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
