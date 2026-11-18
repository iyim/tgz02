.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;
.super Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;
.source "TextLink.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextLink"


# instance fields
.field private originJson:Lorg/json/JSONObject;

.field private queryJson:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;-><init>(Lorg/json/JSONObject;)V

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;->originJson:Lorg/json/JSONObject;

    .line 20
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;->originJson:Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;->type:Ljava/lang/String;

    .line 21
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;->originJson:Lorg/json/JSONObject;

    const-string v0, "query"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;->queryJson:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextLink onClick, this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextLink"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;->linkTitle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->skillAttempt(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TextLink onClick, jump err, e:"

    .line 30
    invoke-static {v1, v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextLink{queryJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;->queryJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", originJson="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;->originJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", linkTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/TextLink;->linkTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
