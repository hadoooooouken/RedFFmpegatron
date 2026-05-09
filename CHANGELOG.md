# RedFFmpegatron - Changelog
 
## [1.3.2] - 2026-05-10
- **Screen Recording**: 
    - Screen recording now captures audio (unless "Disable audio" is selected);
    - Added global hotkeys: **Alt+F8** to Start, **Alt+F9** to Stop;
    - Implemented persistent tray icon for easier recording control when minimized;
    - Added Windows balloon notifications and sound alerts for recording status;
    - Added "Open RedFFmpegatron" and "Exit" options to tray context menu;
    - Added double-click on tray icon to restore application window;
    - Changed behavior: application no longer automatically restores the window when recording stops.


## [1.3.1] - 2026-05-08
- **Streams Selection**: Attached pictures (cover art) are now separated from video streams;
- **UI Fix**: Fixed layout shifting in the Presets section when using custom presets with long names.

## [1.3.0] - 2026-05-07
- **Batch Converter Window**: Updated the interface with new persistent "Output Folder" selection and "Change output container" (MP4/MKV/MOV override) features;
- **Default Behavior Change**: Unlike standard FFmpeg, which only picks one track per type, the application now includes ALL streams from the source file by default (implemented `-map 0 -ignore_unknown` logic);
- **Streams Selection**: Added a new Stream Mapping window (opened via the "Streams" button in the "Additional Options" section) for manual selection of video, audio, and subtitle tracks.

## [1.2.9] - 2026-05-05
- **Encoding Fix**: Enforced UTF-8 encoding across all internal system calls (metadata retrieval, executable discovery, duration checks, etc.) to ensure stability across different regional system settings and prevent crashes with special characters;
- **Tooltip Optimization**: Metadata tooltips are now more compact (verbose tags filtered) and feature vertical screen boundary clamping to ensure they remain fully visible;
- **Improved Stability**: Added robust null-safety checks for subprocess outputs to prevent "NoneType" attribute errors during command execution.

## [1.2.8] - 2026-04-19
- The ability to stop screen recording from the system tray icon menu or using the Alt+F9 hotkey;
- Better memory management and cleaning of processes (ffmpeg.exe) after closing the program.

## [1.2.7] - 2026-03-31
- Code cleanup.

## [1.2.6] - 2026-03-10
- Extended input video format support: .mp4, .mkv, .avi, .mov, .flv, .wmv, .webm, .ts, .m4v, .mpg, .mpeg, .m2ts, .mts, .3gp, .ogv, .ogm, .vob, .f4v, .asf, .divx;
- Right-click **Play Output File** after a single convert to run a simplified VMAF comparison.

## [1.2.5] - 2026-03-07
Added right-click handlers for the following buttons:
- **Browse** — opens Windows Explorer in the folder where the file specified in the **Input File** field is located;
- **Save As** — opens Windows Explorer in the folder where the file specified in the **Output File** field is located;
- **FFmpeg** — opens Windows Explorer in the folder where the file specified in the **FFmpeg Path** field is located;
- **Output** — copies the full FFmpeg command to the clipboard.

## [1.2.4] - 2026-03-04
- The **Input File** field now shows a tooltip with metadata of the opened video file when hovering the mouse cursor over it;
- Text fields now support a right-click context menu for text operations (Cut / Copy / Paste / Delete / Select All);
- The **Batch Converter** window now supports drag-and-drop of multiple files directly from Windows Explorer;
- Closing the **Batch Converter** window no longer stops the conversion process (it can now be opened and closed at any time);
- Parameters from the **Add FF Options** field are now always applied, regardless of whether the **Additional Options** section is collapsed or expanded;
- Various UI/UX improvements and fixes.

## [1.2.3] - 2026-03-02
- Code cleanup and optimization + bug fixes;
- Using -filter_complex in Add FF Options automatically ignores -vf filters (simple filters / scaling / FPS / etc.);
- Added Ctrl+A handler (select all text);
- Presets: switching between built-in presets (Fast/Quality) now automatically clears filters and trimming settings from the Additional Options section;
- Additional Options: removed the "Drop thresh" button, added "Stereo out" — downmixes the audio track to 2 channels.

