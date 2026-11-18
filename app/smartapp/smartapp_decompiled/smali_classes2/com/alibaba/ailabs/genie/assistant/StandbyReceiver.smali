.class public Lcom/alibaba/ailabs/genie/assistant/StandbyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StandbyReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StandbyReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p2, "persist.cmcc.user.disable"

    const-string v0, "0"

    .line 17
    invoke-static {p2, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StandbyReceiver"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 20
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->cleanAllPlayer(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
