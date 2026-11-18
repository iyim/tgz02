.class public Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;
.super Ljava/lang/Object;
.source "SubscribeInfo.java"


# instance fields
.field private allowAppPush:Ljava/lang/Boolean;

.field private allowVoicePush:Ljava/lang/Boolean;

.field private authUrl:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private needAuth:Ljava/lang/Boolean;

.field private needDisplayVoiceSub:Ljava/lang/Boolean;

.field private status:Ljava/lang/Byte;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->allowAppPush:Ljava/lang/Boolean;

    .line 43
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->allowVoicePush:Ljava/lang/Boolean;

    .line 58
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->needDisplayVoiceSub:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAllowAppPush()Ljava/lang/Boolean;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->allowAppPush:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAllowVoicePush()Ljava/lang/Boolean;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->allowVoicePush:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAuthUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->authUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedAuth()Ljava/lang/Boolean;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->needAuth:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNeedDisplayVoiceSub()Ljava/lang/Boolean;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->needDisplayVoiceSub:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Byte;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->status:Ljava/lang/Byte;

    return-object v0
.end method

.method public setAllowAppPush(Ljava/lang/Boolean;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->allowAppPush:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowVoicePush(Ljava/lang/Boolean;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->allowVoicePush:Ljava/lang/Boolean;

    return-void
.end method

.method public setAuthUrl(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->authUrl:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->id:Ljava/lang/Long;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeedAuth(Ljava/lang/Boolean;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->needAuth:Ljava/lang/Boolean;

    return-void
.end method

.method public setNeedDisplayVoiceSub(Ljava/lang/Boolean;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->needDisplayVoiceSub:Ljava/lang/Boolean;

    return-void
.end method

.method public setStatus(Ljava/lang/Byte;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->status:Ljava/lang/Byte;

    return-void
.end method
