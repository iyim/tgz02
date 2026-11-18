.class public Lc/f/a/b/c;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public b:Lc/f/a/b/f;

.field public c:Lc/f/a/b/b;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/f/a/b/f;Lc/f/a/b/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lc/f/a/b/c;->b:Lc/f/a/b/f;

    iput-object p1, p0, Lc/f/a/b/c;->c:Lc/f/a/b/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/f/a/b/c;->d:Z

    const-string p1, "MsgConsumer Constructor."

    const-string v0, "Aliicx"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p2, p0, Lc/f/a/b/c;->b:Lc/f/a/b/f;

    iput-object p3, p0, Lc/f/a/b/c;->c:Lc/f/a/b/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "MsgListener exit."

    const-string v1, "Aliicx"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/f/a/b/c;->d:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 6

    const-string v0, "Aliicx"

    const-string v1, "start MsgConsumer loop."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lc/f/a/b/c;->d:Z

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "try to get msg...."

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lc/f/a/b/c;->b:Lc/f/a/b/f;

    invoke-virtual {v1}, Lc/f/a/b/f;->a()Lcom/yunos/aliicx/common/AliicxMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lc/f/a/b/c;->c:Lc/f/a/b/b;

    invoke-virtual {v1}, Lcom/yunos/aliicx/common/AliicxMessage;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yunos/aliicx/common/AliicxMessage;->getEventId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/yunos/aliicx/common/AliicxMessage;->getProperties()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1}, Lcom/yunos/aliicx/common/AliicxMessage;->getUploadMode()I

    move-result v1

    invoke-interface {v2, v3, v4, v5, v1}, Lc/f/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception found in MsgConsumer loop."

    .line 4
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v1, "MsgConsumer thread exit."

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "MsgListener start."

    const-string v1, "Aliicx"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/f/a/b/c;->d:Z

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
