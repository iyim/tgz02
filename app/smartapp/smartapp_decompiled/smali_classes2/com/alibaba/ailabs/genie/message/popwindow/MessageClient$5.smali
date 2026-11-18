.class final Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$5;
.super Ljava/lang/Thread;
.source "MessageClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->sendVirtualKey(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$sendKeyCode:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$5;->val$ctx:Landroid/content/Context;

    iput p2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$5;->val$sendKeyCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$5;->val$ctx:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 347
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$5;->val$sendKeyCode:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0xbb8

    .line 350
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 352
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 355
    :cond_1
    :goto_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 356
    iget v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$5;->val$sendKeyCode:I

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    const-string v0, "MessageClient"

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendKeyDownUpSync, sendKeyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$5;->val$sendKeyCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
