.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;
.super Ljava/lang/Object;
.source "JsonInputAuthInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public token:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "token"
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "userId"
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uuid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/JsonInputAuthInfo;->uuid:Ljava/lang/String;

    return-void
.end method
