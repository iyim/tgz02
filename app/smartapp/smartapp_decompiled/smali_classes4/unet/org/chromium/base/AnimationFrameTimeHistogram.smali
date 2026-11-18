.class public Lunet/org/chromium/base/AnimationFrameTimeHistogram;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;
    }
.end annotation

.annotation build Lunet/org/chromium/base/annotations/MainDex;
.end annotation


# instance fields
.field final a:Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;

.field private final b:Ljava/lang/String;


# direct methods
.method private native nativeSaveHistogram(Ljava/lang/String;[JI)V
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 76
    iget-object v0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram;->a:Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;

    invoke-static {v0}, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->b(Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram;->b:Ljava/lang/String;

    iget-object v1, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram;->a:Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;

    .line 78
    invoke-static {v1}, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->c(Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;)[J

    move-result-object v1

    iget-object v2, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram;->a:Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;

    invoke-static {v2}, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->d(Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;)I

    move-result v2

    .line 77
    invoke-direct {p0, v0, v1, v2}, Lunet/org/chromium/base/AnimationFrameTimeHistogram;->nativeSaveHistogram(Ljava/lang/String;[JI)V

    .line 80
    :cond_0
    iget-object v0, p0, Lunet/org/chromium/base/AnimationFrameTimeHistogram;->a:Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;

    invoke-static {v0}, Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;->e(Lunet/org/chromium/base/AnimationFrameTimeHistogram$Recorder;)V

    return-void
.end method
