.class public Lcom/alibaba/ailabs/geniesdk/agmc/Ttsinfo;
.super Ljava/lang/Object;
.source "Ttsinfo.java"


# instance fields
.field public fingerPrint:Ljava/lang/String;

.field public ignoreMute:Z

.field public isInterrupted:Z

.field public isOpenMic:Z

.field public needFeedback:Z

.field public pkg:Ljava/lang/String;

.field public secretKey:Ljava/lang/String;

.field public sessionId:I

.field public text:Ljava/lang/String;

.field public wakeupType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/agmc/Ttsinfo;->wakeupType:I

    .line 29
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/agmc/Ttsinfo;->isInterrupted:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/agmc/Ttsinfo;->ignoreMute:Z

    return-void
.end method
