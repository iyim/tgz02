.class public Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcUtdidReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RtcUtdidReceiver.java"


# static fields
.field public static final BROADCAST_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.intent.action.RtcReceiver"

.field public static final BROADCAST_PERMISSION:Ljava/lang/String; = "com.alibaba.ailabs.genie.intent.permission.RtcReceiver"

.field private static final TAG:Ljava/lang/String; = "RtcReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.intent.action.RtcReceiver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "utdId"

    .line 24
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: utdId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RtcReceiver"

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object p2

    const-string v1, "utdId_key"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 27
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->getInstance()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;->commit()Lcom/alibaba/ailabs/genie/utils/kv/KvStorage;

    const-string p1, "utdId update !!! "

    .line 28
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
