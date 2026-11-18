.class public Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field token:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "token"
    .end annotation
.end field

.field userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "userId"
    .end annotation
.end field

.field uuid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uuid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->userId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->uuid:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method toJson()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
