.class public Lcom/alibaba/android/ultron/event/CommonToastSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "CommonToastSubscriber.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastSubscriber"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 3

    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/CommonToastSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "message"

    .line 22
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x1

    .line 27
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "ToastSubscriber"

    invoke-static {p1, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
