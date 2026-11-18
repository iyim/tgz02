.class public Lcom/alibaba/android/ultron/listener/CheckHiddenListener;
.super Ljava/lang/Object;
.source "CheckHiddenListener.java"

# interfaces
.implements Lcom/alibaba/android/ultron/listener/IDMComponentChangedListener;


# static fields
.field public static final IS_CHECKED:Ljava/lang/String; = "isChecked"

.field private static final TAG:Ljava/lang/String; = "CheckHiddenListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private notCheck(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 2

    .line 40
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    .line 42
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 44
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isChecked"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onIDMComponentChanged(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    const-string p3, "isChecked"

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 19
    :try_start_0
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 23
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    if-nez p3, :cond_1

    .line 25
    new-instance p3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const-string v1, "status"

    if-eqz p2, :cond_2

    .line 28
    :try_start_1
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p2, "hidden"

    .line 30
    invoke-virtual {p3, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_0
    invoke-interface {p1, p3, v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->writeBackData(Lcom/alibaba/fastjson/JSONObject;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 35
    new-array p2, v0, [Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "CheckHiddenListener"

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
