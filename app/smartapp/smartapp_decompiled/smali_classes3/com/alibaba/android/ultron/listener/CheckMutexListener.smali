.class public Lcom/alibaba/android/ultron/listener/CheckMutexListener;
.super Ljava/lang/Object;
.source "CheckMutexListener.java"

# interfaces
.implements Lcom/alibaba/android/ultron/listener/IDMComponentChangedListener;


# static fields
.field public static final IS_CHECKED:Ljava/lang/String; = "isChecked"

.field private static final TAG:Ljava/lang/String; = "MutexListenerParser"


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
    .locals 3

    .line 32
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 36
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isChecked"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 37
    invoke-interface {p1, v0, v1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->writeBackFields(Lcom/alibaba/fastjson/JSONObject;Z)V

    return-void
.end method


# virtual methods
.method public onIDMComponentChanged(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    const-string p3, "isChecked"

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/listener/CheckMutexListener;->notCheck(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 27
    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "MutexListenerParser"

    invoke-static {p1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
