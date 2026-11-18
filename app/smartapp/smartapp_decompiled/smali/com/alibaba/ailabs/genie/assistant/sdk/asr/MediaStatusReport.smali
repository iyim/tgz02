.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport;
.super Ljava/lang/Object;
.source "MediaStatusReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaListener;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.provider"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final MEDIA_PLAYBACK_FAILED:I = 0x3

.field public static final MEDIA_PLAYBACK_FINISHED:I = 0x1

.field public static final MEDIA_PLAYBACK_NEARLY_FINISHED:I = 0x2

.field public static final MEDIA_PLAYBACK_PAUSED:I = 0x9

.field public static final MEDIA_PLAYBACK_QUEUE_CLEARED:I = 0xb

.field public static final MEDIA_PLAYBACK_REPROT_DELAY_ELAPSED:I = 0x4

.field public static final MEDIA_PLAYBACK_REPROT_INTERVAL_ELAPSED:I = 0x5

.field public static final MEDIA_PLAYBACK_RESUMED:I = 0xa

.field public static final MEDIA_PLAYBACK_STARTED:I = 0x0

.field public static final MEDIA_PLAYBACK_STOPPED:I = 0x8

.field public static final MEDIA_PLAYBACK_STUTTER_FINISHED:I = 0x7

.field public static final MEDIA_PLAYBACK_STUTTER_STARTED:I = 0x6

.field public static final MEDIA_TYPE_MUSIC:I = 0x0

.field public static final MEDIA_TYPE_TTS:I = 0x2

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field public static final PACKAGE:Ljava/lang/String; = "pkg"

.field public static final PACKAGE_ALIAS:Ljava/lang/String; = "pkgAlias"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TABLE_MEDIA_NAME:Ljava/lang/String; = "media"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VER:Ljava/lang/String; = "ver"

.field public static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static final setStatus(Landroid/content/Context;IILcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport;->setStatus(Landroid/content/Context;Ljava/lang/String;IILcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static final setStatus(Landroid/content/Context;Ljava/lang/String;IILcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$1;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
