.class public Lcom/aligenie/ags/access/AccessService$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;


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

    iput-object p1, p0, Lcom/aligenie/ags/access/AccessService$a;->a:Lcom/aligenie/ags/access/AccessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/a/a/a/a/a/b/c;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNLUResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " arg1 = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "arg2 = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " arg3 = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "Access"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lc/a/a/a/a/a/b/c;

    invoke-direct {p1}, Lc/a/a/a/a/a/b/c;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x701cdcfd

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0x36370b0a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/ScreenSlide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "/CommonSelectContent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "enter:  CommonSelectContent case"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/aligenie/ags/access/AccessService$a;->a:Lcom/aligenie/ags/access/AccessService;

    invoke-static {p2, p3}, Lcom/aligenie/ags/access/AccessService;->a(Lcom/aligenie/ags/access/AccessService;Ljava/lang/String;)V

    iput-boolean v2, p1, Lc/a/a/a/a/a/b/c;->a:Z

    goto :goto_2

    :cond_4
    iput-boolean v2, p1, Lc/a/a/a/a/a/b/c;->a:Z

    iget-object p2, p0, Lcom/aligenie/ags/access/AccessService$a;->a:Lcom/aligenie/ags/access/AccessService;

    .line 1
    iget-object p4, p2, Lcom/aligenie/ags/access/AccessService;->j:Landroid/content/Context;

    const-string v0, "-1"

    invoke-static {p4, v0}, Lc/a/a/a/a/a/b/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p4, p2, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p4

    const/4 v0, 0x2

    iput v0, p4, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg2"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p2, Lcom/aligenie/ags/access/AccessService;->b:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, p4, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    return-object p1
.end method

.method public a(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onASRStatusUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Access"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECOGNIZE_START:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    if-ne p1, p2, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "context"

    const-string v0, "xxxxxx"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
