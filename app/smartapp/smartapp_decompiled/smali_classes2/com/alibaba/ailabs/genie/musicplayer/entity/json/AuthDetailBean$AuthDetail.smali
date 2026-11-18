.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;
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
    name = "AuthDetail"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;",
            ">;"
        }
    .end annotation
.end field

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->appId:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->name:Ljava/lang/String;

    return-void
.end method

.method public setProtocols(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->protocols:Ljava/util/List;

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$AuthDetail;->src:Ljava/lang/String;

    return-void
.end method
