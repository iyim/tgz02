.class public abstract Lcom/alibaba/ailabs/genie/pay/GeniePayCallbackImp;
.super Ljava/lang/Object;
.source "GeniePayCallbackImp.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "GeniePayCallbackImp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCallback(Lcom/alibaba/ailabs/genie/pay/model/GeniePayResultModel;)V
    .locals 5

    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/utils/Utils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "GeniePayCallbackImp"

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallback jsonObject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v3, " jsonObject == null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayCallbackImp;->onCallback(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 29
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayCallbackImp;->onCallback(Lcom/alibaba/fastjson/JSONObject;)V

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    :goto_3
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayCallbackImp;->onCallback(Lcom/alibaba/fastjson/JSONObject;)V

    throw v0
.end method

.method public abstract onCallback(Lcom/alibaba/fastjson/JSONObject;)V
.end method
