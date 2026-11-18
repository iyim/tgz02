.class public Lcom/aligenie/ags/access/AccessService$e;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aligenie/ags/access/AccessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/aligenie/ags/access/AccessService;


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/access/AccessService;)V
    .locals 0

    iput-object p1, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Access"

    if-eq v0, v2, :cond_6

    const-wide/16 v4, 0xc8

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4

    const-string v6, "z"

    const/4 v7, 0x3

    const-string v8, "y"

    const-string v9, "x"

    if-eq v0, v7, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1
    iget-object v5, v0, Lcom/aligenie/ags/access/AccessService;->i:Lc/b/a/a/c/f;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lc/b/a/a/c/f;->a()V

    iput-object v1, v0, Lcom/aligenie/ags/access/AccessService;->i:Lc/b/a/a/c/f;

    .line 2
    :cond_1
    new-instance v1, Lc/b/a/a/c/f;

    invoke-direct {v1, v0, v2, v4}, Lc/b/a/a/c/f;-><init>(Lcom/aligenie/ags/access/AccessService;II)V

    iput-object v1, v0, Lcom/aligenie/ags/access/AccessService;->i:Lc/b/a/a/c/f;

    iget-object v0, v0, Lcom/aligenie/ags/access/AccessService;->i:Lc/b/a/a/c/f;

    .line 3
    iget-object v1, v0, Lc/b/a/a/c/f;->b:Lc/b/a/a/c/d;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "y:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lc/b/a/a/c/f;->b:Lc/b/a/a/c/d;

    iget-object v0, v0, Lc/b/a/a/c/f;->a:Lcom/aligenie/ags/access/AccessService;

    invoke-virtual {v1, v0, v2, v4, p1}, Lc/b/a/a/c/d;->a(Lcom/aligenie/ags/access/AccessService;III)V

    goto/16 :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    invoke-static {v0}, Lcom/aligenie/ags/access/AccessService;->b(Lcom/aligenie/ags/access/AccessService;)Z

    move-result v0

    const-string v1, " y:"

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check isUiShowing falsex:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/aligenie/ags/access/AccessService$e$b;

    invoke-direct {v2, p0, v0, p1}, Lcom/aligenie/ags/access/AccessService$e$b;-><init>(Lcom/aligenie/ags/access/AccessService$e;II)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    .line 5
    iget-object v0, v0, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    .line 6
    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    .line 7
    iget-object v0, v0, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    .line 8
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v7, v0, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v10, "check isUiShowing true x:"

    invoke-static {v10}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v7, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v7, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v0, "slideScreen "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    invoke-static {v0}, Lcom/aligenie/ags/access/AccessService;->b(Lcom/aligenie/ags/access/AccessService;)Z

    move-result v0

    const-string v1, "arg2"

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slideScreen:  HIDEUI isUiShowing false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    .line 9
    invoke-virtual {v0, p1}, Lcom/aligenie/ags/access/AccessService;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    .line 11
    iget-object v0, v0, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    .line 12
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    .line 13
    iget-object v0, v0, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    .line 14
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slideScreen:  HIDEUI isUiShowing true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :goto_0
    iget-object p1, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    .line 15
    iget-object p1, p1, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    .line 16
    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a/a/a/a/c;->b(Landroid/content/Context;)Lc/a/a/a/a/a/a/c;

    move-result-object v0

    iput-object v0, p1, Lcom/aligenie/ags/access/AccessService;->e:Lc/a/a/a/a/a/a/c;

    iget-object p1, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    iget-object p1, p1, Lcom/aligenie/ags/access/AccessService;->e:Lc/a/a/a/a/a/a/c;

    if-eqz p1, :cond_7

    const-string p1, "registerSystemContextCallback"

    invoke-static {p1}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    iget-object v0, v0, Lcom/aligenie/ags/access/AccessService;->e:Lc/a/a/a/a/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    iget-object p1, p1, Lcom/aligenie/ags/access/AccessService;->e:Lc/a/a/a/a/a/a/c;

    new-instance v0, Lcom/aligenie/ags/access/AccessService$e$a;

    invoke-direct {v0, p0}, Lcom/aligenie/ags/access/AccessService$e$a;-><init>(Lcom/aligenie/ags/access/AccessService$e;)V

    .line 17
    new-instance v2, Lc/a/a/a/a/a/a/b;

    invoke-virtual {p1}, Lc/a/a/b/i/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lc/a/a/a/a/a/a/b;-><init>(Landroid/content/Context;Lc/a/a/a/a/a/a/a;)V

    .line 18
    iget-object v0, v2, Lc/a/a/b/i/a;->d:Landroid/os/IBinder;

    .line 19
    invoke-static {v1, v1, v0}, Lc/a/a/b/i/a;->a(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lc/a/a/b/i/b;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_7
    const-string p1, "registerSystemContextCallback is null, register again 2s later"

    .line 20
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/aligenie/ags/access/AccessService$e;->a:Lcom/aligenie/ags/access/AccessService;

    .line 21
    iget-object p1, p1, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    .line 22
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    :goto_1
    return-void
.end method
