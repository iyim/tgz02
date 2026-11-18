.class public Lcom/alibaba/android/ultron/event/CommonPostMessageSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "CommonPostMessageSubscriber.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_TARGET:Ljava/lang/String; = "target"

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "CommonPostMessageSubscriber"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/CommonPostMessageSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "target"

    .line 21
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getMessageManager()Lcom/taobao/android/ultron/message/MessageManager;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/taobao/android/ultron/message/MessageManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
