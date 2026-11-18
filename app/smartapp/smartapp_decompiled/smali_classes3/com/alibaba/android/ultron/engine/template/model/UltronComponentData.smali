.class public Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;
.super Ljava/lang/Object;
.source "UltronComponentData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public cardGroup:Ljava/lang/String;

.field public componentKey:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public events:Lcom/alibaba/fastjson/JSONObject;

.field public fields:Lcom/alibaba/fastjson/JSONObject;

.field public id:Ljava/lang/String;

.field public position:Ljava/lang/String;

.field public rule:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public submit:Z

.field public supportEvent:Lcom/alibaba/fastjson/JSONObject;

.field public tag:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public useFilter:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->useFilter:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;
    .locals 3

    .line 30
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->id:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->tag:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->type:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->events:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->events:Lcom/alibaba/fastjson/JSONObject;

    .line 36
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->supportEvent:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    :cond_2
    iput-object v2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->supportEvent:Lcom/alibaba/fastjson/JSONObject;

    .line 37
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->status:Ljava/lang/String;

    .line 38
    iget-boolean v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->submit:Z

    iput-boolean v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->submit:Z

    .line 39
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->position:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->position:Ljava/lang/String;

    .line 40
    iget-boolean v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->useFilter:Z

    iput-boolean v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->useFilter:Z

    .line 41
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->componentKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->componentKey:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->rule:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->rule:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->cardGroup:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->cardGroup:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->clone()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    move-result-object v0

    return-object v0
.end method
