.class public Landroid/taobao/windvane/extra/uc/UCLog;
.super Ljava/lang/Object;
.source "UCLog.java"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/INetLogger;


# static fields
.field private static final LEVEL_ERROR:I


# instance fields
.field level:I

.field mEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/UCLog;->mEnable:Z

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroid/taobao/windvane/extra/uc/UCLog;->level:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cancel_log"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancel reason:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "alinetwork"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cancel_log"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancel reason:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "alinetwork"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getEnable()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/UCLog;->mEnable:Z

    return v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 18
    iget v0, p0, Landroid/taobao/windvane/extra/uc/UCLog;->level:I

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setEnable(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/UCLog;->mEnable:Z

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    .line 13
    iput p1, p0, Landroid/taobao/windvane/extra/uc/UCLog;->level:I

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
