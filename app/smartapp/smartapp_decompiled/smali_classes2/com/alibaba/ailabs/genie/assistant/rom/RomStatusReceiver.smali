.class public Lcom/alibaba/ailabs/genie/assistant/rom/RomStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RomStatusReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RomStatusReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RomStatusReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    :try_start_0
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 24
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 25
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;->updateScreenState(Z)V

    goto/16 :goto_1

    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 28
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 29
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;->updateScreenState(Z)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "android.intent.action.DREAMING_STARTED"

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 33
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;->updateScreenSaverState(I)V

    goto/16 :goto_1

    :cond_2
    const-string p1, "android.intent.action.DREAMING_STOPPED"

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 37
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;->updateScreenSaverState(I)V

    goto :goto_1

    :cond_3
    const-string p1, "android.intent.action.MEDIA_BUTTON"

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.intent.extra.KEY_EVENT"

    .line 40
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyEvent----->"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne v1, p2, :cond_5

    .line 44
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x7f

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 46
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getInstance()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;->getScreenListener()Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/rom/IScreenListener;->updateMuteState(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
