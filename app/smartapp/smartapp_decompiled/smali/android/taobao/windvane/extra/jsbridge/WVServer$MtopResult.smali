.class Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;
.super Ljava/lang/Object;
.source "WVServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/jsbridge/WVServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtopResult"
.end annotation


# instance fields
.field private jsContext:Ljava/lang/Object;

.field private result:Lorg/json/JSONObject;

.field private success:Z

.field final synthetic this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;)V
    .locals 0

    .line 479
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 475
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->jsContext:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 476
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->success:Z

    .line 477
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->result:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/Object;)V
    .locals 0

    .line 482
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 475
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->jsContext:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 476
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->success:Z

    .line 477
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->result:Lorg/json/JSONObject;

    .line 483
    iput-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->jsContext:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 497
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public addData(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 507
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getJsContext()Ljava/lang/Object;
    .locals 1

    .line 520
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->jsContext:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->success:Z

    return v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 488
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->result:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 516
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->success:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
