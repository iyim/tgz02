.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;
.super Ljava/lang/Object;
.source "AuthDetailBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolContractsBean"
.end annotation


# instance fields
.field private protocolId:Ljava/lang/String;

.field private protocolName:Ljava/lang/String;

.field private protocolUrl:Ljava/lang/String;

.field private protocolVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getProtocolId()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->protocolId:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->protocolName:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolUrl()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->protocolUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->protocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setProtocolId(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->protocolId:Ljava/lang/String;

    return-void
.end method

.method public setProtocolName(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->protocolName:Ljava/lang/String;

    return-void
.end method

.method public setProtocolUrl(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->protocolUrl:Ljava/lang/String;

    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;->protocolVersion:Ljava/lang/String;

    return-void
.end method
