.class final Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;
.super Ljava/util/HashMap;
.source "DMAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/action/DMAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 215
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "play"

    const-string v1, "Multimedia/Play"

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "select_play"

    const-string v1, "Multimedia/Select"

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ff"

    const-string v1, "Multimedia/Fastforward"

    .line 224
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fb"

    const-string v1, "Multimedia/Fastbackword"

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Multimedia/Setup/Definition"

    const-string v1, "tune_resolution"

    .line 226
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sw"

    .line 227
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sw_blue"

    .line 228
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sw_max"

    .line 229
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sw_high"

    .line 230
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sw_med"

    .line 231
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sw_low"

    .line 232
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "full_screen"

    const-string v1, "Multimedia/Fullscreen/Enter"

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "exit_full_screen"

    const-string v1, "Multimedia/Fullscreen/Exit"

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "favorite"

    const-string v1, "Multimedia/Collect"

    .line 235
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cancel_favorite"

    const-string v1, "Multimedia/Collect/Cancel"

    .line 236
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "video_follow"

    const-string v1, "Multimedia/Collection/Follow"

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cancel_video_follow"

    const-string v1, "Multimedia/Collection/Follow/Cancel"

    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buy"

    const-string v1, "Multimedia/Purchase"

    .line 239
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open_dan"

    const-string v1, "Multimedia/Bulletscreen/open"

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "close_dan"

    const-string v1, "Multimedia/Bulletscreen/close"

    .line 241
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tune_screen_ratio"

    const-string v1, "Multimedia/Setup/Aspectratio"

    .line 242
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "music_play_pattern"

    const-string v1, "Multimedia/Loop"

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "play_next"

    const-string v1, "Play/Next"

    .line 245
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "play_before"

    const-string v1, "Play/Previous"

    .line 246
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Play/Again"

    const-string v1, "back_to_start"

    .line 247
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "replay"

    .line 248
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "stop"

    const-string v1, "Stop"

    .line 250
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pause"

    const-string v1, "Pause"

    .line 251
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "exit"

    const-string v1, "Quit"

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "close"

    const-string v1, "ShutDown"

    .line 253
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GoToDesktop"

    const-string v1, "desktop"

    .line 254
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "home"

    .line 255
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "back"

    const-string v1, "Back"

    .line 256
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screen"

    const-string v1, "Screen"

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Select"

    const-string v1, "index"

    .line 258
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "play_nth"

    .line 259
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "protect_eye_on"

    const-string v1, "Eye/Eyeon"

    .line 261
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "protect_eye_off"

    const-string v1, "Eye/Eyeoff"

    .line 262
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/action/DMAction$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