## [1.2.2] - 2026-02-22
- Additional Options: Save/Load buttons have been removed, as this functionality is now available via custom presets;
- Additional Options: Added H-Flip and V-Flip filter buttons (mirror video horizontally/vertically);
- UX/UI improvements for working with custom presets;
- Added Ctrl+X handler (cut text).

## [1.2.1] - 2026-02-19
- Added the ability to create custom presets;
- "Screen Record" now respects the selected FPS Mode;
- Additional Options: improved text paste handling (custom filters) regardless of the current system keyboard layout.

## [1.2.0] - 2026-01-06
- HighDPI support;
- FFmpeg Command Preview: fixed "Copy to Clipboard";
- FFmpeg Command Preview: fixed "Apply Changes".

## [1.1.9] - 2026-01-02
- UI/UX fixes.

## [1.1.8] - 2025-11-15
- UI/UX fixes and updates.

## [1.1.7] - 2025-10-28
- Additional Options: Added "Save/Load" buttons for custom filter settings;
- UI fixes.

## [1.1.6] - 2025-10-25
- Added "FPS Mode";
- Added "Cancel" for "Play 10s Preview" button;
- Added "Deshake" filter button.

## [1.1.5] - 2025-10-18
- Screen recording now respects the "Preset" parameter value;
- The clipboard is now preserved even after closing the program (for example, a copied ffmpeg command).

## [1.1.4] - 2025-10-16
- Added "Screen Record".

## [1.1.3] - 2025-10-16
- Added "Batch Convert";
- Build with Python: 3.13.8 + Nuitka 2.9rc2.

## [1.1.2] - 2025-10-11
- Fixed saving of manually selected extensions (MKV, MOV);
- Build with Python: 3.13.8 + Nuitka 2.9rc1.

## [1.1.1] - 2025-10-09
- Added "About" info tab;
- Added "License" info tab;
- Build with Python: 3.13.8 + Nuitka 2.8rc16.

## [1.1.0] - 2025-10-07
- Bug fixes;
- UI improvements;
- Opus audio presets;
- VideoSR update;
- AMF hwaccel for trim preview generation.

## [1.0.9] - 2025-10-04
- Startup UI fixes for some systems.

## [1.0.8] - 2025-10-02
- Fixed and updated trim;
- Added new checkboxes: Copy (same as old Streamcopy) and Precise (-ss after -i):
- Added "Default" button in Encoder section (copy of Default preset):
- Presets updated;
- Some UI/UX improvements.

## [1.0.7] - 2025-10-01
- Added automatic session saving (ffmpeg path, last input directory, last output directory, codec selection, encoder settings);
- UI fixes.

## [1.0.6] - 2025-09-29
- The preview generation mechanism in the Trimming section has been updated.

## [1.0.5] - 2025-09-29
- UI improvements;
- Help file updated;
- Auto Button - Resets all encoder settings to automatic (auto) values and disables all checkboxes (custom settings);
- Clean output of the ffmpeg command if no custom settings are used.

## [1.0.4] - 2025-09-23
- UI improvements;
- Help file information corrections.

## [1.0.3] - 2025-09-22
- Fixed Drag n Drop;
- Added "HW Accel" option;
- Added "Preencode" option;
- Added "Max PA" option;
- Added "Smart Access Video" option;
- Removed "Enforce HRD";
- Improved copypaste (Ctrl+C/V) handling;
- Added "Help" button with a file describing the program parameters;
- Added "Force 8 bit" button;
- Added "Force 10 bit" button;
- Added "Crop to 16:9" button;
- Added "Rotate" button;
- Presets updated.

## [1.0.2] - 2025-09-20
- Cosmetic UI fixes

## [1.0.1] - 2025-09-18
- Added "Denoise" button (replacing the broken "Preview 10s" button)

## [1.0.0] - 2025-09-18
- Initial release
