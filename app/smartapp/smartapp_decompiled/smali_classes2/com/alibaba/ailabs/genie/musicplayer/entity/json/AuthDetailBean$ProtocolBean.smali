.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;
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
    name = "ProtocolBean"
.end annotation


# static fields
.field public static final ACCOUNT_BIND:Ljava/lang/String; = "ACCOUNT_BIND"

.field public static final MEMBER_PAY:Ljava/lang/String; = "MEMBER_PAY"


# instance fields
.field private protocolBizId:Ljava/lang/String;

.field private protocolContracts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getProtocolBizId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->protocolBizId:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolContracts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->protocolContracts:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setProtocolBizId(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->protocolBizId:Ljava/lang/String;

    return-void
.end method

.method public setProtocolContracts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolContractsBean;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->protocolContracts:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AuthDetailBean$ProtocolBean;->type:Ljava/lang/String;

    return-void
.end method
